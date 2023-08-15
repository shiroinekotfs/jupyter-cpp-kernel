from ipykernel.kernelapp import IPKernelApp
from .kernel import CPPKernel
IPKernelApp.launch_instance(kernel_class=CPPKernel)
