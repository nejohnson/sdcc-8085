#include "./../tests/bug-460444.c"

void
__runSuite(void)
{
  __prints("Running testXOR\n");
  testXOR();
  __prints("Running testLeftRightXor\n");
  testLeftRightXor();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug-460444.c";
}
