/* Original MP2K driver: remaining entries retain their original assembly. */
#include "global.h"

/* The register bindings preserve the SDK helper's register contract. */
INCLUDE_ASM("asm/nonmatchings/m4a_1", umul3232H32);

INCLUDE_ASM("asm/nonmatchings/m4a_1", SoundMain);

INCLUDE_ASM("asm/nonmatchings/m4a_1", SoundMainRAM);

INCLUDE_ASM("asm/nonmatchings/m4a_1", SoundMainBTM);

void RealClearChain(void *arg)
{
    register struct SoundChannel *channel asm("r0") = arg;
    register struct MusicPlayerTrack *track asm("r3") = channel->track;

    if (track != 0)
    {
        register struct SoundChannel *next asm("r1") = channel->nextChannelPointer;
        register struct SoundChannel *prev asm("r2") = channel->prevChannelPointer;

        if (prev != 0)
            prev->nextChannelPointer = next;
        else
            track->chan = next;
        if (next != 0)
            next->prevChannelPointer = prev;
        channel->track = 0;
    }
}

INCLUDE_ASM("asm/nonmatchings/m4a_1", ply_fine);

INCLUDE_ASM("asm/nonmatchings/m4a_1", MPlayJumpTableCopy);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6990);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6992);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B69AC);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B69AE);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B69B8);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B69D8);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B69F4);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6A38);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6A44);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6A58);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6A6C);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6A9C);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6AB0);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6AC4);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6AD8);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6AEC);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6AF8);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6B10);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6B24);

INCLUDE_ASM("asm/nonmatchings/m4a_1", m4aSoundVSync);

INCLUDE_ASM("asm/nonmatchings/m4a_1", MPlayMain);

INCLUDE_ASM("asm/nonmatchings/m4a_1", sub_080B6DD0);

INCLUDE_ASM("asm/nonmatchings/m4a_1", TrackStop);

INCLUDE_ASM("asm/nonmatchings/m4a_1", ply_note);

INCLUDE_ASM("asm/nonmatchings/m4a_1", ply_endtie);

void clear_modM(void *unused, struct MusicPlayerTrack *arg) {
 register struct MusicPlayerTrack *track asm("r1") = arg;
 register unsigned int mask asm("r2") = 0;
 register unsigned int flags asm("r3");
 track->modM=mask;
 track->lfoSpeedC=mask;
 mask=track->modT;
 if(mask==0) mask=12; else mask=3;
 flags=track->flags;
 flags|=mask;
 track->flags=flags;
}
