#include "./../tests/gcc-torture-execute-strlen-4.c"

void
__runSuite(void)
{
  __prints("Running test_array_ptr\n");
  test_array_ptr();
  __prints("Running test_ptr_array\n");
  test_ptr_array();
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-strlen-4.c";
}
