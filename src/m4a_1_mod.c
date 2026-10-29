#include "global.h"

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
