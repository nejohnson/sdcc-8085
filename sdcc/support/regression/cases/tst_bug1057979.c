#include "./../tests/bug1057979.c"

void
__runSuite(void)
{
  __prints("Running test_sprintf\n");
  test_sprintf();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1057979.c";
}
