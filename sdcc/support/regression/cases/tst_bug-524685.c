#include "./../tests/bug-524685.c"

void
__runSuite(void)
{
  __prints("Running testDivPow2\n");
  testDivPow2();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-524685.c";
}
