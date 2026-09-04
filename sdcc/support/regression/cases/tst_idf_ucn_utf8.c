#include "./../tests/idf_ucn_utf8.c"

void
__runSuite(void)
{
  __prints("Running testShadowing\n");
  testShadowing();
  __prints("Running testAssignment\n");
  testAssignment();
  __prints("Running testSquared\n");
  testSquared();
}

const int __numCases = 3;

__code const char *
__getSuiteName(void)
{
  return "idf_ucn_utf8.c";
}
