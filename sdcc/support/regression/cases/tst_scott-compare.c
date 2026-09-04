#include "./../tests/scott-compare.c"

void
__runSuite(void)
{
  __prints("Running testCompare\n");
  testCompare();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-compare.c";
}
