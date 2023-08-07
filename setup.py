from setuptools import setup
import os.path
import glob

here = os.path.dirname(__file__)

setup(name='jupyter_cpp_kernel',
      version='1.0.0a3',
      description='C++ 14 kernel for Jupyter',
      author='Tsuki Takineko',
      author_email='systakineko.tfs@gmail.com',
      license='MIT',
      classifiers=[
          'License :: OSI Approved :: MIT License',
      ],
      url='https://github.com/takinekotfs/jupyter-cpp-kernel',
      download_url='https://github.com/takinekotfs/jupyter-cpp-kernel',
      packages=['jupyter_cpp_kernel'],
      scripts=['jupyter_cpp_kernel/install_cpp_kernel'],
      keywords=['jupyter', 'cpp', 'cpp14', 'jupyter-kernels', 'pip'],
      include_package_data=True
      data_files=[
          ("share/jupyter/kernels/cpp14",
           glob.glob(os.path.join(here, "kernel_spec/*")))
      ]
)
