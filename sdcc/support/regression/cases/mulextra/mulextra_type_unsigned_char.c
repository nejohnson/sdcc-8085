/** Simple test for special multiplication support (wide x narrow)

    type: unsigned char, signed char, unsigned int, signed int
*/
#include <testfwk.h>

unsigned long long ull;
unsigned long l;

void f(void)
{
	ull = (unsigned long long)l * 10;
}

#ifndef __SDCC_pdk14 // Lack of RAM
unsigned char c;

void g(void)
{
	ull = (unsigned long long)l * c;
}
#endif

void
testMul (void)
{
#ifndef __SDCC_pdk14 // Lack of RAM
	l = 10ull;
	c = 10;
	f();
	ASSERT (ull == 10ull * (unsigned char)10);
	g();
	ASSERT (ull == 10ull * (unsigned char)10);

	l = 100;
	c = 10;
	f();
	ASSERT (ull == 100ull * (unsigned char)10);
	g();
	ASSERT (ull == 100ull * (unsigned char)10);

	l = 1000ull;
	c = 10;
	f();
	ASSERT (ull == 1000ull * (unsigned char)10);
	g();
	ASSERT (ull == 1000ull * (unsigned char)10);

	l = 10000ull;
	c = 10;
	f();
	ASSERT (ull == 10000ull * (unsigned char)10);
	g();
	ASSERT (ull == 10000ull * (unsigned char)10);

	l = 100000ull;
	c = 10;
	f();
	ASSERT (ull == 100000ull * (unsigned char)10);
	g();
	ASSERT (ull == 100000ull * (unsigned char)10);

	l = 100000ull;
	c = 100;
	g();
	ASSERT (ull == 100000ull * (unsigned char)100);

	l = 100000ull;
	c = 1000;
	g();
	ASSERT (ull == 100000ull * (unsigned char)1000);

	l = 0xfffffffful;
	c = 0x7f;
	g();
	ASSERT (ull == 0xffffffffull * (unsigned char)0x7f);
#endif
}


void
__runSuite(void)
{
  __prints("Running testMul\n");
  testMul();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "mulextra_type_unsigned_char";
}
