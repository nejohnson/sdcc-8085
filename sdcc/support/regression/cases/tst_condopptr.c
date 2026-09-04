#include "./../tests/condopptr.c"

void
__runSuite(void)
{
  __prints("Running testCondOpPtrTypes1\n");
  testCondOpPtrTypes1();
  __prints("Running testCondOpPtrTypes2\n");
  testCondOpPtrTypes2();
  __prints("Running testBug2412\n");
  testBug2412();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "condopptr.c";
}
