from setuptools import setup

setup(name='jupyter_cpp_kernel',
      version='1.0.0',
      description='Minimalistic C++ kernel for Jupyter',
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
      keywords=['jupyter', 'notebook', 'kernel', 'cpp'],
      include_package_data=True
      )
