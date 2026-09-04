#include "./../tests/digit_separators.c"

void
__runSuite(void)
{
  __prints("Running testDigitSeparators\n");
  testDigitSeparators();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "digit_separators.c";
}
