/** Tests covering alignment operators.

    sign: signed, unsigned
    type: char, int, long
*/

#include <testfwk.h>

#include <stddef.h>

#if defined (__SDCC) || __STDC_VERSION__ >= 201112L
#include <stdalign.h>
char alignas (0) alignas(unsigned long) a;
char alignas (int) alignas(unsigned long) alignas(long) b;
char alignas (unsigned long) alignas(0) c;
#endif

void
testAlignof(void)
{
#if defined (__SDCC) || __STDC_VERSION__ >= 201112L
  ASSERT(alignof(char) <= alignof(unsigned long));
  ASSERT(alignof(unsigned long) <= alignof(max_align_t));

#ifdef __SDCC
  /* sdcc currently only supports architectures that do not have alignment restrictions. */
  ASSERT(alignof(unsigned long)  == 1);
  ASSERT(alignof(max_align_t)  == 1);
#endif
#endif
}


void
__runSuite(void)
{
  __prints("Running testAlignof\n");
  testAlignof();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "align_sign_unsigned_type_long";
}
