#include "./../tests/bug-2834.c"

void
__runSuite(void)
{
  __prints("Running testBug1\n");
  testBug1();
  __prints("Running testBug2\n");
  testBug2();
  __prints("Running testBug3\n");
  testBug3();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "bug-2834.c";
}
