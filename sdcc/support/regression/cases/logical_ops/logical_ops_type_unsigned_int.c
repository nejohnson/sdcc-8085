/** logical_ops.c

  type: unsigned char, signed char, unsigned int, signed int, unsigned long, signed long, unsigned long long, signed long long
*/

#include <testfwk.h>
#include <stdlib.h>
#include <stdbool.h>

bool LogicalOr1(unsigned int a, unsigned int b)
{
  return (a||b);
}

bool LogicalOr2(unsigned int a, unsigned int b)
{
  if(a|b)
    return true;
  else
    return false;
}

bool LogicalAnd1(unsigned int a, unsigned int b)
{
  return (a&&b);
}

bool LogicalAnd2(unsigned int a, unsigned int b)
{
  if(a&b)
    return true;
  else
    return false;
}

bool LogicalXor2(unsigned int a, unsigned int b)
{
  if(a^b)
    return true;
  else
    return false;
}

void
testLogicalOr(void)
{
  unsigned int i;
  unsigned int var;
  
  ASSERT(LogicalOr1(0,0)==false);
  ASSERT(LogicalOr2(0,0)==false);
  ASSERT(LogicalAnd1(0xffffffffffffffffLL,0)==false);
  ASSERT(LogicalAnd2(0,0xffffffffffffffffLL)==false);
  ASSERT(LogicalXor2(0,0)==false);
  
  for(i=0; i<(sizeof(unsigned int)*8); i++)
    {
      var=1ULL<<i;
      ASSERT(LogicalOr1(var,0)==true);
      ASSERT(LogicalOr1(0,var)==true);
      ASSERT(LogicalOr2(var,0)==true);
      ASSERT(LogicalOr2(0,var)==true);

      ASSERT(LogicalAnd1(var,0xffffffffffffffffLL)==true);
      ASSERT(LogicalAnd1(0xffffffffffffffffLL,var)==true);
      ASSERT(LogicalAnd2(var,0xffffffffffffffffLL)==true);
      ASSERT(LogicalAnd2(0xffffffffffffffffLL,var)==true);
      
      ASSERT(LogicalXor2(var,0)==true);
      ASSERT(LogicalXor2(0,var)==true);
    }
}


void
__runSuite(void)
{
  __prints("Running testLogicalOr\n");
  testLogicalOr();
}

const int __numCases = 1;

__code const char *
__getSuiteName(void)
{
  return "logical_ops_type_unsigned_int";
}
