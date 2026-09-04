#include <testfwk.h>
#ifdef __SDCC
#pragma std_sdcc99
#endif // __SDCC
const int __numCases = 1;
__code const char * __getSuiteName(void) { return "qct/0096-extern"; }
#define main main_
#define MAINARGS
#include "../qct/0096-extern.c"
void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
