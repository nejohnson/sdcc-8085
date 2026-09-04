#include "./../tests/bool.c"

void
__runSuite(void)
{
  __prints("Running testBug2233\n");
  testBug2233();
  __prints("Running testBool\n");
  testBool();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bool.c";
}
