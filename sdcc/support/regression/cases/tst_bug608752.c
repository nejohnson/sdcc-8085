#include "./../tests/bug608752.c"

void
__runSuite(void)
{
  __prints("Running testOpAssign\n");
  testOpAssign();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug608752.c";
}
