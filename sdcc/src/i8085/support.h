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
I8085_FLOAT;

/** Convert a native float into i8085 format */
int i8085_convertFloat (I8085_FLOAT * f, double native);

#endif
