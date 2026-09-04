#include "./../tests/swap_add.c"

void
__runSuite(void)
{
  __prints("Running testSwapAdd\n");
  testSwapAdd();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "swap_add.c";
}
