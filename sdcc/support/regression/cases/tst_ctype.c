#include "./../tests/ctype.c"

void
__runSuite(void)
{
  __prints("Running testCtype\n");
  testCtype();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "ctype.c";
}
