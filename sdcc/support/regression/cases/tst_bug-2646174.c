#include "./../tests/bug-2646174.c"

void
__runSuite(void)
{
  __prints("Running test_2646174\n");
  test_2646174();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2646174.c";
}
