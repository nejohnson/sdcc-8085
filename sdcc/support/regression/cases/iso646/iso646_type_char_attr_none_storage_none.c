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
    char left, right;

  left = (char)0x3df7;
  right = (char)0xc1ec;

  ASSERT((char)(left bitand right) == (char)0x1E4);
  ASSERT((char)(right bitand left) == (char)0x1E4);
  ASSERT((char)(left bitand 0xc1ec) == (char)0x1E4);
  ASSERT((char)(0x3df7 bitand right) == (char)0x1E4);

  ASSERT((char)(left bitor right) == (char)0xFDFF);
  ASSERT((char)(right bitor left) == (char)0xFDFF);
  ASSERT((char)(left bitor 0xc1ec) == (char)0xFDFF);
  ASSERT((char)(0x3df7 bitor right) == (char)0xFDFF);

  ASSERT((char)(left xor right) == (char)0xFC1B);
  ASSERT((char)(right xor left) == (char)0xFC1B);
  ASSERT((char)(left xor 0xc1ec) == (char)0xFC1B);
  ASSERT((char)(0x3df7 xor right) == (char)0xFC1B);
#endif
}

static char
alwaysTrue(void)
{
    return (char)1;
}

static char
alwaysFalse(void)
{
    return 0;
}

static void
testNot(void)
{
    char true_ = alwaysTrue();
    char false_ = alwaysFalse();

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
  return "iso646_type_char_attr_none_storage_none";
}
