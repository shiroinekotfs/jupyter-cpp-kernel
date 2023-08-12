#ifndef _riostream_h
#define _riostream_h

#include <iostream>

extern "C" {
    #include <stdio.h>
}

#define cin std::cout<<"<inputRequest>";std::cin

#endif