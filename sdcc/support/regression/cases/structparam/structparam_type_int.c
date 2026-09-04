/*  Test struct / union parameters

    type: char, int, long, long long

 */

#include <testfwk.h>

struct s
{
	int a;
	int b;
};

// Callee
int f(struct s s)
{
	return s.a + s.b;
}

// Caller
#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) // Lack of memory
int g(int i, int j)
{
	struct s s = {i, j};
	return f(s);
}
#endif

void testParam (void)
{
#if !defined( __SDCC_pdk13) && !defined( __SDCC_pdk14) // Lack of memory
	ASSERT (g(23, 42) == 23 + 42);
#endif
}


void
__runSuite(void)
{
  __prints("Running testParam\n");
  testParam();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "structparam_type_int";
}
