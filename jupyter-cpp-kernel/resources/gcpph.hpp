/*==============================================================================
GC++ Header for Jupyter C++ kernel

Copyright (C) 2024 shiroinekotfs

Component: Global Header

Purpose:   Guidance for C++ kernel to get additional features on the GCC
Owner:     shiroinekotfs (signed off by shiroinekotfs)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: shiroinekotfs (signed-off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef _GCPPH_HPP
#define _GCPPH_HPP

//global, no folder structure
#include <iostream>

#include <array>
#include <algorithm>
#include <cmath>
#include <exception>
#include <fstream>
#include <memory>
#include <iomanip>
#include <vector>
#include <sstream>
#include <stdexcept>
#include <string>
#include <typeinfo>

//basicf
#include "basicf/mathdefs.hpp" //Math definitions header
extern "C" {
    #include <cstdlib>
    #include <cstdio>
    #include "basicf/rstdio.h" //stdio.h, but recontructed

    //dlfcn.h is not available on G++ for Windows
    //Make sure you have installed dl-lib onto the Windows first
    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
}

//user input
#define __GET_INPUT_STREAM_JP "<inputRequest>"

//output
#include "output/display_core.hpp"

#endif
