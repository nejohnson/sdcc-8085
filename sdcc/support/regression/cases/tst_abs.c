#include "./../tests/abs.c"

void
__runSuite(void)
{
  __prints("Running testAbs\n");
  testAbs();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "abs.c";
}
