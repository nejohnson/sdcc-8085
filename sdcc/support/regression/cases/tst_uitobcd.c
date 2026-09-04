#include "./../tests/uitobcd.c"

void
__runSuite(void)
{
  __prints("Running test__uitobcd\n");
  test__uitobcd();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "uitobcd.c";
}
