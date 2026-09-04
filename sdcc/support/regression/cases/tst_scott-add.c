#include "./../tests/scott-add.c"

void
__runSuite(void)
{
  __prints("Running test_add_lit2uchar\n");
  test_add_lit2uchar();
  __prints("Running test_add_uchar2uchar_setup\n");
  test_add_uchar2uchar_setup();
  __prints("Running test_add_uchar2uchar\n");
  test_add_uchar2uchar();
  __prints("Running test_add_uchar2uchar2_setup\n");
  test_add_uchar2uchar2_setup();
  __prints("Running test_add_uchar2uchar2\n");
  test_add_uchar2uchar2();
}

const int __numCases = 5;

__code const char *
__getSuiteName(void)
{
  return "scott-add.c";
}
