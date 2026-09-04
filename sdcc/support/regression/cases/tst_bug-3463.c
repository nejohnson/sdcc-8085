#include "./../tests/bug-3463.c"

void
__runSuite(void)
{
  __prints("Running test\n");
  test();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-3463.c";
}
