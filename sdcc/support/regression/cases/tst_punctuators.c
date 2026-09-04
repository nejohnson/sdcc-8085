#include "./../tests/punctuators.c"

void
__runSuite(void)
{
  __prints("Running testPunctuators\n");
  testPunctuators();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "punctuators.c";
}
