#include "./../tests/gcc-torture-execute-strlen-3.c"

void
__runSuite(void)
{
  __prints("Running test_array_ref\n");
  test_array_ref();
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-strlen-3.c";
}
