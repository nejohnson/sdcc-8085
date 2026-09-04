#include "./../tests/bug-927659.c"

void
__runSuite(void)
{
  __prints("Running testReverse\n");
  testReverse();
  __prints("Running testAddFunc\n");
  testAddFunc();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug-927659.c";
}
