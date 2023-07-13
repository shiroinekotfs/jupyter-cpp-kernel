from setuptools import setup

setup(name='jupyter_cpp_kernel',
      version='1.0.0a',
      description='C++ kernel for Jupyter',
      author='Tsuki Takineko (ft. Brendan Rius)',
      author_email='systakineko.tfs@gmail.com',
      license='MIT',
      classifiers=[
          'License :: OSI Approved :: MIT License',
      ],
      url='https://github.com/takinekotfs/jupyter-cpp-kernel',
      download_url='',
      packages=['jupyter_cpp_kernel'],
      scripts=['jupyter_cpp_kernel/install_cpp_kernel'],
      keywords=['jupyter', 'cpp14', 'jupyter_kernels', 'cpp', 'pip'],
      include_package_data=True
      )
