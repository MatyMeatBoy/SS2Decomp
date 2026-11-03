#include "global.h"
register u32 sdkR3 asm("r3");
extern struct SoundInfo *sdkSoundInfo asm("gUnk_03007FF0");
void sub_080B6DD0(u32 channel);

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

#ifdef NONMATCHING
/* SDK hand-written routine; naked draft with r3/r5/r4/r9 bindings and an explicit
   sp frame. Not matchable as-is: the original keeps flags across STR (ANDS; STR; BEQ)
   and reuses one CMP for two branches, which this compiler never emits. */
struct NoteFrame121 {
    struct MusicPlayerInfo *player;
    struct SoundInfo *sound;
    u32 key;
    u32 cgb;
    u32 priority;
    u32 rhythm;
};
extern const u8 noteClock121[] asm("gUnk_080BBA5C");
extern void noteModM121(u32, struct MusicPlayerTrack *) asm("clear_modM");
extern u32 noteCgbFreq121(u32, u32, u32) asm("sub_080B6DD0");
extern u32 noteMidi121(struct WaveData *, u32, u32) asm("MidiKeyToFreq");

void ply_note(u32 cmd, struct MusicPlayerInfo *player, struct MusicPlayerTrack *track) __attribute__((naked));
void ply_note(u32 cmd, struct MusicPlayerInfo *player, struct MusicPlayerTrack *track)
{
    register struct NoteFrame121 *frame asm("sp");
    register u32 a0 asm("r0");
    register u32 a1 asm("r1");
    register u32 a2 asm("r2");
    register struct MusicPlayerTrack *trk asm("r5");
    register struct SoundChannel *chan asm("r4");
    register u32 r6v asm("r6");
    register u32 r7v asm("r7");
    register u32 r8v asm("r8");
    register struct ToneData *tone asm("r9");
    u32 threshold;

    asm("push {r4, r5, r6, r7, lr}\n\tmov r4, r8\n\tmov r5, r9\n\tmov r6, sl\n\tmov r7, fp\n\tpush {r4, r5, r6, r7}\n\tsub sp, #0x18");
    frame->player = player;
    trk = track;
    a1 = (u32)sdkSoundInfo;
    frame->sound = (struct SoundInfo *)a1;
    trk->gateTime = noteClock121[cmd];
    threshold = 0x80;
    sdkR3 = (u32)trk->cmdPtr;
    a0 = *(u8 *)sdkR3;
    if (a0 < threshold) {
        trk->key = a0;
        sdkR3++;
        a0 = *(u8 *)sdkR3;
        if (a0 < threshold) {
            trk->velocity = a0;
            sdkR3++;
            a0 = *(u8 *)sdkR3;
            if (a0 < threshold) {
                trk->gateTime += a0;
                sdkR3++;
            }
        }
        trk->cmdPtr = (u8 *)sdkR3;
    }
    frame->rhythm = 0;
    chan = (struct SoundChannel *)&trk->tone;
    a2 = ((struct ToneData *)chan)->type;
    if (a2 & 0xC0) {
        sdkR3 = trk->key;
        if (a2 & 0x40)
        {
            a1 = *(u32 *)&trk->tone.attack;
            a1 += sdkR3;
            a0 = *(u8 *)a1;
        }
        else
            a0 = sdkR3;
        a1 = a0 * 12;
        a1 += (u32)trk->tone.wav;
        tone = (struct ToneData *)a1;
        r6v = (u32)tone;
        if (((struct ToneData *)r6v)->type & 0xC0)
            goto ret;
        if (a2 & 0x80) {
            a1 = ((struct ToneData *)r6v)->pan_sweep;
            if (a1 & 0x80)
                frame->rhythm = a1;
            sdkR3 = ((struct ToneData *)r6v)->key;
        }
    } else {
        tone = (struct ToneData *)chan;
        sdkR3 = trk->key;
    }
    frame->key = sdkR3;
    r6v = (u32)frame->player;
    a1 = ((struct MusicPlayerInfo *)r6v)->priority;
    a0 = trk->priority;
    a0 += a1;
    if (a0 > 0xFF)
        a0 = 0xFF;
    frame->priority = a0;
    r6v = (u32)tone;
    a0 = ((struct ToneData *)r6v)->type;
    r6v = 7;
    r6v &= a0;
    frame->cgb = r6v;
    if (r6v != 0) {
        chan = (struct SoundChannel *)frame->sound->cgbChans;
        if (chan == 0)
            goto ret;
        r6v--;
        chan = (struct SoundChannel *)((u8 *)chan + (r6v << 6));
        a1 = chan->statusFlags;
        if (!(a1 & 0xC7))
            goto chosen;
        if (a1 & 0x40)
            goto chosen;
        a1 = chan->priority;
        if (a1 < frame->priority)
            goto chosen;
        if (a1 != frame->priority)
            goto ret;
        if ((u32)chan->track >= (u32)trk)
            goto chosen;
        goto ret;
    } else {
        r6v = frame->priority;
        r7v = (u32)trk;
        a2 = 0;
        r8v = a2;
        chan = (struct SoundChannel *)frame->sound;
        sdkR3 = ((struct SoundInfo *)chan)->maxChans;
        chan = (struct SoundChannel *)((u8 *)chan + 0x50);
    loop:
        a1 = chan->statusFlags;
        if (!(a1 & 0xC7))
            goto chosen;
        if (a1 & 0x40) {
            if (a2 != 0)
                goto cmp;
            a2++;
            r6v = chan->priority;
            r7v = (u32)chan->track;
            goto sel;
        }
        if (a2 != 0)
            goto adv;
    cmp:
        a0 = chan->priority;
        if (a0 < r6v) {
            r6v = a0;
            r7v = (u32)chan->track;
            goto sel;
        }
        if (a0 > r6v)
            goto adv;
        a0 = (u32)chan->track;
        if (a0 > r7v) {
            r7v = a0;
            goto sel;
        }
        if (a0 < r7v)
            goto adv;
    sel:
        r8v = (u32)chan;
    adv:
        chan++;
        if ((s32)--sdkR3 > 0)
            goto loop;
        chan = (struct SoundChannel *)r8v;
        if (chan == 0)
            goto ret;
    }
chosen:
    ClearChain(chan);
    a1 = 0;
    chan->prevChannelPointer = (void *)a1;
    sdkR3 = (u32)trk->chan;
    chan->nextChannelPointer = (void *)sdkR3;
    if (sdkR3 != 0)
        ((struct SoundChannel *)sdkR3)->prevChannelPointer = chan;
    trk->chan = chan;
    chan->track = trk;
    a0 = trk->lfoDelay;
    trk->lfoDelayC = a0;
    if (a0 != a1)
        noteModM121(a0, trk);
    a1 = frame->rhythm;
    if (a1 != 0) {
        trk->panX = (a1 - 0xC0) << 1;
        trk->flags |= 3;
    }
    TrkVolPitSet(frame->player, trk);
    *(u32 *)&chan->gateTime = *(u32 *)&trk->gateTime;
    chan->priority = frame->priority;
    chan->key = frame->key;
    r6v = (u32)tone;
    chan->type = ((struct ToneData *)r6v)->type;
    r7v = (u32)((struct ToneData *)r6v)->wav;
    chan->wav = (struct WaveData *)r7v;
    *(u32 *)&chan->attack = *(u32 *)&((struct ToneData *)r6v)->attack;
    *(u16 *)&chan->pseudoEchoVolume = *(u16 *)&trk->pseudoEchoVolume;
    a1 = chan->velocity;
    chan->rightVolume = (s32)(trk->volMR * a1) >> 7;
    chan->leftVolume = (s32)(trk->volML * a1) >> 7;
    sdkR3 = chan->key + *(s8 *)&trk->keyM;
    if ((s32)sdkR3 < 0)
        sdkR3 = 0;
    r6v = frame->cgb;
    if (r6v != 0) {
        r6v = (u32)tone;
        ((struct CgbChannel *)chan)->length = ((struct ToneData *)r6v)->length;
        a1 = ((struct ToneData *)r6v)->pan_sweep;
        if ((a1 & 0x80) || !(a1 & 0x70))
            a1 = 8;
        ((struct CgbChannel *)chan)->sweep = a1;
        a2 = trk->pitM;
        a1 = sdkR3;
        a0 = frame->cgb;
        sdkR3 = (u32)frame->sound->MidiKeyToCgbFreq;
        a0 = noteCgbFreq121(a0, a1, a2);
    } else {
        a0 = noteMidi121((struct WaveData *)r7v, sdkR3, trk->pitM);
    }
    chan->frequency = a0;
    chan->statusFlags = 0x80;
    trk->flags &= 0xF0;
ret:
    asm("add sp, #0x18\n\tpop {r0, r1, r2, r3, r4, r5, r6, r7}\n\tmov r8, r0\n\tmov r9, r1\n\tmov sl, r2\n\tmov fp, r3\n\tpop {r0}\n\tbx r0");
}
#else
INCLUDE_ASM("asm/nonmatchings/m4a_1_engine", ply_note);
#endif

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
