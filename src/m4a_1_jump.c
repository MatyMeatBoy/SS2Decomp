/* Sequence pointer assembly with the original register ABI. */
#include "global.h"
register struct MusicPlayerTrack *sdkTrack asm("r1");
register u8 *sdkCursor asm("r2");
register unsigned int sdkValue asm("r3");
register unsigned int target asm("r0");
void sub_080B6990(void);
void sub_080B69B8(void) {
 sdkCursor=sdkTrack->cmdPtr;
 target=sdkCursor[3]; target <<= 8;
 sdkValue=sdkCursor[2]; target |= sdkValue; target <<=8;
 sdkValue=sdkCursor[1]; target |= sdkValue; target <<=8;
 sub_080B6990();
 target|=sdkValue;
 sdkTrack->cmdPtr=(u8 *)target;
}
