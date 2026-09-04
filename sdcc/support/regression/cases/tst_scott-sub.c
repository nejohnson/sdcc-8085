#include "./../tests/scott-sub.c"

void
__runSuite(void)
{
  __prints("Running testSub\n");
  testSub();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-sub.c";
}
