#include "./../tests/escape.c"

void
__runSuite(void)
{
  __prints("Running testEscape\n");
  testEscape();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "escape.c";
}
