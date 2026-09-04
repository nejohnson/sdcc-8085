/*
   sdcccall.c. Test support for differnrt ABI versions.
   typearg: unsigned char, unsigned int
   typeret: unsigned char, unsigned int
   version: 0, 1
 */

#include <testfwk.h>

#if (defined(__SDCC_stm8) || defined(__SDCC_sm83) || defined(__SDCC_z80) || defined(__SDCC_z80n) || defined(__SDCC_z180))
#define SDCCCALL __sdcccall(1)
#else
#define SDCCCALL
#endif

unsigned int f(unsigned int i) SDCCCALL
{
	return ++i;
}

unsigned int g(unsigned int i, unsigned int j) SDCCCALL
{
	return i + j;
}

#ifndef __SDCC_pic16 // TODO: enable when pic16 supports long long
unsigned int h(unsigned int i, unsigned int j, unsigned long long k) SDCCCALL
{
	return i + j + k;
}
#endif

unsigned int f_wrap_default(unsigned int i)
{
	return f(i);
}

unsigned int f_wrap_explicit(unsigned int i) SDCCCALL
{
	return f(i);
}

void
testCallingConvention(void)
{
  ASSERT(f(23) == (unsigned int)24);
  ASSERT(g(23, 1001u) == (unsigned int)1024ul);
#ifndef __SDCC_pic16 // TODO: enable when pic16 supports long long
  ASSERT(h(23, 1001u, 10000000000ul) == (unsigned int)10000001024ull);
#endif
  ASSERT(f_wrap_default(23) == (unsigned int)24);
  ASSERT(f_wrap_explicit(23) == (unsigned int)24);
}


void
__runSuite(void)
{
  __prints("Running testCallingConvention\n");
  testCallingConvention();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "sdcccall_typearg_unsigned_int_typeret_unsigned_int_version_1";
}
