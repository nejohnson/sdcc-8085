#include "./../tests/simplefloat.c"

void
__runSuite(void)
{
  __prints("Running testCmp\n");
  testCmp();
  __prints("Running testDiv\n");
  testDiv();
  __prints("Running testDivNearOne\n");
  testDivNearOne();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "simplefloat.c";
}
