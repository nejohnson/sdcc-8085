#include "./../tests/bug2944399.c"

void
__runSuite(void)
{
  __prints("Running testBug1\n");
  testBug1();
  __prints("Running testBug2\n");
  testBug2();
  __prints("Running testBug3\n");
  testBug3();
  __prints("Running testBug4\n");
  testBug4();
}

const int __numCases = 4;

__code const char *
__getSuiteName(void)
{
  return "bug2944399.c";
}
