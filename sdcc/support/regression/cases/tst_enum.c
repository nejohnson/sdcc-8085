#include "./../tests/enum.c"

void
__runSuite(void)
{
  __prints("Running testSimpleEnum\n");
  testSimpleEnum();
  __prints("Running testValuesEnum\n");
  testValuesEnum();
  __prints("Running testIndexedEnum\n");
  testIndexedEnum();
  __prints("Running testSignedEnum\n");
  testSignedEnum();
  __prints("Running testIntEnum\n");
  testIntEnum();
}

const int __numCases = 5;

__code const char *
__getSuiteName(void)
{
  return "enum.c";
}
