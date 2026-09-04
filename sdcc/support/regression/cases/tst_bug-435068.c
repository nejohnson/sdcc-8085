#include "./../tests/bug-435068.c"

void
__runSuite(void)
{
  __prints("Running testQuestion\n");
  testQuestion();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bug-435068.c";
}
