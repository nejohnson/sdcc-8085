/** Add, sub tests.

    type: signed char, int, long
    storage: static, 
    attr: volatile
*/
#include <testfwk.h>

int add_func(int i)
{
	return(i + (5ul << 16));
}

void 
testAdd(void)
{
  static volatile int left, right, result;

  left = 5;
  right = 26;

  result = left+right;
  ASSERT(result == 31);
  
  left = 39;
  right = -120;
  
  result = left+right;
  ASSERT(result == (39-120));

  left = -39;
  right = 80;
  
  result = left+right;
  ASSERT(result == (-39+80));

  left = -39;
  right = -70;
  
  result = left+right;
  ASSERT(result == (-39-70));

  result += 0xab00;
  ASSERT(result == (int)(0xab00-39-70));

  left = 0x5500;
  right = 0x0a00;

  result = left + right;
  ASSERT(result == (int)(0x5500 + 0x0a00));
#if !defined (__SDCC_pdk13) // Not enough code memory - just a few bytes, this should work with more optimizations
  left = 0x550000ul;

  result = left + 0x0a0000ul;
  ASSERT(result == (int)(0x550000ul + 0x0a0000ul));

  ASSERT(add_func(0) == (int)(5ul << 16));
#endif
}

void 
testSub(void)
{
#if !defined (__SDCC_pdk13) && !(defined (__SDCC_pdk15) && defined(__SDCC_STACK_AUTO)) // Lack of code memory
  static volatile int left, right, result;

  left = 5;
  right = 26;

  result = left-right;
  ASSERT(result == (5-26));

  left = 39;
  right = -76;

  result = left-right;
  ASSERT(result == (39+76));

  left = -12;
  right = 56;

  result = left-right;
  ASSERT(result == (-12-56));
  
  left = -39;
  right = -20;

  result = left-right;
  ASSERT(result == (-39+20));

  result = left-(signed)0x1200;
  ASSERT(result == (int)(-39-(signed)0x1200));
#endif
}


void
__runSuite(void)
{
  __prints("Running testAdd\n");
  testAdd();
  __prints("Running testSub\n");
  testSub();
}

const int __numCases = 2;

__code const char *
__getSuiteName(void)
{
  return "addsub_type_int_storage_static_attr_volatile";
}
