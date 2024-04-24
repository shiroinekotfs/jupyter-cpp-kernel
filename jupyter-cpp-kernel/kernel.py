from queue import Queue
from threading import Thread
from ipykernel.kernelbase import Kernel
from os.path import abspath, dirname, exists, join

import re
import subprocess
import tempfile
import os
import os.path as path
import sys

class RealTimeSubprocess(subprocess.Popen):

    inputRequest = "<inputRequest>"

    def __init__(self, cmd, write_to_stdout, write_to_stderr, read_from_stdin):        
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
        for line in iter(lambda: stream.read(4096), b''):
            queue.put(line)
        stream.close()

    def write_contents(self):
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
    language = 'c++'
    language_version = 'C++14'
    language_info = {
                     'name': 'text/markdown',
                     'mimetype': 'text/markdown',
                     'file_extension': '.cpp'
                    }
    
    introduction = "C++ 14 kernel for Jupyter (master), version 1.0.0a8\n\n"
    cp_banner = "Copyright (C) Shiroi Neko (Tiểu Bạch Miêu)\nCopyright (C) Brendan Rius\nCopyright (C) Free Software Foundation, Inc\n\n"
    links_guide = "Legal information: https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/LICENSE\nNotebook tutorial: https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc\n\nAuthor GitHub profile: https://github.com/shiroinekotfs\n"
    reporting_links = "Reporting the issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues"

    banner = introduction + cp_banner + links_guide + reporting_links

    main_head = "#include <iostream>\n" + "int main() {\n"

    main_foot = "\nreturn 0;\n}"

    def __init__(self, *args, **kwargs):
        super(CPPKernel, self).__init__(*args, **kwargs)
        self._allow_stdin = True
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
        if os.name == 'nt':
            contents = contents.replace("\r\n", "\r\n\r\n")
        else:
            contents = contents.replace("\n", "\n\n")
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
        return self.create_jupyter_subprocess(
            ['g++', source_filename] + 
            ['-pedantic', 
             '-fPIC', 
             '-std=c++14', 
             '-w', '-shared', 
             '-Wno-unused-but-set-variable', 
             '-Wno-unused-parameter', 
             '-Wno-unused-variable', 
             '-lm', 
             '-Wall', 
             '-DBUFFERED_OUTPUT'
             ] + cflags + 
             ['-o', binary_filename] + 
             ldflags
            )

    def _find_local_header(self):
        search_paths = [os.path.abspath(os.path.dirname(__file__)), sys.prefix]
        for path in search_paths:
            while path != '/':
                cpp_header_path = os.path.join(path, 'share', 'cpp_header')
                if os.path.exists(os.path.join(cpp_header_path, 'check_cpp.hpp')):
                    return cpp_header_path
                path = os.path.dirname(path)
        return ''

    def _support_external_header(self, code):
        DATA_FILES_PATH = self._find_local_header()
        for file in os.listdir(DATA_FILES_PATH):
            path_to_header = os.path.join(DATA_FILES_PATH, file)
            if os.path.isfile(path_to_header):
                code = "#include \"" + path_to_header + "\"\n" + code
        return code

    def _add_main(self, magics, code):
        if not re.search(r'int\s+main\s*\(\s*\)', code):
            code = f"{self.main_head}\n{code}\n{self.main_foot}"
        code = re.sub(r'(std::)?cin *>>', r'std::cout << __GET_INPUT_STREAM_JP;std::cin >>', code)
        code =  re.sub(r'(std::)?getline *', r'std::cout << __GET_INPUT_STREAM_JP;std::getline ', code)
        code = "#include" + "\"" + self.resDir + "/gcpph.hpp" + "\"" + "\n" + code
        code = self._support_external_header(code)
        return magics, code

    def do_execute(self, code, silent, store_history=True, user_expressions=None, allow_stdin=True):
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
            self._write_to_stderr("\n[C++ 14 Error] Executable exited with code {}".format(p.returncode))
        
        return {'status': 'ok', 'execution_count': self.execution_count, 'payload': [], 'user_expressions': {}}

    def do_shutdown(self, restart):
        self.cleanup_files()