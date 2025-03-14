/*==============================================================================
Math Definitions Header

Copyright (C) 2024 shiroinekotfs

Component: Component Header

Purpose:   Math Definition Header provides an extendable math library,
           including special math characters in ASCII format, basic
           functions and special calculation
Owner:     shiroinekotfs (signed off by shiroinekotfs)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux

First created by: shiroinekotfs (signed-off by shiroinekotfs)
==============================================================================*/

#ifndef _MATHDEFS_HPP
#define _MATHDEFS_HPP

#include <cmath>

extern "C" {
    #include <stdbool.h>
}

/*
Logic Gates

* These logic gates are defined as the boolean input value, 
* whereas a and b, and getting its result
*
* In a single, no second variable is needed, only a is used
* 
* Note: This definition is not finished yet, so see more on
*       Wikipedia: https://en.wikipedia.org/wiki/Propositional_calculus
*
* Good luck with that
*/

#define LOGIC_BUFFER        a                                   // BUFFER
#define LOGIC_NOT           1 - a                               // NOT
#define LOGIC_AND           a * b                               // AND
#define LOGIC_NAND          1 - a * b                           // NAND
#define LOGIC_OR            a + b - a * b                       // OR
#define LOGIC_NOR           1 - (a + b - a * b)                 // NOR
#define LOGIC_XOR           (1 - a) * b + a * (1 - b)           // XOR
#define LOGIC_XNOR          1 - ((1 - a) * b + a * (1 - b))     // XNOR
#define LOGIC_EQUI          a * b + (1 - a) * (1 - b)           // Equivalent
#define LOGIC_NEQU          1 - (a * b + (1 - a) * (1 - b))     // Non-equivalent
#define LOGIC_IMPL          1 - a * (1 - b)                     // Imply
#define LOGIC_NIMP          a * (1 - b)                         // Non-imply

/*
Math constants

* Whatever ends with (*) it just added for correction and functionality
*/

#define M_E        2.71828182845904523536   // e
#define M_E_2      1.35914091422952261768   // e/2          (*)
#define M_E_3      0.90609394281968174512   // e/3          (*)
#define M_E_5      0.54365636569180897375   // e/5          (*)
#define M_E_7      0.38832597549414932248   // e/7          (*)
#define M_E_PI     0.86525597943226508722   // e/pi         (*)
#define M_LOG2E    1.44269504088896340736   // log2(e)
#define M_LOG10E   0.43429448190325182765   // log10(e)
#define M_LN2      0.69314718055994530941   // ln(2)
#define M_LN10     2.30258509299404568402   // ln(10)
#define M_PI       3.14159265358979323846   // pi
#define M_POW2PI   9.86960440108935799230   // pi^2         (*)
#define M_PI_2     1.57079632679489661923   // pi/2
#define M_PI_3     1.04719755119659774615   // pi/3         (*)
#define M_PI_4     0.78539816339744830961   // pi/4         
#define M_PI_5     0.62831853071795864769   // pi/5         (*)
#define M_PI_7     0.44879895051282758800   // pi/7         (*)
#define M_1_PI     0.31830988618379067153   // 1/pi
#define M_2_PI     0.63661977236758134307   // 2/pi  
#define M_2_SQRTPI 1.12837916709551257390   // 2/sqrt(pi)
#define M_SQRT2    1.41421356237309504880   // sqrt(2)
#define M_SQRT3    1.73205080756887729352   // sqrt(3)      (*)
#define M_SQRT5    2.23606797749978969640   // sqrt(5)      (*)
#define M_SQRT7    2.64575131106459071617   // sqrt(7)      (*)
#define M_SQRT1_2  0.70710678118654752440   // 1/sqrt(2)

/*
Trigonometry measurements

* RAD, DEG, and GRAD
*/

#define RAD_TO_DEG      180                      // 1 rad = 180 deg 
#define DEG_TO_RAD      0.00555555555555555555   // 1 deg = 1/180 rad
#define DEG_TO_GRAD     1.11111111111111111111   // 1 deg = 10/9 grad
#define GRAD_TO_DEG     0.9                      // 1 grad = 0.9 deg
#define RAD_TO_GRAD     200                      // 1 rad = 200 grad
#define GRAD_TO_RAD     0.005                    // 1 grad = 1/200 rad

/* 
Metric prefix
*/

#define ME_PRE_QUETTA 1000000000000000000000000000000
#define ME_PRE_RONNA  1000000000000000000000000000
#define ME_PRE_YOTTA  1000000000000000000000000
#define ME_PRE_ZETTA  1000000000000000000000
#define ME_PRE_EXA    1000000000000000000
#define ME_PRE_PETA   1000000000000000
#define ME_PRE_TERA   1000000000000
#define ME_PRE_GIGA   1000000000
#define ME_PRE_MEGA   1000000
#define ME_PRE_KILO   1000
#define ME_PRE_HECTO  100
#define ME_PRE_DECA   10
#define ME_PRE_DECI   0.1
#define ME_PRE_CENTI  0.01
#define ME_PRE_MILI   0.001
#define ME_PRE_MICRO  0.000001
#define ME_PRE_NANO   0.000000001
#define ME_PRE_PICO   0.000000000001
#define ME_PRE_FEMTO  0.000000000000001
#define ME_PRE_ATTO   0.000000000000000001
#define ME_PRE_ZEPTO  0.000000000000000000001
#define ME_PRE_YOCTO  0.000000000000000000000001
#define ME_PRE_RONTO  0.000000000000000000000000001
#define ME_PRE_QUECTO 0.000000000000000000000000000001

#endif