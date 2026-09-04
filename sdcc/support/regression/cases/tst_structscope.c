#include "./../tests/structscope.c"

void
__runSuite(void)
{
  __prints("Running test_global\n");
  test_global();
  __prints("Running test_nested\n");
  test_nested();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "structscope.c";
}
