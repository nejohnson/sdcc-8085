#include "./../tests/bug-1981238.c"

void
__runSuite(void)
{
  __prints("Running testBitfield\n");
  testBitfield();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-1981238.c";
}
