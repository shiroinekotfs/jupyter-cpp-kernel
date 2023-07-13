# Minimal C++ kernel for Jupyter

```markdown
This repo is originally created by Brendan Rius - `C Kernel for Jupyter`

You can see the original profile at https://github.com/brendan-rius/jupyter-c-kernel
```

## Manual installation

> :warning:
>
> This kernel only works on Linux and macOS.
> If you want to use on Windows, please consider to use [WSL](https://aka.ms/wsl), [Docker](https://docker.com), or using a virtual machine.

Normally, your target machine must meet these requirement packages before installing and using `jupyter-cpp-kernel`.

* `gcc`, `g++`, `make`, `cmake`, `automake`
* `python3`, `python3-pip`
* `jupyter` (recommend `jupyterlab`)

### Installing on macOS

> :warning:
>
> You must all requirement above before doing anything else
> I don't use macOS too regular, so I don't know how macOS get these packages
> But you can follow insallation instruction on the Internet
> After that, you can copy this script and install the kernel

```shell
pip install jupyter-c-kernel
install_cpp_kernel
```

### Installing on Debian/Ubuntu

```shell
sudo apt update && sudo apt full-upgrade -y 
sudo apt install -y gcc g++ make cmake automake
sudo apt install -y python3 python3-pip
sudo pip install --upgrade pip
sudo pip install jupyter # Or jupyterlab. Using `sudo` to install to the main packge
pip install jupyter-c-kernel # Can be `sudo`, but using it with caution. Only for large deployment Jupyter server
install_cpp_kernel # Can be `sudo`, but using it with caution. Only for large deployment Jupyter server
```

## Contributing

You can clone, create a fork or import this repo whenever you want.

Please follow the GitHub standards and the license
