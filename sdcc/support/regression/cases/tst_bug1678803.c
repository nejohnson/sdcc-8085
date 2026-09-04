#include "./../tests/bug1678803.c"

void
__runSuite(void)
{
  __prints("Running testCaller\n");
  testCaller();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1678803.c";
}
