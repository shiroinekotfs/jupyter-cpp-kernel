/*==============================================================================
Math Definitions Header

Copyright (C) 2023 shiroinekotfs

Component: Component Header

Purpose:   Math Definition Header provides an extendable math library,
           including special math characters in ASCII format, basic
           functions and special calculation
Owner:     shiroinekotfs (signed off by shiroinekotfs)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: shiroinekotfs (signed-off by shiroinekotfs)
==============================================================================*/

#ifndef MATHDEFS_HPP
#define MATHDEFS_HPP

#include <cmath>

extern "C" {
    #include <stdbool.h>
}

//logic gates

/*
* These logic gates are defined as the boolean input value, 
* whereas logic_a and logic_b, and getting its result
*
* In a single, no second variable is needed, only logic_a is used
* 
* Note: This definition is not finished yet, so see more on
*       Wikipedia: https://en.wikipedia.org/wiki/Propositional_calculus
*
* Good luck with that
* 
*   - shiroinekotfs (C++ kernel for Jupyter developer)
*/

#define LOGIC_NOT                    1-logic_a                                ///NOT                 
#define LOGIC_ALWAYS                 logic_a                                  ///ALWAYS
#define LOGIC_AND                    logic_a*logic_b                          ///AND
#define LOGIC_NAND                   1-logic_a*logic_b                        ///NOT AND
#define LOGIC_MOD_TOL                1 -logic_a*(1-logic_b)                   ///Modus tollens
#define LOGIC_BIO_INTRO              logic_a*logic_b+(1-logic_a)*(1-logic_b)  ///BIO INTRO

//constant
//currently missing lots of math definitions, please help me adding it OwO - shiroinekotfs
#define M_E        2.71828182845904523536   // e
#define M_E_2      1.35914091422952261768   // e/2
#define M_E_3      0.90609394281968174512   // e/3
#define M_E_PI     0.86525597943226508722   // e/pi
#define M_LOG2E    1.44269504088896340736   // log2(e)
#define M_LOG10E   0.434294481903251827651  // log10(e)
#define M_LN2      0.693147180559945309417  // ln(2)
#define M_LN10     2.30258509299404568402   // ln(10)
#define M_PI       3.14159265358979323846   // pi
#define M_PI_2     1.57079632679489661923   // pi/2
#define M_PI_3     1.04719755119659774615   // pi/3
#define M_PI_4     0.785398163397448309616  // pi/4
#define M_PI_5     0.628318530717958647693  // pi/5
#define M_1_PI     0.318309886183790671538  // 1/pi
#define M_2_PI     0.636619772367581343076  // 2/pi  
#define M_2_SQRTPI 1.12837916709551257390   // 2/sqrt(pi)
#define M_SQRT2    1.41421356237309504880   // sqrt(2)
#define M_SQRT3    1.732050807568877293527  // sqrt(3)
#define M_SQRT5    2.2360679774997896964092 // sqrt(5)
#define M_SQRT1_2  0.707106781186547524401  // 1/sqrt(2)

//physics defs (me dumb at this, OwO - shiroinekotfs)


#endif