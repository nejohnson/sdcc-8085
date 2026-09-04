#include "./../tests/nadd.c"

void
__runSuite(void)
{
  __prints("Running testNadd\n");
  testNadd();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "nadd.c";
}
