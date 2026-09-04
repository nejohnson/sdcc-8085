#include "./../tests/bug-1376320.c"

void
__runSuite(void)
{
  __prints("Running testSign\n");
  testSign();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-1376320.c";
}
