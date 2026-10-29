#include "global.h"
register u32 sdkR3 asm("r3");
extern struct SoundInfo *sdkSoundInfo asm("gUnk_03007FF0");
void sub_080B6DD0(u32 channel);

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", m4aSoundVSync);

INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", MPlayMain);

/* This 16-byte interval is mixed ABI/data: a register-indirect transfer
 * (2 bytes plus alignment) and three genuine four-byte C objects. It does not
 * convert either adjacent ASM routine. MPlayMain falls through here with its
 * return address in r3; explicit callers put a callback in r3. */
void sub_080B6DD0(u32 channel) __attribute__((naked));
void sub_080B6DD0(u32 channel)
{
    asm("bx r3");
}

extern const u8 sdkCgbTable[] asm("gUnk_080BBA5C");
const u8 *const sdkCgbTableAddress asm("_080B6DD4")
    __attribute__((section(".text"), aligned(4))) = sdkCgbTable;
struct SoundInfo **const sdkSharedSoundInfo asm("_080B6DD8")
    __attribute__((section(".text"), aligned(4))) = &sdkSoundInfo;
const u32 sdkSharedLockId asm("_080B6DDC")
    __attribute__((section(".text"), aligned(4))) = ID_NUMBER;

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

void ply_endtie(struct MusicPlayerInfo *unused, struct MusicPlayerTrack *arg) __attribute__((naked));
void ply_endtie(struct MusicPlayerInfo *unused, struct MusicPlayerTrack *arg)
{
    register struct MusicPlayerTrack *track asm("r1");
    register u8 *cursor asm("r2");
    register u32 key asm("r3");
    register struct SoundChannel *channel asm("r1");
    register u32 activeMask asm("r4");
    register u32 stopMask asm("r5");
    u32 threshold;
    /* ABI glue only: preserve the two callee-saved mask registers. */
    asm("push {r4, r5}");
    track = arg;
    cursor = track->cmdPtr;
    key = *cursor;
    /* Keep the constant local: late CSE retains CMP #0x80 / BHS. */
    threshold = 0x80;
    if (key >= threshold) goto old_key;
    track->key = key;
    cursor++;
    track->cmdPtr = cursor;
    goto loaded;
old_key:
    key = track->key;
loaded:
    channel = track->chan;
    if (channel != 0)
    {
        activeMask = 0x83;
        stopMask = 0x40;
/* Explicit C loop keeps the SDK exit block inside the traversal. */
loop:
        {
            register u32 flags asm("r2") = channel->statusFlags;
            register u32 midiKey asm("r0");
            if ((activeMask & flags) == 0) goto next;
            if ((stopMask & flags) != 0) goto next;
            midiKey = channel->midiKey;
            if (midiKey != key) goto next;
            midiKey = 0x40;
            flags |= midiKey;
            channel->statusFlags = flags;
            goto done;
next:
            channel = channel->nextChannelPointer;
            if (channel != 0) goto loop;
        }
    }
done:
    /* ABI glue only; all traversal, comparisons and writes above are C. */
    asm("pop {r4, r5}\nbx lr");
}
