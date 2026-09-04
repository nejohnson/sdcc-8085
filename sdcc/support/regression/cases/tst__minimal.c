#include "./../tests/_minimal.c"

void
__runSuite(void)
{
  __prints("Running testMinimal\n");
  testMinimal();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "_minimal.c";
}
