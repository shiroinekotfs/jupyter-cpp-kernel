from os import remove, path
from tempfile import NamedTemporaryFile

class CPPTempFileProcessing:
    
    def _new_temp_file(self, files, **kwargs):
        file = NamedTemporaryFile(delete=False, mode="w", **kwargs)
        files.append(file.name)
        return file

    
    def _cleanup_files(self, master_path, files):
        for file in files:
            if path.exists(file):
                remove(file)
        remove(master_path)