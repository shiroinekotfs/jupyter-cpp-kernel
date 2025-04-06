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
* 
* Note that the classic C headers must place onto the top, except the 
*   <iostream> 
*/

#include <iostream>

extern "C" {
    #include <stdio.h>
    #include <stdint.h>
    #include <stdbool.h>
    #include <stdlib.h>
    #include <ctype.h>
    #include <memory.h>
    #include <stdarg.h>
    #include <string.h>

    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
}

#if __cplusplus >= 201103L
#include <array>
#else
#define nullptr ((char*)0)
#endif

#include <algorithm>
#include <cmath>
#include <memory>
#include <typeinfo>
#include <exception>
#include <fstream>
#include <iomanip>
#include <vector>
#include <sstream>
#include <stdexcept>
#include <string>

/*
Customized Headers

* These headers include certain parameters and compatibilities, that 
*   help C++ kernel runs smoothly on Jupyter Platforms
*/

#include "basicf/mathdefs.hpp" // Math definitions header

extern "C" {
    #include "basicf/rstdio.h" // stdio.h, but recontructed for C
}

#include "cppio/cppin.hpp" // Input
#include "cppio/cppout.hpp" // Output

#endif