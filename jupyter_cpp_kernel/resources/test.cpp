//test.cpp is only can be used for testing
//  - By Tsuki Takineko

extern "C" {
    #include <cstdlib>
    #include <cstdio>
    #include "basicf/rstdio.h"
    //dlfcn.h is not available on G++ for Windows
    #ifdef _WIN32
        #include "basicf/dlfcn.h" //local
    #else
        #include <dlfcn.h> //global
    #endif
}

#include "basicf/riostream.hpp"

int main() {
    std::string i;
    cin >> i;
    std::cout << "The input string is: " << i;
}