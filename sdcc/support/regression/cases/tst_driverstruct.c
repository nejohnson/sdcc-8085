#include "./../tests/driverstruct.c"

void
__runSuite(void)
{
  __prints("Running testDriverStruct\n");
  testDriverStruct();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "driverstruct.c";
}
