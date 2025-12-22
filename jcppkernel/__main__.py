'''
C++ Kernel - Main Program

Copyright (C) Brendan Rius
Copyright (C) 2024 shiroinekotfs
Copyright (C) 2024 anhvlt-2k6

Component:  Main Program

Purpose:    Serve as the entry of the program, and act as the middle-end
Owner:      shiroinekotfs (signed-off by shiroinekotfs)
Platform:   Windows (WIN32), macOS (X and later), Unix/Linux
First created by:   shiroinekotfs (signed-off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
'''

from ipykernel.kernelbase import Kernel
from sys import platform as osplatform
import subprocess

from .realtime_subprocess import RealTimeSubprocess
from .code_processing import CPPCodeProcessingUnit
from .temp_file_processing import CPPTempFileProcessing

class CPPKernel(Kernel):
    ####################################################################################
    # Properties of the program, including the licenses, help links, and other information
    ####################################################################################
    implementation: str = "jupyter_cpp_kernel"
    implementation_version: str = "1.0"
    language: str = "C++"
    language_version: str = "C++"
    help_links: list[dict[str, str]] = [
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
        }
    ]
    language_info: dict[str, str] = {
        "name": "C++",
        "version": "1.0.0a10",
        "mimetype": "text/markdown",
        "file_extension": ".cpp",
    }
    
    @property
    def banner(self) -> str:
        return (
            f"C++ kernel (Standard: {self.standard}) for Jupyter (master), version 1.0.0a10\n\n"
            "Copyright (C) Brendan Rius\n"
            "Copyright (C) Shiroi Neko\n"
            "Copyright (C) Vo Luu Tuong Anh\n\n"
            "Project Main Page: https://github.com/shiroinekotfs/jupyter-cpp-kernel\n"
            "Track Project Status: https://github.com/users/shiroinekotfs/projects/1\n"
            "Reporting the issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues\n"
            "Legal information: https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/LICENSE\n\n"
            "Notebook tutorial: https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc"
        )

    ####################################################################################
    # Constructor of the program
    ####################################################################################
    def __init__(self, *args, **kwargs):
        # super(CPPKernel, self).__init__(*args, **kwargs)
        
        # System variables (fixed variables)
        self._allow_stdin: bool = True
        self._end_line_sys: str = "\r\n" if osplatform == 'win32' else "\n"
        
        # Sub-modules (to load external objects)
        self.codeProcessingUnit = CPPCodeProcessingUnit()
        self.tmpFileProcessing = CPPTempFileProcessing()
        
        # Sub-calls
        subprocess.call(
            [
                "g++",
                self.codeProcessingUnit.master_source,
                f"-std={self.standard}",
                "-Wno-unused-but-set-variable",
                "-Wno-unused-parameter",
                "-Wno-unused-variable",
                "-ldl",
                "-w",
                "-o",
                self.tmpFileProcessing.master_file,
            ]
        )

    ####################################################################################
    # Front end handler - Read and Write from Jupyter Web Application
    ####################################################################################
    
    # Write contents to the front end (success)
    def _write_to_stdout(self, contents):
        self.send_response(
            self.iopub_socket,
            "display_data",
            {
                "data": {
                    "text/markdown": 
                        contents.replace (
                            self._end_line_sys,
                            self._end_line_sys * 2
                        )
                }, 
                "metadata": {}
            }
        )

    # Write contents to the front end (error)
    def _write_to_stderr(self, contents):
        self.send_response(
            self.iopub_socket, 
            "stream", 
            {
                "name": "stderr",
                "text": contents
            }
        )

    # Read input from Jupyter Web Application
    def _read_from_stdin(self):
        return self.raw_input()

    # Create new process
    def _create_jupyter_subprocess(self, cmd: list[str]) -> RealTimeSubprocess:
        return RealTimeSubprocess(
            cmd, 
            self._write_to_stdout, 
            self._write_to_stderr, 
            self._read_from_stdin
        )

    # Compile that source, using 
    def _compile_with_gpp(self, source_filename: str, binary_filename: str) -> RealTimeSubprocess:
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

    def do_execute(self, code, silent, store_history=True, user_expressions=None, allow_stdin=True):
        code = self.codeProcessingUnit.processing_code(code)
        
        with self.tmpFileProcessing.new_temp_file(suffix=".cpp") as source_file, self.tmpFileProcessing.new_temp_file(suffix=".out") as binary_file:
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

        p = self._create_jupyter_subprocess(
            [
                self.tmpFileProcessing.master_file, 
                binary_file.name
            ]
        )
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
        self.tmpFileProcessing.cleanup_files()
