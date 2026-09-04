#include "./../tests/gcc-torture-execute-tstdi-1.c"

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
  return "gcc-torture-execute-tstdi-1.c";
}
