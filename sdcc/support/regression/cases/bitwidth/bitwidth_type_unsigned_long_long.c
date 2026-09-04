/* Test width operations from stdbit.h

   type: unsigned short, unsigned int, unsigned long, unsigned long long
 */

#include <testfwk.h>

#ifdef __SDCC // Todo: Enable for all C23 implementations
#pragma std_c23
#include <stdbit.h>
#endif

volatile unsigned long long i;

void
testCount(void)
{
#ifdef __SDCC // Todo: Enable for all C23 implementations
	i = 0x0;
	ASSERT (stdc_bit_width(i) == 0);
	ASSERT (stdc_bit_floor(i) == 0);
	ASSERT (stdc_bit_ceil(i) == 1);

	i = 0x1;
	ASSERT (stdc_bit_width(i) == 1);
	ASSERT (stdc_bit_floor(i) == 1);
	ASSERT (stdc_bit_ceil(i) == 1);
#if !defined(__SDCC_pdk14) && !defined(__SDCC_pdk15)// Lack of memory
	i = 0x2;
	ASSERT (stdc_bit_width(i) == 2);
	ASSERT (stdc_bit_floor(i) == 2);
	ASSERT (stdc_bit_ceil(i) == 2);

	i = 0x3;
	ASSERT (stdc_bit_width(i) == 2);
	ASSERT (stdc_bit_floor(i) == 2);
	ASSERT (stdc_bit_ceil(i) == 4);

	i = 0x7;
	ASSERT (stdc_bit_width(i) == 3);
	ASSERT (stdc_bit_floor(i) == 4);
	ASSERT (stdc_bit_ceil(i) == 8);

	i = 0x8;
	ASSERT (stdc_bit_width(i) == 4);
	ASSERT (stdc_bit_floor(i) == 8);
	ASSERT (stdc_bit_ceil(i) == 8);

	i = 0x9;
	ASSERT (stdc_bit_width(i) == 4);
	ASSERT (stdc_bit_floor(i) == 8);
	ASSERT (stdc_bit_ceil(i) == 16);
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testCount\n");
  testCount();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bitwidth_type_unsigned_long_long";
}
