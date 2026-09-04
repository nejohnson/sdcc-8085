#include "./../tests/bug-467035.c"

void
__runSuite(void)
{
  __prints("Running testForMerge\n");
  testForMerge();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-467035.c";
}
