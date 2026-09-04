#include "./../tests/scott-arrays.c"

void
__runSuite(void)
{
  __prints("Running testArrays\n");
  testArrays();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-arrays.c";
}
