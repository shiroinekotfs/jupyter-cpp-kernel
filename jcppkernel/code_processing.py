from re import sub as code_sub, search as code_search

from .external_header import CPPExternalHeader

class CPPCodeProcessingUnit:
    main_head = 'int main() {'
    main_foot = '\treturn 0;\n}'
    comments = r'\/\/.*?(?=\r?\n)|\/\*[\s\S]*?\*\/'
    main_method = r'\bmain\s*\(|^\s*#\s*define\s+\w+\s+main\b'

    def __init__(self, code, cpp_res_path):
        code = code_sub(self.comments, r'', code)
        if not code_search(self.main_method, code):
            code = f"{self.main_head}\n{code}\n{self.main_foot}"
        
        code = f"#include {cpp_res_path}\n{code}"
        code = CPPExternalHeader(code)
        return code