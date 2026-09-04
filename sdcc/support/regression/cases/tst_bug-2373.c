#include "./../tests/bug-2373.c"

void
__runSuite(void)
{
  __prints("Running testFptr\n");
  testFptr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2373.c";
}
