/** Simple test for parameter values;
  in particular, sm83 has some optimizations for passing certain valus on the stack.
  val1: 0x00, 0x01, 0xff
  val0: 0x00, 0x01, 0x10, 0x18, 0x20, 0x30, 0x40, 0x41, 0x48, 0x50, 0x60, 0x70, 0x80, 0x81, 0x90, 0xa0, 0xb0, 0xc0, 0xd0, 0xe0, 0xf0, 0xf1, 0xf8
*/

#include <testfwk.h>

#include <stdarg.h>

// Use a function with variable arguments to ensure that hte arguments are passed on the stack.
unsigned int callee(int narg, ...);

void testPassArg(void)
{
	ASSERT (callee(1, (unsigned int)0xa0 + ((unsigned int)0xff << 8)) == (unsigned int)0xa0 + ((unsigned int)0xff << 8));
	ASSERT (callee(2, (unsigned int)0xa0, (unsigned int)0xff) == (unsigned int)0xa0 + ((unsigned int)0xff << 8));
}

unsigned int callee(int narg, ...)
{
	va_list ap;
	va_start(ap, narg);
	unsigned int ret = va_arg(ap, unsigned int);
	if(narg == 2)
		return ret += va_arg(ap, unsigned int) << 8;
	return ret;
}


void
__runSuite(void)
{
  __prints("Running testPassArg\n");
  testPassArg();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "argval_val1_0xff_val0_0xa0";
}
