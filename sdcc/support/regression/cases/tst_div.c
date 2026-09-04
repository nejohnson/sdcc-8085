#include "./../tests/div.c"

void
__runSuite(void)
{
  __prints("Running testDiv\n");
  testDiv();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "div.c";
}
