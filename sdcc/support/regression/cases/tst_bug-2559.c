#include "./../tests/bug-2559.c"

void
__runSuite(void)
{
  __prints("Running testSwap_4\n");
  testSwap_4();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2559.c";
}
