/** Function pointer comparion tests - C requires pointers to different function to compare unequal even if their behavior is the same. Check this, to ensure any function merging optimizations keep this property.

    type: char, int, long
 */
#include <testfwk.h>

#ifdef __SDCC
#pragma std_sdcc99
#endif

#include <stdbool.h>

// Simple, short functions
char f1(char i)
{
	return i + 1;
}

char g1(char i)
{
	return i + 1;
}

// Longer functions
char f2(char i, char j)
{
	return i * 5 - j * 3;
}

char g2(char i, char j)
{
	return i * 5 - j * 3;
}

void
testFuncPtrCmp(void)
{
#ifndef __SDCC_mcs51 // bug #3903
	ASSERT (&f1 != &g1);
	ASSERT (&f2 != &g2);
#endif
}


void
__runSuite(void)
{
  __prints("Running testFuncPtrCmp\n");
  testFuncPtrCmp();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "funcptrcmp_type_char";
}
