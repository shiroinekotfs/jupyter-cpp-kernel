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
        defs_lines = []       # Collect lines that belong to function definitions.
        main_body_lines = []  # Collect lines that are not part of any function.
        in_function = False
        brace_count = 0

        # Regex for a complete function definition with the opening brace on the same line.
        func_def_regex = code_compile(
            r'^\s*(?:(?:'
            r'inline|virtual|static|constexpr|_Noreturn'
            r')\s+)*(?!\b(?:'
            r'break|case|continue|default|do|else|for|goto|if|return|switch|while|else if'
            r')\b)(.*?)\s+(\w+)\s*\([^)]*\)\s*{'
        )
        
        # Regex for a potential function header without the opening brace.
        func_header_regex = code_compile(
            r'^\s*(?:(?:'
            r'inline|virtual|static|constexpr|_Noreturn'
            r')\s+)*(?!\b(?:'
            r'break|case|continue|default|do|else|for|goto|if|return|switch|while|else if'
            r')\b)(.*?)\s+(\w+)\s*\([^)]*\)\s*$'
        )
        
        header_buffer = []  # Buffer to accumulate lines for multi-line function headers.
        i = 0
        while i < len(lines):
            line = lines[i]
            
            if not in_function:
                if func_def_regex.search(line):
                    in_function = True
                    brace_count = line.count('{') - line.count('}')
                    defs_lines.append(line)
                elif func_header_regex.search(line):
                    header_buffer = [line]
                    j = i + 1
                    found_brace = False
                    while j < len(lines):
                        next_line = lines[j]
                        header_buffer.append(next_line)
                        if '{' in next_line:
                            found_brace = True
                            in_function = True
                            brace_count = next_line.count('{') - next_line.count('}')
                            break
                        if next_line.strip() == "":
                            break
                        j += 1
                    if found_brace:
                        defs_lines.extend(header_buffer)
                        i = j
                        header_buffer = []
                    else:
                        main_body_lines.extend(header_buffer)
                        header_buffer = []
                else:
                    main_body_lines.append(line)
            else:
                defs_lines.append(line)
                brace_count += line.count('{') - line.count('}')
                if brace_count <= 0:
                    in_function = False
            i += 1

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
            code = self._prep_main_function(code)
        
        code = f"#include {cpp_res_path}\n{code}"
        code = CPPExternalHeader._support_external_header(CPPExternalHeader, code)
        return code