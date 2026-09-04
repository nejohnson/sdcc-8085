#include "./../tests/caseranges.c"

void
__runSuite(void)
{
  __prints("Running testCaseRanges\n");
  testCaseRanges();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "caseranges.c";
}
