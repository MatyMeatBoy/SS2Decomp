/* C readers preserve their shared-entry fall-through ABI. */
#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u8 *sdkCursor asm("r2");
register u32 sdkValue asm("r3");

INCLUDE_ASM("asm/nonmatchings/m4a_1_read", MPlayJumpTableCopy);

/* No return here: the original ABI falls into the validator entry below. */
void sub_080B6990(void) __attribute__((naked));
void sub_080B6990(void)
{
    sdkValue = *sdkCursor;
}


INCLUDE_ASM("asm/nonmatchings/m4a_1_read", sub_080B6992);

/* Shared-entry ABI falls through to the stream advance/validation tail. */
void sub_080B69AC(void) __attribute__((naked));
void sub_080B69AC(void)
{
    sdkCursor = sdkTrack->cmdPtr;
}

INCLUDE_ASM("asm/nonmatchings/m4a_1_read", sub_080B69AE);
