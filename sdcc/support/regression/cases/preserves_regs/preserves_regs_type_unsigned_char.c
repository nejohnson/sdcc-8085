/* __preserves_regs test
   type: unsigned char, unsigned int, unsigned long
*/

#include <testfwk.h>

#if defined(__SDCC_z80) || defined(__SDCC_z80n) || defined(__SDCC_z180) || defined(__SDCC_r2k) || defined(__SDCC_r2ka) || defined(__SDCC_r3ka) || defined(__SDCC_r4k) || defined(__SDCC_r5k) || defined(__SDCC_r6k) || defined(__SDCC_tlcs90) || defined(__SDCC_ez80)
void write_bc(void) __preserves_regs(a, d, e, h, l, iyl, iyh) __naked
{
__asm
	ld bc, #0
	ret
__endasm;
}

void write_de(void) __preserves_regs(a, b, c, h, l, iyl, iyh) __naked
{
__asm
	ld de, #0
	ret
__endasm;
}

void write_hl(void) __preserves_regs(a, b, c, d, e, iyl, iyh) __naked
{
__asm
	ld hl, #0
	ret
__endasm;
}

unsigned char add_bc(unsigned char a, unsigned char b)
{
	unsigned char r = a + b;

	write_de();
	write_hl();

	return(r);
}

unsigned char add_de(unsigned char a, unsigned char b)
{
	unsigned char r = a + b;

	write_bc();
	write_hl();

	return(r);
}


unsigned char add_hl(unsigned char a, unsigned char b)
{
	unsigned char r = a + b;

	write_bc();
	write_de();

	return(r);
}


unsigned char add_iy(unsigned char a, unsigned char b)
{
	unsigned char r = a + b;

	write_bc();
	write_de();
	write_hl();

	return(r);
}
#endif

void testRegs(void)
{
#if defined(__SDCC_z80) || defined(__SDCC_z80n) || defined(__SDCC_z180) || defined(__SDCC_r2k) || defined(__SDCC_r2ka) || defined(__SDCC_r3ka) || defined(__SDCC_r4k) || defined(__SDCC_r5k) || defined(__SDCC_r6k) || defined(__SDCC_tlcs90) || defined(__SDCC_ez80)
	ASSERT(add_bc(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
	ASSERT(add_de(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
	ASSERT(add_hl(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
	ASSERT(add_iy(0x55, 0xaa) == (unsigned char)(0x55 + 0xaa));
#endif
}


void
__runSuite(void)
{
  __prints("Running testRegs\n");
  testRegs();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "preserves_regs_type_unsigned_char";
}
