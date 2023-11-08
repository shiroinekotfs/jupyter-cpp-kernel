/*==============================================================================
Check C++ header for Jupyter C++ kernel

DO NOT OVERWRITE

Copyright (C) 2023 shiroinekotfs

Component: Global Header

Purpose:   This header is used to provide checking script for externalization C++
            header
Owner:     shiroinekotfs (signed off by shiroinekotfs)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: shiroinekotfs (signed-off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef _CHECKCPP_CPPKERNEL
#define _CHECKCPP_CPPKERNEL

#include <iostream>

namespace _IS_CPP_KERNEL_ENABLED {
    void check() {
        std::cout << "C++ kernel with external header is enabled and working properly." << std::endl;
    }
}

#endif