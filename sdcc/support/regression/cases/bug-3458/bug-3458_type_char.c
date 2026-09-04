/* bug-3458.c.in
   A bug in tail call optimization of calls between functions using different calling conventions.
   type: char, int, long
 */

#include <testfwk.h>

#if !(defined(__SDCC_stm8) || defined(__SDCC_sm83) || defined(__SDCC_z80) || defined(__SDCC_z80n) || defined(__SDCC_z180))
#define __sdcccall(x)
#endif

char i, j;

char f0(void) __sdcccall(0)
{
	return i;
}

char f1(void) __sdcccall(1)
{
	return i;
}

char fz(void) __z88dk_fastcall
{
	return i;
}

char g0_0(void) __sdcccall(0)
{
	i++; j++; // These j++ help overwrite a value that might happen to be in return registers if those are used for the i++.
	return f0();
}

char g0_1(void) __sdcccall(0)
{
	i++; j++;
	return f1();
}

char g0_z(void) __sdcccall(0)
{
	i++; j++;
	return fz();
}

char g1_0(void) __sdcccall(1)
{
	i++;
	return f0();
}

char g1_1(void) __sdcccall(1)
{
	i++; j++;
	return f1();
}

char g1_z(void) __sdcccall(1)
{
	i++; j++;
	return fz();
}

char gz_0(void) __z88dk_fastcall
{
	i++; j++;
	return f0();
}

char gz_1(void) __z88dk_fastcall
{
	i++; j++;
	return f1();
}

char gz_z(void) __z88dk_fastcall
{
	i++; j++;
	return fz();
}

void testBug(void)
{
	ASSERT(g0_0() == 1);
	ASSERT(g0_1() == 2);
	ASSERT(g0_z() == 3);
	ASSERT(g1_0() == 4);
	ASSERT(g1_1() == 5);
	ASSERT(g1_z() == 6);
	ASSERT(gz_0() == 7);
	ASSERT(gz_1() == 8);
	ASSERT(gz_z() == 9);
}


void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-3458_type_char";
}
