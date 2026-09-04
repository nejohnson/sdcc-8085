#include "./../tests/bug-460010.c"

void
__runSuite(void)
{
  __prints("Running testBadPromotion\n");
  testBadPromotion();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-460010.c";
}
