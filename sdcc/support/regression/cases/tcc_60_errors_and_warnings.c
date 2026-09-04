#include <testfwk.h>
#ifdef __SDCC
#pragma std_sdcc99
#endif // __SDCC
const int __numCases = 1;
__code const char * __getSuiteName(void) { return "tcc/60_errors_and_warnings"; }
#define main main_
#define MAINARGS
#define __FUNCTION__ __func__
#include "../tcc/60_errors_and_warnings.c"
#undef abort
#ifdef __SDCC
extern void _putchar(char c);
int putchar(int c){_putchar(c);return(c);}
void abort(void) {ASSERT(0);}
#endif
void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
