#include "./../tests/bug-524691.c"

void
__runSuite(void)
{
  __prints("Running testDivByZero\n");
  testDivByZero();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-524691.c";
}
