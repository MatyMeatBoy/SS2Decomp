/* shard123 (2026-11-07, claude-nov07-wM): C/ABI candidate for MPlayMain.
 * Drop-in replacement for src/m4a_1_vsync.c (build with NONMATCHING).
 * NOT buildable with the accepted tools/agbcc_sdk_vsync compiler: agbcc ICEs
 * ("fixed or forbidden register was spilled") because every low register is a
 * file-scope register variable and Thumb GO_IF_LEGITIMATE_ADDRESS rejects
 * (a) QI/HI addresses based on r7 (frame pointer) before reload and
 * (b) REG+REG addresses before reload; GCSE also creates a pseudo for the
 * second TRACK->mod load. With the experimental thumb.h change in
 * shard123.txt plus -fno-gcse the object differs from the ROM only by seven
 * extra CMP instructions (missing flag reuse, see shard123.txt 2026-11-07). */
/* VSync: 44 C instruction bytes + 2-byte ABI return + 2-byte alignment
 * and 8 bytes of genuine C data. MPlayMain's 604 bytes retain an ASM fallback;
 * its typed interpreter draft is enabled only by NONMATCHING. The shared helper 16
 * is already accepted C/ABI data and gains no new credit here. */
#include "global.h"
#define A __attribute__((section(".text"),aligned(4),thumb_literal))
register u32 r0 asm("r0");
register u32 r1 asm("r1");
register u32 r2 asm("r2");
register u32 r3 asm("r3");
register u32 r4 asm("r4");
register u32 r5 asm("r5");
register u32 r6 asm("r6");
register u32 r7 asm("r7");
register u32 r8 asm("r8");
register u32 r9 asm("r9");
register u32 sl asm("sl");
register u32 fp asm("fp");
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
#ifdef NONMATCHING
#define PLAYER ((struct MusicPlayerInfo *)r7)
#define TRACK ((struct MusicPlayerTrack *)r5)
#define CHAN ((struct SoundChannel *)r4)
#define CGB ((struct CgbChannel *)r4)
extern const u8 *const tableLiteral asm("_080B6DD4") A;
void sdkCallR3(void) asm("sub_080B6DD0");
void sdkFadeOutBody(void) asm("FadeOutBody");
void sdkClearChain(void) asm("ClearChain");
void sdkClear64byte(void) asm("Clear64byte");
void sdkTrkVolPitSet(void) asm("TrkVolPitSet");
void sdkMidiKeyToFreq(void) asm("MidiKeyToFreq");
void MPlayMain(struct MusicPlayerInfo *player) __attribute__((naked));
void MPlayMain(struct MusicPlayerInfo *player)
{
    u32 limit;
    r2 = lockLiteral;
    r3 = ((struct MusicPlayerInfo *)r0)->ident;
    if (r2 == r3) goto locked;
    asm("bx lr");
locked:
    r3 += 1;
    ((struct MusicPlayerInfo *)r0)->ident = r3;
    asm("push {r0, lr}");
    r3 = (u32)((struct MusicPlayerInfo *)r0)->MPlayMainNext;
    if (r3 == 0) goto no_next;
    r0 = (u32)((struct MusicPlayerInfo *)r0)->musicPlayerNext;
    sdkCallR3();
no_next:
    asm("pop {r0}\n\tpush {r4, r5, r6, r7}\n\tmov r4, r8\n\tmov r5, r9\n\tmov r6, sl\n\tmov r7, fp\n\tpush {r4, r5, r6, r7}");
    r7 = r0;
    r0 = PLAYER->status;
    if ((s32)r0 < 0) goto done;
    r0 = (u32)infoLiteral;
    r0 = *(u32 *)r0;
    r8 = r0;
    r0 = r7;
    sdkFadeOutBody();
    r0 = PLAYER->tempoC;
    r1 = PLAYER->tempoI;
    r0 += r1;
    goto tempo_check;
tick:
    r6 = PLAYER->trackCount;
    r5 = (u32)PLAYER->tracks;
    r3 = 1;
    r4 = 0;
track_loop:
    r0 = TRACK->flags;
    r1 = 0x80;
    if (!(r0 & r1)) goto next_track;
    sl = r3;
    r4 |= r3;
    fp = r4;
    r4 = (u32)TRACK->chan;
    if (r4 == 0) goto chans_done;
chan_loop:
    r1 = CHAN->statusFlags;
    r0 = 0xc7;
    if (!(r1 & r0)) goto chan_clear;
    r0 = CHAN->gateTime;
    if (r0 == 0) goto chan_next;
    r0 -= 1;
    *(u8 *)&CHAN->gateTime = r0;
    if (r0 != 0) goto chan_next;
    r0 = 0x40;
    r1 |= r0;
    *(u8 *)&CHAN->statusFlags = r1;
    goto chan_next;
chan_clear:
    r0 = r4;
    sdkClearChain();
chan_next:
    r4 = (u32)CHAN->nextChannelPointer;
    if (r4 != 0) goto chan_loop;
chans_done:
    r3 = TRACK->flags;
    r0 = 0x40;
    if (!(r3 & r0)) goto wait_check;
    r0 = r5;
    sdkClear64byte();
    r0 = 0x80;
    *(u8 *)&TRACK->flags = r0;
    r0 = 2;
    *(u8 *)&TRACK->bendRange = r0;
    r0 = 0x40;
    *(u8 *)&TRACK->volX = r0;
    r0 = 0x16;
    *(u8 *)&TRACK->lfoSpeed = r0;
    r0 = 1;
    r1 = r5 + 6;
    *(u8 *)(r1 + 0x1e) = r0;
    goto wait_check;
command:
    r2 = (u32)TRACK->cmdPtr;
    r1 = *(u8 *)r2;
    limit = 0x80;
    if (r1 >= limit) goto new_status;
    r1 = TRACK->runningStatus;
    goto dispatch;
new_status:
    r2 += 1;
    *(u32 *)&TRACK->cmdPtr = r2;
    limit = 0xbd;
    if (r1 < limit) goto dispatch;
    *(u8 *)&TRACK->runningStatus = r1;
dispatch:
    limit = 0xcf;
    if (r1 < limit) goto not_note;
    r0 = r8;
    r3 = (u32)((struct SoundInfo *)r0)->plynote;
    r0 = r1;
    r0 -= 0xcf;
    r1 = r7;
    r2 = r5;
    sdkCallR3();
    goto wait_check;
not_note:
    if (r1 <= 0xb0) goto wait_cmd;
    r0 = r1;
    r0 -= 0xb1;
    *(u8 *)&PLAYER->cmd = r0;
    r3 = r8;
    r3 = (u32)((struct SoundInfo *)r3)->MPlayJumpTable;
    r0 <<= 2;
    r3 = *(u32 *)(r3 + r0);
    r0 = r7;
    r1 = r5;
    sdkCallR3();
    r0 = TRACK->flags;
    if (r0 == 0) goto track_done;
    goto wait_check;
wait_cmd:
    r0 = (u32)tableLiteral;
    r1 -= 0x80;
    r1 += r0;
    r0 = *(u8 *)r1;
    *(u8 *)&TRACK->wait = r0;
wait_check:
    r0 = TRACK->wait;
    if (r0 == 0) goto command;
    r0 -= 1;
    *(u8 *)&TRACK->wait = r0;
    r1 = TRACK->lfoSpeed;
    if (r1 == 0) goto track_done;
    r0 = TRACK->mod;
    if (r0 == 0) goto track_done;
    r0 = TRACK->lfoDelayC;
    if (r0 == 0) goto lfo;
    r0 -= 1;
    *(u8 *)&TRACK->lfoDelayC = r0;
    goto track_done;
lfo:
    r0 = TRACK->lfoSpeedC;
    r0 += r1;
    *(u8 *)&TRACK->lfoSpeedC = r0;
    r1 = r0;
    r0 -= 0x40;
    r0 <<= 24;
    if ((s32)r0 >= 0) goto lfo_down;
    r2 = r1 << 24;
    r2 = (s32)r2 >> 24;
    goto lfo_scale;
lfo_down:
    r0 = 0x80;
    r2 = r0 - r1;
lfo_scale:
    r0 = TRACK->mod;
    r0 *= r2;
    r2 = (s32)r0 >> 6;
    r0 = (u8)TRACK->modM;
    r0 ^= r2;
    r0 <<= 24;
    if (r0 == 0) goto track_done;
    *(u8 *)&TRACK->modM = r2;
    r0 = TRACK->flags;
    r1 = TRACK->modT;
    if (r1 != 0) goto lfo_vol;
    r1 = 0xc;
    goto lfo_set;
lfo_vol:
    r1 = 3;
lfo_set:
    r0 |= r1;
    *(u8 *)&TRACK->flags = r0;
track_done:
    r3 = sl;
    r4 = fp;
next_track:
    r6 -= 1;
    if ((s32)r6 <= 0) goto tick_done;
    r0 = 0x50;
    r5 += r0;
    r3 <<= 1;
    goto track_loop;
tick_done:
    r0 = PLAYER->clock;
    r0 += 1;
    *(u32 *)&PLAYER->clock = r0;
    if (r4 != 0) goto still_active;
    r0 = 0x80000000;
    *(u32 *)&PLAYER->status = r0;
    goto done;
still_active:
    *(u32 *)&PLAYER->status = r4;
    r0 = PLAYER->tempoC;
    r0 -= 150;
tempo_check:
    *(u16 *)&PLAYER->tempoC = r0;
    limit = 150;
    if (r0 >= limit) goto tick;
    r2 = PLAYER->trackCount;
    r5 = (u32)PLAYER->tracks;
vol_loop:
    r0 = TRACK->flags;
    r1 = 0x80;
    if (!(r0 & r1)) goto vol_next;
    r1 = 0xf;
    if (!(r0 & r1)) goto vol_next;
    r9 = r2;
    r0 = r7;
    r1 = r5;
    sdkTrkVolPitSet();
    r4 = (u32)TRACK->chan;
    if (r4 == 0) goto vol_chans_done;
vol_chan:
    r1 = CHAN->statusFlags;
    r0 = 0xc7;
    if (r1 & r0) goto vol_chan_live;
    r0 = r4;
    sdkClearChain();
    goto vol_chan_next;
vol_chan_live:
    r0 = CHAN->type;
    r6 = 7;
    r6 &= r0;
    r3 = TRACK->flags;
    r0 = 3;
    if (!(r3 & r0)) goto vol_pitch;
    r1 = CHAN->velocity;
    asm("" : "+r"(r1));
    r0 = TRACK->volMR;
    r0 *= r1;
    r0 = (s32)r0 >> 7;
    *(u8 *)&CHAN->rightVolume = r0;
    r0 = TRACK->volML;
    r0 *= r1;
    r0 = (s32)r0 >> 7;
    *(u8 *)&CHAN->leftVolume = r0;
    if (r6 == 0) goto vol_pitch;
    r0 = CGB->modify;
    r1 = 1;
    r0 |= r1;
    *(u8 *)&CGB->modify = r0;
vol_pitch:
    r0 = 0xc;
    if (!(r3 & r0)) goto vol_chan_next;
    r1 = CHAN->key;
    r0 = (s8)TRACK->keyM;
    r2 = r1 + r0;
    if ((s32)r2 >= 0) goto key_ok;
    r2 = 0;
key_ok:
    if (r6 == 0) goto pcm_freq;
    r0 = r8;
    r3 = (u32)((struct SoundInfo *)r0)->MidiKeyToCgbFreq;
    r1 = r2;
    r2 = TRACK->pitM;
    r0 = r6;
    sdkCallR3();
    *(u32 *)&CHAN->frequency = r0;
    r0 = CGB->modify;
    r1 = 2;
    r0 |= r1;
    *(u8 *)&CGB->modify = r0;
    goto vol_chan_next;
pcm_freq:
    r1 = r2;
    r2 = TRACK->pitM;
    r0 = (u32)CHAN->wav;
    sdkMidiKeyToFreq();
    *(u32 *)&CHAN->frequency = r0;
vol_chan_next:
    r4 = (u32)CHAN->nextChannelPointer;
    if (r4 != 0) goto vol_chan;
vol_chans_done:
    r0 = TRACK->flags;
    r1 = 0xf0;
    r0 &= r1;
    *(u8 *)&TRACK->flags = r0;
    r2 = r9;
vol_next:
    r2 -= 1;
    if ((s32)r2 <= 0) goto done;
    r0 = 0x50;
    r5 += r0;
    if ((s32)r5 > 0) goto vol_loop;
done:
    r0 = lockLiteral;
    *(u32 *)&PLAYER->ident = r0;
    asm("pop {r0, r1, r2, r3, r4, r5, r6, r7}\n\tmov r8, r0\n\tmov r9, r1\n\tmov sl, r2\n\tmov fp, r3\n\tpop {r3}");
}
#else
INCLUDE_ASM("asm/nonmatchings/m4a_1_vsync", MPlayMain);
#endif
void sub_080B6DD0(u32 channel) __attribute__((naked));
void sub_080B6DD0(u32 channel) { asm("bx r3"); }
const u8 *const tableLiteral asm("_080B6DD4") A = cgbTable;
struct SoundInfo **const infoLiteral asm("_080B6DD8") A = &sdkInfo;
const u32 lockLiteral asm("_080B6DDC") A = ID_NUMBER;
