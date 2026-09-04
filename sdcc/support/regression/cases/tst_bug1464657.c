#include "./../tests/bug1464657.c"

void
__runSuite(void)
{
  __prints("Running test_Peephole251\n");
  test_Peephole251();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1464657.c";
}
