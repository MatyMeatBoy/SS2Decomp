/* Command routines with the original MP2K register ABI. */
#include "global.h"

register u32 sdkR0 asm("r0");
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u32 sdkTemp asm("r2");
register u32 sdkValue asm("r3");
register u32 sdkSavedReturn asm("r12");
register u32 sdkLink asm("lr");

void sub_080B69AC(void);

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

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", sub_080B6A6C);

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

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", sub_080B6AF8);

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

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", sub_080B6B24);

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", m4aSoundVSync);

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", MPlayMain);

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", sub_080B6DD0);

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", TrackStop);

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", ply_note);

INCLUDE_ASM("asm/nonmatchings/m4a_1_commands", ply_endtie);
