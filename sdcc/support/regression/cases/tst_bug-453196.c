#include "./../tests/bug-453196.c"

void
__runSuite(void)
{
  __prints("Running testDhry\n");
  testDhry();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-453196.c";
}
