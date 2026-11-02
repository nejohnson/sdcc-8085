/* bug-3803.c
   A struct or union used as a value without naming a variable: returned
   from a function, passed as an argument, or chosen by ?:.  The value of
   *p, p[i], p->m or s.m is the object's address, and a return of anything
   but a variable goes through a temporary.  Structs of 1, 2, 4 and 7 bytes.
 */
#include <testfwk.h>

struct S1 { unsigned char c; };
struct S2 { unsigned char a, b; };
struct S4 { unsigned char a, b, c, d; };
struct S7 { unsigned char a, b, c, d, e, f, g; };
struct O { unsigned char x; struct S4 in; };

struct S1 g1 = { 0x42 };
struct S2 g2 = { 0x12, 0x34 };
struct S4 g4[2] = { { 1, 2, 3, 4 }, { 5, 6, 7, 8 } };
struct S7 g7 = { 11, 12, 13, 14, 15, 16, 17 };
struct O go = { 9, { 21, 22, 23, 24 } };

struct S1 r1 (struct S1 *p) { return *p; }
struct S2 r2 (struct S2 *p) { return *p; }
struct S4 r4 (struct S4 *p) { return *p; }
struct S7 r7 (struct S7 *p) { return *p; }
struct S4 ri (struct S4 *p, int i) { return p[i]; }
struct S4 rm (struct O *p) { return p->in; }
struct S4 rs (void) { return go.in; }
struct S4 rc (struct S4 *p) { return r4 (p + 1); }
struct S4 rq (int c) { return c ? g4[0] : g4[1]; }
struct S4 gv = { 31, 32, 33, 34 };
struct S4 rv (void) { return gv; }
static inline struct S4 rl (struct S4 *p) { return *p; }
struct S4 rn (void) { return rl (g4 + 1); }

union U { unsigned long l; unsigned char b[4]; };
union U gu = { 0x01020304ul };
union U ru (union U *p) { return *p; }

static unsigned char sum4 (struct S4 s) { return s.a + 2 * s.b + 4 * s.c + 8 * s.d; }
unsigned char p4 (struct S4 *p) { return sum4 (*p); }
unsigned char pi (struct S4 *p, int i) { return sum4 (p[i]); }
unsigned char pm (struct O *p) { return sum4 (p->in); }

#define CHK4(s, A, B, C, D) do { struct S4 t_ = (s); ASSERT (t_.a == A); ASSERT (t_.b == B); ASSERT (t_.c == C); ASSERT (t_.d == D); } while (0)

void
testBug (void)
{
  struct S1 v1 = r1 (&g1);
  ASSERT (v1.c == 0x42);
  struct S2 v2 = r2 (&g2);
  ASSERT (v2.a == 0x12 && v2.b == 0x34);
  CHK4 (r4 (g4), 1, 2, 3, 4);
  struct S7 v7 = r7 (&g7);
  ASSERT (v7.a == 11 && v7.d == 14 && v7.g == 17);
  CHK4 (ri (g4, 1), 5, 6, 7, 8);
  CHK4 (rm (&go), 21, 22, 23, 24);
  CHK4 (rs (), 21, 22, 23, 24);
  CHK4 (rc (g4), 5, 6, 7, 8);
  CHK4 (rq (1), 1, 2, 3, 4);
  CHK4 (rq (0), 5, 6, 7, 8);
  CHK4 (rn (), 5, 6, 7, 8);
  CHK4 (rv (), 31, 32, 33, 34);
  union U vu = ru (&gu);
  ASSERT (vu.l == 0x01020304ul);
  ASSERT (p4 (g4) == 1 + 4 + 12 + 32);
  ASSERT (pi (g4, 1) == 5 + 12 + 28 + 64);
  ASSERT (pm (&go) == (unsigned char)(21 + 44 + 92 + 192));
}
