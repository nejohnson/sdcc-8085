#include "./../tests/const.c"

void
__runSuite(void)
{
  __prints("Running testConst\n");
  testConst();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "const.c";
}
