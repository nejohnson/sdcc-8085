#include "./../tests/swap.c"

void
__runSuite(void)
{
  __prints("Running testSwap\n");
  testSwap();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "swap.c";
}
