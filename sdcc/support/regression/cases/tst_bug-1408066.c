#include "./../tests/bug-1408066.c"

void
__runSuite(void)
{
  __prints("Running testBackPatchLabel\n");
  testBackPatchLabel();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-1408066.c";
}
