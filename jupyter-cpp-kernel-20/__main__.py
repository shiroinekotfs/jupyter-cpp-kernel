from ipykernel.kernelapp import IPKernelApp
from jcppkernel import CPPKernel

if __name__ == '__main__':
    CPPKernel.standard = "c++20"
    IPKernelApp.launch_instance(kernel_class=CPPKernel)