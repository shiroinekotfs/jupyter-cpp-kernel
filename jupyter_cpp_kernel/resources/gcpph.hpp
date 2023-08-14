/*==============================================================================
GC++ Header for Jupyter C++ kernel

Copyright (C) 2023 Tsuki Takineko

Component: Global Header

Purpose:   Guidance for C++ kernel to get additional features on the gcc
Owner:     Tsuki Takineko (signed-off by Tsuki Takineko)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux, SunOS
First created by: Tsuki Takineko (signed-off by Tsuki Takineko)

Help Link: https://github.com/takinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/takinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#ifndef  _gcpph_hpp
#define _gcpph_hpp

//global, no folder structure
#include <iostream>
#include <array>
#include <cmath>
#include <exception>
#include <fstream>
#include <memory>
#include <vector>
#include <sstream>
#include <stdexcept>
#include <string>
#include <typeinfo>

//basicf
#include "basicf/timer.hpp" //Timer header
extern "C" {
    #include <cstdlib>
    #include <cstdio>
    
    //dlfcn.h is not available on G++ for Windows
    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif

    #ifdef _WIN32
        #include "basicf/corecrt_math_defines.h"
    #endif
    
    #include "basicf/rstdio.h" //stdio.h, but recontructed
}

//qiskitcpp
#include "qiskitcpp/qiskitcpp.hpp" //Qiskit Quantum Computer Header

//define global variable
#define GET_INPUT_STREAM_JP "<inputRequest>"

#endif