/* Interpreter register ABI; kept separate from ordinary C entry points. */
#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u8 *sdkCursor asm("r2");
register unsigned int sdkValue asm("r3");
register u32 sdkSavedReturn asm("r12");
register u32 sdkLink asm("lr");
void clear_modM(void);
void ld_r3_tp_adr_i(void) {
 sdkCursor=sdkTrack->cmdPtr;
 sdkValue=(unsigned int)(sdkCursor+1);
 sdkTrack->cmdPtr=(u8 *)sdkValue;
 sdkValue=*sdkCursor;
}

void ply_lfos_abi(void) asm("ply_lfos") __attribute__((naked));
void ply_lfos_abi(void) {
 sdkSavedReturn=sdkLink;
 ld_r3_tp_adr_i();
 sdkTrack->lfoSpeed=sdkValue;
 if(sdkValue==0) clear_modM();
 asm("bx ip");
}
void ply_mod_abi(void) asm("ply_mod") __attribute__((naked));
void ply_mod_abi(void) {
 sdkSavedReturn=sdkLink;
 ld_r3_tp_adr_i();
 sdkTrack->mod=sdkValue;
 if(sdkValue==0) clear_modM();
 asm("bx ip");
}
