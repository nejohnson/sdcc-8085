#include "./../tests/and_survive.c"

void
__runSuite(void)
{
  __prints("Running testAndSurvive\n");
  testAndSurvive();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "and_survive.c";
}
