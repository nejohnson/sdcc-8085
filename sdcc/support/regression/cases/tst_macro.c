#include "./../tests/macro.c"

void
__runSuite(void)
{
  __prints("Running test_macro\n");
  test_macro();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "macro.c";
}
