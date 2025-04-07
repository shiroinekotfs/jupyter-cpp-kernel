/*==============================================================================
Pre-kernel "master.cpp"

Copyright (C) Brendan Rius
Copyright (C) 2024 shiroinekotfs
Copyright (C) 2024 anhvlt-2k6

Component: Pre-kernel

Purpose:   Pre compiling and collecting headers for the C++ interpreter
Owner:     shiroinekotfs (signed-off by shiroinekotfs)
Platform:  Windows (WIN32), macOS (X and later), Unix/Linux
First created by: shiroinekotfs (signed-off by shiroinekotfs)

Help Link: https://github.com/shiroinekotfs/jupyter-cpp-kernel
Report issue: https://github.com/shiroinekotfs/jupyter-cpp-kernel/issues
==============================================================================*/

/*
MASTER.CPP MEMO
*
* This file is the entry point, act as the starting point of every single 
* programs that run within the kernel session (aka the kernel process).
*
* It also act as a "supervisor" for the user program, which means it will
* supervise the user program and handle the exit code of the user program.
*
*/

#include "gcpph.hpp"

typedef int (*main_t)(int, char **, char **);

int main(int argc, char **argv, char **envp) {
    if (argc < 2) {
        fprintf(stderr, "USAGE: %s PROGRAM\nWhere PROGRAM is the user's program to supervise\n", argv[0]);
        return EXIT_FAILURE;
    }

    // Disable buffering for stdout and stderr
    setbuf(stdout, nullptr);
    setbuf(stderr, nullptr);

    void *userhandle = dlopen(argv[1], RTLD_LAZY);
    if (userhandle == nullptr) {
        fprintf(stderr, "%s: %s\n", argv[0], dlerror());
        return EXIT_FAILURE;
    }

    // Reset dlerror before dlsym
    dlerror();
    main_t usermain = reinterpret_cast<main_t>(dlsym(userhandle, "main"));
    const char *dlsym_error = dlerror();
    if (dlsym_error != nullptr) {
        fprintf(stderr, "%s: %s\n", argv[0], dlsym_error);
        dlclose(userhandle); // Close the handle before exiting
        return EXIT_FAILURE;
    }

    // Call Users main, removing master.c from arguments
    int result = usermain(argc - 1, argv + 1, envp);

    // Close the handle before exiting
    dlclose(userhandle);
    
    return result;
}