#include "./../tests/gcc-torture-execute-20030916-1.c"

void
__runSuite(void)
{
  __prints("Running testTortureExecute\n");
  testTortureExecute();
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-20030916-1.c";
}
