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
  static volatile short left, right;

  left = (short)0x3df7;
  right = (short)0xc1ec;

  ASSERT((short)(left bitand right) == (short)0x1E4);
  ASSERT((short)(right bitand left) == (short)0x1E4);
  ASSERT((short)(left bitand 0xc1ec) == (short)0x1E4);
  ASSERT((short)(0x3df7 bitand right) == (short)0x1E4);

  ASSERT((short)(left bitor right) == (short)0xFDFF);
  ASSERT((short)(right bitor left) == (short)0xFDFF);
  ASSERT((short)(left bitor 0xc1ec) == (short)0xFDFF);
  ASSERT((short)(0x3df7 bitor right) == (short)0xFDFF);

  ASSERT((short)(left xor right) == (short)0xFC1B);
  ASSERT((short)(right xor left) == (short)0xFC1B);
  ASSERT((short)(left xor 0xc1ec) == (short)0xFC1B);
  ASSERT((short)(0x3df7 xor right) == (short)0xFC1B);
#endif
}

static short
alwaysTrue(void)
{
    return (short)1;
}

static short
alwaysFalse(void)
{
    return 0;
}

static void
testNot(void)
{
    short true_ = alwaysTrue();
    short false_ = alwaysFalse();

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
  return "iso646_type_short_attr_volatile_storage_static";
}
