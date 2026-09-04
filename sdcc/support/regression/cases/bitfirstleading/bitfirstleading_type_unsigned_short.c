/* Test find first leading bit operations from stdbit.h

   type: unsigned short, unsigned int, unsigned long, unsigned long long
 */

#include <testfwk.h>

#pragma std_c23
#if __STDC_VERSION__ >= 202311L || defined(__SDCC) // todo: drop the || defined(__SDCC) once we can test in propoer c23 mode.
#include <stdbit.h>
#endif

#include <limits.h>

volatile unsigned short i;

#define OTHERBYTEBITS(x) (sizeof(x) - 1) * CHAR_BIT

void
testTrailing(void)
{
#if __STDC_VERSION_STDBIT_H__ >= 202311L || defined(__SDCC)  // todo: drop the || defined(__SDCC) once we can test in propoer c23 mode.
#ifndef __SDCC_pdk14 // bug
	i = 0x0;
	ASSERT (stdc_first_leading_one(i) == 0);
	ASSERT (stdc_first_leading_zero(i) == 1);

	i = 0x1;
	ASSERT (stdc_first_leading_one(i) == OTHERBYTEBITS(i) + 8);
	ASSERT (stdc_first_leading_zero(i) == 1);

	i = 0x2;
	ASSERT (stdc_first_leading_one(i) == OTHERBYTEBITS(i) + 7);
	ASSERT (stdc_first_leading_zero(i) == 1);

	i = 0x3;
	ASSERT (stdc_first_leading_one(i) == OTHERBYTEBITS(i) + 7);
	ASSERT (stdc_first_leading_zero(i) == 1);

	i = 0x7;
	ASSERT (stdc_first_leading_one(i) == OTHERBYTEBITS(i) + 6);
	ASSERT (stdc_first_leading_zero(i) == 1);

	i = 0x8;
	ASSERT (stdc_first_leading_one(i) == OTHERBYTEBITS(i) + 5);
	ASSERT (stdc_first_leading_zero(i) == 1);

	i = 0x9;
	ASSERT (stdc_first_leading_one(i) == OTHERBYTEBITS(i) + 5);
	ASSERT (stdc_first_leading_zero(i) == 1);
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testTrailing\n");
  testTrailing();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bitfirstleading_type_unsigned_short";
}
