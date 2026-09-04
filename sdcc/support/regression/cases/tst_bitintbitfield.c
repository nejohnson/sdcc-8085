#include "./../tests/bitintbitfield.c"

void
__runSuite(void)
{
  __prints("Running testBitIntBitField\n");
  testBitIntBitField();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bitintbitfield.c";
}
