/*
   test C2X memalignment.
   type: char, int, long, long long
 */

#include <testfwk.h>

#ifdef __SDCC
#pragma std_c23

#include <stdlib.h>

size_t memalignment(const void *p); // TODO: Rely on stdlib.h instead once the preprocessor can handle the option for C2X.
long long c;
#endif

void
testMemalign(void)
{
#ifdef __SDCC
	ASSERT(memalignment(0) == 0);
	ASSERT(memalignment(&c) > 0);
	ASSERT(memalignment(&c) >= _Alignof(long long));
#endif
}


void
__runSuite(void)
{
  __prints("Running testMemalign\n");
  testMemalign();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "memalignment_type_long_long";
}
