#include "./../tests/bug-3920.c"

void
__runSuite(void)
{
  __prints("Running testBug\n");
  testBug();
  __prints("Running testBug2\n");
  testBug2();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug-3920.c";
}
