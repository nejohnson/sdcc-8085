#include "./../tests/gcc-torture-execute-strlen-2.c"

void
__runSuite(void)
{
  __prints("Running test_array_ref_2_3\n");
  test_array_ref_2_3();
  __prints("Running test_array_off_2_3\n");
  test_array_off_2_3();
  __prints("Running test_array_ref_2_2_5\n");
  test_array_ref_2_2_5();
  __prints("Running test_array_off_2_2_5\n");
  test_array_off_2_2_5();
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 5;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-strlen-2.c";
}
