#include "./../tests/fetchoverlap.c"

void
__runSuite(void)
{
  __prints("Running testOverlap\n");
  testOverlap();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "fetchoverlap.c";
}
