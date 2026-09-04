/** far_rabbits.c.in - test __far space that contains generic space.

    type: unsigned char, unsigned int, unsigned long, unsigned long long
*/
#include <testfwk.h>

#if !defined(__SDCC_r2k) && !defined(__SDCC_r2ka) && !defined(__SDCC_r3ka) && !defined(__SDCC_r4k) && !defined(__SDCC_r5k) && !defined(__SDCC_r6k) && !defined(__SDCC_tlcs90) /*&& !defined(__SDCC_ez80) TODO bug #3882*/
#define __far
char farmemblock[2];
#else
#undef __far
// Ensure that farmemblock and farmemblock+sizeof(farmemblock) differ in more than just the lowest 16 bits. Also gives further objects in __far an address > 2^16.
char memblock[6000];
__far char farmemblock[40000];
#endif

__far unsigned long long i;
__far unsigned long long ii = 0x55;
__far unsigned long long j;
const __far unsigned long long ci = 0xaa;

unsigned long long readfarptr(__far unsigned long long *p)
{
	return(*p);
}

void writefarptr(__far unsigned long long *p, unsigned long long i)
{
	*p = i;
}

void testFarObj(void)
{
	// Read initialized variable in __far
	ASSERT(ii == 0x55);
	ASSERT(ci == 0xaa);
}

void testFarPtr(void)
{
	// Write variable in __far
	i = 0xa5;
	ASSERT(i == 0xa5);

	// Pointer access to __far
	ASSERT(readfarptr(&i) == 0xa5);
	writefarptr(&i, 0x5a);
	ASSERT(i == 0x5a);

	// generic space is in __far
	unsigned long long k = 23;
#if 0 // Doesn't work yet.
	ASSERT(readfarptr((__far unsigned long long *)(&k)) == 23);
	writefarptr((__far unsigned long long *)(&k), 42);
	ASSERT(k == 42);
	__far unsigned long long *volatile p = (__far unsigned long long *)(&k);
	ASSERT((unsigned long long *)p == &k);
	ASSERT((unsigned long long *)p == (__far unsigned long long *)(&k));
#endif
}

void testFarArith(void)
{
	i = 23;
	j = 42;
	ASSERT(i + j == 23 + 42);
	i += j;
	ASSERT(readfarptr(&i) == 23 + 42);
}

void testFarPtrArith(void)
{
	__far char *p = farmemblock;
	__far char *volatile q = farmemblock;
	ASSERT(p + sizeof(farmemblock) == farmemblock + sizeof(farmemblock));
	ASSERT(q + sizeof(farmemblock) == farmemblock + sizeof(farmemblock));
	p[0] = 23;
	p[sizeof(farmemblock) - 1] = 42;
	ASSERT(farmemblock[0] == 23);
	ASSERT(farmemblock[sizeof(farmemblock) - 1] == 42);
	q[0] = 42;
	q[sizeof(farmemblock) - 1] = 23;
	ASSERT(farmemblock[0] == 42);
	ASSERT(farmemblock[sizeof(farmemblock) - 1] == 23);
}


void
__runSuite(void)
{
  __prints("Running testFarObj\n");
  testFarObj();
  __prints("Running testFarPtr\n");
  testFarPtr();
  __prints("Running testFarArith\n");
  testFarArith();
  __prints("Running testFarPtrArith\n");
  testFarPtrArith();
}

const int __numCases = 4;

__code const char *
__getSuiteName(void)
{
  return "far_rabbits_type_unsigned_long_long";
}
