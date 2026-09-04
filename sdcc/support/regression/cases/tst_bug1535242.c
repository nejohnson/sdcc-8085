#include "./../tests/bug1535242.c"

void
__runSuite(void)
{
  __prints("Running testSaveBits\n");
  testSaveBits();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1535242.c";
}
