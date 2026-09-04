#include <testfwk.h>
#ifdef __SDCC
#pragma std_sdcc99
#endif // __SDCC
const int __numCases = 1;
__code const char * __getSuiteName(void) { return "tcc/51_static"; }
#define main main_
#define MAINARGS
#include "../tcc/51_static.c"
#undef abort
#ifdef __SDCC
extern void _putchar(char c);
int putchar(int c){_putchar(c);return(c);}
void abort(void) {ASSERT(0);}
#endif
void __runSuite(void) { __prints("Running main\n"); ASSERT(!main_(MAINARGS)); }
