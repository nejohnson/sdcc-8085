/** Tests covering alignment operators.

    sign: signed, unsigned
    type: char, int, long
*/

#include <testfwk.h>

#include <stddef.h>

#if defined (__SDCC) || __STDC_VERSION__ >= 201112L
#include <stdalign.h>
char alignas (0) alignas(unsigned char) a;
char alignas (int) alignas(unsigned char) alignas(long) b;
char alignas (unsigned char) alignas(0) c;
#endif

void
testAlignof(void)
{
#if defined (__SDCC) || __STDC_VERSION__ >= 201112L
  ASSERT(alignof(char) <= alignof(unsigned char));
  ASSERT(alignof(unsigned char) <= alignof(max_align_t));

#ifdef __SDCC
  /* sdcc currently only supports architectures that do not have alignment restrictions. */
  ASSERT(alignof(unsigned char)  == 1);
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
  return "align_sign_unsigned_type_char";
}
