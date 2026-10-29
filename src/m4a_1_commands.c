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
void sub_080B6A38(void)
{
    sdkSavedReturn = sdkLink;
    sub_080B69AC();
    sdkTrack->priority = sdkValue;
    asm("bx ip");
}

void sub_080B6A44(void) __attribute__((naked));
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
void sub_080B6AEC(void) {
 sdkSavedReturn=sdkLink;
 sub_080B69AC();
 sdkTrack->lfoDelay=sdkValue;
 asm("bx ip");
}

void sub_080B6AF8(void) __attribute__((naked));
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
