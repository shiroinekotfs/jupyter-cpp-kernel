/*==============================================================================
Timer - C++ header

Copyright (C) Yan Chunwei

Component: Component Header

Purpose:   
Owner:     Yan Chunwei
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux, SunOS
First created by: Yan Chunwei (signed-off by Tsuki Takineko)

Help Link: https://github.com/Superjomn/jupyter-cpp-kernel
Report issue: 
==============================================================================*/

#ifndef TIMER_HPP
#define TIMER_HPP

#include <ctime>
#include <iostream>

struct OnceTimer {
  OnceTimer(const std::string &id) : id(id), start(std::time(nullptr)) {}

  ~OnceTimer() {
    auto end = std::time(nullptr);
    std::cout << "Timer " << id << " lasts " << end - start << std::endl;
  }

  time_t start;
  std::string id;
};

#endif