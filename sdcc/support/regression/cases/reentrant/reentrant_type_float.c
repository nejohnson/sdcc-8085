/** reentrant.c

  type: unsigned char, unsigned int, signed int, unsigned long, signed long, unsigned long long, signed long long, float
*/

#include <testfwk.h>
#include <stdlib.h>

#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) && !defined( __SDCC_pdk15) // Lack of memory
#if !defined( __SDCC_ds390) // Bug 3307

float sum(float a) __reentrant
{
  if(a>1) return a+sum(a-1);
  return 1;
}

float fact(float a) __reentrant
{
  if(a>1) return a*fact(a-1);
  return 1;
}

float div2n(float a, int n) __reentrant
{
  if(n>0) return div2n(a/2,n-1);
  return a;
}

float fib(float a) __reentrant
{
  if(a>1) return fib(a-1)+fib(a-2);
  return a;
}

#endif
#endif

void
testReent(void)
{
#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) && !defined( __SDCC_pdk15) // Lack of memory
#if !defined( __SDCC_ds390) // Bug 3307
  ASSERT(sum(9) == 45);
  ASSERT(fact(5) == 120);
  ASSERT(div2n(128, 7) == 1);
  ASSERT(fib(7) == 13);
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testReent\n");
  testReent();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "reentrant_type_float";
}
