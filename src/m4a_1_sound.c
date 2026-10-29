/* Original MP2K SoundMain, 132 bytes including six genuine C literals.
 * Mixed C/ABI: only the nonstandard entry saves, early return and terminal
 * transfer to the copied RAM kernel are explicit assembly. All decisions,
 * memory accesses and arithmetic are generated from C. SoundMainRAM remains
 * original assembly and receives no C credit in this translation unit.
 */
#include "global.h"
#include <stddef.h>
#define LITERAL __attribute__((section(".text"), aligned(4), thumb_literal))
register u32 r0 asm("r0");
register u32 r1 asm("r1");
register u32 r2 asm("r2");
register u32 r3 asm("r3");
register u32 r4 asm("r4");
register u32 r5 asm("r5");
register u32 r6 asm("r6");
register u32 r7 asm("r7");
register u32 r8 asm("r8");
register u32 *frame asm("sp");
extern struct SoundInfo *sdkInfo asm("gUnk_03007FF0");
extern char SoundMainRAM_Buffer[];
void sdkInvoke(void) asm("_080B690A");
extern struct SoundInfo **const sdkInfoAddress asm("_080B6554") LITERAL;
extern const u32 sdkLockId asm("_080B6558") LITERAL;
extern u8 *const sdkRamEntry asm("_080B655C") LITERAL;
extern volatile u8 *const sdkVCountAddress asm("_080B6560") LITERAL;
extern const u32 sdkPcmBufferOffset asm("_080B6564") LITERAL;
extern const u32 sdkPcmDmaBufferBytes asm("_080B6568") LITERAL;

#define WORD_AT(p) (*(u32 *)(p))
#define BYTE_AT(p) (*(u8 *)(p))
void SoundMain(void) __attribute__((naked));
void SoundMain(void)
{
    u32 threshold = 160;
    r0 = (u32)sdkInfoAddress;
    r0 = WORD_AT(r0);
    r2 = sdkLockId;
    r3 = WORD_AT(r0);
    if (r2 == r3) goto start;
    asm("bx lr");
start:
    r3 += 1;
    WORD_AT(r0) = r3;
    asm volatile("push {r4-r7,lr}\nmov r1,r8\nmov r2,r9\nmov r3,r10\nmov r4,r11\npush {r0-r4}\nsub sp,#24" : : : "memory");
    r1 = BYTE_AT(r0 + 12);
    if (r1 == 0) goto maxline_done;
    r2 = (u32)sdkVCountAddress;
    {
        register u8 line asm("r2") = *(volatile u8 *)r2;
        r2 = line;
    }
    if (r2 >= threshold) goto in_vblank;
    r2 += 228;
in_vblank:
    r1 += r2;
maxline_done:
    frame[5] = r1;
    r3 = WORD_AT(r0 + 32);
    if (r3 == 0) goto cgb;
    r0 = WORD_AT(r0 + 36);
    sdkInvoke();
    r0 = frame[6];
cgb:
    r3 = WORD_AT(r0 + 40);
    sdkInvoke();
    r0 = frame[6];
    r3 = WORD_AT(r0 + 16);
    r8 = r3;
    r5 = sdkPcmBufferOffset;
    r5 += r0;
    r4 = BYTE_AT(r0 + 4);
    r7 = r4 - 1;
    if (r4 <= 1) goto buffer_ready;
    r1 = BYTE_AT(r0 + 11);
    r1 -= r7;
    r2 = r8;
    r2 *= r1;
    r5 += r2;
buffer_ready:
    frame[2] = r5;
    r6 = sdkPcmDmaBufferBytes;
    r3 = (u32)sdkRamEntry;
    asm("bx r3");
}

/* Typed C data in the original shared literal order. */
struct SoundInfo **const sdkInfoAddress asm("_080B6554") LITERAL = &sdkInfo;
const u32 sdkLockId asm("_080B6558") LITERAL = ID_NUMBER;
u8 *const sdkRamEntry asm("_080B655C") LITERAL = (u8 *)SoundMainRAM_Buffer + 1;
volatile u8 *const sdkVCountAddress asm("_080B6560") LITERAL = (volatile u8 *)&REG_VCOUNT;
const u32 sdkPcmBufferOffset asm("_080B6564") LITERAL = offsetof(struct SoundInfo, pcmBuffer);
const u32 sdkPcmDmaBufferBytes asm("_080B6568") LITERAL = sizeof(((struct SoundInfo *)0)->pcmBuffer) / 2;

/* This separate entry is still original ASM, not credited as C. */
INCLUDE_ASM("asm/nonmatchings/m4a_1_sound", SoundMainRAM);
