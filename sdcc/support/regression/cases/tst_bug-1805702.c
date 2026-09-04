#include "./../tests/bug-1805702.c"

void
__runSuite(void)
{
  __prints("Running test\n");
  test();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-1805702.c";
}
