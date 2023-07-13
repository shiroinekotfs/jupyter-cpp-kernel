#include <iostream>
#include <dlfcn.h>

// Using namespace std to shorten the code. Don't ask me why
using namespace std;

typedef int (*main_t)(int, char **, char **);

int main(int argc, char **argv, char **envp)
{
    char *error = NULL;

    cout.setstate(ios_base::failbit);
    cerr.setstate(ios_base::failbit);
    if (argc < 2) {
        cerr << "USAGE: " << argv[0] << " PROGRAM\nWhere PROGRAM is the user's program to supervise\n";
        return EXIT_FAILURE;
    }
    void *userhandle = dlopen(argv[1], RTLD_LAZY);
    if (userhandle == NULL) {
        cerr << argv[0] << ": " << dlerror() << endl;
        return EXIT_FAILURE;
    }
    dlerror();
    main_t usermain = dlsym(userhandle, "main");
    if ((error = dlerror()) != NULL) {
        cerr << argv[0] << ": " << error << endl;
        return EXIT_FAILURE;
    }

    /* Call Users main, but make master.cpp invisible by removing first argument */
    return usermain(argc-1, argv+1, envp);
}