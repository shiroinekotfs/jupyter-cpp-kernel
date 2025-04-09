from re import sub as code_sub, search as code_search, compile as code_compile

from .external_header import CPPExternalHeader

class CPPCodeProcessingUnit:
    
    main_head = 'int main() {'
    main_foot = '\treturn 0;\n}'
    comments = r'\/\/.*?(?=\r?\n)|\/\*[\s\S]*?\*\/'
    main_method = r'\bmain\s*\(|^\s*#\s*define\s+\w+\s+main\b'
    
    def _prep_main_function(self, code):
        code = f"{self.main_head}\n{code}\n{self.main_foot}"
        return code

    def _add_code_compat(self, code, cpp_res_path):
        code = code_sub(self.comments, r'', code)
        if not code_search(self.main_method, code):
            code = self._prep_main_function(code)
        
        code = f"#include {cpp_res_path}\n{code}"
        code = CPPExternalHeader._support_external_header(CPPExternalHeader, code)
        return code