/** Tests rematerialization of pointers to parameters infunctions with large return value
    type: char, int, long , long long
    msb: 0,1
*/

#include <testfwk.h>

struct s
{
	long long i;
};

#if !defined(__SDCC_mcs51) && !defined(__SDCC_ds390) && !defined(__SDCC_hc08) && !defined(__SDCC_s08) // Todo: enable when struct parameters are supported!
struct s f(struct s p) // Returned via extra hidden parameter
{
	p.i++; // Uses rematerialized address to parameter
	return (p);
}

long long g(struct s p) // Returned via extra hidden parameter for large return types only.
{
	p.i++; // Uses rematerialized address to parameter
	return (p.i);
}
#endif

void
testRemat(void)
{
#if !defined(__SDCC_mcs51) && !defined(__SDCC_ds390) && !defined(__SDCC_hc08) && !defined(__SDCC_s08) // Todo: enable when struct parameters are supported!
	struct s s;
	s.i = 0;
	ASSERT (f(s).i == 1);
	ASSERT (g(s) == 1);
#endif
}


void
__runSuite(void)
{
  __prints("Running testRemat\n");
  testRemat();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "bigreturn-remat_type_long_long_msb_1";
}
