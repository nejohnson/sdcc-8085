#include "./../tests/bug1399290.c"

void
__runSuite(void)
{
  __prints("Running testLongPlus\n");
  testLongPlus();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1399290.c";
}
