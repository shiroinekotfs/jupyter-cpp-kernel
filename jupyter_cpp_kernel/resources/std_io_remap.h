#include <stdio.h>
#include <string>

/* Replace all the necessary input functions */
#define scanf(...) printf("<inputRequest>");\
fflush(stdout);\
scanf(__VA_ARGS__);

#define getchar() printf("<inputRequest>");\
fflush(stdout);\
getchar();

#define getline(cin, ...) printf("<inputRequest");\
fflush(stdout);
getline(cin, );
