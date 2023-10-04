from queue import Queue
from threading import Thread
from ipykernel.kernelbase import Kernel
import re
import subprocess
import tempfile
import os
import os.path as path
from sys import platform

from traitlets import List


class RealTimeSubprocess(subprocess.Popen):

    inputRequest = "<inputRequest>"

    def __init__(self, cmd, write_to_stdout, write_to_stderr, read_from_stdin):

        """
        cmd: the command to execute
        write_to_stdout: a callable that will be called with chunks of data from stdout
        write_to_stderr: a callable that will be called with chunks of data from stderr
        """
        
        self._write_to_stdout = write_to_stdout
        self._write_to_stderr = write_to_stderr
        self._read_from_stdin = read_from_stdin

        super().__init__(cmd, stdout=subprocess.PIPE, stderr=subprocess.PIPE, stdin=subprocess.PIPE, bufsize=0)

        self._stdout_queue = Queue()
        self._stdout_thread = Thread(target=RealTimeSubprocess._enqueue_output, args=(self.stdout, self._stdout_queue))
        self._stdout_thread.daemon = True
        self._stdout_thread.start()

        self._stderr_queue = Queue()
        self._stderr_thread = Thread(target=RealTimeSubprocess._enqueue_output, args=(self.stderr, self._stderr_queue))
        self._stderr_thread.daemon = True
        self._stderr_thread.start()

    @staticmethod
    def _enqueue_output(stream, queue):
        """
        Add chunks of data from a stream to a queue until the stream is empty.
        """
        for line in iter(lambda: stream.read(4096), b''):
            queue.put(line)
        stream.close()

    def write_contents(self):
        """
        Write the available content from stdin and stderr where specified when the instance was created
        :return:
        """

        def read_all_from_queue(queue):
            res = b''
            size = queue.qsize()
            while size != 0:
                res += queue.get_nowait()
                size -= 1
            return res

        stderr_contents = read_all_from_queue(self._stderr_queue)
        if stderr_contents:
            self._write_to_stderr(stderr_contents.decode())

        stdout_contents = read_all_from_queue(self._stdout_queue)
        if stdout_contents:
            contents = stdout_contents.decode()
            # if there is input request, make output and then
            # ask frontend for input
            start = contents.find(self.__class__.inputRequest)
            if(start >= 0):
                contents = contents.replace(self.__class__.inputRequest, '')
                if(len(contents) > 0):
                    self._write_to_stdout(contents)
                readLine = ""
                while(len(readLine) == 0):
                    readLine = self._read_from_stdin()
                # need to add newline since it is not captured by frontend
                readLine += "\n"
                self.stdin.write(readLine.encode())
            else:
                self._write_to_stdout(contents)


class CPPKernel(Kernel):
    implementation = 'jupyter_cpp_kernel'
    implementation_version = '1.0'
    language = 'cpp'
    language_version = 'C++14'
    language_info = {
                     'name': 'text/markdown',
                     'mimetype': 'text/markdown',
                     'file_extension': '.cpp'
                    }
    
    introduction = "C++ 14 kernel for Jupyter (main), version 1.0.0a5\n\n"
    cp_banner = "Copyright (C) 2023 Tsuki Takineko\nCopyright (C) Brendan Rius\nCopyright (C) Free Software Foundation, Inc\n\n"
    links_guide = "Legal information: https://github.com/takinekotfs/jupyter-cpp-kernel/blob/master/LICENSE\nNotebook tutorial: https://github.com/takinekotfs/jupyter-cpp-kernel-doc\n\nAuthor GitHub profile: https://github.com/takinekotfs\n"
    reporting_links = "Reporting the issue: https://github.com/takinekotfs/jupyter-cpp-kernel/issues"

    banner = introduction + cp_banner + links_guide + reporting_links

    main_head = "#include <iostream>\n" + "int main(){\n"

    main_foot = "\nreturn 0;\n}"

    def __init__(self, *args, **kwargs):
        super(CPPKernel, self).__init__(*args, **kwargs)
        self._allow_stdin = True
        self.readOnlyFileSystem = False
        self.bufferedOutput = True
        self.linkMaths = True # always link math library
        self.wAll = True # show all warnings by default
        self.wError = False # but keep comipiling for warnings
        self.standard = "c++14" # default standard if none is specified
        self.files = []
        mastertemp = tempfile.mkstemp(suffix='.out')
        os.close(mastertemp[0])
        self.master_path = mastertemp[1]    
        self.resDir = path.join(path.dirname(path.realpath(__file__)), 'resources')
        filepath = path.join(self.resDir, 'master.cpp')
        subprocess.call(['g++', filepath, '-std=c++14', '-Wno-unused-but-set-variable', '-Wno-unused-parameter', '-Wno-unused-variable', '-ldl', '-w', '-o', self.master_path])

    def cleanup_files(self):
        """Remove all the temporary files created by the kernel"""
        # keep the list of files create in case there is an exception
        # before they can be deleted as usual
        for file in self.files:
            if(os.path.exists(file)):
                os.remove(file)
        os.remove(self.master_path)

    def new_temp_file(self, **kwargs):
        """Create a new temp file to be deleted when the kernel shuts down"""
        # We don't want the file to be deleted when closed, but only when the kernel stops
        kwargs['delete'] = False
        kwargs['mode'] = 'w'
        file = tempfile.NamedTemporaryFile(**kwargs)
        self.files.append(file.name)
        return file

    def _write_to_stdout(self, contents):
        # Markdown supported
        self.send_response(self.iopub_socket, 
                           'display_data',
                           {
                            'data':{
                               'text/markdown': contents
                                },
                            'metadata': {}
                           }
                          )

    def _write_to_stderr(self, contents):
        self.send_response(self.iopub_socket, 'stream', {'name': 'stderr', 'text': contents})

    def _read_from_stdin(self):
        return self.raw_input()

    def create_jupyter_subprocess(self, cmd):
        return RealTimeSubprocess(cmd, self._write_to_stdout, self._write_to_stderr, self._read_from_stdin)

    def compile_with_gpp(self, source_filename, binary_filename, cflags=None, ldflags=None):
        cflags = ['-pedantic', '-fPIC', '-std=c++14', '-w', '-shared', '-Wno-unused-but-set-variable', '-Wno-unused-parameter', '-Wno-unused-variable'] + cflags
        if self.linkMaths:
            cflags = cflags + ['-lm']
        if self.wError:
            cflags = cflags + ['-Werror']
        if self.wAll:
            cflags = cflags + ['-Wall']
        if self.readOnlyFileSystem:
            cflags = ['-DREAD_ONLY_FILE_SYSTEM'] + cflags
        if self.bufferedOutput:
            cflags = ['-DBUFFERED_OUTPUT'] + cflags
        args = ['g++', source_filename] + cflags + ['-o', binary_filename] + ldflags
        return self.create_jupyter_subprocess(args)

    def _filter_magics(self, code):

        magics = {'cflags': [],
                  'ldflags': [],
                  'args': []}

        actualCode = ''

        for line in code.splitlines():
            if line.startswith('//%'):
                magicSplit = line[3:].split(":", 2)
                if(len(magicSplit) < 2):
                    self._write_to_stderr("\n[C++ 14 kernel] Magic line starting with '//%' is missing a semicolon, ignoring.")
                    continue

                key, value = magicSplit
                key = key.strip().lower()

                if key in ['ldflags', 'cflags']:
                    for flag in value.split():
                        magics[key] += [flag]
                elif key == "args":
                    # Split arguments respecting quotes
                    for argument in re.findall(r'(?:[^\s,"]|"(?:\\.|[^"])*")+', value):
                        magics['args'] += [argument.strip('"')]

                # always add empty line, so line numbers don't change
                actualCode += '\n'

            # keep lines which did not contain magics
            else:
                actualCode += line + '\n'

        # add default standard if cflags does not contain one
        if not any(item.startswith('-std=') for item in magics["cflags"]):
            magics["cflags"] += ["-std=" + self.standard]

        return magics, actualCode

    # check whether int main() is specified, if not add it around the code
    # also add common magics like -lm
    def _add_main(self, magics, code):
        # remove comments
        tmpCode = re.sub(r"//.*", "", code)
        tmpCode = re.sub(r"/\*.*?\*/", "", tmpCode, flags=re.M|re.S)

        if not re.search(r"int\s+main\s*\(", tmpCode):
            code = self.main_head + code + self.main_foot
            magics['cflags'] += ['-lm']

        # User input
        code = re.sub(r'cin>>|cin >>|cin  >>|cin   >>|cin    >>|cin     >>|std::cin>>|std::cin >>|std::cin  >>|std::cin   >>|std::cin    >>', 
                      r'std::cout<<GET_INPUT_STREAM_JP;std::cin >>', 
                      code)
        code =  re.sub(r'getline|std::getline|getline |std::getline ',
                       r'std::cout<<GET_INPUT_STREAM_JP;std::getline',
                       code)
        
        global_header = "#include" + "\"" + self.resDir + "/gcpph.hpp" + "\""
        code = global_header + "\n" + code

        return magics, code

    def do_execute(self, code, silent, store_history=True, user_expressions=None, allow_stdin=True):

        magics, code = self._filter_magics(code)

        magics, code = self._add_main(magics, code)
        
        with self.new_temp_file(suffix='.cpp') as source_file:
            source_file.write(code)
            source_file.flush()
            with self.new_temp_file(suffix='.out') as binary_file:
                p = self.compile_with_gpp(source_file.name, binary_file.name, magics['cflags'], magics['ldflags'])
                while p.poll() is None:
                    p.write_contents()
                p.write_contents()
                if p.returncode != 0:  # Compilation failed
                    self._write_to_stderr("\n[C++ 14 kernel] Interpreter exited with code {}. The executable cannot be executed".format(p.returncode))
                    os.remove(source_file.name)
                    os.remove(binary_file.name)
                    return {'status': 'ok', 'execution_count': self.execution_count, 'payload': [], 'user_expressions': {}}

        p = self.create_jupyter_subprocess([self.master_path, binary_file.name] + magics['args'])
        while p.poll() is None:
            p.write_contents()

        # wait for threads to finish, so output is always shown
        p._stdout_thread.join()
        p._stderr_thread.join()

        p.write_contents()

        # now remove the files we have just created
        os.remove(source_file.name)
        os.remove(binary_file.name)

        if p.returncode != 0:
            self._write_to_stderr("\n[C++ 14 kernel] Executable exited with code {}".format(p.returncode))
        return {'status': 'ok', 'execution_count': self.execution_count, 'payload': [], 'user_expressions': {}}

    def do_shutdown(self, restart):
        self.cleanup_files()