#include "./../tests/typeof_retfptr.c"

void
__runSuite(void)
{
  __prints("Running testTypeofFptr\n");
  testTypeofFptr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "typeof_retfptr.c";
}
