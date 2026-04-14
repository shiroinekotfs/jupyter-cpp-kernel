/*
 * dlfcn-win32 compatibility shim
 * Implements POSIX dlopen/dlsym/dlerror/dlclose using Windows API.
 * By Paweł Cichocki, based on dlfcn-win32 by Ramiro Polla (MIT licence).
 */
#ifdef _WIN32

#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#include "dlfcn.h"

static char dl_last_error[512];

static void set_last_error(void) {
    DWORD err = GetLastError();
    if (err == 0) {
        dl_last_error[0] = '\0';
    } else {
        FormatMessageA(
            FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_IGNORE_INSERTS,
            NULL, err, 0,
            dl_last_error, sizeof(dl_last_error) - 1,
            NULL
        );
        size_t len = strlen(dl_last_error);
        while (len > 0 && (dl_last_error[len-1] == '\n' || dl_last_error[len-1] == '\r'))
            dl_last_error[--len] = '\0';
    }
}

void *dlopen(const char *file, int mode) {
    (void)mode;
    HMODULE h;
    if (!file) {
        h = GetModuleHandle(NULL);
    } else {
        /* Convert UTF-8 path to wide string so non-ASCII usernames and temp
         * paths (common on Windows) do not cause silent load failures. */
        int wlen = MultiByteToWideChar(CP_UTF8, 0, file, -1, NULL, 0);
        if (wlen <= 0) { set_last_error(); return NULL; }
        wchar_t *wfile = (wchar_t *)malloc(wlen * sizeof(wchar_t));
        if (!wfile) { dl_last_error[0] = '\0'; snprintf(dl_last_error, sizeof(dl_last_error), "out of memory"); return NULL; }
        MultiByteToWideChar(CP_UTF8, 0, file, -1, wfile, wlen);
        h = LoadLibraryW(wfile);
        free(wfile);
    }
    if (!h) { set_last_error(); return NULL; }
    dl_last_error[0] = '\0';
    return (void *)h;
}

int dlclose(void *handle) {
    if (!FreeLibrary((HMODULE)handle)) { set_last_error(); return -1; }
    dl_last_error[0] = '\0';
    return 0;
}

void *dlsym(void *handle, const char *name) {
    if (handle == RTLD_DEFAULT) handle = (void *)GetModuleHandle(NULL);
    void *sym = (void *)GetProcAddress((HMODULE)handle, name);
    if (!sym) set_last_error(); else dl_last_error[0] = '\0';
    return sym;
}

char *dlerror(void) {
    return dl_last_error[0] ? dl_last_error : NULL;
}

int dladdr(const void *addr, Dl_info *info) {
    (void)addr; (void)info; return 0;
}

#endif /* _WIN32 */
