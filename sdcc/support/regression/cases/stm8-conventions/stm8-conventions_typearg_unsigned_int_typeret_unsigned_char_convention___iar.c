/*
   stm8-conventions.c. Test support for calling conventions of other STM8-compilers.
   typearg: unsigned char, unsigned int
   typeret: unsigned char, unsigned int
   convention: , __raisonance, __iar, __cosmic
 */

#include <testfwk.h>

#ifdef __SDCC_stm8
unsigned char f(unsigned int i) __iar
{
	return ++i;
}

unsigned char g(unsigned int i, unsigned int j) __iar
{
	return i + j;
}

unsigned char h(unsigned int i, unsigned int j, unsigned long long k) __iar
{
	return i + j + k;
}

unsigned char f_wrap_sdcc(unsigned int i)
{
	return f(i);
}

unsigned char f_wrap___iar(unsigned int i) __iar
{
	return f(i);
}
#endif

void
testCallingConvention(void)
{
#ifdef __SDCC_stm8
  ASSERT(f(23) == (unsigned char)24);
  ASSERT(g(23, 1001u) == (unsigned char)1024ul);
  ASSERT(h(23, 1001u, 10000000000ul) == (unsigned char)10000001024ull);
  ASSERT(f_wrap_sdcc(23) == (unsigned char)24);
  ASSERT(f_wrap___iar(23) == (unsigned char)24);
#endif
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
  return "stm8-conventions_typearg_unsigned_int_typeret_unsigned_char_convention___iar";
}
