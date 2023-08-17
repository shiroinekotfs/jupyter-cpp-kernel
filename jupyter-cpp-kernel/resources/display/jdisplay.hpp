/*==============================================================================
Display Header for C++ kernel for Jupyter

Copyright (C) 2023 Tsuki Takineko

Component: Component Header

Purpose:   Display graphical user interfaces, including images, video, bars,
           and document languages (markdown, html, latex) for Jupyter C++ kernel 
Owner:     Tsuki Takineko
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: Tsuki Takineko (signed off by Tsuki Takineko)
==============================================================================*/

#ifndef JDISPLAY_HPP
#define JDISPLAY_HPP

#include <ostream>
#include <random>

#include "../basicf/json.hpp"

extern "C" {
#ifdef _WIN32
    #include "../basicf/dlfcn.h"
#else
    #include <dlfcn.h>
#endif
}

namespace jdisplay {
    
    

}

#endif
