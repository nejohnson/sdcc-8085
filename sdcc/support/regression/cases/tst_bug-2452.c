#include "./../tests/bug-2452.c"

void
__runSuite(void)
{
  __prints("Running test_xprintf\n");
  test_xprintf();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2452.c";
}
