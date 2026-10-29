#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u32 sdkR2 asm("r2");
register u8 *sdkR3 asm("r3");

void sub_080B69D8(void) __attribute__((naked));
void sub_080B69D8(void)
{
    u32 threshold = 3;
    sdkR2 = sdkTrack->patternLevel;
    if (sdkR2 >= threshold) goto stop;
    sdkR2 <<= 2;
    sdkR3 = (u8 *)sdkTrack + sdkR2;
    sdkR2 = (u32)sdkTrack->cmdPtr;
    sdkR2 += 4;
    *(u32 *)(sdkR3 + 0x44) = sdkR2;
    sdkR2 = sdkTrack->patternLevel;
    sdkR2 += 1;
    sdkTrack->patternLevel = sdkR2;
    /* ABI tails preserve the original caller's lr. */
    asm("b sub_080B69B8");
stop:
    asm("b ply_fine");
}

INCLUDE_ASM("asm/nonmatchings/m4a_1_rest", sub_080B69F4);
