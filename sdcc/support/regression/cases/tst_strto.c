#include "./../tests/strto.c"

void
__runSuite(void)
{
  __prints("Running testStrto\n");
  testStrto();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "strto.c";
}
