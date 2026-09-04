#include "./../tests/gcc-torture-execute-memchr-1.c"

void
__runSuite(void)
{
  __prints("Running test_narrow\n");
  test_narrow();
  __prints("Running test_wide\n");
  test_wide();
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-memchr-1.c";
}
