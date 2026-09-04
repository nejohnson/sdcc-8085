/*
   bug-3251.c An assertion failure in stm8 code generation.
   convention: , __raisonance, __iar, __cosmic
 */
 
#include <testfwk.h>

#ifdef __SDCC_stm8
int f(int i, int j, int (*c)(int , int) __cosmic)
{
	return (*c)(i, j);
}

int add(int i, int j) __cosmic
{
	return(i + j);
}
#endif

void
testBug(void)
{
#ifdef __SDCC_stm8
	ASSERT (f(1, 1, add) == 2);
#endif
}


void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-3251_convention___cosmic";
}
