/* Mixed C/ABI: 20-byte C body, 2-byte return and 2-byte alignment. */
#include "global.h"
register u32 *dest asm("r0");
register volatile u32 z1 asm("r1");
register volatile u32 z2 asm("r2");
register volatile u32 z3 asm("r3");
register volatile u32 z4 asm("r4");
register u32 saved asm("ip");
void SoundMainBTM(void *soundInfo) __attribute__((naked));
void SoundMainBTM(void *soundInfo) {
 saved=z4;
 z1=0; z2=0; z3=0; z4=0;
 dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
 dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
 dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
 dest[0]=z1;dest[1]=z2;dest[2]=z3;dest[3]=z4;dest+=4;
 z4=saved;
}

/* Minimal return ABI glue follows the naked C body. */
asm("bx lr");
