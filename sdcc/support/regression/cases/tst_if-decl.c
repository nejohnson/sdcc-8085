#include "./../tests/if-decl.c"

void
__runSuite(void)
{
  __prints("Running testIfDecl\n");
  testIfDecl();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "if-decl.c";
}
