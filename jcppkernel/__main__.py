from queue import Queue
from threading import Thread
from ipykernel.kernelbase import Kernel
from os import path, remove, close as fsclose, name as ostype, scandir
from sys import prefix
from tempfile import mkstemp, NamedTemporaryFile
from re import search as code_search
import subprocess

class RealTimeSubprocess(subprocess.Popen):
    inputRequest = "<inputRequest>"

    def __init__(self, cmd, write_to_stdout, write_to_stderr, read_from_stdin):
        self._write_to_stdout = write_to_stdout
        self._write_to_stderr = write_to_stderr
        self._read_from_stdin = read_from_stdin
        super().__init__(
            cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            stdin=subprocess.PIPE,
            bufsize=0,
        )
        self._stdout_buffer = ""
        self._stderr_buffer = ""
        self._stdout_queue = Queue()
        self._stdout_thread = Thread(
            target=RealTimeSubprocess._enqueue_output,
            args=(self.stdout, self._stdout_queue),
        )
        self._stdout_thread.daemon = True
        self._stdout_thread.start()
        self._stderr_queue = Queue()
        self._stderr_thread = Thread(
            target=RealTimeSubprocess._enqueue_output,
            args=(self.stderr, self._stderr_queue),
        )
        self._stderr_thread.daemon = True
        self._stderr_thread.start()

    @staticmethod
    def _enqueue_output(stream, queue):
        while True:
            data = stream.read(4096)
            if not data:
                break
            queue.put(data)
        stream.close()

    def write_contents(self):
        def read_all_from_queue(queue, buffer):
            # Append new data to the existing buffer
            while not queue.empty():
                buffer += queue.get_nowait().decode()
            return buffer

        self._stderr_buffer = read_all_from_queue(self._stderr_queue, self._stderr_buffer)
        if self._stderr_buffer:
            self._write_to_stderr(self._stderr_buffer)
            self._stderr_buffer = ""  # reset after writing

        self._stdout_buffer = read_all_from_queue(self._stdout_queue, self._stdout_buffer)
        # Check if the full token is present in the accumulated output
        token_index = self._stdout_buffer.find(self.__class__.inputRequest)
        if token_index >= 0:
            # Remove the token from the output
            before_token = self._stdout_buffer[:token_index]
            after_token = self._stdout_buffer[token_index + len(self.__class__.inputRequest):]
            if before_token:
                self._write_to_stdout(before_token)
            # Update the buffer with the remaining data after the token
            self._stdout_buffer = after_token

            # Read input from the user until non-empty
            readLine = ""
            while not readLine:
                readLine = self._read_from_stdin()
            readLine += "\n"
            self.stdin.write(readLine.encode())
            self.stdin.flush()  # Ensure it's sent immediately
        else:
            # If no complete token is found, flush whatever is available
            if self._stdout_buffer:
                self._write_to_stdout(self._stdout_buffer)
                self._stdout_buffer = ""

class CPPKernel(Kernel):
    implementation = "jupyter_cpp_kernel"
    implementation_version = "1.0"
    language = "C++"
    language_version = "C++"
    help_links = [
        {
            "text": "License",
            "url": "https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/LICENSE",
        },
        {
            "text": "Notebook tutorial",
            "url": "https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc",
        },
        {
            "text": "Reporting the issue",
            "url": "https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues",
        },
    ]
    language_info = {
        "name": "C++",
        "version": "1.0.0a9",
        "mimetype": "text/markdown",
        "file_extension": ".cpp",
    }

    def __init__(self, *args, **kwargs):
        super(CPPKernel, self).__init__(*args, **kwargs)
        self.main_head = "#include <iostream>\nint main() {\n"
        self.main_foot = "\nreturn 0;\n}"
        self._allow_stdin = True
        self.files = []
        master_temp = mkstemp(suffix=".out")
        fsclose(master_temp[0])
        self.master_path = master_temp[1]
        self.resDir = path.join(path.dirname(path.realpath(__file__)), "resources")
        filepath = path.join(self.resDir, "master.cpp")
        subprocess.call(
            [
                "g++",
                filepath,
                f"-std={self.standard}",
                "-Wno-unused-but-set-variable",
                "-Wno-unused-parameter",
                "-Wno-unused-variable",
                "-ldl",
                "-w",
                "-o",
                self.master_path,
            ]
        )

    @property
    def banner(self):
        return (
            f"C++ kernel (Standard: {self.standard}) for Jupyter (master), version 1.0.0a9\n\n"
            "Copyright (C) Brendan Rius\n"
            "Copyright (C) Shiroi Neko\n"
            "Copyright (C) Vo Luu Tuong Anh\n\n"
            "Project Main Page: https://github.com/shiroinekotfs/jupyter-cpp-kernel\n"
            "Track Project Status: https://github.com/users/shiroinekotfs/projects/1\n"
            "Reporting the issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues\n"
            "Legal information: https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/LICENSE\n\n"
            "Notebook tutorial: https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc"
        )

    def cleanup_files(self):
        for file in self.files:
            if path.exists(file):
                remove(file)
        remove(self.master_path)

    def new_temp_file(self, **kwargs):
        file = NamedTemporaryFile(delete=False, mode="w", **kwargs)
        self.files.append(file.name)
        return file

    def _write_to_stdout(self, contents):
        if ostype == "nt":
            contents = contents.replace("\r\n", "\r\n\r\n")
        else:
            contents = contents.replace("\n", "\n\n")
        self.send_response(
            self.iopub_socket,
            "display_data",
            {"data": {"text/markdown": contents}, "metadata": {}},
        )

    def _write_to_stderr(self, contents):
        self.send_response(
            self.iopub_socket, "stream", {"name": "stderr", "text": contents}
        )

    def _read_from_stdin(self):
        return self.raw_input()

    def create_jupyter_subprocess(self, cmd):
        return RealTimeSubprocess(
            cmd, self._write_to_stdout, self._write_to_stderr, self._read_from_stdin
        )

    def compile_with_gpp(self, source_filename, binary_filename):
        return self.create_jupyter_subprocess(
            [
                "g++",
                source_filename,
                "-pedantic",
                "-fPIC",
                f"-std={self.standard}",
                "-w",
                "-shared",
                "-Wno-unused-but-set-variable",
                "-Wno-unused-parameter",
                "-Wno-unused-variable",
                "-lm",
                "-Wall",
                "-DBUFFERED_OUTPUT",
                "-o",
                binary_filename,
            ]
        )

    def _find_local_header(self):
        if hasattr(self, "_cached_local_header"):
            return self._cached_local_header
        search_paths = [path.abspath(path.dirname(__file__)), prefix]
        for base in search_paths:
            current = base
            while current != path.sep:
                cpp_header_path = path.join(current, "share", "cpp_header")
                if path.exists(path.join(cpp_header_path, "check_cpp.hpp")):
                    self._cached_local_header = cpp_header_path
                    return cpp_header_path
                new_current = path.dirname(current)
                if new_current == current:
                    break
                current = new_current
        self._cached_local_header = ""
        return ""

    def _support_external_header(self, code):
        DATA_FILES_PATH = self._find_local_header()
        includes = []
        try:
            with scandir(DATA_FILES_PATH) as entries:
                for entry in entries:
                    if entry.is_file():
                        includes.append(f'#include "{entry.path}"\n')
        except FileNotFoundError:
            pass
        return "".join(includes) + code

    def _add_code_compat(self, code, cpp_res_path):
        if not code_search(r"\b(?:[a-zA-Z_][\w\s\*]*\s+)+main\s*\(\s*([^)]*)\s*\)", code):
            code = f"{self.main_head}\n{code}\n{self.main_foot}"
        code = "#include" + cpp_res_path + "\n" + code
        code = self._support_external_header(code)
        return code

    def do_execute(
        self, code, silent, store_history=True, user_expressions=None, allow_stdin=True
    ):
        cpp_res_path = f'"{self.resDir}/gcpph.hpp"'
        code = self._add_code_compat(code, cpp_res_path)

        with self.new_temp_file(suffix=".cpp") as source_file, self.new_temp_file(
            suffix=".out"
        ) as binary_file:
            source_file.write(code)
            source_file.flush()

            p = self.compile_with_gpp(source_file.name, binary_file.name)
            while p.poll() is None:
                p.write_contents()
            p.write_contents()

            if p.returncode != 0:
                self._write_to_stderr(
                    f"\n[C++ kernel] Error: Unable to compile the source code. Return error: {p.returncode}."
                )
                return {
                    "status": "ok",
                    "execution_count": self.execution_count,
                    "payload": [],
                    "user_expressions": {},
                }

        p = self.create_jupyter_subprocess([self.master_path, binary_file.name])
        while p.poll() is None:
            p.write_contents()

        p._stdout_thread.join()
        p._stderr_thread.join()
        p.write_contents()

        if p.returncode != 0:
            self._write_to_stderr(
                f"\n[C++ kernel] Error: Executable exited with code {p.returncode}."
            )

        return {
            "status": "ok",
            "execution_count": self.execution_count,
            "payload": [],
            "user_expressions": {},
        }

    def do_shutdown(self, restart):
        self.cleanup_files()
