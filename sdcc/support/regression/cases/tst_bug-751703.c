#include "./../tests/bug-751703.c"

void
__runSuite(void)
{
  __prints("Running testExternDeadCode\n");
  testExternDeadCode();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-751703.c";
}
