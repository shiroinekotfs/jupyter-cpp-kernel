```markdown
This repo is originally created by Brendan Rius - `C Kernel for Jupyter`

You can see the original project at https://github.com/brendan-rius/jupyter-c-kernel

Plus, this C++ kernel only uses C++ 14. The others are being developed
(or not, who knows 😅)
```

[![CodeQL](https://github.com/takinekotfs/jupyter-cpp-kernel/actions/workflows/codeql.yml/badge.svg)](https://github.com/takinekotfs/jupyter-cpp-kernel/actions/workflows/codeql.yml)

# C++ 14 kernel for Jupyter

## Installation

> :warning:
>
> This kernel only works on Linux and macOS.
> If you want to use it on Windows, please consider using [WSL](https://aka.ms/wsl), [Docker](https://docker.com), or using a virtual machine.

Normally, your target machine must meet these requirement packages before installing and using `jupyter-cpp-kernel`.

* `g++`
* `python3`, `python3-pip`
* `jupyter` (recommend `jupyterlab`)

### Install from PyPI

#### Installing on macOS

> :warning:
>
> You must all requirements above before doing anything else.\
> After that, you can copy this script and install the kernel

```shell
pip install jupyter-cpp-kernel
install_cpp_kernel --user
```

#### Installing on Debian/Ubuntu

```shell
sudo apt update && sudo apt full-upgrade -y 
sudo apt install -y g++
sudo apt install -y python3 python3-pip
sudo pip install --upgrade pip
sudo pip install jupyter # Or jupyterlab. Using `sudo` to install to the main packge
sudo pip install jupyter-cpp-kernel # Can be `sudo`, but using it with caution. Only for large deployment Jupyter server
install_cpp_kernel --user # Can be `sudo`, but using it with caution. Only for large deployment Jupyter server
```

### Install from GitHub repo

#### Installing on macOS

> :warning:
>
> You must all requirements above before doing anything else.\
> After that, you can copy this script and install the kernel

```shell
pip install git+https://github.com/takinekotfs/jupyter-cpp-kernel.git
install_cpp_kernel --user
```

#### Installing on Debian/Ubuntu

```shell
sudo apt update && sudo apt full-upgrade -y 
sudo apt install -y g++
sudo apt install -y python3 python3-pip
sudo pip install --upgrade pip
sudo pip install jupyter # Or jupyterlab. Using `sudo` to install to the main packge
sudo pip install git+https://github.com/takinekotfs/jupyter-cpp-kernel.git 
install_cpp_kernel --user # Can be `sudo`, but using it with caution. Only for large deployment Jupyter server
```

## Contributing

You can clone, create a fork or import this repo whenever you want.

Please follow the GitHub standards and the license

## Sample codes

> :warning:
>
> - Raw input into program is still not completed yet. You may cannot using `cin` or any user input parameter.
>
> - For the best practices, you shouldn't write `using namespace std;` because of the conflicts between the `namespace`. This problem doesn't come from the interpreter, it's actually the problem of `g++` globally

### Hello world

```cpp
#include <iostream>

int main() {
    std::cout << "Hello World" << std::endl;
    return 0;
}
```

### Declare variable (`int`) and take a math of them

```cpp
#include <iostream>
#include <cmath>

int main() {
    int x = 3, y = 6;
    std::cout << "Sum of x and y is " << x + y << std::endl;
    std::cout << "Subtract of x and y is " << x - y << std::endl;
    return 0;
}
```

### Condition

#### With `If...else...`

```cpp
#include <iostream>

int main() {
    bool isMale = false;
    if (isMale) {
        std::cout << "Male" << std::endl;
    }
    else {
        std::cout << "Is not Male" << std::endl;
    }
    return 0;
}
```

#### With `switch...case...`

```cpp
#include <iostream>

int main() {
    int number = 1;
    switch (number) {
        case 1:
            std::cout << "1" << std::endl;
        case 2:
            std::cout << "2" << std::endl;
        default:
            std::cout << "Not defined" << std::endl;
    }
    return 0;
}
```

### Loop

#### For float condition

```cpp
#include <iostream>

int main() {
    int lim = 10;
    for (int i = 0; i < lim; i++) {
        std::cout << i << std::endl;
    }
    return 0;
}
```

#### For fixed condition

```cpp
#include <iostream>

int main() {
    int lim = 0;
    while (lim < 10) {
        std::cout << lim << std::endl;
        lim++;
    }
    return 0;
}
```

### Exception handler

```cpp
#include <iostream>

int main() {
    std::cerr << "Exception happened";
}
```
