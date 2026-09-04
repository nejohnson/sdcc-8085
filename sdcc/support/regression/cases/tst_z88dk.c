#include "./../tests/z88dk.c"

void
__runSuite(void)
{
  __prints("Running testZ88dk\n");
  testZ88dk();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "z88dk.c";
}
