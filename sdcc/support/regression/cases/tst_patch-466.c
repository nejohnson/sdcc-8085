#include "./../tests/patch-466.c"

void
__runSuite(void)
{
  __prints("Running testPatch\n");
  testPatch();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "patch-466.c";
}
