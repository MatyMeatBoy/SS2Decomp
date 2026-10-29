/* SDK reader container; JumpTableCopy is mixed C/ABI. All algorithms are C.
 * Only SDK register-save/return/shared-entry transfers use ABI assembly. */
#include "global.h"
#define A __attribute__((section(".text"),aligned(4),thumb_literal))
register u32 sdkR1 asm("r1");
register u8 *sdkCursor asm("r2");
register u32 sdkValue asm("r3");
register u32 sdkReturn asm("r12");
#define sdkTrack ((struct MusicPlayerTrack *)sdkR1)
extern u32 sdkJumpTableTemplate[] asm("gUnk_080BB7E8");
extern const u32 *const sdkSharedTemplate asm("_080B69A8") A;
/* ABI view: every original validator exit restores the incoming r0. */
u32 *sdkValidateKeepR0(u32 *unused) asm("sub_080B6992") __attribute__((naked));
void MPlayJumpTableCopy(MPlayFunc *unused) __attribute__((naked));
void MPlayJumpTableCopy(MPlayFunc *unused)
{
    register u32 *sdkDest asm("r0") = (u32 *)unused;
    asm("mov %0,lr" : "=r"(sdkReturn));
    sdkR1 = 36;
    sdkCursor = (u8 *)sdkSharedTemplate;
loop:
    sdkValue = *(u32 *)sdkCursor;
    sdkDest = sdkValidateKeepR0(sdkDest);
    *sdkDest++ = sdkValue;
    sdkCursor += 4;
    if ((s32)sdkR1-- > 1) goto loop;
    asm("bx %0" : : "r"(sdkReturn), "r"(sdkDest));
}
asm(".align 2,0");
void sub_080B6990(void) __attribute__((naked));
/* This entry falls through into the validator, preserving the shared ABI. */
void sub_080B6990(void) { sdkValue = *sdkCursor; }
u32 *sdkValidateKeepR0(u32 *unused)
{
    register u32 sdkR0 asm("r0");
    asm("push {r0}");
    sdkR0 = (u32)sdkCursor >> 25;
    if (sdkR0 != 0) goto done;
    sdkR0 = (u32)sdkSharedTemplate;
    if ((u32)sdkCursor < sdkR0) goto clear;
    sdkR0 = (u32)sdkCursor >> 14;
    if (sdkR0 == 0) goto done;
clear:
    sdkValue = 0;
done:
    asm("pop {%0}" : "=r"(sdkR0));
    return (u32 *)sdkR0;
}
asm("bx lr");
const u32 *const sdkSharedTemplate asm("_080B69A8") A = sdkJumpTableTemplate;
void sub_080B69AC(void) __attribute__((naked));
void sub_080B69AC(void) { sdkCursor = sdkTrack->cmdPtr; }
void sub_080B69AE(void) __attribute__((naked));
void sub_080B69AE(void)
{
    sdkValue = (u32)(sdkCursor + 1);
    sdkTrack->cmdPtr = (u8 *)sdkValue;
    sdkValue = *sdkCursor;
    asm("b sub_080B6992");
}
