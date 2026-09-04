/** Checked integer arithmetic tests

    type: unsigned char, unsigned int, unsigned long
*/

#include <testfwk.h>

#ifdef __SDCC // Todo: Enable for all C23 impl.
#pragma std_c23
#include <stdckdint.h>

#if !defined(__SDCC_pdk14) && !defined(__SDCC_pdk15) // Lack of memory
unsigned int add_func(unsigned int i, unsigned int j)
{
	return(i + j);
}

unsigned int sub_func(unsigned int i, unsigned int j)
{
	return(i - j);
}

unsigned int mul_func(unsigned int i, unsigned int j)
{
	return(i * j);
}
#endif
#endif

void
testCkd (void)
{
#ifdef __SDCC // Todo: Enable for all C23 impl.
#if !defined(__SDCC_pdk14) && !defined(__SDCC_pdk15) && !(defined(__SDCC_mcs51) && defined(__SDCC_MODEL_MEDIUM)) // Lack of memory
#ifndef __SDCC_ds390 // Bug #3469
	unsigned int l, r;
	unsigned int result;
	l = 1;
	r = 2;
	ASSERT ((add_func (l, r) != (signed long long)l + r) == ckd_add (&result, l, r));
	l = 100;
	r = 200;
	ASSERT ((add_func (l, r) != (signed long long)l + r) == ckd_add (&result, l, r));
	l = 200;
	r = 100;
	ASSERT ((sub_func (l, r) != (signed long long)l - r) == ckd_sub (&result, l, r));
	l = 100;
	r = 200;
	ASSERT ((sub_func (l, r) != (signed long long)l - r) == ckd_sub (&result, l, r));
	l = 1;
	r = 2;
	ASSERT ((mul_func (l, r) != (signed long long)l * r) == ckd_add (&result, l, r));
	l = 100;
	r = 200;
	ASSERT ((mul_func (l, r) != (signed long long)l * r) == ckd_add (&result, l, r));
#endif
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testCkd\n");
  testCkd();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "checkedint_type_unsigned_int";
}
