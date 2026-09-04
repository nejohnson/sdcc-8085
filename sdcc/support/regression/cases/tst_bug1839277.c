#include "./../tests/bug1839277.c"

void
__runSuite(void)
{
  __prints("Running testBug1839277\n");
  testBug1839277();
  __prints("Running testBug1839299\n");
  testBug1839299();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug1839277.c";
}
