/* Test count trailing bits operations from stdbit.h

   type: unsigned short, unsigned int, unsigned long, unsigned long long
 */

#include <testfwk.h>

#pragma std_c23
#if __STDC_VERSION__ >= 202311L || defined(__SDCC) // todo: drop the || defined(__SDCC) once we can test in propoer c23 mode.
#include <stdbit.h>
#endif

#include <limits.h>

volatile unsigned long i;

void
testTrailing(void)
{
#if __STDC_VERSION_STDBIT_H__ >= 202311L || defined(__SDCC)  // todo: drop the || defined(__SDCC) once we can test in propoer c23 mode.
	i = 0x0;
	ASSERT (stdc_trailing_ones(i) == 0);
	ASSERT (stdc_trailing_zeros(i) == sizeof(unsigned long) * CHAR_BIT);

	i = 0x1;
	ASSERT (stdc_trailing_ones(i) == 1);
	ASSERT (stdc_trailing_zeros(i) == 0);

	i = 0x2;
	ASSERT (stdc_trailing_ones(i) == 0);
	ASSERT (stdc_trailing_zeros(i) == 1);

	i = 0x3;
	ASSERT (stdc_trailing_ones(i) == 2);
	ASSERT (stdc_trailing_zeros(i) == 0);

	i = 0x7;
	ASSERT (stdc_trailing_ones(i) == 3);
	ASSERT (stdc_trailing_zeros(i) == 0);

	i = 0x8;
	ASSERT (stdc_trailing_ones(i) == 0);
	ASSERT (stdc_trailing_zeros(i) == 3);

	i = 0x9;
	ASSERT (stdc_trailing_ones(i) == 1);
	ASSERT (stdc_trailing_zeros(i) == 0);
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
  return "bitcounttrailing_type_unsigned_long";
}
