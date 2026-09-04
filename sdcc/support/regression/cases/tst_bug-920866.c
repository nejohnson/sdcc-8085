#include "./../tests/bug-920866.c"

void
__runSuite(void)
{
  __prints("Running testReplaceParameterTree\n");
  testReplaceParameterTree();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-920866.c";
}
