#include "./../tests/longlit.c"

void
__runSuite(void)
{
  __prints("Running testLongLit\n");
  testLongLit();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "longlit.c";
}
