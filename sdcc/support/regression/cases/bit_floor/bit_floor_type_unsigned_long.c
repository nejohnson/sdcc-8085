/* bit_floor.c.in
   bit-floor functions from stdbit.h
   type: unsigned char, unsigned short, unsigned int, unsigned long, unsigned long long
 */

#include <testfwk.h>

#pragma std_c23

#if __STDC_VERSION__ >= 202311L || defined(__SDCC)
#include <stdbit.h>
#endif

void testBitFloor(void)
{
#if __STDC_VERSION_STDBIT_H__ >= 202311L || defined(__SDCC)
	unsigned long v;
	v = 0x00;
	ASSERT (stdc_bit_floor(v) == 0x00);
	v = 0x01;
	ASSERT (stdc_bit_floor(v) == 0x01);
	v = 0x81;
	ASSERT (stdc_bit_floor(v) == 0x80);
#ifndef __SDCC_pdk14 // Lack of RAM. TODO: Enable when optimizations have reduced RAM usage.
	v = 0x80;
	ASSERT (stdc_bit_floor(v) == 0x80);
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testBitFloor\n");
  testBitFloor();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bit_floor_type_unsigned_long";
}
