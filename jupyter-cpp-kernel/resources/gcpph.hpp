/*==============================================================================
C++ Header for Jupyter C++ kernel

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

/*
Global Headers

* Must place in first place, before C++ kernel customized header
* Since C/C++ is procedural programming language, as the later headers will 
*   override certain values that global define, for compatibilities
*/

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

extern "C" {
    #include <cstdlib>
    #include <cstdio>

    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
}

/*
Customized Headers

* These headers include certain parameters and compatibilities, that 
*   help C++ kernel run smoothly on Jupyter Platforms
*/

#include "basicf/mathdefs.hpp" // Math definitions header

extern "C" {
    #include "basicf/rstdio.h" // stdio.h, but recontructed
}

#include "cppio/cppin.hpp" // Input
#include "cppio/cppout.hpp" // Output

#endif