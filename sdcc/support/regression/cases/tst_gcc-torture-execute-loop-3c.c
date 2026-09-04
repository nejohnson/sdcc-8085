#include "./../tests/gcc-torture-execute-loop-3c.c"

void
__runSuite(void)
{
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-loop-3c.c";
}
