#include "./../tests/getbyte_param.c"

void
__runSuite(void)
{
  __prints("Running testGetByte\n");
  testGetByte();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "getbyte_param.c";
}
