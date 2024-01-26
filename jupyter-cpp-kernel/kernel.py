import asyncio
from queue import Queue
from threading import Thread
from ipykernel.kernelbase import Kernel
import re
import subprocess
import tempfile
from tempfile import NamedTemporaryFile
import os
import os.path as path

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
            while not queue.empty():
                res += queue.get_nowait()
            return res

        stderr_contents = read_all_from_queue(self._stderr_queue)
        if stderr_contents:
            self._write_to_stderr(stderr_contents)

        stdout_contents = read_all_from_queue(self._stdout_queue)
        if stdout_contents:
            contents = stdout_contents.decode()

            input_request_index = contents.find(self.__class__.inputRequest)
            if input_request_index >= 0:
                pre_input = contents[:input_request_index]
                post_input = contents[input_request_index + len(self.__class__.inputRequest):]
                
                if pre_input:
                    self._write_to_stdout(pre_input)

                read_line = ""
                while not read_line:
                    read_line = self._read_from_stdin()

                read_line += "\n"
                self.stdin.write(read_line.encode())

                if post_input:
                    self._write_to_stdout(post_input)
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
    
    introduction = "C++ 14 kernel for Jupyter (master), version 1.0.0a6\n\n"
    cp_banner = "Copyright (C) 2023 shiroinekotfs\nCopyright (C) Brendan Rius\nCopyright (C) Free Software Foundation, Inc\n\n"
    links_guide = "Legal information: https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/LICENSE\nNotebook tutorial: https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc\n\nAuthor GitHub profile: https://github.com/shiroinekotfs\n"
    reporting_links = "Reporting the issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues"

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
        self.wError = False # but keep compiling for warnings
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
        # We don't want the file to be deleted when closed, but only when the kernel stops
        file = tempfile.NamedTemporaryFile(delete=False, mode='w', **kwargs)
        self.files.append(file.name)
        return file

    def _write_to_stdout(self, contents):
        contents = contents.replace("\r\n", "<br>")
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
        cflags = cflags or []
        cflags += ['-pedantic', '-fPIC', '-std=c++14', '-w', '-shared', 
                '-Wno-unused-but-set-variable', '-Wno-unused-parameter', '-Wno-unused-variable']

        if self.linkMaths:
            cflags.append('-lm')
        if self.wError:
            cflags.append('-Werror')
        if self.wAll:
            cflags.append('-Wall')
        if self.readOnlyFileSystem:
            cflags = ['-DREAD_ONLY_FILE_SYSTEM'] + cflags
        if self.bufferedOutput:
            cflags = ['-DBUFFERED_OUTPUT'] + cflags

        args = ['g++', source_filename] + cflags + ['-o', binary_filename] + (ldflags or [])
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
                    magics['args'] = [argument.strip('"') for argument in re.findall(r'(?:[\s,"]|"(?:\.|["])*")+', value, timeout=1)]

                # always add empty line, so line numbers don't change
                actualCode += '\n'

            # keep lines which did not contain magics
            else:
                actualCode += line + '\n'

        # add default standard if cflags does not contain one
        if not any(item.startswith('-std=') for item in magics["cflags"]):
            magics["cflags"] += ["-std=" + self.standard]

        return magics, actualCode

    def _find_local_header(self):
        import sys
        from os.path import abspath, dirname, exists, join

        path = abspath(dirname(__file__))
        starting_points = [path, sys.prefix]

        for path in starting_points:
            while path != '/':
                share_jupyterhub = join(path, 'share', 'cpp_header')
                if all(exists(join(share_jupyterhub, f)) for f in ['check_cpp.hpp']):
                    return share_jupyterhub
                path = dirname(path)

        # didn't find it, give up
        return ''

    def _support_external_header(self, code):
        DATA_FILES_PATH = self._find_local_header()
        for file in os.listdir(DATA_FILES_PATH):
            path_to_header = os.path.join(DATA_FILES_PATH, file)
            if os.path.isfile(path_to_header):
                code = "#include \"" + path_to_header + "\"\n" + code
        return code

    # check whether int main() is specified, if not add it around the code
    # also add common magics like -lm
    def _add_main(self, magics, code):
        if "int main(" not in code:
            code = self.main_head + "\n" + code + "\n" + self.main_foot
        code = re.sub(r'(std::)?cin *>>', r'std::cout<<GET_INPUT_STREAM_JP;std::cin >>', code)
        code =  re.sub(r'(std::)?getline *', r'std::cout<<GET_INPUT_STREAM_JP;std::getline ', code)
        global_header = "#include" + "\"" + self.resDir + "/gcpph.hpp" + "\""
        code = global_header + "\n" + code
        code = self._support_external_header(code)
        return magics, code

    async def async_compile_with_gpp(self, source_file, binary_file, cflags, ldflags):
        # Asynchronously compile the source file
        command = ["g++", source_file, "-o", binary_file] + cflags + ldflags
        process = await asyncio.create_subprocess_exec(*command)
        await process.wait()

    async def async_execute_binary(self, binary_file, args):
        # Asynchronously execute the binary file
        command = [binary_file] + args
        process = await asyncio.create_subprocess_exec(*command)
        await process.wait()

    async def run_async_code(self, code, magics):
        with NamedTemporaryFile(suffix='.cpp', delete=False) as source_file:
            source_file.write(code.encode('utf-8'))

        with NamedTemporaryFile(suffix='.out', delete=False) as binary_file:
            source_filename = source_file.name
            binary_filename = binary_file.name

        try:
            # Asynchronously compile the source file
            compile_task = asyncio.ensure_future(
                self.async_compile_with_gpp(source_filename, binary_filename, magics['cflags'], magics['ldflags'])
            )

            # Asynchronously execute the binary file
            execute_task = asyncio.ensure_future(
                self.async_execute_binary(binary_filename, magics['args'])
            )

            # Wait for both tasks to complete
            await asyncio.gather(compile_task, execute_task)

        finally:
            # Remove temporary files
            os.remove(source_filename)
            os.remove(binary_filename)

    def do_execute(self, code, silent, store_history=True, user_expressions=None, allow_stdin=True):
        magics, code = self._filter_magics(code)
        magics, code = self._add_main(magics, code)

        # Get the current event loop and run the async code
        asyncio.get_event_loop().run_until_complete(self.run_async_code(code, magics))

        return {'status': 'ok', 'execution_count': self.execution_count, 'payload': [], 'user_expressions': {}}

    def do_shutdown(self, restart):
        self.cleanup_files()