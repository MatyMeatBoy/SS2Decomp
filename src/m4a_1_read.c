/* C readers preserve their shared-entry fall-through ABI. */
#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u8 *sdkCursor asm("r2");
register u32 sdkValue asm("r3");
extern u32 sdkJumpTableTemplate[] asm("gUnk_080BB7E8");

INCLUDE_ASM("asm/nonmatchings/m4a_1_read", MPlayJumpTableCopy);

asm(".align 2, 0");

/* No return here: the original ABI falls into the validator entry below. */
void sub_080B6990(void) __attribute__((naked));
void sub_080B6990(void)
{
    sdkValue = *sdkCursor;
}


void sub_080B6992(void) __attribute__((naked));
void sub_080B6992(void)
{
    register u32 scratch asm("r0");
    /* ABI only: the protected-reader helper preserves its caller's r0. */
    asm("push {r0}");
    scratch = (u32)sdkCursor >> 25;
    if (scratch != 0) goto done;
    scratch = (u32)sdkJumpTableTemplate;
    if ((u32)sdkCursor < scratch) goto clear;
    scratch = (u32)sdkCursor >> 14;
    if (scratch == 0) goto done;
clear:
    sdkValue = 0;
done:
    asm("pop {r0}\nbx lr");
}

/* Export the original shared data label for the sole C-generated literal. */
asm(".set _080B69A8, . - 4");


/* Shared-entry ABI falls through to the stream advance/validation tail. */
void sub_080B69AC(void) __attribute__((naked));
void sub_080B69AC(void)
{
    sdkCursor = sdkTrack->cmdPtr;
}

/* Shared-entry ABI: preserve the caller's lr when entering the validator. */
void sub_080B69AE(void) __attribute__((naked));
void sub_080B69AE(void)
{
    sdkValue = (u32)(sdkCursor + 1);
    sdkTrack->cmdPtr = (u8 *)sdkValue;
    sdkValue = *sdkCursor;
    asm("b sub_080B6992");
}
