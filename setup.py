from setuptools import setup

setup(
      name='jupyter-cpp-kernel',
      version='1.0.0a9',
      description='C++ kernel for Jupyter',
      author='shiroinekotfs',
      author_email='shiroineko.tfs@gmail.com',
      license='MIT',
      classifiers=[
        'Programming Language :: Python :: 3',
        'Programming Language :: C++',
        'License :: OSI Approved :: MIT License',
        'Operating System :: Unix',
        'Operating System :: MacOS',
        'Operating System :: POSIX :: Linux',
        'Operating System :: Microsoft :: Windows'
      ],
      url='https://github.com/shiroinekotfs/jupyter-cpp-kernel',
      download_url='https://github.com/shiroinekotfs/jupyter-cpp-kernel/releases',
      packages=['jcppkernel',
                'jupyter-cpp-kernel-98',
                'jupyter-cpp-kernel-03',
                'jupyter-cpp-kernel-11',
                'jupyter-cpp-kernel-14',
                'jupyter-cpp-kernel-17',
                'jupyter-cpp-kernel-20',
                'jupyter-cpp-kernel-23'],
      keywords=['windows', 'macos', 'linux', 'jupyter', 'cpp', 'jupyter-kernels', 'pip'],
      include_package_data=True,
      data_files=[
          ("share/jupyter/kernels/cpp98", 
            ["jupyter-cpp-kernel-98/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-98/kernel_spec/kernel.json", "jupyter-cpp-kernel-98/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-98/kernel_spec/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp03", 
            ["jupyter-cpp-kernel-03/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-03/kernel_spec/kernel.json", "jupyter-cpp-kernel-03/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-03/kernel_spec/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp11", 
            ["jupyter-cpp-kernel-11/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-11/kernel_spec/kernel.json", "jupyter-cpp-kernel-11/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-11/kernel_spec/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp14", 
            ["jupyter-cpp-kernel-14/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-14/kernel_spec/kernel.json", "jupyter-cpp-kernel-14/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-14/kernel_spec/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp17", 
            ["jupyter-cpp-kernel-17/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-17/kernel_spec/kernel.json", "jupyter-cpp-kernel-17/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-17/kernel_spec/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp20", 
            ["jupyter-cpp-kernel-20/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-20/kernel_spec/kernel.json", "jupyter-cpp-kernel-20/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-20/kernel_spec/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp23", 
            ["jupyter-cpp-kernel-23/kernel_spec/logo-64x64.png", "jupyter-cpp-kernel-23/kernel_spec/kernel.json", "jupyter-cpp-kernel-23/kernel_spec/logo-32x32.png", "jupyter-cpp-kernel-23/kernel_spec/logo-svg.svg"]),
          ("share/cpp_header", ["share/cpp_header/check_cpp.hpp"])
      ]
)