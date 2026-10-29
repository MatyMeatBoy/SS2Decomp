#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u32 sdkR2 asm("r2");
register u32 sdkR3 asm("r3");
register u32 sdkWideRepeat asm("r12");
void sub_080B69D8(void) __attribute__((naked));
void sub_080B69D8(void)
{
    u32 threshold = 3;
    sdkR2 = sdkTrack->patternLevel;
    if (sdkR2 >= threshold) goto stop;
    sdkR2 <<= 2;
    sdkR3 = (u32)sdkTrack + sdkR2;
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

void sub_080B69AC(void);
void sub_080B69F4(void)
{
    sdkR2 = sdkTrack->patternLevel;
    if (sdkR2 == 0) goto done;
    sdkR2 -= 1;
    sdkTrack->patternLevel = sdkR2;
    sdkR2 <<= 2;
    sdkR3 = (u32)sdkTrack + sdkR2;
    sdkR2 = *(u32 *)(sdkR3 + 0x44);
    sdkTrack->cmdPtr = (u8 *)sdkR2;
done:
    return;
}
void sub_080B6A08(void) __attribute__((naked));
void sub_080B6A08(void)
{
    asm("push {lr}");
    sdkR2 = (u32)sdkTrack->cmdPtr;
    sdkR3 = *(u8 *)sdkR2;
    if (sdkR3 != 0) goto finite;
    sdkR2 += 1;
    sdkTrack->cmdPtr = (u8 *)sdkR2;
    /* Shared ABI entry skips Goto's PUSH lr: this handler already saved it. */
    asm("b sub_080B69B8 + 2");
finite:
    sdkR3 = sdkTrack->repN;
    sdkR3 += 1;
    *(volatile u8 *)&sdkTrack->repN = sdkR3;
    sdkWideRepeat = sdkR3;
    sub_080B69AC();
    if (sdkWideRepeat >= sdkR3) goto complete;
    /* Shared ABI entry skips Goto's PUSH lr: this handler already saved it. */
    asm("b sub_080B69B8 + 2");
complete:
    sdkR3 = 0;
    *(volatile u8 *)&sdkTrack->repN = sdkR3;
    sdkR2 += 5;
    sdkTrack->cmdPtr = (u8 *)sdkR2;
    asm("pop {r0}\nbx r0");
}
