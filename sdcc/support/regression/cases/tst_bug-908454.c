#include "./../tests/bug-908454.c"

void
__runSuite(void)
{
  __prints("Running testBitToCharPromotion\n");
  testBitToCharPromotion();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-908454.c";
}
