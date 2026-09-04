#include "./../tests/structflexarray.c"

void
__runSuite(void)
{
  __prints("Running testFlexibleArray1\n");
  testFlexibleArray1();
  __prints("Running testFlexibleArray2\n");
  testFlexibleArray2();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "structflexarray.c";
}
