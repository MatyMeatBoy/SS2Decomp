/* C multiplication with explicit Thumb/ARM entry and result-return ABI glue. */
#include "global.h"

asm(".text\n"
    ".thumb\n"
    ".align 2,0\n"
    ".global umul3232H32\n"
    ".type umul3232H32,%function\n"
    ".thumb_func\n"
    "umul3232H32:\n"
    "adr r2,_080B64DC\n"
    "bx r2\n"
    ".arm");

u32 umul3232H32(u32 a, u32 b) asm("_080B64DC") __attribute__((naked));
u32 umul3232H32(u32 a, u32 b)
{
    register u64 product asm("r2") = (u64)a * b;
    /* Return the upper product register through the SDK's r0 result ABI. */
    asm("add r0,%R0,#0\nbx lr" : : "r"(product));
}
