#include "./../tests/bug1115321.c"

void
__runSuite(void)
{
  __prints("Running test_s\n");
  test_s();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1115321.c";
}
