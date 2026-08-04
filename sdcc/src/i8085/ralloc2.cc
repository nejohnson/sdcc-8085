// Philipp Klaus Krause, philipp@informatik.uni-frankfurt.de, pkk@spth.de, 2010 - 2011
//
// (c) 2010-2012 Goethe-Universität Frankfurt
//
// This program is free software; you can redistribute it and/or modify it
// under the terms of the GNU General Public License as published by the
// Free Software Foundation; either version 2, or (at your option) any
// later version.
//
// This program is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with this program; if not, write to the Free Software
// Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
//
// An optimal, polynomial-time register allocator.

// #define DEBUG_RALLOC_DEC // Uncomment to get debug messages while doing register allocation on the tree decomposition.
// #define DEBUG_RALLOC_DEC_ASS // Uncomment to get debug messages about assignments while doing register allocation on the tree decomposition (much more verbose than the one above).

#include "SDCCralloc.hpp"
#include "SDCCsalloc.hpp"

extern "C"
{
  #include "z80.h"
  float i8085_dryZ80iCode (iCode * ic);
  bool i8085_assignment_optimal;
  bool i8085_should_omit_frame_ptr;
}

#define REG_A 0
#define REG_C 1
#define REG_B 2
#define REG_E 3
#define REG_D 4
#define REG_L 5
#define REG_H 6
#define REG_IYL 7
#define REG_IYH 8

template <class G_t, class I_t>
float default_operand_cost(const operand *o, const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  float c = 0.0f;

  operand_map_t::const_iterator oi, oi_end;

  var_t byteregs[4];    // Todo: Change this when sdcc supports variables larger than 4 bytes in registers.
  unsigned short int size;

  if(o && IS_SYMOP(o))
    {
      boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key);
      if(oi != oi_end)
        {
          var_t v = oi->second;

          // In registers.
          if(std::binary_search(a.local.begin(), a.local.end(), v))
            {
              c += 1.0f;
              byteregs[I[v].byte] = a.global[v];
              size = 1;

              while(++oi != oi_end)
                {
                  v = oi->second;
                  c += (std::binary_search(a.local.begin(), a.local.end(), v) ? 1.0f : std::numeric_limits<float>::infinity());
                  byteregs[I[v].byte] = a.global[v];
                  size++;
                }

              // Penalty for not placing 2- and 4-byte variables in register pairs
              // Todo: Extend this once the register allocator can use registers other than bc, de:
              if ((size == 2 || size == 4) &&
                  (byteregs[1] != byteregs[0] + 1 || (byteregs[0] != REG_C && byteregs[0] != REG_E && byteregs[0] != REG_L)))
                c += 2.0f;
              if (size == 4 &&
                  (byteregs[3] != byteregs[2] + 1 || (byteregs[2] != REG_C && byteregs[2] != REG_E && byteregs[0] != REG_L)))
                c += 2.0f;

              // Code generator cannot handle variables only partially in A.
              if(size > 1)
                for(unsigned short int i = 0; i < size; i++)
                  if(byteregs[i] == REG_A)
                    c += std::numeric_limits<float>::infinity();

              if(byteregs[0] == REG_A)
                c -= 0.4f;
              else if(byteregs[0] == REG_L)
                c -= 0.1f;
              else if(byteregs[0] == REG_IYH)
                c += 0.1f;
            }
          // Spilt.
          else
            {
              c += OP_SYMBOL_CONST(o)->remat ? 1.5f : 4.0f;
              while(++oi != oi_end)
                {
                  v = oi->second;
                  c += (!std::binary_search(a.local.begin(), a.local.end(), v) ? 4.0f : std::numeric_limits<float>::infinity());
                }
            }
        }
    }

  return(c);
}

// Check that the operand is either fully in registers or fully in memory.
template <class G_t, class I_t>
static bool operand_sane(const operand *o, const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  if(!o || !IS_SYMOP(o))
    return(true);
 
  operand_map_t::const_iterator oi, oi_end;
  boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key);
  
  if(oi == oi_end)
    return(true);
  
  // In registers.
  if(std::binary_search(a.local.begin(), a.local.end(), oi->second))
    {
      while(++oi != oi_end)
        if(!std::binary_search(a.local.begin(), a.local.end(), oi->second))
          return(false);
    }
  else
    {
       while(++oi != oi_end)
        if(std::binary_search(a.local.begin(), a.local.end(), oi->second))
          return(false);
    }
 
  return(true);
}

template <class G_t, class I_t>
static float default_instruction_cost(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  float c = 0.0f;

  const iCode *ic = G[i].ic;

  c += default_operand_cost(IC_RESULT(ic), a, i, G, I);
  c += default_operand_cost(IC_LEFT(ic), a, i, G, I);
  c += default_operand_cost(IC_RIGHT(ic), a, i, G, I);

  return(c);
}

template <class G_t, class I_t>
static bool inst_sane(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  const iCode *ic = G[i].ic;

  // for a sequence of built-in SENDs, all of the SENDs must be sane
  if (ic->op == SEND && ic->builtinSEND && ic->next->op == SEND && !inst_sane(a, *(adjacent_vertices(i, G).first), G, I))
    return(false);

  return(operand_sane(IC_RESULT(ic), a, i, G, I) && operand_sane(IC_LEFT(ic), a, i, G, I) && operand_sane(IC_RIGHT(ic), a, i, G, I));
}

// Treat assignment separately to handle coalescing.
template <class G_t, class I_t> static float
assign_cost(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  float c = 0.0f;

  const iCode *ic = G[i].ic;

  const operand *right = IC_RIGHT(ic);
  const operand *result = IC_RESULT(ic);

  if(!right || !IS_SYMOP(right) || !result || !IS_SYMOP(result) || POINTER_GET(ic) || POINTER_SET(ic))
    return(default_instruction_cost(a, i, G, I));

  reg_t byteregs[4] = {-1, -1, -1, -1}; // Todo: Change this when sdcc supports variables larger than 4 bytes in register allocation for z80.

  operand_map_t::const_iterator oi, oi_end;

  int size1 = 0, size2 = 0;

  boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(right)->key);
  if(oi != oi_end)
    {
      var_t v = oi->second;

      if(!std::binary_search(a.local.begin(), a.local.end(), v))
        return(default_instruction_cost(a, i, G, I));

      c += 1.0f;
      byteregs[I[v].byte] = a.global[v];
      size1 = 1;

      while(++oi != oi_end)
        {
          v = oi->second;
          c += (std::binary_search(a.local.begin(), a.local.end(), v) ? 1.0f : std::numeric_limits<float>::infinity());
          byteregs[I[v].byte] = a.global[v];
          size1++;
        }

      // Code generator cannot handle variables only partially in A.
      if(size1 > 1)
        for(unsigned short int i = 0; i < size1; i++)
          if(byteregs[i] == REG_A)
            c += std::numeric_limits<float>::infinity();

      if(byteregs[0] == REG_A)
        c -= 0.4f;
      else if(byteregs[0] == REG_IYH)
        c += 0.1f;
    }

  if(!size1)
    return(default_instruction_cost(a, i, G, I));

  boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(result)->key);
  if(oi != oi_end)
    {
      var_t v = oi->second;

      if(!std::binary_search(a.local.begin(), a.local.end(), v))
        return(default_instruction_cost(a, i, G, I));

      c += 1.0f;
      if(byteregs[I[v].byte] == a.global[v])
        c -= 2.0f;
      size2 = 1;

      while(++oi != oi_end)
        {
          v = oi->second;
          c += (std::binary_search(a.local.begin(), a.local.end(), v) ? 1.0f : std::numeric_limits<float>::infinity());
          if(byteregs[I[v].byte] == a.global[v])
            c -= 2.0f;
          size2++;
        }

      if(byteregs[0] == REG_A)
        c -= 0.4f;
      else if(byteregs[0] == REG_IYH)
        c += 0.1f;
    }

  if(!size2)
    return(default_instruction_cost(a, i, G, I));

  return(c);
}

template <class G_t, class I_t> static float
return_cost(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  float c = 0.0f;

  const iCode *ic = G[i].ic;
  
  const operand *left = IC_LEFT(ic);
  
  if(!left || !IS_SYMOP(left))
    return(default_instruction_cost(a, i, G, I));

  reg_t byteregs[4] = {-1, -1, -1, -1}; // Todo: Change this when sdcc supports variables larger than 4 bytes.
  
  operand_map_t::const_iterator oi, oi_end;

  int size = 0;
  
  boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(left)->key);
  if(oi != oi_end)
    {
      var_t v = oi->second;

      if(!std::binary_search(a.local.begin(), a.local.end(), v))
        return(default_instruction_cost(a, i, G, I));

      c += 1.0f;
      byteregs[I[v].byte] = a.global[v];
      size = 1;

      while(++oi != oi_end)
        {
          v = oi->second;
          c += (std::binary_search(a.local.begin(), a.local.end(), v) ? 1.0f : std::numeric_limits<float>::infinity());
          byteregs[I[v].byte] = a.global[v];
          size++;
        }

      if(byteregs[0] == REG_A)
        c -= 0.4f;
        
      if(byteregs[0] == REG_L)
        c -= 1.0f;
      if(byteregs[1] == REG_H)
        c -= 1.0f;
      if(byteregs[2] == REG_E)
        c -= 1.0f;
      if(byteregs[3] == REG_D)
        c -= 1.0f;
    }
    
  return(c);
}

template <class G_t, class I_t> static float
call_cost(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  float c = 0.0f;

  const iCode *ic = G[i].ic;
  
  const operand *result = IC_RESULT(ic);
  
  if(!result || !IS_SYMOP(result))
    return(default_instruction_cost(a, i, G, I));

  reg_t byteregs[4] = {-1, -1, -1, -1}; // Todo: Change this when sdcc supports variables larger than 4 bytes.
  
  operand_map_t::const_iterator oi, oi_end;

  int size = 0;
  
  boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(result)->key);
  if(oi != oi_end)
    {
      var_t v = oi->second;

      if(!std::binary_search(a.local.begin(), a.local.end(), v))
        return(default_instruction_cost(a, i, G, I));

      c += 1.0f;
      byteregs[I[v].byte] = a.global[v];
      size = 1;

      while(++oi != oi_end)
        {
          v = oi->second;
          c += (std::binary_search(a.local.begin(), a.local.end(), v) ? 1.0f : std::numeric_limits<float>::infinity());
          byteregs[I[v].byte] = a.global[v];
          size++;
        }

      // Code generator cannot handle variables only partially in A.
      if(size > 1)
        for(unsigned short int i = 0; i < size; i++)
          if(byteregs[i] == REG_A)
            c += std::numeric_limits<float>::infinity();

      if(byteregs[0] == REG_A)
        c -= 0.4f;
        
      if(byteregs[0] == REG_L)
        c -= 1.0f;
      if(byteregs[1] == REG_H)
        c -= 1.0f;
      if(byteregs[2] == REG_E)
        c -= 1.0f;
      if(byteregs[3] == REG_D)
        c -= 1.0f;
    }
    
  return(c);
}

template <class I_t>
static void add_operand_conflicts_in_node(const cfg_node &n, I_t &I)
{
  const iCode *ic = n.ic;
  
  const operand *result = IC_RESULT(ic);
  const operand *left = IC_LEFT(ic);
  const operand *right = IC_RIGHT(ic);

  if(!result || !IS_SYMOP(result))
    return;
    
  if(!(ic->op == UNARYMINUS || ic->op == '+' || ic->op == '-' || ic->op == '|' || ic->op == BITWISEAND)) 
    return; // Code generation can always handle all other operations. Todo: Handle |, BITWISEAND and float UNARYMINUS there as well.
   
  operand_map_t::const_iterator oir, oir_end, oirs; 
  boost::tie(oir, oir_end) = n.operands.equal_range(OP_SYMBOL_CONST(result)->key);
  if(oir == oir_end)
    return;
    
  operand_map_t::const_iterator oio, oio_end;
  
  if(left && IS_SYMOP(left))
    for(boost::tie(oio, oio_end) = n.operands.equal_range(OP_SYMBOL_CONST(left)->key); oio != oio_end; ++oio)
      for(oirs = oir; oirs != oir_end; ++oirs)
        {
          var_t rvar = oirs->second;
          var_t ovar = oio->second;
          if(I[rvar].byte < I[ovar].byte)
            boost::add_edge(rvar, ovar, I);
        }
        
  if(right && IS_SYMOP(right))
    for(boost::tie(oio, oio_end) = n.operands.equal_range(OP_SYMBOL_CONST(right)->key); oio != oio_end; ++oio)
      for(oirs = oir; oirs != oir_end; ++oirs)
        {
          var_t rvar = oirs->second;
          var_t ovar = oio->second;
          if(I[rvar].byte < I[ovar].byte)
            boost::add_edge(rvar, ovar, I);
        }
}

// Return true, iff the operand is placed (partially) in r.
template <class G_t>
static bool operand_in_reg(const operand *o, reg_t r, const i_assignment_t &ia, unsigned short int i, const G_t &G)
{
  if(!o || !IS_SYMOP(o))
    return(false);

  if(r >= port->num_regs)
    return(false);

  operand_map_t::const_iterator oi, oi_end;
  for(boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key); oi != oi_end; ++oi)
    if(oi->second == ia.registers[r][1] || oi->second == ia.registers[r][0])
      return(true);

  return(false);
}

// Return true, iff the operand is placed in a reg.
template <class G_t>
static bool operand_in_reg(const operand *o, const i_assignment_t &ia, unsigned short int i, const G_t &G)
{
  if(!o || !IS_SYMOP(o))
    return(false);

  operand_map_t::const_iterator oi, oi_end;
  for(boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key); oi != oi_end; ++oi)
    for(reg_t r = 0; r < port->num_regs; r++)
      if(oi->second == ia.registers[r][1] || oi->second == ia.registers[r][0])
        return(true);

  return(false);
}

// Return true, iff the operand is placed in a reg.
template <class G_t>
static bool operand_byte_in_reg(const operand *o, int offset, reg_t r, const assignment &a, unsigned short int i, const G_t &G)
{
  if(!o || !IS_SYMOP(o))
    return(false);

  operand_map_t::const_iterator oi, oi_end;

  for(boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key); offset && oi != oi_end; offset--, oi++);

  if(oi == oi_end)
    return(false);

  return(a.global[oi->second] == r);
}

// Return true, iff the operand is placed on the stack.
template <class G_t>
bool operand_on_stack(const operand *o, const assignment &a, unsigned short int i, const G_t &G)
{
  if(!o || !IS_SYMOP(o))
    return(false);

  if(OP_SYMBOL_CONST(o)->remat)
    return(false);

  if(OP_SYMBOL_CONST(o)->_isparm && !IS_REGPARM (OP_SYMBOL_CONST(o)->etype))
    return(true);
    
  if(IS_TRUE_SYMOP(o) && OP_SYMBOL_CONST(o)->onStack)
    return(true);
    
  if(OP_SYMBOL_CONST(o)->nRegs > 4) // currently all variables > 4 Byte are spilt in ralloc.c.
    return(true);

  operand_map_t::const_iterator oi, oi_end;
  for(boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key); oi != oi_end; ++oi)
    if(a.global[oi->second] < 0)
      return(true);

  return(false);
}

template <class G_t>
static bool operand_is_pair(const operand *o, const assignment &a, unsigned short int i, const G_t &G)
{
  if(!o || !IS_SYMOP(o))
    return(false);

  operand_map_t::const_iterator oi, oi2, oi3, oi_end;
  boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key);
  if(oi == oi_end)
    return(false);
  oi2 = oi;
  ++oi2;
  if(oi2 == oi_end)
    return(false);
  oi3 = oi2;
  ++oi3;
  if(oi3 != oi_end)
    return(false);

  if(a.global[oi->second] != REG_C && a.global[oi->second] != REG_E && a.global[oi->second] != REG_L && a.global[oi->second] != REG_IYL)
    return(false);
  if(a.global[oi->second] + 1 != a.global[oi2->second])
    return(false);

  return(true);
}

// Return true, iff operand-node index v belongs to operand o at instruction i.
template <class G_t>
static bool operand_has_node(const operand *o, int v, unsigned short int i, const G_t &G)
{
  if(!o || !IS_SYMOP(o))
    return(false);

  operand_map_t::const_iterator oi, oi_end;
  for(boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key); oi != oi_end; ++oi)
    if(oi->second == v)
      return(true);

  return(false);
}

template <class G_t, class I_t>
static bool Ainst_ok(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  const iCode *ic = G[i].ic;

  const i_assignment_t &ia = a.i_assignment;

  operand *const left = IC_LEFT(ic);
  operand *const right = IC_RIGHT(ic);
  const operand *const result = IC_RESULT(ic);

  if(ia.registers[REG_A][1] < 0)
    return(true);   // Register A not in use.

  // Some instructions don't touch registers.
  if(SKIP_IC2(ic))
    return(true);

  bool exstk = (i8085_should_omit_frame_ptr || (currFunc && currFunc->stack > 127));

  //std::cout << "Ainst_ok at " << G[i].ic->key << ": A = (" << ia.registers[REG_A][0] << ", " << ia.registers[REG_A][1] << "), inst " << i << ", " << ic->key << "\n";

  // Check if the result of this instruction is placed in A.
  bool result_in_A = operand_in_reg(IC_RESULT(ic), REG_A, ia, i, G);
  
  // Check if an input of this instruction is placed in A.
  bool input_in_A = operand_in_reg(left, REG_A, ia, i, G) || operand_in_reg(right, REG_A, ia, i, G);

  // 8080/8085: the byte-wise shift/rotate body (emitRsh2 / emit8080Lsh1 / the
  // 8080 register-rotate synthesis) uses A as scratch for every byte, so A must
  // not hold a byte of the multi-byte value being shifted/rotated. That value is
  // shifted in place in "shiftop", which is the result operand, or the left
  // operand when the result is not in registers - so neither left nor result may
  // have a byte in A. (The right operand is the shift count, which is moved to
  // the count register first, so it is fine.) Single-byte shifts are done wholly
  // in A and are unaffected.
  if((ic->op == LEFT_OP || ic->op == RIGHT_OP || ic->op == ROT) &&
    getSize(operandType(IC_RESULT(ic))) > 1 &&
    (result_in_A || operand_in_reg(left, REG_A, ia, i, G)))
    return(false);

  // 8080/8085: every shift/rotate is carried out through A (each operand byte is
  // loaded into A and shifted with add a,a / rra / ...), so A is clobbered. The
  // wider-value check above forbids the shifted value itself from being in A; on
  // top of that, a value that is neither this shift/rotate's operand nor its
  // result but is still live afterwards would be corrupted - so forbid keeping
  // such a value in A across it. This applies at every width (the single-byte
  // shift uses A as scratch too). The generic "A not used by this instruction"
  // rejection further below is bypassed for LEFT_OP/RIGHT_OP, so handle it here.
  if((ic->op == LEFT_OP || ic->op == RIGHT_OP || ic->op == ROT) &&
    !result_in_A && !input_in_A && ia.registers[REG_A][1] >= 0)
    {
      const cfg_dying_t &dying_sh = G[i].dying;
      if(dying_sh.find(ia.registers[REG_A][1]) == dying_sh.end() &&
        dying_sh.find(ia.registers[REG_A][0]) == dying_sh.end())
        return(false);
    }

  // 8080/8085: a single-byte shift is carried out in A (ld a,x; add a,a / rrca
  // ...), which destroys A. If the shifted value (left) is in A but is still
  // live after this shift - e.g. the same value feeds two shifts, as in
  // ((RV << 1) | (RV >> 7)) - its only copy is destroyed by this shift and the
  // other shift then reads a stale A. So the input may only be in A when it
  // dies here (or is also the result, an in-place shift). The wider-value case
  // is already covered above; this handles size 1.
  if((ic->op == LEFT_OP || ic->op == RIGHT_OP) &&
    getSize(operandType(IC_RESULT(ic))) == 1)
    {
      const cfg_dying_t &dying_sh1 = G[i].dying;
      for(int s = 0; s < 2; s++)
        {
          const int v = ia.registers[REG_A][s];
          if(v >= 0 && operand_has_node(left, v, i, G) &&
            !operand_has_node(result, v, i, G) &&
            dying_sh1.find(v) == dying_sh1.end())
            return(false);
        }
    }

  // 8080/8085: bitwise and/or/xor compute their result in A (and/or/xor a,x),
  // clobbering whatever was there. z80 can test a bit non-destructively
  // (bit n,r), but 8080 has no such instruction, so an operand kept in A that
  // is still live after this instruction - and is not itself the result - is
  // destroyed. Seen in mblen: `while (c & 0x80) c <<= 1;` keeps c in A across
  // the `and a,#0x80`, which overwrites c before the shift reads it.
  if((ic->op == BITWISEAND || ic->op == '|' || ic->op == '^') &&
    input_in_A && !result_in_A)
    {
      const cfg_dying_t &dying_bw = G[i].dying;
      if(dying_bw.find(ia.registers[REG_A][1]) == dying_bw.end() &&
        dying_bw.find(ia.registers[REG_A][0]) == dying_bw.end())
        return(false);
    }

  // 8080/8085: and/or/xor and the (comparison + boolean) ops below carry out
  // their work through A, so A cannot also hold an unrelated value that must
  // survive the instruction. z80 has room (bit n,r, non-destructive tests) to
  // keep a bystander in A; 8080 does not. If A holds a value that this
  // instruction neither reads nor writes and that is still live afterwards, it
  // would be clobbered - so reject. Seen in bitfields-bits2: the left boolean
  // of `(var->bitN>0) != ((value&mask)>0)` was kept in A across the
  // `value & mask` (result also in A), destroying it. IFX is included because
  // testing its condition (when not already in A) loads it into A via
  // ld a,<r> / or a,a - seen in printf's output_digit, where the hex char in A
  // was destroyed by the `if (lower_case)` test (IC_COND is IC_LEFT).
  if((ic->op == BITWISEAND || ic->op == '|' || ic->op == '^' ||
    ic->op == EQ_OP || ic->op == NE_OP || ic->op == IFX))
    {
      const cfg_dying_t &dying_bw2 = G[i].dying;
      for(int s = 0; s < 2; s++)
        {
          const int v = ia.registers[REG_A][s];
          if(v >= 0 && dying_bw2.find(v) == dying_bw2.end() &&
            !operand_has_node(left, v, i, G) &&
            !operand_has_node(right, v, i, G) &&
            !operand_has_node(result, v, i, G))
            return(false);
        }
    }

  // sfr access needs to go through a.
  if(input_in_A &&
    (IS_TRUE_SYMOP (left) && IN_REGSP (SPEC_OCLS (OP_SYMBOL (left)->etype)) ||
    IS_TRUE_SYMOP (right) && IN_REGSP (SPEC_OCLS (OP_SYMBOL (right)->etype))))
    return(false);

  // For some iCodes, we can handle anything.
  if(ic->op == IPUSH || ic->op == SEND || ic->op == LABEL || ic->op == GOTO ||
    ic->op == '^' || ic->op == '|' || ic->op == BITWISEAND || ic->op == UNARYMINUS && IS_FLOAT (operandType (ic->left)) || ic->op == '!' ||
    ic->op == EQ_OP || ic->op == NE_OP ||
    ic->op == GETABIT || ic->op == GETBYTE || ic->op == GETWORD ||
    ic->op == IFX ||
    ic->op == ROT && (getSize(operandType(IC_RESULT (ic))) == 1 || operand_in_reg(result, ia, i, G) && IS_OP_LITERAL (IC_RIGHT (ic)) && operandLitValueUll (IC_RIGHT (ic)) * 2 == bitsForType (operandType (IC_LEFT (ic)))) ||
    ic->op == LEFT_OP || ic->op == RIGHT_OP ||
    ic->op == RECEIVE || ic->op == '=' && !POINTER_SET (ic) || ic->op == CAST || ic->op == GET_VALUE_AT_ADDRESS)
    return(true);

  // 8080/8085: integer negation is 0 - x, done in A (xor a,a; sub a,<x>). If x
  // is in A, loading the 0 minuend clobbers it. Disallow the operand in A.
  if (ic->op == UNARYMINUS && !IS_FLOAT (operandType (left)) && input_in_A)
    return(false);

  if (ic->op == '-' || ic->op == UNARYMINUS)
    return(true);

  // Can use non-destructive cp on < (> might swap operands).
  if(((ic->op == '<' || ic->op == '>') && SPEC_USIGN(getSpec(operandType(left))) && SPEC_USIGN(getSpec(operandType(right)))) &&
    getSize(operandType(IC_LEFT(ic))) == 1 && ifxForOp (IC_RESULT(ic), ic) && operand_in_reg(left, REG_A, ia, i, G) &&
    (IS_OP_LITERAL (right) || operand_in_reg(right, REG_C, ia, i, G) || operand_in_reg(right, REG_B, ia, i, G) || operand_in_reg(right, REG_E, ia, i, G) || operand_in_reg(right, REG_D, ia, i, G) || operand_in_reg(right, REG_H, ia, i, G) || operand_in_reg(right, REG_L, ia, i, G)))
    return(true);

  const cfg_dying_t &dying = G[i].dying;
  const bool dying_A = result_in_A || dying.find(ia.registers[REG_A][1]) != dying.end() || dying.find(ia.registers[REG_A][0]) != dying.end();

  if((ic->op == '+' || ic->op == '-' && !operand_in_reg(right, REG_A, ia, i, G)) &&
    getSize(operandType(IC_RESULT(ic))) == 1 && dying_A)
    return(true);

  if((ic->op == '+' || ic->op == '-' && !operand_in_reg(right, REG_A, ia, i, G)) && // First byte of input and last byte of output may be in A.
    IS_ITEMP(result) && dying_A &&
    (IS_ITEMP(left) || IS_OP_LITERAL(left) || operand_on_stack(left, a, i, G)) &&
    (!right || IS_ITEMP(right) || IS_OP_LITERAL(right) || operand_on_stack(right, a, i, G)))
    {
      
      if((operand_byte_in_reg(left, 0, REG_A, a, i, G) || !operand_in_reg(left, REG_A, ia, i, G)) &&
        (operand_byte_in_reg(right, 0, REG_A, a, i, G) || !operand_in_reg(right, REG_A, ia, i, G)) &&
        (operand_byte_in_reg(result, getSize(operandType(IC_RESULT(ic))) - 1, REG_A, a, i, G) || !result_in_A))
        return(true);
    }

  // inc / dec does not affect a.
  if ((ic->op == '+' || ic->op == '-') && IS_OP_LITERAL(right) && ulFromVal (OP_VALUE_CONST (right)) <= 2 &&
    (getSize(operandType(IC_RESULT(ic))) == 2 && operand_is_pair(IC_RESULT(ic), a, i, G) || getSize(operandType(IC_RESULT(ic))) == 1 && operand_in_reg(result, ia, i, G) && operand_in_reg(result, ia, i, G)))
    return(true);

  if(ic->op == '=' && POINTER_SET (ic) && // Any register can be assigned to (hl) and (iy), so we don't need to go through a then.
    !(IS_BITVAR(getSpec(operandType (result))) || IS_BITVAR(getSpec(operandType (right)))) &&
    (getSize(operandType(right)) == 1 || operand_is_pair(result, a, i, G) && (operand_in_reg(result, REG_L, ia, i, G) || operand_in_reg(result, REG_IYL, ia, i, G))))
    return(true);

  // Code generator mostly cannot handle variables that are only partially in A.
  if(operand_in_reg(left, REG_A, ia, i, G) && getSize(operandType(left)) != 1 ||
    operand_in_reg(right, REG_A, ia, i, G) && getSize(operandType(right)) != 1 ||
    operand_in_reg(result, REG_A, ia, i, G) && getSize(operandType(result)) != 1)
    return(false);

  if(ic->op == '=' && POINTER_SET (ic))
    return(dying_A || !(IS_BITVAR(getSpec(operandType (result))) || IS_BITVAR(getSpec(operandType (right)))));

  if(1)
    {
      // Variable in A is not used by this instruction
      if(ic->op == '+' && IS_ITEMP (left) && IS_ITEMP (IC_RESULT(ic)) && IS_OP_LITERAL (right) &&
          ulFromVal (OP_VALUE_CONST (right)) == 1 &&
          OP_KEY (IC_RESULT(ic)) == OP_KEY (IC_LEFT(ic)))
        return(true);

      if(!result_in_A && !input_in_A)
        return(false);
    }

  // Last use of operand in A.
  if(input_in_A && dying_A)
    {
      if(ic->op != RETURN &&
        !(ic->op == '=' && !POINTER_SET(ic)) && // IY_RESERVED is unconditionally true in this file.
        !(ic->op == '*' && (IS_ITEMP(IC_LEFT(ic)) || IS_OP_LITERAL(IC_LEFT(ic))) && (IS_ITEMP(IC_RIGHT(ic)) || IS_OP_LITERAL(IC_RIGHT(ic)))) &&
        !((ic->op == '-' || ic->op == '+') && IS_OP_LITERAL(IC_RIGHT(ic))))
        {
          //std::cout << "Last use: Dropping at " << i << ", " << ic->key << "(" << int(ic->op) << ")\n";
          return(false);
        }
    }
  // A is used, and has to be preserved for later use.
  else if(input_in_A && ic->op != JUMPTABLE)
    {
      //std::cout << "Intermediate use: Dropping at " << i << ", " << ic->key << "(" << int(ic->op) << "\n";
      return(false);
    }

  // First use of operand in A.
  if(result_in_A &&
      !POINTER_GET(ic) &&
      ic->op != '+' &&
      ic->op != '-' &&
      ic->op != UNARYMINUS &&
      (ic->op != '*' || !IS_OP_LITERAL(IC_LEFT(ic)) && !IS_OP_LITERAL(right)) &&
      ic->op != '=' &&
      ic->op != '<' &&
      ic->op != '>' &&
      ic->op != CALL &&
      ic->op != PCALL)
    {
      //std::cout << "First use: Dropping at " << i << ", " << ic->key << "(" << int(ic->op) << "\n";
      return(false);
    }

  //std::cout << "Default OK\n";

  return(true);
}

template <class G_t, class I_t>
static bool HLinst_ok(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  const iCode *ic = G[i].ic;

  bool exstk = (i8085_should_omit_frame_ptr || (currFunc && currFunc->stack > 127));

  const i_assignment_t &ia = a.i_assignment;

  bool unused_A = (ia.registers[REG_A][1] < 0);
  bool unused_L = (ia.registers[REG_L][1] < 0);
  bool unused_H = (ia.registers[REG_H][1] < 0);

  if(unused_L && unused_H)
    return(true);   // Register HL not in use.

#if 0
  if (ic->key == 3)
    std::cout << "HLinst_ok: at (" << i << ", " << ic->key << ")\nL = (" << ia.registers[REG_L][0] << ", " << ia.registers[REG_L][1] << "), H = (" << ia.registers[REG_H][0] << ", " << ia.registers[REG_H][1] << ")inst " << i << ", " << ic->key << "\n";
#endif

  const operand *left = IC_LEFT(ic);
  const operand *right = IC_RIGHT(ic);
  const operand *result = IC_RESULT(ic);

  bool result_in_A = operand_in_reg(result, REG_A, ia, i, G);
  bool result_in_L = operand_in_reg(result, REG_L, ia, i, G);
  bool result_in_H = operand_in_reg(result, REG_H, ia, i, G);
  bool result_in_HL = result_in_L || result_in_H;

  bool input_in_L = operand_in_reg(left, REG_L, ia, i, G) || operand_in_reg(right, REG_L, ia, i, G);
  bool input_in_H = operand_in_reg(left, REG_H, ia, i, G) || operand_in_reg(right, REG_H, ia, i, G);
  bool input_in_HL = input_in_L || input_in_H;

  const cfg_dying_t &dying = G[i].dying;

  bool dying_A = result_in_A || dying.find(ia.registers[REG_A][1]) != dying.end() || dying.find(ia.registers[REG_A][0]) != dying.end();
  bool dying_L = result_in_L || dying.find(ia.registers[REG_L][1]) != dying.end() || dying.find(ia.registers[REG_L][0]) != dying.end();
  bool dying_H = result_in_H || dying.find(ia.registers[REG_H][1]) != dying.end() || dying.find(ia.registers[REG_H][0]) != dying.end();

  bool result_only_A = (result_in_A || unused_A || dying_A);
  bool result_only_HL = (result_in_L || unused_L || dying_L) && (result_in_H || unused_H || dying_H);

#if 0
  if (ic->key == 6)
    {
      std::cout << "  Result in L: " << result_in_L << ", result in H: " << result_in_H << "\n";
      std::cout << "  Unsued L: " << unused_L << ", unused H: " << unused_H << "\n";
      std::cout << "  Dying L: " << dying_L << ", dying H: " << dying_H << "\n";
      std::cout << "  Result only HL: " << result_only_HL << "\n";
    }
#endif

  // For some iCodes, code generation can handle anything.
  if(ic->op == CALL || ic->op == RETURN || ic->op == LABEL || ic->op == GOTO ||
    ic->op == '^' || ic->op == '|' || ic->op == BITWISEAND ||
    ic->op == ADDRESS_OF ||
    ic->op == GETBYTE || ic->op == GETWORD ||
    ic->op == ROT && (getSize(operandType(IC_RESULT(ic))) == 1 || operand_in_reg(result, ia, i, G) && IS_OP_LITERAL (IC_RIGHT (ic)) && operandLitValueUll (IC_RIGHT (ic)) * 2 == bitsForType (operandType (IC_LEFT (ic)))) ||
    !(operand_on_stack(result, a, i, G) || operand_on_stack(right, a, i, G)) && (ic->op == '=' && !POINTER_SET (ic) || ic->op == CAST) || // IS_SM83||IY_RESERVED is unconditionally true in this file.
    ic->op == RECEIVE || ic->op == SEND ||
    POINTER_SET(ic) && !IS_BITVAR (operandType (result)->next))
    return(true);

  if((ic->op == EQ_OP || ic->op == NE_OP) &&
    (IS_VALOP(right) || operand_in_reg(right, ia, i, G) && !(exstk && operand_on_stack(ic->left, a, i, G)) && (!isOperandInDirSpace(ic->left) || getSize(operandType(ic->left)) == 1)))
    return(true);

  // IS_SM83-gated gbz80-specific stack-access-through-hl workarounds removed
  // here (all unconditionally false in this file: this is i8080/i8085, never
  // sm83).

  if(IS_TRUE_SYMOP(left) && (!IS_PARM(left) || exstk) || IS_TRUE_SYMOP(right) && (!IS_PARM(right) || exstk)) // IS_SM83||IY_RESERVED is unconditionally true in this file.
    return(false);

  if(IS_TRUE_SYMOP(result) && getSize(operandType(IC_RESULT(ic))) > 2) // IS_SM83||IY_RESERVED is unconditionally true in this file.
    return(false);

  // __z88dk_fastcall passes parameter in hl
  if(ic->op == PCALL && ic->prev && ic->prev->op == SEND && input_in_HL && IFFUNC_ISZ88DK_FASTCALL(operandType(IC_LEFT(ic))->next))
    return(false);

  // HL overwritten by result.
  if(result_only_HL && ic->op == PCALL)
    return(true);

  if(ic->op == '-' && getSize(operandType(result)) == 2 && IS_TRUE_SYMOP (left) && IS_TRUE_SYMOP (right) && result_only_HL)
    return(true);

  if(exstk &&
     (operand_on_stack(result, a, i, G) + operand_on_stack(left, a, i, G) + operand_on_stack(right, a, i, G) >= 2) &&
     (result && IS_SYMOP(result) && getSize(operandType(result)) >= 2 || !result_only_HL))
     // Todo: Make this more accurate to get better code when using --fomit-frame-pointer
    return(false);
  if(exstk && (operand_on_stack(left, a, i, G) || operand_on_stack(right, a, i, G)) && (ic->op == '>' || ic->op == '<'))
    return(false);
  if(ic->op == '+' && getSize(operandType(result)) >= 2 && input_in_HL &&
     ((exstk ? operand_on_stack(left,  a, i, G) : IS_TRUE_SYMOP (left) ) && (ia.registers[REG_L][1] > 0 || ia.registers[REG_H][1] > 0) ||
      (exstk ? operand_on_stack(right, a, i, G) : IS_TRUE_SYMOP (right)) && (ia.registers[REG_L][1] > 0 || ia.registers[REG_H][1] > 0) ))
    return(false);

  if(ic->op == '+' && getSize(operandType(result)) == 2 &&
     (IS_OP_LITERAL (right) && ulFromVal (OP_VALUE (IC_RIGHT(ic))) <= 3 || IS_OP_LITERAL (left) && ulFromVal (OP_VALUE (IC_LEFT(ic))) <= 3) &&
     (operand_in_reg(result, REG_L, ia, i, G) && I[ia.registers[REG_L][1]].byte == 0 && operand_in_reg(result, REG_H, ia, i, G)))
    return(true); // Uses inc hl.

  if(ic->op == '+' && getSize(operandType(result)) == 2 && !IS_TRUE_SYMOP (result) &&
    (result_only_HL || operand_in_reg(result, REG_IYL, ia, i, G) && operand_in_reg(result, REG_IYH, ia, i, G)) &&
    (ia.registers[REG_C][1] < 0 && ia.registers[REG_B][1] < 0 || ia.registers[REG_E][1] < 0 && ia.registers[REG_D][1] < 0)) // Can use ld rr, (nn) instead of (hl).
    return(true);

  if(ic->op == '+' && getSize(operandType(result)) == 2 && IS_TRUE_SYMOP (left) &&
    (IS_OP_LITERAL (right) && ulFromVal (OP_VALUE (IC_RIGHT(ic))) <= 3 || IS_OP_LITERAL (left) && ulFromVal (OP_VALUE (IC_LEFT(ic))) <= 3) &&
    (operand_in_reg(result, REG_C, ia, i, G) && I[ia.registers[REG_C][1]].byte == 0 && operand_in_reg(result, REG_B, ia, i, G) || operand_in_reg(result, REG_E, ia, i, G) && I[ia.registers[REG_E][1]].byte == 0 && operand_in_reg(result, REG_D, ia, i, G))) // Can use ld rr, (nn) followed by inc rr
    return(true);

  if(ic->op == '+' && getSize(operandType(result)) <= 2 && result_only_HL && !isOperandInDirSpace(ic->result))
    return(true);

  if((ic->op == '+' || ic->op == '-' || ic->op == UNARYMINUS) && getSize(operandType(result)) >= 2 &&
    (IS_TRUE_SYMOP (result) && !operand_on_stack(result, a, i, G) || (operand_on_stack(left, a, i, G) ? exstk : IS_TRUE_SYMOP (left)) || (operand_on_stack(right, a, i, G) ? exstk : IS_TRUE_SYMOP (right)))) // Might use (hl).
    return(false);

  // HL overwritten by result.
  if(result_only_HL && !POINTER_SET(ic) &&
      (ic->op == GET_VALUE_AT_ADDRESS ||
       ic->op == '+' ||
       ic->op == '*' ||
       ic->op == '=' ||
       ic->op == CAST))
    return(true);

  if(!exstk && !isOperandInDirSpace(IC_LEFT(ic)) && !isOperandInDirSpace(IC_RIGHT(ic)) && !isOperandInDirSpace(IC_RESULT(ic)) &&
    (ic->op == '-' ||
    ic->op == UNARYMINUS ||
    ic->op == '<' ||
    ic->op == '>'))
    return(true);

  if(ic->op == LEFT_OP && getSize(operandType(result)) <= 2 && IS_OP_LITERAL (right) && result_only_HL)
    return(true);
  if((ic->op == LEFT_OP || ic->op == RIGHT_OP) && (getSize(operandType(result)) <= 1 || !IS_TRUE_SYMOP(result)) && // !(IS_SM83||IY_RESERVED) is unconditionally false in this file.
     (!exstk ||
      ((!operand_on_stack(left,  a, i, G) || !input_in_HL && result_only_HL) &&
       (!operand_on_stack(right, a, i, G) || !input_in_HL && result_only_HL) &&
       !operand_on_stack(result, a, i, G))))
    return(true);

  if(result && IS_SYMOP(result) && isOperandInDirSpace(result) &&
    (getSize(operandType(ic->result)) > 1 || isOperandEqual(left, ic->result) || isOperandEqual(right, ic->result) || !result_only_A))
    return(false);

  if((input_in_HL || !result_only_HL) && left && IS_SYMOP(left) && isOperandInDirSpace(IC_LEFT(ic)))
    return(false);

  if((input_in_HL || !result_only_HL) && right && IS_SYMOP(right) && isOperandInDirSpace(IC_RIGHT(ic)))
    return(false);

  if(ic->op == IFX || SKIP_IC2(ic)) // Operations that leave HL alone.
    return(true);
  if(ic->op == IPUSH) // Can handle anything.
    return(true);
  if(POINTER_GET(ic) && input_in_L && input_in_H && (getSize(operandType(IC_RESULT(ic))) == 1 || !result_in_HL))
    return(true);
  if(ic->op == ADDRESS_OF &&
    (operand_in_reg(result, REG_IYL, ia, i, G) && ia.registers[REG_IYL][1] > 0 && I[ia.registers[REG_IYL][1]].byte == 0 && operand_in_reg(result, REG_IYH, ia, i, G) ||
    !OP_SYMBOL_CONST (left)->onStack && operand_in_reg(result, REG_C, ia, i, G) && ia.registers[REG_C][1] > 0 && I[ia.registers[REG_C][1]].byte == 0 && operand_in_reg(result, REG_B, ia, i, G) ||
    !OP_SYMBOL_CONST (left)->onStack && operand_in_reg(result, REG_E, ia, i, G) && ia.registers[REG_E][1] > 0 && I[ia.registers[REG_E][1]].byte == 0 && operand_in_reg(result, REG_D, ia, i, G)))
    return(true);

  if(ic->op == LEFT_OP && isOperandLiteral(IC_RIGHT(ic)))
    return(true);

  if(exstk && !result_only_HL && (operand_on_stack(left, a, i, G) || operand_on_stack(right, a, i, G)) && ic->op == '+')
    return(false);

  if((!POINTER_SET(ic) && !POINTER_GET(ic) && (
        (ic->op == '=' ||
         ic->op == CAST ||
         ic->op == UNARYMINUS ||
         ic->op == RIGHT_OP ||
         /*ic->op == '-' ||*/
         IS_BITWISE_OP(ic) ||
         /*ic->op == '>' ||
         ic->op == '<' ||
         ic->op == EQ_OP ||*/
         (ic->op == '+' && getSize(operandType(IC_RESULT(ic))) == 1) ||
         ic->op == '+' )))) // addition on gbz80 might need to use add hl, rr - moot here, IS_SM83 is unconditionally false.
    return(true);

  if((ic->op == '<' || ic->op == '>') && (IS_ITEMP(left) || IS_OP_LITERAL(left) || IS_ITEMP(right) || IS_OP_LITERAL(right))) // Todo: Fix for large stack.
    return(true);

  if(ic->op == CALL)
    return(true);

  if(ic->op == GET_VALUE_AT_ADDRESS && getSize(operandType(IC_RESULT(ic))) == 1 && !IS_BITVAR(getSpec(operandType(result))) &&
    operand_is_pair(left, a, i, G) && // Use ld a, (dd) or ld r, 0 (iy).
    IS_OP_LITERAL (right) && ulFromVal (OP_VALUE_CONST(right)) == 0) 
    return(true);

  if(ic->op == '=' && POINTER_SET(ic) && operand_in_reg(result, REG_IYL, ia, i, G) && I[ia.registers[REG_IYL][1]].byte == 0 && operand_in_reg(result, REG_IYH, ia, i, G)) // Uses ld 0 (iy), l etc
    return(true);

  if(ic->op == '=' && POINTER_SET(ic) && !result_only_HL) // loads result pointer into (hl) first.
    return(false);

  if((ic->op == '=' || ic->op == CAST) && !POINTER_GET(ic) && !input_in_HL)
    return(true);

#if 0
  if(ic->key == 6)
    {
      std::cout << "HLinst_ok: L = (" << ia.registers[REG_L][0] << ", " << ia.registers[REG_L][1] << "), H = (" << ia.registers[REG_H][0] << ", " << ia.registers[REG_H][1] << ")inst " << i << ", " << ic->key << "\n";
      std::cout << "Result in L: " << result_in_L << ", result in H: " << result_in_H << "\n";
      std::cout << "HL default drop at " << ic->key << ", operation: " << ic->op << "\n";
    }
#endif

  // Replaces former default drop here.
  if (ic->op == GET_VALUE_AT_ADDRESS || POINTER_SET(ic) || ic->op == ADDRESS_OF || ic->op == '*' || ic->op == JUMPTABLE) // Some operations always use hl. TODO: See if they can be changed to save / restore a hl in use or use hl only when free.
    return(false);
  if(exstk && (operand_on_stack(result, a, i, G) || IS_TRUE_SYMOP (result) || operand_on_stack(left, a, i, G) || IS_TRUE_SYMOP (left) || operand_on_stack(right, a, i, G) || IS_TRUE_SYMOP (right))) // hl used as pointer to operand.
    return(false);

  return(true);
}

/* IYinst_ok (checked whether an iCode could validly use IY for a given
   register assignment) removed entirely: both its call sites (below, in
   instruction_cost, and in assignment_hopeless) are gated
   `OPTRALLOC_IY && ...`, and OPTRALLOC_IY is unconditionally false in
   this file (there is no IY at all on i8080/i8085 - IY_RESERVED, which
   OPTRALLOC_IY's definition negates, is unconditionally true). Because
   && short-circuits, IYinst_ok was never actually called here even
   before this pass - confirmed by checking both call sites, not just
   grepping for the macro name. */

/* DEinst_ok's only real restrictions were sm83-specific ("Only sm83 might
   need de for code generation"); the early `if (!IS_SM83) return true;`
   is unconditionally taken in this file, so the entire rest of the
   original body (checked against instruction_cost's call site - the only
   caller) was unreachable and is removed, leaving the always-true result. */
template <class G_t, class I_t>
bool DEinst_ok(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  return(true);
}

template <class G_t, class I_t>
static void set_surviving_regs(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  iCode *ic = G[i].ic;
  
  bitVectClear(ic->rMask);
  bitVectClear(ic->rSurv);
  
  cfg_alive_t::const_iterator v, v_end;
  for (v = G[i].alive.begin(), v_end = G[i].alive.end(); v != v_end; ++v)
    {
      if(a.global[*v] < 0)
        continue;
      ic->rMask = bitVectSetBit(ic->rMask, a.global[*v]);

      if(G[i].dying.find(*v) == G[i].dying.end())
        if(!((IC_RESULT(ic) && !POINTER_SET(ic)) && IS_SYMOP(IC_RESULT(ic)) && OP_SYMBOL_CONST(IC_RESULT(ic))->key == I[*v].v))
          ic->rSurv = bitVectSetBit(ic->rSurv, a.global[*v]);
    }
}

template <class G_t, class I_t>
static void assign_operand_for_cost(operand *o, const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  if(!o || !IS_SYMOP(o))
    return;
  symbol *sym = OP_SYMBOL(o);
  operand_map_t::const_iterator oi, oi_end;
  for(boost::tie(oi, oi_end) = G[i].operands.equal_range(OP_SYMBOL_CONST(o)->key); oi != oi_end; ++oi)
    {
      var_t v = oi->second;
      if(a.global[v] >= 0)
        {
          sym->regs[I[v].byte] = i8085_regsZ80 + a.global[v];
          sym->accuse = 0;
          sym->isspilt = false;
          sym->nRegs = I[v].size;
        }
      else
        {
          sym->isspilt = true;
          sym->accuse = 0;
          sym->nRegs = I[v].size;
          sym->regs[I[v].byte] = 0;
        }
    }
}

template <class G_t, class I_t>
static void assign_operands_for_cost(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  const iCode *ic = G[i].ic;
  
  assign_operand_for_cost(IC_LEFT(ic), a, i, G, I);
  assign_operand_for_cost(IC_RIGHT(ic), a, i, G, I);
  assign_operand_for_cost(IC_RESULT(ic), a, i, G, I);
    
  if(ic->op == SEND && ic->builtinSEND)
    assign_operands_for_cost(a, (unsigned short)*(adjacent_vertices(i, G).first), G, I);
}

// Cost function.
template <class G_t, class I_t>
static float instruction_cost(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  iCode *ic = G[i].ic;
  float c;

  wassert (TARGET_Z80_LIKE);

  if(!inst_sane(a, i, G, I))
    return(std::numeric_limits<float>::infinity());

  if(ic->generated)
    return(0.0f);

  if(!Ainst_ok(a, i, G, I))
    return(std::numeric_limits<float>::infinity());

  if(!HLinst_ok(a, i, G, I))
    return(std::numeric_limits<float>::infinity());

  if(!DEinst_ok(a, i, G, I))
    return(std::numeric_limits<float>::infinity());

  // OPTRALLOC_IY is unconditionally false in this file - the IYinst_ok()
  // check that was here never fired (see the note by IYinst_ok's removal).

  switch(ic->op)
    {
    // Register assignment doesn't matter for these:
    case FUNCTION:
    case ENDFUNCTION:
    case LABEL:
    case GOTO:
    case INLINEASM:
      return(0.0f);
      
    // Exact cost:
    case '!':
    case UNARYMINUS:
    case '+':
    case '-':
    case '^':
    case '|':
    case BITWISEAND:
    case IPUSH:
    case IPUSH_VALUE_AT_ADDRESS:
    case CALL:
    case PCALL:
    case RETURN:
    case '*':
    case '>':
    case '<':
    case EQ_OP:
    case AND_OP:
    case OR_OP:
    case GETABIT:
    case GETBYTE:
    case GETWORD:
    case ROT:
    case LEFT_OP:
    case RIGHT_OP:
    case GET_VALUE_AT_ADDRESS:
    case '=':
    case IFX:
    case ADDRESS_OF:
    case JUMPTABLE:
    case CAST:
    case RECEIVE:
    case SEND:
    case DUMMY_READ_VOLATILE:
    case CRITICAL:
    case ENDCRITICAL:
      assign_operands_for_cost(a, i, G, I);
      set_surviving_regs(a, i, G, I);
      c = i8085_dryZ80iCode(ic);
      ic->generated = false;
      return(c);

    // Inexact cost:
    default:
      return(default_instruction_cost(a, i, G, I));
    }
}

template <class I_t>
float weird_byte_order(const assignment &a, const I_t &I) 
{
  float c = 0.0f;
  
  varset_t::const_iterator vi, vi_end;
  for(vi = a.local.begin(), vi_end = a.local.end(); vi != vi_end; ++vi)
    if(a.global[*vi] > 0 && (a.global[*vi] - 1) % 2 != I[*vi].byte % 2)
      c += 8.0f;

  return(c);
}

// Check for gaps, i.e. higher bytes of a variable being assigned to regs, while lower byte are not.
template <class I_t>
bool local_assignment_insane(const assignment &a, const I_t &I, var_t lastvar)
{
  varset_t::const_iterator v, v_end, v_old;
  
  for(v = a.local.begin(), v_end = a.local.end(); v != v_end;)
    {
      v_old = v;
      ++v;
      if(v == v_end)
        {
          if(*v_old != lastvar && I[*v_old].byte != I[*v_old].size - 1)
            return(true);
          break;
        }
      if(I[*v_old].v == I[*v].v)
        {
          if(I[*v_old].byte != I[*v].byte - 1)
            return(true);
        }
      else
        {
          if(*v_old != lastvar && I[*v_old].byte != I[*v_old].size - 1 || I[*v].byte)
            return(true);
        }
    }

  return(false);
}

// For early removal of assignments that cannot be extended to valid assignments.
template <class G_t, class I_t>
static bool assignment_hopeless(const assignment &a, unsigned short int i, const G_t &G, const I_t &I, const var_t lastvar)
{
  if(local_assignment_insane(a, I, lastvar))
    return(true);

  const i_assignment_t &ia = a.i_assignment;

  // Can only check for HLinst_ok() in some cases.
  if((ia.registers[REG_L][1] >= 0 && ia.registers[REG_H][1] >= 0) &&
      (ia.registers[REG_L][0] >= 0 && ia.registers[REG_H][0] >= 0) &&
      !HLinst_ok(a, i, G, I))
    return(true);

  // OPTRALLOC_IY is unconditionally false in this file - the IYinst_ok()
  // check that was here never fired.

  return(false);
}

// Increase chance of finding good compatible assignments at join nodes.
template <class T_t>
static void get_best_local_assignment_biased(assignment &a, typename boost::graph_traits<T_t>::vertex_descriptor t, const T_t &T)
{
  const assignment_list_t &alist = T[t].assignments;

  assignment_list_t::const_iterator ai, ai_end, ai_best;
  for(ai = ai_best = alist.begin(), ai_end = alist.end(); ai != ai_end; ++ai)
    {
      if(ai->s < ai_best->s)
        {
          varset_t::const_iterator vi, vi_end;
          for(vi = ai->local.begin(), vi_end = ai->local.end(); vi != vi_end; ++vi)
            if(ai->global[*vi] == REG_A || (ai->global[*vi] == REG_H || ai->global[*vi] == REG_L)) // OPTRALLOC_IY is unconditionally false in this file.
              goto too_risky;
          ai_best = ai;
        }
too_risky:
      ;
    }

  a = *ai_best;
  
  varset_t newlocal;
  std::set_union(T[t].alive.begin(), T[t].alive.end(), a.local.begin(), a.local.end(), std::inserter(newlocal, newlocal.end()));
  a.local = newlocal;
}

template <class G_t, class I_t>
static float rough_cost_estimate(const assignment &a, unsigned short int i, const G_t &G, const I_t &I)
{
  const i_assignment_t &ia = a.i_assignment;
  float c = 0.0f;

  c += weird_byte_order(a, I);

  if(ia.registers[REG_L][1] >= 0 &&
     ia.registers[REG_H][1] >= 0 &&
     ((ia.registers[REG_L][0] >= 0) == (ia.registers[REG_H][0] >= 0)) &&
     !HLinst_ok(a, i, G, I))
    c += 8.0f;

  if(ia.registers[REG_A][1] < 0)
    c += 0.03f;

  if(ia.registers[REG_L][1] < 0)
    c += 0.02f;

  // Using IY is rarely a good choice, so discard the IY-users first when in
  // doubt - moot here, OPTRALLOC_IY is unconditionally false (no IY exists
  // on i8080/i8085 at all).

  // An artificial ordering of assignments.
  if(ia.registers[REG_E][1] < 0)
    c += 0.001f;
  if(ia.registers[REG_D][1] < 0)
    c += 0.0001f;

  if(a.marked)
    c -= 0.5f;

  varset_t::const_iterator v, v_end;
  for(v = a.local.begin(), v_end = a.local.end(); v != v_end; ++v)
    {
      const symbol *const sym = (symbol *)(hTabItemWithKey(liveRanges, I[*v].v));
      if(a.global[*v] < 0 && IS_REGISTER(sym->type)) // When in doubt, try to honour register keyword.
        c += 32.0f;
      if((I[*v].byte % 2) && (a.global[*v] == REG_L || a.global[*v] == REG_E || a.global[*v] == REG_C || a.global[*v] == REG_IYL)) // Try not to reverse bytes.
        c += 8.0f;
      if(!(I[*v].byte % 2) && I[*v].size > 1 && (a.global[*v] == REG_H || a.global[*v] == REG_D || a.global[*v] == REG_B || a.global[*v] == REG_IYH)) // Try not to reverse bytes.
        c += 8.0f;
      if(I[*v].byte == 0 && I[*v].size > 1 || I[*v].byte == 2 && I[*v].size > 3)
        {
          if (a.global[*v] == REG_L && a.global[*v + 1] >= 0 && a.global[*v + 1] != REG_H)
            c += 16.0f;
          if (a.global[*v] == REG_E && a.global[*v + 1] >= 0 && a.global[*v + 1] != REG_D)
            c += 16.0f;
          if (a.global[*v] == REG_C && a.global[*v + 1] >= 0 && a.global[*v + 1] != REG_B)
            c += 16.0f;
        }
      else if(I[*v].byte == 1 || I[*v].byte == 3)
        {
          if (a.global[*v] == REG_H && a.global[*v - 1] >= 0 && a.global[*v - 1] != REG_L)
            c += 16.0f;
          if (a.global[*v] == REG_D && a.global[*v - 1] >= 0 && a.global[*v - 1] != REG_E)
            c += 16.0f;
          if (a.global[*v] == REG_B && a.global[*v - 1] >= 0 && a.global[*v - 1] != REG_C)
            c += 16.0f;
        }
    }

  c -= a.local.size() * 0.2f;

  return(c);
}

// Code for another ic is generated when generating this one. Mark the other as generated.
static void extra_ic_generated(iCode *ic)
{
  // djnz
  if(ic->op == '-' && ic->next && ic->next->op == IFX && ic->next->left->key == ic->result->key && getSize (operandType (ic->result)) == 1)
    {
      iCode *ifx = ic->next;

      if (!IS_ITEMP (ic->result) /*&& !isOperandGlobal (ic->left)*/)
        return;

      if (!IS_OP_LITERAL (ic->right))
        return;

      if (ullFromVal (OP_VALUE (ic->right)) != 1)
        return;

      ifx->generated = true;
      return;
    }

  if(ic->op == '>' || ic->op == '<' || ic->op == LE_OP || ic->op == GE_OP || ic->op == EQ_OP || ic->op == NE_OP ||
    (ic->op == '^' || ic->op == '|' || ic->op == BITWISEAND) && (IS_OP_LITERAL (IC_LEFT (ic)) || IS_OP_LITERAL (IC_RIGHT (ic))))
    {
      iCode *ifx;
      if (ifx = ifxForOp (IC_RESULT (ic), ic))
        {
          OP_SYMBOL (IC_RESULT (ic))->for_newralloc = false;
          OP_SYMBOL (IC_RESULT (ic))->regType = REG_CND;
          ifx->generated = true;
        }
    }

  if(ic->op == SEND && ic->builtinSEND && (!ic->prev || ic->prev->op != SEND || !ic->prev->builtinSEND))
    {
      iCode *icn;
      for(icn = ic->next; icn->op != CALL; icn = icn->next)
        icn->generated = true;
      icn->generated = true;
      ic->generated = false;
    }
}

template <class T_t, class G_t, class I_t, class SI_t>
static bool tree_dec_ralloc(T_t &T, G_t &G, const I_t &I, SI_t &SI)
{
  bool assignment_optimal;

  con2_t I2(boost::num_vertices(I));
  for(unsigned int i = 0; i < boost::num_vertices(I); i++)
    {
      I2[i].v = I[i].v;
      I2[i].byte = I[i].byte;
      I2[i].size = I[i].size;
      I2[i].name = I[i].name;
    }
  typename boost::graph_traits<I_t>::edge_iterator e, e_end;
  for(boost::tie(e, e_end) = boost::edges(I); e != e_end; ++e)
    add_edge(boost::source(*e, I), boost::target(*e, I), I2);

  assignment ac;
  ac.s = 0.0f;
  assignment_optimal = true;
  tree_dec_ralloc_nodes(T, find_root(T), G, I2, ac, &assignment_optimal);

  const assignment &winner = *(T[find_root(T)].assignments.begin());

#ifdef DEBUG_RALLOC_DEC
  std::cout << "Winner: ";
  for(unsigned int i = 0; i < boost::num_vertices(I); i++)
    {
      std::cout << "(" << i << ", " << int(winner.global[i]) << ") ";
    }
  std::cout << "\n";
  std::cout << "Cost: " << winner.s << "\n";
  std::cout.flush();
#endif

  // Todo: Make this an assertion
  if(winner.global.size() != boost::num_vertices(I))
    {
      std::cerr << "ERROR: No Assignments at root\n";
      exit(-1);
    }

  for(unsigned int v = 0; v < boost::num_vertices(I); v++)
    {
      symbol *sym = (symbol *)(hTabItemWithKey(liveRanges, I[v].v));
      if(winner.global[v] >= 0)
        {
         
          sym->regs[I[v].byte] = i8085_regsZ80 + winner.global[v];
          sym->accuse = 0;
          sym->isspilt = false;
          sym->nRegs = I[v].size;
        }
      else
        {
          for(int i = 0; i < I[v].size; i++)
            sym->regs[i] = 0;
          sym->accuse = 0;
          sym->nRegs = I[v].size;
          if (USE_OLDSALLOC)
            sym->isspilt = false; // Leave it to i8085_RegFix, which can do some spillocation compaction.
          else
            i8085_SpillThis(sym);
        }
    }

  for(unsigned int i = 0; i < boost::num_vertices(G); i++)
    set_surviving_regs(winner, i, G, I);

  if (!USE_OLDSALLOC)
    set_spilt(G, I, SI);

  return(!assignment_optimal);
}

// Omit the frame pointer for functions with low register pressure and few parameter accesses.
// This is just a heuristic, including the magic value of 21. Many other, more complex heuristics have been tried, but didn't perform better for the regression tests.
// i8080/i8085 have no index register at all (there is no ix to use as a
// frame pointer, useable or otherwise), so the "we have to omit the frame
// pointer if there is no useable ix" early-out (IS_8080LIKE, unconditionally
// true here) always fires - the rest of the original heuristic (register-
// pressure- and parameter-access-cost-based) never ran on this target and
// is removed.
template <class G_t>
static bool omit_frame_ptr(const G_t &G)
{
  return(true);
}

// Adjust stack location when deciding to omit frame pointer.
// Only called from within this file (i8085_ralloc2_cc, below) - made
// static so it can't collide with z80/ralloc2.cc's own move_parms.
static void move_parms(void)
{
  if(!currFunc || !i8085_should_omit_frame_ptr) // IS_SM83 is unconditionally false in this file.
    return;

  for(value *val = FUNC_ARGS (currFunc->type); val; val = val->next)
    {
      if(IS_REGPARM(val->sym->etype) || !val->sym->onStack)
        continue;

      val->sym->stack -= 2;
    }

  // Handle the placeholder for variable arguments
  symbol *sym;
  if(currFunc && IFFUNC_HASVARARGS (currFunc->type) && (sym = (symbol *)(findSym (SymbolTab, NULL, "__va_start"))))
    sym->stack -= 2;
}
  
iCode *i8085_ralloc2_cc(ebbIndex *ebbi)
{
  eBBlock **const ebbs = ebbi->bbOrder;
  const int count = ebbi->count;

#ifdef DEBUG_RALLOC_DEC
  std::cout << "Processing " << currFunc->name << " from " << dstFileName << "\n"; std::cout.flush();
#endif

  cfg_t control_flow_graph;

  con_t conflict_graph;

  iCode *ic = create_cfg(control_flow_graph, conflict_graph, ebbi);

  if (optimize.genconstprop)
    recomputeValinfos (ic, ebbi, "_3");

  i8085_should_omit_frame_ptr = omit_frame_ptr(control_flow_graph);
  move_parms();

  if(options.dump_graphs)
    dump_cfg(control_flow_graph);

  guessCounts (ic, ebbi);

  if(options.dump_graphs)
    dump_con(conflict_graph);

  tree_dec_t tree_decomposition;

  get_nice_tree_decomposition(tree_decomposition, control_flow_graph);

  alive_tree_dec(tree_decomposition, control_flow_graph);

  good_re_root(tree_decomposition);
  nicify(tree_decomposition);
  alive_tree_dec(tree_decomposition, control_flow_graph);

  if(options.dump_graphs)
    dump_tree_decomposition(tree_decomposition);

  guessCounts (ic, ebbi);

  scon_t stack_conflict_graph;

  i8085_assignment_optimal = !tree_dec_ralloc(tree_decomposition, control_flow_graph, conflict_graph, stack_conflict_graph);

  i8085_RegFix (ebbs, count);

  if (USE_OLDSALLOC)
    redoStackOffsets ();
  else
    {
      mergeSpiltParms(stack_conflict_graph); // try to reuse parameter locations
      chaitin_salloc(stack_conflict_graph);  // new Chaitin-style stack allocator
    }

  if(options.dump_graphs && !USE_OLDSALLOC)
    dump_scon(stack_conflict_graph);

  return(ic);
}

