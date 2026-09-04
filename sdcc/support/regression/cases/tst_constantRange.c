#include "./../tests/constantRange.c"

void
__runSuite(void)
{
  __prints("Running testConstantRange\n");
  testConstantRange();
  __prints("Running testFoo1\n");
  testFoo1();
  __prints("Running testFoo2\n");
  testFoo2();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "constantRange.c";
}
