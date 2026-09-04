#include "./../tests/assert.c"

void
__runSuite(void)
{
  __prints("Running testStaticAssert\n");
  testStaticAssert();
  __prints("Running testStaticAssert2X\n");
  testStaticAssert2X();
  __prints("Running testAssert\n");
  testAssert();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "assert.c";
}
