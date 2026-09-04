#include "./../tests/iso-8859-1.c"

void
__runSuite(void)
{
  __prints("Running testStr\n");
  testStr();
  __prints("Running testCharconst\n");
  testCharconst();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "iso-8859-1.c";
}
