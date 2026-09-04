#include "./../tests/bug1185672.c"

void
__runSuite(void)
{
  __prints("Running test_1185672\n");
  test_1185672();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1185672.c";
}
