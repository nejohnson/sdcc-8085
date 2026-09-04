/** Test iso 646

    type: char, short, long
    attr: volatile,
    storage: static,
 */
#include <testfwk.h>

#include <float.h> /* bug #2314 was a conflict between iso646.h and float.h */
#include <iso646.h>

static void
testTwoOpBitwise(void)
{
#if !defined(__SDCC_pdk13) && !defined(__SDCC_pdk14) // Lack of memory
    long left, right;

  left = (long)0x3df7;
  right = (long)0xc1ec;

  ASSERT((long)(left bitand right) == (long)0x1E4);
  ASSERT((long)(right bitand left) == (long)0x1E4);
  ASSERT((long)(left bitand 0xc1ec) == (long)0x1E4);
  ASSERT((long)(0x3df7 bitand right) == (long)0x1E4);

  ASSERT((long)(left bitor right) == (long)0xFDFF);
  ASSERT((long)(right bitor left) == (long)0xFDFF);
  ASSERT((long)(left bitor 0xc1ec) == (long)0xFDFF);
  ASSERT((long)(0x3df7 bitor right) == (long)0xFDFF);

  ASSERT((long)(left xor right) == (long)0xFC1B);
  ASSERT((long)(right xor left) == (long)0xFC1B);
  ASSERT((long)(left xor 0xc1ec) == (long)0xFC1B);
  ASSERT((long)(0x3df7 xor right) == (long)0xFC1B);
#endif
}

static long
alwaysTrue(void)
{
    return (long)1;
}

static long
alwaysFalse(void)
{
    return 0;
}

static void
testNot(void)
{
    long true_ = alwaysTrue();
    long false_ = alwaysFalse();

    ASSERT(not false_);
    ASSERT(not not true_);
    ASSERT(not not not false_);
	ASSERT(true_ not_eq false_);
}

static void
testUnary(void)
{
  int i;
  ASSERT(compl 0xaa55 == ~0xaa55);
  ASSERT(bitand i == &i);
}


void
__runSuite(void)
{
  __prints("Running testTwoOpBitwise\n");
  testTwoOpBitwise();
  __prints("Running testNot\n");
  testNot();
  __prints("Running testUnary\n");
  testUnary();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "iso646_type_long_attr_none_storage_none";
}
