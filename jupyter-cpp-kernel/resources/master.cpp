/*==============================================================================
Pre-kernel "master.cpp"

Copyright (C) 2023 Tsuki Takineko
Copyright (C) Brendan Rius

Component: Pre-kernel

Purpose:   Pre compiling and collecting headers for the C++ interpreter
Owner:     Tsuki Takineko (signed-off by Tsuki Takineko)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux, SunOS
First created by: Tsuki Takineko (signed-off by Tsuki Takineko)

Help Link: https://github.com/takinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/takinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

#include "gcpph.hpp"

typedef int (*main_t)(int, char **, char **);

int main(int argc, char **argv, char **envp) {
    char *error = nullptr;
    setbuf(stdout, nullptr);
    setbuf(stderr, nullptr);
    if (argc < 2) {
        fprintf(stderr, "USAGE: %s PROGRAM\nWhere PROGRAM is the user's program to supervise\n", argv[0]);
        return EXIT_FAILURE;
    }
    void *userhandle = dlopen(argv[1], RTLD_LAZY);
    if (userhandle == nullptr) {
        fprintf(stderr, "%s: %s\n", argv[0], dlerror());
        return EXIT_FAILURE;
    }
    dlerror();
    main_t usermain = reinterpret_cast<main_t>(dlsym(userhandle, "main"));
    if ((error = dlerror()) != nullptr) {
        fprintf(stderr, "%s: %s\n", argv[0], error);
        return EXIT_FAILURE;
    }
    /* Call Users main, but make master.c invisible by removing first argument */
    return usermain(argc-1, argv+1, envp);
}
