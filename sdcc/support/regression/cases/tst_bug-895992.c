#include "./../tests/bug-895992.c"

void
__runSuite(void)
{
  __prints("Running testLR\n");
  testLR();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-895992.c";
}
