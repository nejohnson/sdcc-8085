#include <testfwk.h>
#ifdef __SDCC
#pragma std_sdcc99
#endif // __SDCC
#define main main_
#define assert ASSERT
void abort(void) {ASSERT(0);}
#define MAINARGS
#include "../gte/align-2.c"
void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
const int __numCases = 1;
__code const char * __getSuiteName(void) { return "gte/align-2"; }
