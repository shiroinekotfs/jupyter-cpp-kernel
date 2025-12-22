from os import remove
from tempfile import NamedTemporaryFile
from os import close as fsclose, path
from sys import platform as osplatform
from tempfile import mkstemp

class CPPTempFileProcessing:
    def __init__(self):
        self.files: list[str] = []
        self.master_file: str = self._create_master_file()
    
    def _create_master_file(self) -> str:
        master_temp: tuple[int, str] = mkstemp(suffix = '_master.exe' if osplatform == 'win32' else '_master.out')
        fsclose(master_temp[0])
        return master_temp[1]
    
    def new_temp_file(self, **kwargs) -> NamedTemporaryFile:
        file: NamedTemporaryFile = NamedTemporaryFile(delete=False, mode="w", **kwargs)
        self.files.append(file.name)
        return file
    
    def cleanup_files(self) -> None:
        for file in self.files:
            if path.exists(file): remove(file)
        remove(self.master_file)