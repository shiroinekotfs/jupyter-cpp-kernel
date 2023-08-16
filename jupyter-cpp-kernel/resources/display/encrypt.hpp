/*==============================================================================
Crypt Header for C++ kernel for Jupyter

Copyright (C) 2023 Tsuki Takineko

Component: Component Header

Purpose:   Randomize the display ID and its configuration 
Owner:     Tsuki Takineko
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: Tsuki Takineko (signed off by Tsuki Takineko)
==============================================================================*/

#ifndef JENCRYPT_HPP
#define JENCRYPT_HPP

#include <iostream>
#include <random>
#include "../basicf/json.hpp"

extern "C" {
#ifdef _WIN32
    #include "../basicf/dlfcn.h"
#else
    #include <dlfcn.h>
#endif
}

namespace jencrpyt {
    
}

#endif