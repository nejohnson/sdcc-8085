#include "./../tests/compound-literal.c"

void
__runSuite(void)
{
  __prints("Running testCompoundLiterals\n");
  testCompoundLiterals();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "compound-literal.c";
}
