/* Original MP2K driver: remaining entries retain their original assembly. */
#include "global.h"

void RealClearChain(void *arg)
{
    register struct SoundChannel *channel asm("r0") = arg;
    struct MusicPlayerTrack *track = channel->track;

    if (track != 0)
    {
        struct SoundChannel *next = channel->nextChannelPointer;
        struct SoundChannel *prev = channel->prevChannelPointer;

        if (prev != 0)
            prev->nextChannelPointer = next;
        else
            track->chan = next;
        if (next != 0)
            next->prevChannelPointer = prev;
        channel->track = 0;
    }
}

void ply_fine(struct MusicPlayerInfo *unused, struct MusicPlayerTrack *arg) {
 struct MusicPlayerTrack *track = arg;
 struct SoundChannel *chan = track->chan;
 if(chan != 0) {
  do {
   unsigned int flags=chan->statusFlags;
   register unsigned int mask asm("r0")=0xc7;
   if(flags & mask) {mask=0x40;flags|=mask;chan->statusFlags=flags;}
   RealClearChain(chan);
   chan=chan->nextChannelPointer;
  } while(chan != 0);
 }
 track->flags=0;
}
