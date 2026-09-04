#include "./../tests/bug1458678.c"

void
__runSuite(void)
{
  __prints("Running testDummy\n");
  testDummy();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1458678.c";
}
