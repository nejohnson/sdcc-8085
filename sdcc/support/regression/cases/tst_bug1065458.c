#include "./../tests/bug1065458.c"

void
__runSuite(void)
{
  __prints("Running test_1065458\n");
  test_1065458();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1065458.c";
}
