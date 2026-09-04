/** shifts of bit-precise integers.

    width: 7, 8, 9, 16, 24, 32, 33, 40, 48, 63, 64
    count: 1, 4, 5, 7, 8, 9, 16, 20, 33, 40, 47, 48
    varstorage: auto, static
    countstorage: auto, static
    direction: 0, 1
*/

#include <testfwk.h>

// clang 11 supports bit-precise types, but deviates a bit from C23.
#if __clang_major__ == 11
#define __SDCC_BITINT_MAXWIDTH 128
#define _BitInt _ExtInt
#endif

#if __SDCC_BITINT_MAXWIDTH >= 48 // TODO: When we can regression-test in --std-c23 mode, use the standard macro from limits.h instead!
typedef unsigned _BitInt(48) bitinttype;
typedef unsigned _BitInt(8) counttype;
#else
#if 48 <= 32
typedef unsigned int bitinttype;
#else
typedef unsigned long bitinttype;
#endif
typedef unsigned char counttype;
#endif

#define OPERAND0 ((bitinttype)0xa5b6c7d8e9fa)
#define OPERAND1 ((bitinttype)0x08192a3b4c5d6e7f)

// Lack of memory on pdk and mcs51
#if defined (__SDCC_pdk14) || defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)
#define MAXWIDTH 32
#elif defined (__SDCC_pdk15)
#define MAXWIDTH 40
#elif defined (__SDCC_mcs51) && defined(__SDCC_MODEL_SMALL)
#define MAXWIDTH 48
#else
#define MAXWDITH 64
#endif

bitinttype setoperand0(void)
{
	volatile bitinttype tmp = OPERAND0;
	return(tmp);
}

bitinttype setoperand1(void)
{
	volatile bitinttype tmp = OPERAND1;
	return(tmp);
}

counttype setcount(void)
{
	volatile counttype tmp = 20;
	return(tmp);
}

void testleftshift(void)
{
#if 48 <= MAXWIDTH && 20 < 48 && 0 == 0
	auto bitinttype operand, result;
	static counttype count;

	count = setcount();

	operand = setoperand0();
	result = operand << count;
	ASSERT (result == (OPERAND0 << 20));

	operand = setoperand1();
	result = operand << count;
	ASSERT (result == (OPERAND1 << 20));
#endif
}

void testrightshift(void)
{
#if 48 <= MAXWIDTH && 20 < 48 && 0 == 1
	auto bitinttype operand, result;
	static counttype count;

	count = setcount();

	operand = setoperand0();
	result = operand >> count;
	ASSERT (result == (OPERAND0 >> 20));

	operand = setoperand1();
	result = operand >> count;
	ASSERT (result == (OPERAND1 >> 20));
#endif
}


void
__runSuite(void)
{
  __prints("Running testleftshift\n");
  testleftshift();
  __prints("Running testrightshift\n");
  testrightshift();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bitintshift_width_48_count_20_varstorage_auto_countstorage_static_direction_0";
}
