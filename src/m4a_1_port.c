/* C hardware write, with only bx ip as ABI return assembly. */
#include "global.h"
register volatile unsigned int sdkR0 asm("r0");
register struct MusicPlayerTrack *sdkTrack asm("r1");
register unsigned int sdkTemp asm("r2");
register unsigned int sdkValue asm("r3");
register unsigned int sdkSavedReturn asm("r12");
register unsigned int sdkLink asm("lr");
void sub_080B69AC(void);
void sub_080B69AE(void);
void sub_080B6B24(void) __attribute__((naked));
void sub_080B6B24(void) {
 sdkSavedReturn=sdkLink;
 sdkTemp=(u32)sdkTrack->cmdPtr;
 sdkValue=*(u8 *)sdkTemp;
 sdkTemp+=1;
 sdkR0=0x04000060;
 sdkR0+=sdkValue;
 sub_080B69AE();
 *(volatile u8 *)sdkR0=sdkValue;
 asm("bx ip");
}
