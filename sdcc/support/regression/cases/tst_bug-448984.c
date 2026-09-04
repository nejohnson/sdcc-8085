#include "./../tests/bug-448984.c"

void
__runSuite(void)
{
  __prints("Running testRshRem\n");
  testRshRem();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-448984.c";
}
