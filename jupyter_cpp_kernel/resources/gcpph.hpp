#ifndef  _gcpph_hpp
#define _gcpph_hpp

//global
#include <array>
#include <iostream>
#include <string>
#include <sstream>
#include <cmath>
#include <exception>
#include <typeinfo>
#include <fstream>
#include <vector>
#include <memory>
#include <stdexcept>

//basicf
extern "C" {
    #include <cstdlib>
    #include <cstdio>
    #include "basicf/rstdio.h"
    #include "basicf/timer.h"
    //dlfcn.h is not available on G++ for Windows
    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
}

#define GET_INPUT_STREAM_JP "<inputRequest>"

#endif