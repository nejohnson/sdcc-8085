#include "./../tests/charconst.c"

void
__runSuite(void)
{
  __prints("Running testCharConst\n");
  testCharConst();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "charconst.c";
}
