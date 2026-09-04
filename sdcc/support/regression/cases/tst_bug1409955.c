#include "./../tests/bug1409955.c"

void
__runSuite(void)
{
  __prints("Running test_push_pop\n");
  test_push_pop();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1409955.c";
}
