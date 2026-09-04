/* store8.c.in
   endian-aware store functions from stdbit.h
   typewidth: 16, 32, 64
 */

#include <testfwk.h>

#include <stdint.h>

#if __STDC_VERSION__ > 202311L || defined(__SDCC)
#include <stdbit.h>
#endif

#define STYPE int_least ## 32 ## _t
#define STORE8LEU stdc_store8_leu ## 32
#define STORE8BEU stdc_store8_beu ## 32
#define STORE8LEUA stdc_store8_leu_aligned ## 32
#define STORE8BEUA stdc_store8_beu_aligned ## 32
#define STORE8LES stdc_store8_leu ## 32
#define STORE8BES stdc_store8_beu ## 32
#define STORE8LESA stdc_store8_leu_aligned ## 32
#define STORE8BESA stdc_store8_beu_aligned ## 32
#define UVALUE (0x55 | (0xaaull << ((sizeof(a) - 1) * 8)))

unsigned char a[32 / 8];

void testStore8(void)
{
#if __STDC_VERSION_STDBIT_H__ > 202311L || defined(__SDCC)
	STORE8LEU(UVALUE, a);
	ASSERT(a[0] == 0x55 && a[sizeof(a) - 1] == 0xaa);
	STORE8BEU(UVALUE, a);
	ASSERT(a[0] == 0xaa && a[sizeof(a) - 1] == 0x55);
	STORE8LEUA(UVALUE, a);
	ASSERT(a[0] == 0x55 && a[sizeof(a) - 1] == 0xaa);
	STORE8BEUA(UVALUE, a);
	ASSERT(a[0] == 0xaa && a[sizeof(a) - 1] == 0x55);

	STORE8LES((STYPE)UVALUE, a);
	ASSERT(a[0] == 0x55 && a[sizeof(a) - 1] == 0xaa);
	STORE8BES((STYPE)UVALUE, a);
	ASSERT(a[0] == 0xaa && a[sizeof(a) - 1] == 0x55);
	STORE8LESA((STYPE)UVALUE, a);
	ASSERT(a[0] == 0x55 && a[sizeof(a) - 1] == 0xaa);
	STORE8BESA((STYPE)UVALUE, a);
	ASSERT(a[0] == 0xaa && a[sizeof(a) - 1] == 0x55);
#endif
}


void
__runSuite(void)
{
  __prints("Running testStore8\n");
  testStore8();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "store8_typewidth_32";
}
