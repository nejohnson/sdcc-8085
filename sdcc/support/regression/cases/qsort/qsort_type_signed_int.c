/** qsort.c - test sorting

	type: signed int, signed long
*/

#include <testfwk.h>

#include <stdlib.h>
#include <string.h>

#define NUM_ELEM 20

#if !defined( __SDCC_pdk14) && !defined( __SDCC_pdk15) // Lack of memory
signed int unsorted[NUM_ELEM] = {120, 110, 90, 100, 190, 190, 190, 130, 125, 80, 132, -8, 20, 40, 60, -10, 20, 30, 40, 50};

const signed int sorted[NUM_ELEM] = {-10, -8, 20, 20, 30, 40, 40, 50, 60, 80, 90, 100, 110, 120, 125, 130, 132, 190, 190, 190};
#endif

int cmp(const void *lp, const void *rp) __reentrant
{
	signed int l = *((const signed int *)lp);
	signed int r = *((const signed int *)rp);

	if(l < r)
		return(-1);
	else if (l == r)
		return(0);
	else
		return(1);
}

void testSort(void)
{
#if !defined( __SDCC_pdk14) && !defined( __SDCC_pdk15) // Lack of memory
	qsort(unsorted, NUM_ELEM, sizeof(signed int), &cmp);

	ASSERT(!memcmp(unsorted, sorted, sizeof(signed int) * NUM_ELEM));
#if !(defined (__SDCC_mcs51) && defined (__SDCC_MODEL_SMALL)) // Not enough RAM
	{
		const signed int e95 = 95;
		const signed int e35 = 35;
		const signed int e10 = -10;
		const signed int e20 = 20;
		const signed int e60 = 60;
		const signed int e190 = 190;

		ASSERT(bsearch(&e95, sorted, NUM_ELEM, sizeof(signed int), &cmp) == 0);
		ASSERT(bsearch(&e35, sorted, NUM_ELEM, sizeof(signed int), &cmp) == 0);
		ASSERT(*(const signed int *)(bsearch(&e10, sorted, NUM_ELEM, sizeof(signed int), &cmp)) == -10);
		ASSERT(*(const signed int *)(bsearch(&e20, sorted, NUM_ELEM, sizeof(signed int), &cmp)) == 20);
		ASSERT(*(const signed int *)(bsearch(&e60, sorted, NUM_ELEM, sizeof(signed int), &cmp)) == 60);
		ASSERT(*(const signed int *)(bsearch(&e190, sorted, NUM_ELEM, sizeof(signed int), &cmp)) == 190);
	}
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testSort\n");
  testSort();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "qsort_type_signed_int";
}
