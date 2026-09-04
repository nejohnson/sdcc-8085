#include "./../tests/bug1337835.c"

void
__runSuite(void)
{
  __prints("Running test_1337835\n");
  test_1337835();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1337835.c";
}
