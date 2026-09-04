/* load8.c.in
   endian-aware load functions from stdbit.h
   typewidth: 16, 32, 64
 */

#include <testfwk.h>

#include <stdint.h>

#if __STDC_VERSION__ > 202311L || defined(__SDCC)
#include <stdbit.h>
#endif

#define STYPE int_least ## 16 ## _t
#define LOAD8LEU stdc_load8_leu ## 16
#define LOAD8BEU stdc_load8_beu ## 16
#define LOAD8LEUA stdc_load8_leu_aligned ## 16
#define LOAD8BEUA stdc_load8_beu_aligned ## 16
#define LOAD8LES stdc_load8_leu ## 16
#define LOAD8BES stdc_load8_beu ## 16
#define LOAD8LESA stdc_load8_leu_aligned ## 16
#define LOAD8BESA stdc_load8_beu_aligned ## 16

unsigned char a[16 / 8];

void testLoad8(void)
{
#if __STDC_VERSION_STDBIT_H__ > 202311L || defined(__SDCC) && defined(__SDCC_STACK_AUTO /* bug #3874*/)
	a[0] = 0x55;
	a[sizeof(a) - 1] = 0xaa;

	ASSERT(LOAD8LEU(a)  == (0x55 | (0xaaull << ((sizeof(a) - 1) * 8))));
	ASSERT(LOAD8BEU(a)  == (0xaa | (0x55ull << ((sizeof(a) - 1) * 8))));
	ASSERT(LOAD8LEUA(a)  == (0x55 | (0xaaull << ((sizeof(a) - 1) * 8))));
	ASSERT(LOAD8BEUA(a)  == (0xaa | (0x55ull << ((sizeof(a) - 1) * 8))));

	ASSERT(LOAD8LES(a)  == (STYPE)(0x55 | (0xaaull << ((sizeof(a) - 1) * 8))));
	ASSERT(LOAD8BES(a)  == (STYPE)(0xaa | (0x55ull << ((sizeof(a) - 1) * 8))));
	ASSERT(LOAD8LESA(a)  == (STYPE)(0x55 | (0xaaull << ((sizeof(a) - 1) * 8))));
	ASSERT(LOAD8BESA(a)  == (STYPE)(0xaa | (0x55ull << ((sizeof(a) - 1) * 8))));
#endif
}


void
__runSuite(void)
{
  __prints("Running testLoad8\n");
  testLoad8();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "load8_typewidth_16";
}
