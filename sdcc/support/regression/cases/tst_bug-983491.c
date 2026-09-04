#include "./../tests/bug-983491.c"

void
__runSuite(void)
{
  __prints("Running testMergeStr\n");
  testMergeStr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-983491.c";
}
