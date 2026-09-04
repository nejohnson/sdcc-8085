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

#if __SDCC_BITINT_MAXWIDTH >= 9 && !defined(__SDCC_pdk13) && (32 >= 9 || !defined(__SDCC_pdk14)) // Lack of memory on pdk14 for wider types. Maybe some future optimization will help here.
typedef unsigned _BitInt(9) bitinttype;

bitinttype from_float(float f)
{
	return(f);
}
#endif

void testCast (void)
{
#if __SDCC_BITINT_MAXWIDTH >= 9 && !defined(__SDCC_pdk13) && (32 >= 9 || !defined(__SDCC_pdk14)) // Lack of memory on pdk14 for wider types. Maybe some future optimization will help here.
	float f;

	f = 1;
	ASSERT (from_float (f) == (bitinttype)f);
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
  return "bitintfromfloat_width_9_sign_unsigned";
}
