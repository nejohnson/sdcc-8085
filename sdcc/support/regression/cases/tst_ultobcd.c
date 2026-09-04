#include "./../tests/ultobcd.c"

void
__runSuite(void)
{
  __prints("Running test__ultobcd\n");
  test__ultobcd();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "ultobcd.c";
}
