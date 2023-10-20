from setuptools import setup

setup(name='jupyter-cpp-kernel',
      version='1.0.0a5',
      description='C++ 14 kernel for Jupyter',
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
      keywords=['windows', 'macos', 'linux', 'jupyter', 'cpp', 'cpp14', 'jupyter-kernels', 'pip'],
      include_package_data=True,
      data_files=[
          ("share/jupyter/kernels/cpp14",
           ["kernel_spec/logo-64x64.png", "kernel_spec/kernel.json", "kernel_spec/logo-32x32.png", "kernel_spec/logo-svg.svg"]),
      ]
)
