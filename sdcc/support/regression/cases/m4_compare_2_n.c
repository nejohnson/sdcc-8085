#include "compare_2_n.m4c"

void
__runSuite(void)
{
  __prints("Running test_lwr_0x0080\n");
  test_lwr_0x0080();
  __prints("Running test_lwr_0x0100\n");
  test_lwr_0x0100();
  __prints("Running test_lwr_0x0200\n");
  test_lwr_0x0200();
  __prints("Running test_lwr_0x0400\n");
  test_lwr_0x0400();
  __prints("Running test_lwr_0x0800\n");
  test_lwr_0x0800();
  __prints("Running test_lwr_0x1000\n");
  test_lwr_0x1000();
  __prints("Running test_lwr_0x2000\n");
  test_lwr_0x2000();
  __prints("Running test_lwr_0x4000\n");
  test_lwr_0x4000();
  __prints("Running test_lwr_0x8000\n");
  test_lwr_0x8000();
  __prints("Running test_gtr_0x007f\n");
  test_gtr_0x007f();
  __prints("Running test_gtr_0x00ff\n");
  test_gtr_0x00ff();
  __prints("Running test_gtr_0x01ff\n");
  test_gtr_0x01ff();
  __prints("Running test_gtr_0x03ff\n");
  test_gtr_0x03ff();
  __prints("Running test_gtr_0x07ff\n");
  test_gtr_0x07ff();
  __prints("Running test_gtr_0x0fff\n");
  test_gtr_0x0fff();
  __prints("Running test_gtr_0x1fff\n");
  test_gtr_0x1fff();
  __prints("Running test_gtr_0x3fff\n");
  test_gtr_0x3fff();
  __prints("Running test_gtr_0x7fff\n");
  test_gtr_0x7fff();
  __prints("Running test_lwr_0x0000\n");
  test_lwr_0x0000();
  __prints("Running test_gtr_0xffff\n");
  test_gtr_0xffff();
  __prints("Running test_lwr_gtr\n");
  test_lwr_gtr();
  __prints("Running test_bug_bug_2165\n");
  test_bug_bug_2165();
}

const int __numCases = 22;

__code const char *
__getSuiteName(void)
{
  return "compare_2_n.m4c";
}
