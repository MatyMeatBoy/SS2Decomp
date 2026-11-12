/* Command routines with the original MP2K register ABI. */
#include "global.h"

register u32 sdkR0 asm("r0");
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u32 sdkTemp asm("r2");
register u32 sdkValue asm("r3");
register u32 sdkSavedReturn asm("r12");
register u32 sdkLink asm("lr");

void sub_080B69AC(void);
void sub_080B6992(void);

/* C algorithm; the single asm instruction is the nonstandard ABI return. */
void sub_080B6A38(void) __attribute__((naked));
/* [ply_prio] Guarded stream byte stored track+0x1D (priority). */
void sub_080B6A38(void)
{
    sdkSavedReturn = sdkLink;
    sub_080B69AC();
    sdkTrack->priority = sdkValue;
    asm("bx ip");
}

void sub_080B6A44(void) __attribute__((naked));
/* [ply_tempo] Guarded byte<<1 stored player+0x1C tempoD; multiplies tempoU+0x1E then>>8 stores tempoI+0x20. */
void sub_080B6A44(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkValue<<=1;
 ((struct MusicPlayerInfo *)sdkR0)->tempoD=sdkValue;
 sdkTemp=((struct MusicPlayerInfo *)sdkR0)->tempoU;
 sdkValue=sdkTemp*sdkValue;
 sdkValue>>=8;
 ((struct MusicPlayerInfo *)sdkR0)->tempoI=sdkValue;
 asm("bx ip");
}

void sub_080B6A58(void) __attribute__((naked));
/* [ply_keysh] Guarded byte to track+0x0A keyShift and flags|=0x0C. */
void sub_080B6A58(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkTrack->keyShift=sdkValue;
 sdkValue=sdkTrack->flags;
 sdkTemp=12;
 sdkValue|=sdkTemp;
 sdkTrack->flags=sdkValue;
 asm("bx ip");
}

void sub_080B6A6C(void) __attribute__((naked));
/* [ply_voice] Reads voice index directly, increments cmdPtr; computes tone base player+0x30 +index*12; three
 * words via6992 into track+0x24/28/2C. Guard uses same r2 base for all3loads. */
void sub_080B6A6C(void) {
 struct SdkToneWords {u32 first; u32 wave; u32 envelope;};
 sdkSavedReturn=sdkLink;
 sdkTemp=(u32)sdkTrack->cmdPtr;
 sdkValue=*(u8 *)sdkTemp;
 sdkTemp+=1;
 sdkTrack->cmdPtr=(u8 *)sdkTemp;
 sdkTemp=sdkValue<<1;
 sdkTemp+=sdkValue;
 sdkTemp<<=2;
 sdkValue=(u32)((struct MusicPlayerInfo *)sdkR0)->tone;
 sdkTemp+=sdkValue;
 sdkValue=*(u32 *)sdkTemp;
 sub_080B6992();
 ((struct SdkToneWords *)&sdkTrack->tone)->first=sdkValue;
 sdkValue=*(u32 *)(sdkTemp+4);
 sub_080B6992();
 ((struct SdkToneWords *)&sdkTrack->tone)->wave=sdkValue;
 sdkValue=*(u32 *)(sdkTemp+8);
 sub_080B6992();
 ((struct SdkToneWords *)&sdkTrack->tone)->envelope=sdkValue;
 asm("bx ip");
}

void sub_080B6A9C(void) __attribute__((naked));
/* [ply_vol] Guarded byte to track+0x12 volume and flags|=3. */
void sub_080B6A9C(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkTrack->vol=sdkValue;
 sdkValue=sdkTrack->flags;
 sdkTemp=3;
 sdkValue|=sdkTemp;
 sdkTrack->flags=sdkValue;
 asm("bx ip");
}

void sub_080B6AB0(void) __attribute__((naked));
/* [ply_pan] Guarded byte-0x40 to track+0x14 pan and flags|=3. */
void sub_080B6AB0(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkValue-=64;
 sdkTrack->pan=sdkValue;
 sdkValue=sdkTrack->flags;
 sdkTemp=3;
 sdkValue|=sdkTemp;
 sdkTrack->flags=sdkValue;
 asm("bx ip");
}

void sub_080B6AC4(void) __attribute__((naked));
/* [ply_bend] Guarded byte-0x40 to track+0x0E bend and flags|=0x0C. */
void sub_080B6AC4(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkValue-=64;
 sdkTrack->bend=sdkValue;
 sdkValue=sdkTrack->flags;
 sdkTemp=12;
 sdkValue|=sdkTemp;
 sdkTrack->flags=sdkValue;
 asm("bx ip");
}

void sub_080B6AD8(void) __attribute__((naked));
/* [ply_bendr] Guarded byte to track+0x0F bendRange and flags|=0x0C. */
void sub_080B6AD8(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkTrack->bendRange=sdkValue;
 sdkValue=sdkTrack->flags;
 sdkTemp=12;
 sdkValue|=sdkTemp;
 sdkTrack->flags=sdkValue;
 asm("bx ip");
}

void sub_080B6AEC(void) __attribute__((naked));
/* [ply_lfodl] Guarded byte to track+0x1B lfoDelay. */
void sub_080B6AEC(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkTrack->lfoDelay=sdkValue;
 asm("bx ip");
}

void sub_080B6AF8(void) __attribute__((naked));
/* [ply_modt] Guarded byte compared to track+0x18 modulation type; only on change updates field and
 * flags|=0x0F. */
void sub_080B6AF8(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkR0=sdkTrack->modT;
 if(sdkR0!=sdkValue) {
  sdkTrack->modT=sdkValue;
  sdkValue=sdkTrack->flags;
  sdkTemp=15;
  sdkValue|=sdkTemp;
  sdkTrack->flags=sdkValue;
 }
 asm("bx ip");
}

void sub_080B6B10(void) __attribute__((naked));
/* [ply_tune] Guarded byte-0x40 to track+0x0C tune and flags|=0x0C. */
void sub_080B6B10(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkValue-=64;
 sdkTrack->tune=sdkValue;
 sdkValue=sdkTrack->flags;
 sdkTemp=12;
 sdkValue|=sdkTemp;
 sdkTrack->flags=sdkValue;
 asm("bx ip");
}
