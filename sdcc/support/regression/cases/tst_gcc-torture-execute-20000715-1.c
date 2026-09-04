#include "./../tests/gcc-torture-execute-20000715-1.c"

void
__runSuite(void)
{
  __prints("Running test1\n");
  test1();
  __prints("Running test2\n");
  test2();
  __prints("Running test3\n");
  test3();
  __prints("Running test4\n");
  test4();
  __prints("Running test5\n");
  test5();
  __prints("Running test6\n");
  test6();
  __prints("Running testTortureExecute\n");
  testTortureExecute();
}

const int __numCases = 7;

__code const char *
__getSuiteName(void)
{
  return "gcc-torture-execute-20000715-1.c";
}
