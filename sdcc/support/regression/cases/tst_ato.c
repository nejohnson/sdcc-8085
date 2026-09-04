#include "./../tests/ato.c"

void
__runSuite(void)
{
  __prints("Running testAto\n");
  testAto();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "ato.c";
}
