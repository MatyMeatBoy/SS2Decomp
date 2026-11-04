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
extern const u8 *const tableLiteral asm("_080B6DD4") A;
u32 MidiKeyToFreq(struct WaveData *, u8, u8);
void MPlayMain(struct MusicPlayerInfo *player)
{
    struct SoundInfo *sound;
    struct MusicPlayerTrack *track;
    struct SoundChannel *channel;
    s32 remaining, pitch, wave;
    u32 tempo, bit, active, command, phase, kind;

    if (player->ident != lockLiteral)
        return;
    player->ident++;
    if (player->MPlayMainNext != 0)
        player->MPlayMainNext(player->musicPlayerNext);
    if ((s32)player->status < 0)
        goto done;
    sound = *infoLiteral;
    FadeOutBody(player);
    tempo = player->tempoC + player->tempoI;
    goto tempo_check;
tick:
    remaining = player->trackCount;
    track = player->tracks;
    bit = 1;
    active = 0;
    do {
        if (!(track->flags & 0x80))
            goto next_track;
        active |= bit;
        channel = track->chan;
        while (channel != 0) {
            if (channel->statusFlags & 0xC7) {
                if (channel->gateTime != 0 && --channel->gateTime == 0)
                    channel->statusFlags |= 0x40;
            } else {
                ClearChain(channel);
            }
            channel = channel->nextChannelPointer;
        }
        if (track->flags & 0x40) {
            Clear64byte(track);
            track->flags = 0x80;
            track->bendRange = 2;
            track->volX = 0x40;
            track->lfoSpeed = 0x16;
            ((u8 *)&track->tone)[0] = 1;
        }
        while (track->wait == 0) {
            command = *track->cmdPtr;
            if (command < 0x80) {
                command = track->runningStatus;
            } else {
                track->cmdPtr++;
                if (command >= 0xBD)
                    track->runningStatus = command;
            }
            if (command >= 0xCF) {
                sound->plynote(command - 0xCF, player, track);
            } else if (command > 0xB0) {
                command -= 0xB1;
                player->cmd = command;
                sound->MPlayJumpTable[command](player, track);
                if (track->flags == 0)
                    goto next_track;
            } else {
                track->wait = tableLiteral[command - 0x80];
            }
        }
        track->wait--;
        if (track->lfoSpeed != 0 && track->mod != 0) {
            if (track->lfoDelayC != 0) {
                track->lfoDelayC--;
            } else {
                phase = track->lfoSpeedC + track->lfoSpeed;
                track->lfoSpeedC = phase;
                if ((s8)(phase - 0x40) < 0)
                    wave = (s8)phase;
                else
                    wave = 0x80 - phase;
                wave = ((s32)track->mod * wave) >> 6;
                if ((u8)(track->modM ^ wave) != 0) {
                    track->modM = wave;
                    track->flags |= track->modT == 0 ? 0xC : 3;
                }
            }
        }
next_track:
        if (--remaining <= 0)
            break;
        track++;
        bit <<= 1;
    } while (1);
    player->clock++;
    if (active == 0) {
        player->status = 0x80000000;
        goto done;
    }
    player->status = active;
    tempo = player->tempoC - 150;
tempo_check:
    player->tempoC = tempo;
    if (tempo >= 150)
        goto tick;
    remaining = player->trackCount;
    track = player->tracks;
    do {
        if ((track->flags & 0x80) && (track->flags & 0xF)) {
            TrkVolPitSet(player, track);
            channel = track->chan;
            while (channel != 0) {
                if (!(channel->statusFlags & 0xC7)) {
                    ClearChain(channel);
                } else {
                    kind = channel->type & 7;
                    if (track->flags & 3) {
                        channel->rightVolume = (track->volMR * channel->velocity) >> 7;
                        channel->leftVolume = (track->volML * channel->velocity) >> 7;
                        if (kind != 0)
                            ((u8 *)channel)[0x1D] |= 1;
                    }
                    if (track->flags & 0xC) {
                        pitch = channel->key + (s8)track->keyM;
                        if (pitch < 0)
                            pitch = 0;
                        if (kind != 0) {
                            channel->frequency = sound->MidiKeyToCgbFreq(kind, pitch, track->pitM);
                            ((u8 *)channel)[0x1D] |= 2;
                        } else {
                            channel->frequency = MidiKeyToFreq(channel->wav, pitch, track->pitM);
                        }
                    }
                }
                channel = channel->nextChannelPointer;
            }
            track->flags &= 0xF0;
        }
        if (--remaining <= 0)
            break;
        track++;
    } while ((s32)track > 0);
done:
    player->ident = lockLiteral;
}
#else
INCLUDE_ASM("asm/nonmatchings/m4a_1_vsync", MPlayMain);
#endif
void sub_080B6DD0(u32 channel) __attribute__((naked));
void sub_080B6DD0(u32 channel) { asm("bx r3"); }
const u8 *const tableLiteral asm("_080B6DD4") A = cgbTable;
struct SoundInfo **const infoLiteral asm("_080B6DD8") A = &sdkInfo;
const u32 lockLiteral asm("_080B6DDC") A = ID_NUMBER;
