#include <testfwk.h>
#ifdef __SDCC
#pragma std_sdcc99
#include <limits.h>
#define __INT_MAX__ INT_MAX
void __builtin_abort(void){ASSERT(0);}
void __builtin_unreachable(void){}
#endif // __SDCC
#define main main_
#define assert ASSERT
void abort(void) {ASSERT(0);}
#define MAINARGS
#include "../gte/pr81281.c"
void __runSuite(void) { __prints("Running main\n");main_(MAINARGS); }
const int __numCases = 1;
__code const char * __getSuiteName(void) { return "gte/pr81281"; }
