#include "./../tests/bug663539.c"

void
__runSuite(void)
{
  __prints("Running test_volatile\n");
  test_volatile();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug663539.c";
}
