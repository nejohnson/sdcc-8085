/* bug-4094

   A structure with a flexible array member shall not be an element
   of an array (N3886 6.7.3.2p3: "A structure containing a flexible
   array member shall not be a member of a structure or an element
   of an array"). SDCC already enforced the "member of a structure"
   half (checkStructFlexArray, called from the struct-member grammar
   path) but silently accepted the "element of an array" half, with
   no diagnostic at all.

   Fixed in SDCCsymt.c's addSymChain: after the declared symbol's own
   type sanity check, walk any array-of-array chain down to its
   element type and raise the existing W_INVALID_FLEXARRAY warning if
   that element is a struct with b_flexArrayMember set. addSymChain
   is the central choke point for every ordinary object declaration
   (globals and locals), so this covers plain arrays and arrays of
   arrays alike, without disturbing the pre-existing struct-member
   check or any non-array use of a flexible-array-member struct
   (a plain variable or a pointer, both still legal). */
#include <testfwk.h>

struct flexible
{
  int count;
  int data[];
};

#if 0 /* an array of a flexible-array-member struct is now a compile error - that's the fix under test */
struct flexible badArray[2];
#endif

struct flexible single;
struct flexible *ptr;

struct complete
{
  int count;
  int data[4];
};
struct complete goodArray[2];

void
testBug (void)
{
  single.count = 1;
  ptr = &single;
  goodArray[0].count = 2;
  goodArray[1].count = 3;
  ASSERT (goodArray[0].count == 2);
  ASSERT (goodArray[1].count == 3);
  ASSERT (ptr->count == 1);
}
