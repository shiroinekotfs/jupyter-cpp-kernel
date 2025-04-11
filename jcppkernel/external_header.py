from sys import prefix
from os import path, scandir

class CPPExternalHeader:
    def _find_local_header(self):
        search_paths = [path.abspath(path.dirname(__file__)), prefix]
        for base in search_paths:
            current = base
            while current != path.sep:
                cpp_header_path = path.join(current, "share", "cpp_header")
                if path.exists(path.join(cpp_header_path, "check_cpp.hpp")):
                    return cpp_header_path
                new_current = path.dirname(current)
                if new_current == current:
                    break
                current = new_current
        return ""
    
    def _support_external_header(self, code):
        DATA_FILES_PATH = self._find_local_header(self)
        includes = []
        try:
            with scandir(DATA_FILES_PATH) as entries:
                for entry in entries:
                    if entry.is_file():
                        includes.append(f'#include "{entry.path}"\n')
        except FileNotFoundError:
            pass
        return "".join(includes) + code
