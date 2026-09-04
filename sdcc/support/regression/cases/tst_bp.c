#include "./../tests/bp.c"

void
__runSuite(void)
{
  __prints("Running testBP\n");
  testBP();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bp.c";
}
