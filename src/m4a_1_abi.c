/* Interpreter register ABI; kept separate from ordinary C entry points. */
#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u8 *sdkCursor asm("r2");
register unsigned int sdkValue asm("r3");
void ld_r3_tp_adr_i(void) {
 sdkCursor=sdkTrack->cmdPtr;
 sdkValue=(unsigned int)(sdkCursor+1);
 sdkTrack->cmdPtr=(u8 *)sdkValue;
 sdkValue=*sdkCursor;
}

INCLUDE_ASM("asm/nonmatchings/m4a_1_abi", ply_lfos);
INCLUDE_ASM("asm/nonmatchings/m4a_1_abi", ply_mod);
