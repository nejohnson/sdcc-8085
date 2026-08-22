/** @file support.h
    Support functions for the i8080/i8085 port.
*/
#ifndef I8085_SUPPORT_INCLUDE
#define I8085_SUPPORT_INCLUDE

typedef unsigned short WORD;
typedef unsigned char BYTE;

typedef struct
  {
    WORD w[2];
    BYTE b[4];
  }
Z80_FLOAT;

/** Convert a native float into 'z80' format */
int i8085_convertFloat (Z80_FLOAT * f, double native);

#endif
