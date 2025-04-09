from ipykernel.kernelbase import Kernel
from os import path, close as fsclose, name as ostype
from tempfile import mkstemp
import subprocess

from .realtime_subprocess import RealTimeSubprocess
from .code_processing import CPPCodeProcessingUnit
from .temp_file_processing import CPPTempFileProcessing

class CPPKernel(Kernel):
    implementation = "jupyter_cpp_kernel"
    implementation_version = "1.0"
    language = "C++"
    language_version = "C++"
    help_links = [
        {
            "text": "License",
            "url": "https://raw.githubusercontent.com/shiroinekotfs/jupyter-cpp-kernel/refs/heads/master/LICENSE",
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
        self._allow_stdin = True
        self.files = []

        if ostype == "nt":
            self._end_line_sys = "\r\n"
        else:
            self._end_line_sys = "\n"

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

    def _write_to_stdout(self, contents):
        contents = contents.replace(self._end_line_sys, self._end_line_sys * 2)
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

    def _create_jupyter_subprocess(self, cmd):
        return RealTimeSubprocess(
            cmd, self._write_to_stdout, self._write_to_stderr, self._read_from_stdin
        )

    def _compile_with_gpp(self, source_filename, binary_filename):
        return self._create_jupyter_subprocess(
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

    def do_execute(
        self, code, silent, store_history=True, user_expressions=None, allow_stdin=True
    ):
        cpp_res_path = f'"{self.resDir}/gcpph.hpp"'
        code = CPPCodeProcessingUnit()._add_code_compat(code, cpp_res_path)
        
        with CPPTempFileProcessing._new_temp_file(
            CPPTempFileProcessing, self.files, suffix=".cpp"
        ) as source_file, CPPTempFileProcessing._new_temp_file(
            CPPTempFileProcessing, self.files, suffix=".out"
        ) as binary_file:
            source_file.write(code)
            source_file.flush()

            p = self._compile_with_gpp(source_file.name, binary_file.name)
            while p.poll() is None:
                p.write_contents()
            p.write_contents()

            if p.returncode != 0:
                self._write_to_stderr(
                    f"\n[C++ kernel] Error: Unable to compile the source code. Return error: {hex(p.returncode)}."
                )
                return {
                    "status": "ok",
                    "execution_count": self.execution_count,
                    "payload": [],
                    "user_expressions": {},
                }

        p = self._create_jupyter_subprocess([self.master_path, binary_file.name])
        while p.poll() is None:
            p.write_contents()

        p._stdout_thread.join()
        p._stderr_thread.join()
        p.write_contents()

        if p.returncode != 0:
            self._write_to_stderr(
                f"\n[C++ kernel] Error: Executable exited with code {hex(p.returncode)}."
            )

        return {
            "status": "ok",
            "execution_count": self.execution_count,
            "payload": [],
            "user_expressions": {},
        }

    def do_shutdown(self, restart):
        CPPTempFileProcessing._cleanup_files(CPPTempFileProcessing, self.master_path, self.files)
