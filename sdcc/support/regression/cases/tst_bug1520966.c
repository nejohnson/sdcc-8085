#include "./../tests/bug1520966.c"

void
__runSuite(void)
{
  __prints("Running testFloatOp\n");
  testFloatOp();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug1520966.c";
}
