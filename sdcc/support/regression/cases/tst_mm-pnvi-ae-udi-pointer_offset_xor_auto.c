#include "./../tests/mm-pnvi-ae-udi-pointer_offset_xor_auto.c"

void
__runSuite(void)
{
  __prints("Running testMM\n");
  testMM();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "mm-pnvi-ae-udi-pointer_offset_xor_auto.c";
}
