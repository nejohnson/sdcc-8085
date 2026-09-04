#include "./../tests/bug1816470.c"

void
__runSuite(void)
{
  __prints("Running testConst\n");
  testConst();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1816470.c";
}
