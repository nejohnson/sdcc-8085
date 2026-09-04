#include "./../tests/bug-2554.c"

void
__runSuite(void)
{
  __prints("Running testOr\n");
  testOr();
  __prints("Running testBug\n");
  testBug();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "bug-2554.c";
}
