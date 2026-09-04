#include "./../tests/bug-716242.c"

void
__runSuite(void)
{
  __prints("Running testFuncPtr\n");
  testFuncPtr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-716242.c";
}
