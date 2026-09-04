/* Test rotate left functions from stdbit.h  - unsigned long long would work, too, except for running out of code memory on pdk15.

   type: unsigned char, unsigned short, unsigned int, unsigned long, unsigned long long
 */

#include <testfwk.h>

#pragma std_c23

#if __STDC_VERSION__ > 202311L || defined(__SDCC)
#include <stdbit.h>
#endif

volatile unsigned long long i;

unsigned long long rol(unsigned long long v, unsigned int c)
{
  c %= sizeof(unsigned long long) * 8;
  return(v << c) | (v >> (sizeof(unsigned long long) * 8 - c));
}

void
testRotateLeft(void)
{
#if __STDC_VERSION__ > 202311L || defined(__SDCC)
  i = 0xa5;
  ASSERT(stdc_rotate_left(i, 1) == rol(i, 1));
#if !defined(__SDCC_pdk14) && !defined(__SDCC_pdk15) && !(defined(__SDCC_mcs51) && defined(__SDCC_MODEL_SMALL)) // Lack of memory
  ASSERT(stdc_rotate_left(i, 4) == rol(i, 4));
  ASSERT(stdc_rotate_left(i, 7) == rol(i, 7));
  ASSERT(stdc_rotate_left(i, 8) == rol(i, 8));
  ASSERT(stdc_rotate_left(i, 9) == rol(i, 9));
  ASSERT(stdc_rotate_left(i, 12) == rol(i, 12));
  ASSERT(stdc_rotate_left(i, 15) == rol(i, 15));

  ASSERT(stdc_rotate_left_uc(0xa5, 4) == 0x5a);
  ASSERT(stdc_rotate_left_us(0xa5b6, 4) == 0x5b6a);
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testRotateLeft\n");
  testRotateLeft();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "rotate_left_type_unsigned_long_long";
}
