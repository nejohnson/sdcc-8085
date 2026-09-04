#include "./../tests/scott-struct1.c"

void
__runSuite(void)
{
  __prints("Running testStruct1\n");
  testStruct1();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-struct1.c";
}
