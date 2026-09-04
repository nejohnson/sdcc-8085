#include "./../tests/declafterstmt.c"

void
__runSuite(void)
{
  __prints("Running testDeclAfterStmt\n");
  testDeclAfterStmt();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "declafterstmt.c";
}
