from re import sub as code_sub, search as code_search, compile as code_compile

from .external_header import CPPExternalHeader

class CPPCodeProcessingUnit:
    
    main_head = 'int main() {'
    main_foot = 'return 0;}'
    comments = r'\/\/.*?(?=\r?\n)|\/\*[\s\S]*?\*\/'
    main_method = r'\b(?:[a-zA-Z_]\w*(?:\s*\*?\s*)?\s+)+main\s*\('
    function_define = r'^[\w\s:<>&*,]+\s+\**\s*\w+\s*\(.*\)\s*{'

    def _prep_main_function(self, code):
        lines = code.splitlines()
        defs_lines = []
        main_body_lines = []
        in_function = False
        brace_count = 0
        func_def_regex = code_compile(self.function_define)
        for line in lines:
            if not in_function and func_def_regex.search(line):
                in_function = True
                brace_count = line.count('{') - line.count('}')
                defs_lines.append(line)
            elif in_function:
                defs_lines.append(line)
                brace_count += line.count('{') - line.count('}')
                if brace_count <= 0:
                    in_function = False
            else:
                main_body_lines.append(line)
        defs = "\n".join(defs_lines).strip()
        main_body = "\n".join(main_body_lines).strip()
        if main_body:
            wrapped_main = f"{self.main_head}\n{main_body}\n{self.main_foot}"
        else:
            wrapped_main = ""
        code = (defs + "\n\n" if defs else "") + wrapped_main
        return code
        
    def _add_code_compat(self, code, cpp_res_path):
        code = code_sub(self.comments, r'', code)
        if not code_search(self.main_method, code):
            code = self._prep_main_function(self, code)
        
        code = f"#include {cpp_res_path}\n{code}"
        code = CPPExternalHeader._support_external_header(CPPExternalHeader, code)
        return code