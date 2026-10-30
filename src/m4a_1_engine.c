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
/* Typed SDK draft; bytes and register/frame ABI do not match yet. */
extern const u8 noteClock121[] asm("gUnk_080BBA5C");
extern void clear_modM(void *, struct MusicPlayerTrack *);
extern u32 noteCallR3_121(u32,u32,u32) asm("sub_080B6DD0");
extern u32 noteMidi121(struct WaveData *,u32,u32) asm("MidiKeyToFreq");
void ply_note(u32 cmd, struct MusicPlayerInfo *player, struct MusicPlayerTrack *track)
{
    struct SoundInfo *sound;
    struct ToneData *tone;
    struct SoundChannel *channel, *selected;
    struct MusicPlayerTrack *owner;
    struct WaveData *wave;
    u8 *cursor;
    u32 rhythm, key, priority, cgb, type, value, flags, release, currentPriority;
    s32 remaining, pitch;
    sound = sdkSoundInfo;
    { register u32 gate asm("r0")=noteClock121[cmd]; asm("" : "+r"(gate)); track->gateTime=gate; }
    {
        register u8 *stream asm("r3") = track->cmdPtr;
        register u32 byte asm("r0") = *stream;
        u32 threshold = 0x80;
        if (byte >= threshold) goto stream_done121;
        track->key = byte;
        stream++;
        byte = *stream;
        if (byte >= threshold) goto stream_save121;
        track->velocity = byte;
        stream++;
        byte = *stream;
        if (byte >= threshold) goto stream_save121;
        *(volatile u8 *)&track->gateTime += byte;
        stream++;
stream_save121:
        track->cmdPtr = stream;
stream_done121:
        ;
    }
    rhythm = 0;
    type = track->tone.type;
    if (type & 0xC0) {
        key = track->key;
        if (type & 0x40) value = (*(u8 **)&track->tone.attack)[key];
        else value = key;
        tone = ((struct ToneData *)track->tone.wav) + value;
        if (tone->type & 0xC0) return;
        if (type & 0x80) {
            value = tone->pan_sweep;
            if (value & 0x80) rhythm = value;
            key = tone->key;
        }
    } else {
        tone = &track->tone;
        key = track->key;
    }
    priority = player->priority + track->priority;
    if (priority > 255) priority = 255;
    { register u32 mask asm("r6") = 7; register u32 toneType asm("r0") = tone->type; asm("" : "+r"(mask), "+r"(toneType)); mask &= toneType; asm("" : "+r"(mask)); cgb = mask; }
    if (cgb != 0) {
        channel = (struct SoundChannel *)sound->cgbChans;
        if (channel == 0) return;
        channel += cgb - 1;
        flags = channel->statusFlags;
        if (!(flags & 0xC7) || (flags & 0x40)) goto chosen;
        value = channel->priority;
        if (value < priority) goto chosen;
        if (value != priority) return;
        if ((u32)channel->track >= (u32)track) goto chosen;
        return;
    }
    value = priority;
    owner = track;
    release = 0;
    selected = 0;
    remaining = sound->maxChans;
    channel = sound->chans;
next_channel:
    flags = channel->statusFlags;
    if (!(flags & 0xC7)) goto chosen;
    if (flags & 0x40) {
        if (release == 0) {
            release++;
            value = channel->priority;
            owner = channel->track;
            goto select_channel;
        }
        goto compare_channel;
    }
    if (release != 0) goto advance_channel;
compare_channel:
    currentPriority = channel->priority;
    if (currentPriority < value) {
        value = currentPriority;
        owner = channel->track;
        goto select_channel;
    }
    if (currentPriority > value) goto advance_channel;
    if ((u32)channel->track > (u32)owner) {
        owner = channel->track;
        goto select_channel;
    }
    if ((u32)channel->track < (u32)owner) goto advance_channel;
select_channel:
    selected = channel;
advance_channel:
    channel++;
    if (--remaining > 0) goto next_channel;
    channel = selected;
    if (channel == 0) return;
chosen:
    ClearChain(channel);
    channel->prevChannelPointer = 0;
    channel->nextChannelPointer = track->chan;
    if (track->chan != 0) track->chan->prevChannelPointer = channel;
    track->chan = channel;
    channel->track = track;
    value = track->lfoDelay;
    track->lfoDelayC = value;
    if (value != 0) clear_modM((void *)value,track);
    if (rhythm != 0) {
        track->panX = (rhythm - 0xC0) * 2;
        track->flags |= 3;
    }
    TrkVolPitSet(player,track);
    *(u32 *)&channel->gateTime = *(u32 *)&track->gateTime;
    channel->priority = priority;
    channel->key = key;
    channel->type = tone->type;
    wave = tone->wav;
    channel->wav = wave;
    *(u32 *)&channel->attack = *(u32 *)&tone->attack;
    *(u16 *)&channel->pseudoEchoVolume = *(u16 *)&track->pseudoEchoVolume;
    value = channel->velocity;
    channel->rightVolume = ((s32)(value * track->volMR)) >> 7;
    channel->leftVolume = ((s32)(value * track->volML)) >> 7;
    pitch = channel->key + (s8)track->keyM;
    if (pitch < 0) pitch = 0;
    if (cgb != 0) {
        ((struct CgbChannel *)channel)->length = tone->length;
        value = tone->pan_sweep;
        if ((value & 0x80) || !(value & 0x70)) value = 8;
        ((struct CgbChannel *)channel)->sweep = value;
        sdkR3 = (u32)sound->MidiKeyToCgbFreq;
        value = noteCallR3_121(cgb,pitch,track->pitM);
    } else value = noteMidi121(wave,pitch,track->pitM);
    channel->frequency = value;
    channel->statusFlags = 0x80;
    track->flags &= 0xF0;
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
