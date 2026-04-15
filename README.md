> ℹ️
> * For C/C++ header add-on development, [try this template](https://github.com/shiroinekotfs/jupyter-cpp-header-template)
> * [Security issue with Jupyter Notebooks](https://github.com/shiroinekotfs/jupyter-cpp-kernel/discussions/20)
> * [Track `jupyter-cpp-kernel` on PePY](https://www.pepy.tech/projects/jupyter-cpp-kernel)

[![CodeQL](https://github.com/shiroinekotfs/jupyter-cpp-kernel/actions/workflows/codeql.yml/badge.svg)](https://github.com/shiroinekotfs/jupyter-cpp-kernel/actions/workflows/codeql.yml)

![GitHub repo size](https://img.shields.io/github/repo-size/shiroinekotfs/jupyter-cpp-kernel)
![GitHub Repo stars](https://img.shields.io/github/stars/shiroinekotfs/jupyter-cpp-kernel)
[![Total Downloads](https://static.pepy.tech/badge/jupyter-cpp-kernel)](https://pepy.tech/project/jupyter-cpp-kernel)
[![Downloads](https://static.pepy.tech/badge/jupyter-cpp-kernel/month)](https://pepy.tech/project/jupyter-cpp-kernel)

# C++ (General) kernel for Jupyter

## Installation

Your machine needs:

* `g++` (Linux/macOS: system package; Windows: conda-forge `gxx` or [WinLibs](https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/INSTALL_ON_WINDOWS.md))
* Python 3.9+ with `pip`
* `jupyter` (recommend `jupyterlab`)

### Install from PyPI

```shell
pip install jupyter-cpp-kernel
jupyter-cpp-kernel-install
```

### Install from the GitHub repo

```shell
pip install git+https://github.com/shiroinekotfs/jupyter-cpp-kernel.git
jupyter-cpp-kernel-install
```

> :information_source:
>
> `jupyter-cpp-kernel-install` registers the kernels for the **current Python
> interpreter** (the one that pip just installed into). The `pip` step alone
> registers a fallback spec that uses `python3`, which may resolve to the wrong
> interpreter or fail entirely on Windows. Always run the install command after
> pip.
>
> **Windows users:** install `g++` first via conda-forge (`mamba install gxx`)
> or [WinLibs](https://github.com/shiroinekotfs/jupyter-cpp-kernel/blob/master/INSTALL_ON_WINDOWS.md)
> before running `pip install`.
>
> Options:
> ```
> jupyter-cpp-kernel-install --user        # install for current user only
> jupyter-cpp-kernel-install --sys-prefix  # install into current conda env / venv (default)
> jupyter-cpp-kernel-install --prefix DIR  # install into a specific prefix
> ```

## Contributing

You can clone, create a fork, or import this repo whenever possible.

Please follow the GitHub standards and the license

## Guides (notebook)

<p align="center">
    <b>See more at </b><a href="https://github.com/shiroinekotfs/jupyter-cpp-kernel-doc">here</a>
    <br><br>
    <img src="https://github.com/shiroinekotfs/jupyter-cpp-kernel/assets/115929530/201d3f51-fa4c-44d4-bc2b-4ea2a252f13c" />
</p>
