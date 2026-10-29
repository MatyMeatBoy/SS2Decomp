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
