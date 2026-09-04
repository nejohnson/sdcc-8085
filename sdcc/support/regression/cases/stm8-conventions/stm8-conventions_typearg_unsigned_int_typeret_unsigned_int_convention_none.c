/*
   stm8-conventions.c. Test support for calling conventions of other STM8-compilers.
   typearg: unsigned char, unsigned int
   typeret: unsigned char, unsigned int
   convention: , __raisonance, __iar, __cosmic
 */

#include <testfwk.h>

#ifdef __SDCC_stm8
unsigned int f(unsigned int i) 
{
	return ++i;
}

unsigned int g(unsigned int i, unsigned int j) 
{
	return i + j;
}

unsigned int h(unsigned int i, unsigned int j, unsigned long long k) 
{
	return i + j + k;
}

unsigned int f_wrap_sdcc(unsigned int i)
{
	return f(i);
}

unsigned int f_wrap_(unsigned int i) 
{
	return f(i);
}
#endif

void
testCallingConvention(void)
{
#ifdef __SDCC_stm8
  ASSERT(f(23) == (unsigned int)24);
  ASSERT(g(23, 1001u) == (unsigned int)1024ul);
  ASSERT(h(23, 1001u, 10000000000ul) == (unsigned int)10000001024ull);
  ASSERT(f_wrap_sdcc(23) == (unsigned int)24);
  ASSERT(f_wrap_(23) == (unsigned int)24);
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
  return "stm8-conventions_typearg_unsigned_int_typeret_unsigned_int_convention_none";
}
