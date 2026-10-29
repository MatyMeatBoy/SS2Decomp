/* VSync: 44 C instruction bytes + 2-byte ABI return + 2-byte alignment
 * and 8 bytes of genuine C data. MPlayMain 604 stays ASM; the shared helper 16
 * is already accepted C/ABI data and gains no new credit here. */
#include "global.h"
#define A __attribute__((section(".text"),aligned(4),thumb_literal))
register u32 r0 asm("r0");
register u32 r1 asm("r1");
register u32 r2 asm("r2");
register u32 r3 asm("r3");
extern struct SoundInfo *sdkInfo asm("gUnk_03007FF0");
extern struct SoundInfo **const infoLiteral asm("_080B6DD8") A;
extern const u32 lockLiteral asm("_080B6DDC") A;
extern volatile u16 *const dma1Literal asm("_080B6B6C") A;
extern volatile u16 *const dma2Literal asm("_080B6B70") A;
extern u8 cgbTable[] asm("gUnk_080BBA5C");
void m4aSoundVSync(void) __attribute__((naked));
void m4aSoundVSync(void) {
 r0 = (u32)infoLiteral;
 r0 = *(u32 *)r0;
 r2 = lockLiteral;
 r3 = *(u32 *)r0;
 r3 -= r2;
 if (r3 > 1) goto done;
 r1 = *(u8 *)(r0 + 4);
 r1 -= 1;
 *(u8 *)(r0 + 4) = r1;
 if ((s32)r1 > 0) goto done;
 r1 = *(u8 *)(r0 + 11);
 *(u8 *)(r0 + 4) = r1;
 r0 = 0;
 r1 = 0xb600;
 r2 = (u32)dma1Literal;
 r3 = (u32)dma2Literal;
 *(volatile u16 *)r2 = r0;
 *(volatile u16 *)r3 = r0;
 *(volatile u16 *)r2 = r1;
 *(volatile u16 *)r3 = r1;
 done: ;
}
asm("bx lr");
volatile u16 *const dma1Literal asm("_080B6B6C") A = (volatile u16 *)&REG_DMA1CNT_H;
volatile u16 *const dma2Literal asm("_080B6B70") A = (volatile u16 *)&REG_DMA2CNT_H;
INCLUDE_ASM("asm/nonmatchings/m4a_1_vsync", MPlayMain);
void sub_080B6DD0(u32 channel) __attribute__((naked));
void sub_080B6DD0(u32 channel) { asm("bx r3"); }
const u8 *const tableLiteral asm("_080B6DD4") A = cgbTable;
struct SoundInfo **const infoLiteral asm("_080B6DD8") A = &sdkInfo;
const u32 lockLiteral asm("_080B6DDC") A = ID_NUMBER;
