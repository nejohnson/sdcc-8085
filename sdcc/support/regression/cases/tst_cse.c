#include "./../tests/cse.c"

void
__runSuite(void)
{
  __prints("Running test_FuncCall1\n");
  test_FuncCall1();
  __prints("Running test_FuncCall2\n");
  test_FuncCall2();
  __prints("Running test_FuncCall3\n");
  test_FuncCall3();
  __prints("Running test_FuncCall4\n");
  test_FuncCall4();
  __prints("Running test_FuncCall5\n");
  test_FuncCall5();
  __prints("Running test_FuncCall6\n");
  test_FuncCall6();
  __prints("Running test_Struct1\n");
  test_Struct1();
  __prints("Running test_Struct2\n");
  test_Struct2();
  __prints("Running test_Struct3\n");
  test_Struct3();
  __prints("Running test_Struct4\n");
  test_Struct4();
  __prints("Running test_Struct5\n");
  test_Struct5();
  __prints("Running test_Global1\n");
  test_Global1();
}

const int __numCases = 12;

__code const char *
__getSuiteName(void)
{
  return "cse.c";
}
