from ipykernel.kernelapp import IPKernelApp
from jcppkernel import CPPKernel

if __name__ == '__main__':
    CPPKernel.standard = "c++03"
    IPKernelApp.launch_instance(kernel_class=CPPKernel)