#include "./../tests/bug1426356.c"

void
__runSuite(void)
{
  __prints("Running test_1426356\n");
  test_1426356();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1426356.c";
}
