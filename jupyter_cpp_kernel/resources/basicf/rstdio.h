#ifndef  _rstdio_h
#define _rstdio_h

#include <stdio.h>

#define scanf(...) printf("<inputRequest>");scanf(__VA_ARGS__);
#define getchar() printf("<inputRequest>");getchar();

#endif