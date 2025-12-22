from re import sub as code_sub, search as code_search
from sys import prefix as os_prefix
from os import path as os_path, listdir

class CPPCodeProcessingUnit:
    main_head = 'int main() {'
    main_foot = '\treturn 0;\n}'
    comments = r'\/\/.*?(?=\r?\n)|\/\*[\s\S]*?\*\/'
    main_method = r'\bmain\s*\(|^\s*#\s*define\s+\w+\s+main\b'

    def __init__(self):
        self.local_headers: list[str] = self._get_local_headers()
        self.global_header: str = self._get_global_header()
        self.master_source: str = self._get_master_source()
    
    def _get_local_headers(self) -> list[str]:
        header_file: list[str] = []
        current_path: str = os_path.join(os_prefix, "share", "cpp_header")
        
        if not os_path.exists(current_path): return
        
        for filename in listdir(current_path):
            if filename.lower().endswith('.hpp') or filename.lower().endswith('.h'):
                header_file.append(os_path.abspath(os_path.join(current_path, filename)))
        
        return header_file
    
    def _get_global_header(self) -> str:
        return str(os_path.abspath(os_path.dirname(__file__))) + '/resources/gcpph.hpp'
    
    def _get_master_source(self) -> str:
        return os_path.join(os_path.dirname(__file__), 'resources', 'master.cpp')
        
    def processing_code(self, code) -> str:
        code = code_sub(self.comments, r'', code)
        
        if not code_search(self.main_method, code): code = f"{self.main_head}\n{code}\n{self.main_foot}"
        
        code = f'#include "{self.global_header}"\n{code}'
        
        for header_path in self.local_headers:
            code = f'#include "{header_path}"\n{code}'
        
        return code
