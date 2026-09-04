#include "./../tests/mm-pnvi-ae-udi-provenance_basic_using_uintptr_t_global_xy.c"

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
  return "mm-pnvi-ae-udi-provenance_basic_using_uintptr_t_global_xy.c";
}
