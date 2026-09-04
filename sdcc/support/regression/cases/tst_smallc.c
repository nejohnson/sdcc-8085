#include "./../tests/smallc.c"

void
__runSuite(void)
{
  __prints("Running testSmallC\n");
  testSmallC();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "smallc.c";
}
