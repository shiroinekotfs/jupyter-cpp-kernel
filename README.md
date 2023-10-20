```markdown
This repo is originally created by Brendan Rius - `C Kernel for Jupyter`

You can see the original project at https://github.com/brendan-rius/jupyter-c-kernel

Plus, this C++ kernel only uses C++ 14. The others are being developed
(or not, who knows 😅)
```

[![CodeQL](https://github.com/shiroinekotfs/jupyter-cpp-kernel/actions/workflows/codeql.yml/badge.svg)](https://github.com/shiroinekotfs/jupyter-cpp-kernel/actions/workflows/codeql.yml)

# C++ 14 kernel for Jupyter

## Installation

> :warning:
>
> If you want to use it on Windows, please installing the [GNU Compiler Collection for Windows](https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/INSTALL_ON_WINDOWS.md)

Normally, your target machine must meet these requirement packages before installing and using `jupyter-cpp-kernel`.

* `g++`
* `python3`, `python3-pip`
* `jupyter` (recommend `jupyterlab`)

### Install from PyPI

#### Installing on macOS and Windows

> :warning:
>
> You must all requirements above before doing anything else.
> After that, you can copy this script and install the kernel

```shell
pip install jupyter-cpp-kernel
```

#### Installing on Debian/Ubuntu

```shell
sudo apt update && sudo apt full-upgrade -y 
sudo apt install -y g++
sudo apt install -y python3 python3-pip
sudo pip install --upgrade pip
sudo pip install jupyter # Or jupyterlab. Using `sudo` to install to the main packge
sudo pip install jupyter-cpp-kernel # Can be `sudo`, but using it with caution. Only for large deployment Jupyter server
```

### Install from GitHub repo

#### Installing on macOS and Windows

> :warning:
>
> You must all requirements above before doing anything else.\
> After that, you can copy this script and install the kernel

```shell
pip install git+https://github.com/shiroinekotfs/jupyter-cpp-kernel.git
```

#### Installing on Debian/Ubuntu

```shell
sudo apt update && sudo apt full-upgrade -y 
sudo apt install -y g++
sudo apt install -y python3 python3-pip
sudo pip install --upgrade pip
sudo pip install jupyter # Or jupyterlab. Using `sudo` to install to the main packge
sudo pip install git+https://github.com/shiroinekotfs/jupyter-cpp-kernel.git 
```

## Contributing

You can clone, create a fork or import this repo whenever you want.

Please follow the GitHub standards and the license

## Guides (notebook)

<p align="center">
    <b>See more at </b><a href="https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc">here</a>
    <img src="https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/201d3f51-fa4c-44d4-bc2b-4ea2a252f13c" />
</p>
