#include "./../tests/scott-bool1.c"

void
__runSuite(void)
{
  __prints("Running testBool1\n");
  testBool1();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "scott-bool1.c";
}
