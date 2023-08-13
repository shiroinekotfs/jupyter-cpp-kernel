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
    #include "basicf/rstdio.h" //stdio.h, but recontructed
    #include "basicf/timer.h" //Timer header

    //dlfcn.h is not available on G++ for Windows
    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
}

//qiskitcpp

#include "qiskitcpp/qiskitcpp.hpp" //Qiskit Quantum Computer Header


//define global variable

#define GET_INPUT_STREAM_JP "<inputRequest>"

#endif