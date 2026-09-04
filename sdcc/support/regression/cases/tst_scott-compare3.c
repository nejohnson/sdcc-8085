#include "./../tests/scott-compare3.c"

void
__runSuite(void)
{
  __prints("Running testCompare3\n");
  testCompare3();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-compare3.c";
}
