#include "./../tests/bug-2051348.c"

void
__runSuite(void)
{
  __prints("Running testBug2051348\n");
  testBug2051348();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-2051348.c";
}
