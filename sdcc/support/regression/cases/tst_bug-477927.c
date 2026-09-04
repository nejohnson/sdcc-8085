#include "./../tests/bug-477927.c"

void
__runSuite(void)
{
  __prints("Running testLoopInit\n");
  testLoopInit();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-477927.c";
}
