/** Bit vars test.

    type: bool, char, unsigned char, unsigned short, unsigned long
*/

#include <testfwk.h>

#ifdef __SDCC
#pragma std_sdcc99
#endif

#include <limits.h>
#include <stdbool.h>

#ifndef PORT_HOST
#pragma disable_warning 180 //no warning about using complement on bit/unsigned char
#endif

#ifdef __bool_true_false_are_defined

#define TYPE_char

char foo(bool a, bool b, char c)
{
  return a + b + c;
}

char complement(bool a, bool b)
{
  return (a == b);
}

char _0 = 0, _1 = 1, _ff = 0xFF, _ffff = -1;

#endif //__bool_true_false_are_defined

void
testBits(void)
{
#ifndef __SDCC_pic16
#ifdef __bool_true_false_are_defined
  bool x = 2;
  ASSERT (foo(x,3,4) == 6);

  ASSERT (complement (~_0, 1));
  ASSERT (complement (~_1, 1));

#if !(defined(__SUNPRO_C) && defined(__i386))
/* this test fails on Solaris i386 SunPro C compiler with -xO2 option;
   it pass without -xO2 option !? */
#if defined TYPE_char && CHAR_MIN < 0
  ASSERT (complement (~_ff, 0));
#else
  ASSERT (complement (~_ff, 1));
#endif
#endif

#if defined TYPE_bool
  ASSERT (complement (~_ffff, 1));
#elif defined TYPE_char && CHAR_MIN < 0
  ASSERT (complement (~_ffff, 0));
#else
  if (sizeof(char) < sizeof(int))
    ASSERT (complement (~_ffff, 1));
  else
    ASSERT (complement (~_ffff, 0));
#endif

#endif //__bool_true_false_are_defined
#endif
}


void
__runSuite(void)
{
  __prints("Running testBits\n");
  testBits();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bitvars_type_char";
}
