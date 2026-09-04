#include "./../tests/bug-435214.c"

void
__runSuite(void)
{
  __prints("Running testDivide\n");
  testDivide();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-435214.c";
}
