import sys
from ipykernel.kernelapp import IPKernelApp
from .kernel import CPPKernel

def parse_argv(argv):
    for i in argv:
        if '-std=' in i:
            return i[5:10]

def main():
    std_flag = parse_argv(sys.argv)    
    IPKernelApp.launch_instance(kernel_class=CPPKernel, std_flag=std_flag)

if __name__ == '__main__':
    main()