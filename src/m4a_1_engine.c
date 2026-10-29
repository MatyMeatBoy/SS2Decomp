#include "global.h"
register u32 sdkR3 asm("r3");
extern struct SoundInfo *sdkSoundInfo asm("gUnk_03007FF0");
void sub_080B6DD0(u32 channel);

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", m4aSoundVSync);

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", MPlayMain);

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", sub_080B6DD0);

void TrackStop(struct MusicPlayerInfo *unused, struct MusicPlayerTrack *arg)
{
    register struct MusicPlayerTrack *track asm("r5") = arg;
    register struct SoundChannel *channel asm("r4");
    u32 zero;
    register u32 sdkR0 asm("r0");
    register u32 sdkR1 asm("r1");
    sdkR1 = track->flags;
    sdkR0 = 0x80;
    if (sdkR1 & sdkR0)
    {
        channel = track->chan;
        if (channel != 0)
        {
            zero = 0;
            do
            {
                sdkR0 = channel->statusFlags;
                if (sdkR0 != 0)
                {
                    sdkR0 = channel->type;
                    sdkR3 = 7;
                    if ((sdkR0 &= sdkR3) != 0)
                    {
                        sdkR3 = (u32)&sdkSoundInfo;
                        sdkR3 = *(u32 *)sdkR3;
                        sdkR3 = (u32)((struct SoundInfo *)sdkR3)->CgbOscOff;
                        sub_080B6DD0(sdkR0);
                    }
                    channel->statusFlags = zero;
                }
                channel->track = (struct MusicPlayerTrack *)zero;
                channel = channel->nextChannelPointer;
            } while (channel != 0);
        }
        track->chan = channel;
    }
}

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", ply_note);

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", ply_endtie);
