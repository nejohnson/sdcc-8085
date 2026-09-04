#include <testfwk.h>
#ifdef __SDCC
#pragma std_sdcc99
#endif // __SDCC
#include <setjmp.h>
jmp_buf after_main;
void exit__substitute(int i){ASSERT(!i); longjmp(after_main, 1);}
#define exit exit__substitute
#define main main_
#define assert ASSERT
void abort(void) {ASSERT(0);}
#define MAINARGS
#include "../gte/20000819-1.c"
void __runSuite(void) { __prints("Running main\n");if(!setjmp(after_main))
main_(MAINARGS); }
const int __numCases = 1;
__code const char * __getSuiteName(void) { return "gte/20000819-1"; }
