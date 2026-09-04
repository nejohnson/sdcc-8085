#include "./../tests/bug2805333.c"

void
__runSuite(void)
{
  __prints("Running test_bug\n");
  test_bug();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug2805333.c";
}
