#ifndef  _gcpph_hpp
#define _gcpph_hpp

//global
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
extern "C" {
    #include <cstdlib>
    #include <cstdio>
    //dlfcn.h is not available on G++ for Windows
    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
    #include "basicf/rstdio.h" //stdio.h, but recontructed
    #include "basicf/timer.h" //Timer header
}

//qiskitcpp
#include "qiskitcpp/qiskitcpp.hpp" //Qiskit Quantum Computer Header

//define global variable
#define GET_INPUT_STREAM_JP "<inputRequest>"

#endif