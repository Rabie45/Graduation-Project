#ifndef _BITWISE_H
#define _BITWISE_H

#define _BV(n) (1 << (n))
#define bitset(var, bitno) ((var) |= 1UL << (bitno))
#define bitclr(var, bitno) ((var) &= ~(1UL << (bitno)))

#endif