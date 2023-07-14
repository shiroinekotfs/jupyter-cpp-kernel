from setuptools import setup

setup(name='jupyter_cpp_kernel',
      version='1.0.0a2',
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
      )
