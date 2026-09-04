#include "./../tests/bitfields.c"

void
__runSuite(void)
{
  __prints("Running testBitfieldSizeof\n");
  testBitfieldSizeof();
  __prints("Running testBitfieldsSingleBitLiteral\n");
  testBitfieldsSingleBitLiteral();
  __prints("Running testBitfieldsSingleBit\n");
  testBitfieldsSingleBit();
  __prints("Running testBitfieldsMultibitLiteral\n");
  testBitfieldsMultibitLiteral();
  __prints("Running testBitfieldsMultibit\n");
  testBitfieldsMultibit();
  __prints("Running testBitfields\n");
  testBitfields();
  __prints("Running testSignedBitfields\n");
  testSignedBitfields();
  __prints("Running testCS\n");
  testCS();
}

const int __numCases = 8;

__code const char *
__getSuiteName(void)
{
  return "bitfields.c";
}
