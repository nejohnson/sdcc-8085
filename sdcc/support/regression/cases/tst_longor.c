#include "./../tests/longor.c"

void
__runSuite(void)
{
  __prints("Running testLongOR\n");
  testLongOR();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "longor.c";
}
