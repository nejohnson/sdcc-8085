#include "./../tests/bug-221168.c"

void
__runSuite(void)
{
  __prints("Running testMultiDimensionalAddress\n");
  testMultiDimensionalAddress();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-221168.c";
}
