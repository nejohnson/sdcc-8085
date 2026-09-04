#include "./../tests/auto.c"

void
__runSuite(void)
{
  __prints("Running testAuto\n");
  testAuto();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "auto.c";
}
