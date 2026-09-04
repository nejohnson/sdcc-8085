#include "./../tests/bug-905492.c"

void
__runSuite(void)
{
  __prints("Running testLeftRightAndOr\n");
  testLeftRightAndOr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-905492.c";
}
