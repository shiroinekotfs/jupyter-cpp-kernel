/*==============================================================================
Reconstructed stdio header for Jupyter C/C++ kernel

Copyright (C) Xaver K

Component: Component Header

Purpose:  Rewrite input method for Jupyter C++ kernel
Owner:    Xaver K
Platform: Windows (WIN32), macOS (X and later), Unix/Linux, SunOS
First created by: Xaver K
==============================================================================*/


#ifndef RSTDIO_H
#define RSTDIO_H

#define scanf(...) printf("<inputRequest>");scanf(__VA_ARGS__);
#define getchar() printf("<inputRequest>");getchar();

#endif