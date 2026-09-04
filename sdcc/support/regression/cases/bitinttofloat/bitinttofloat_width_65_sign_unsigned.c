/** casts between bit-precise integers and float

    width: 2, 4, 6, 7, 8, 9, 15, 16, 17, 24, 32, 33, 40, 48, 63, 64, 65
    sign: unsigned, signed
*/

#include <testfwk.h>

#include <float.h>

// clang 11 supports bit-precise types, but deviates a bit from C23.
#if __clang_major__ == 11
#define __SDCC_BITINT_MAXWIDTH 128
#define _BitInt _ExtInt
#endif

#if __SDCC_BITINT_MAXWIDTH >= 65 // TODO: When we can regression-test in --std-c23 mode, use the standard macro from limits.h instead!

typedef unsigned _BitInt(65) bitinttype;

#ifndef __SDCC_pdk13 // Lack of memory; we are close, though - thiosmight work with more optimizations.
float to_float(bitinttype b)
{
	return(b);
}
#endif
#endif

void testCast (void)
{
#ifndef __SDCC_pdk13 // Lack of memory
#if __SDCC_BITINT_MAXWIDTH >= 65 // TODO: When we can regression-test in --std-c23 mode, use the standard macro from limits.h instead!
	bitinttype b;

	b = 1;
	ASSERT (to_float (b) == (float)b);
	b = 23;
	ASSERT (to_float (b) == (float)b);
#if 65 <= FLT_MANT_DIG
	b = -1;
	ASSERT (to_float (b) == (float)b);
	b = -23;
	ASSERT (to_float (b) == (float)b);
#endif
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testCast\n");
  testCast();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bitinttofloat_width_65_sign_unsigned";
}
