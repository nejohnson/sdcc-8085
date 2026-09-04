#include "./../tests/bug1734654.c"

void
__runSuite(void)
{
  __prints("Running testMyFunc\n");
  testMyFunc();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1734654.c";
}
