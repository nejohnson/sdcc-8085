#include "./../tests/scott-compare2.c"

void
__runSuite(void)
{
  __prints("Running testCompare2\n");
  testCompare2();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-compare2.c";
}
