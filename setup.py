from setuptools import setup

setup(
      name='jupyter-cpp-kernel',
      version='1.0.0a8',
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
      packages=['jupyter-cpp-kernel'],
      keywords=['windows', 'macos', 'linux', 'jupyter', 'cpp', 'cpp03', 'cpp11', 'cpp14', 'cpp17', 'cpp20', 'jupyter-kernels', 'pip'],
      include_package_data=True,
      data_files=[
          ("share/jupyter/kernels/cpp03",
           ["kernel_spec/cpp03/logo-64x64.png", "kernel_spec/cpp03/kernel.json", "kernel_spec/cpp03/logo-32x32.png", "kernel_spec/cpp03/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp11",
           ["kernel_spec/cpp11/logo-64x64.png", "kernel_spec/cpp11/kernel.json", "kernel_spec/cpp11/logo-32x32.png", "kernel_spec/cpp11/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp14",
           ["kernel_spec/cpp14/logo-64x64.png", "kernel_spec/cpp14/kernel.json", "kernel_spec/cpp14/logo-32x32.png", "kernel_spec/cpp14/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp17",
           ["kernel_spec/cpp17/logo-64x64.png", "kernel_spec/cpp17/kernel.json", "kernel_spec/cpp17/logo-32x32.png", "kernel_spec/cpp17/logo-svg.svg"]),
          ("share/jupyter/kernels/cpp20",
           ["kernel_spec/cpp20/logo-64x64.png", "kernel_spec/cpp20/kernel.json", "kernel_spec/cpp20/logo-32x32.png", "kernel_spec/cpp20/logo-svg.svg"]),
          ("share/cpp_header",
           ["share/cpp_header/check_cpp.hpp"])
      ]
)