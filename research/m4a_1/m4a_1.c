/* Experimental C reconstruction from SS2 EU's original m4a_1 ASM.
 * This file is outside the normal build and makes no binary-match claim.
 * No external donor implementation is copied into this source. */
#include "m4a_1.h"

#define BYTE_AT(a) (*(volatile M4AExp_u8 *)(a))
#define HALF_AT(a) (*(volatile M4AExp_u16 *)(a))
#define WORD_AT(a) (*(volatile M4AExp_u32 *)(a))

void M4AExp_Clear64(M4AExp_u32 address)
{
    volatile M4AExp_u32 *words = (volatile M4AExp_u32 *)address;
    M4AExp_u32 i;
    for (i = 0; i < 16; i++)
        words[i] = 0;
}

M4AExp_u32 M4AExp_GuardRead(M4AExp_u32 source, M4AExp_u32 value)
{
    /* The original guards the SOURCE after loading, not the loaded target.
     * Keep the full branch contract, including its ROM-template anchor. */
    if ((source >> 25) != 0)
        return value;
    if (source < 0x080BB7E8U)
        return 0;
    if ((source >> 14) == 0)
        return value;
    return 0;
}

M4AExp_u32 M4AExp_ReadGuardedByte(M4AExp_u32 source)
{
    M4AExp_u32 value = BYTE_AT(source);
    return M4AExp_GuardRead(source, value);
}

M4AExp_u32 M4AExp_ReadTrackByteFromCursor(M4AExp_u32 track, M4AExp_u32 cursor)
{
    M4AExp_u32 value;
    WORD_AT(track + 0x40) = cursor + 1;
    value = BYTE_AT(cursor);
    return M4AExp_GuardRead(cursor, value);
}

M4AExp_u32 M4AExp_ReadTrackByte(M4AExp_u32 track)
{
    return M4AExp_ReadTrackByteFromCursor(track, WORD_AT(track + 0x40));
}

void M4AExp_UnlinkChannel(M4AExp_u32 channel)
{
    M4AExp_u32 track = WORD_AT(channel + 0x2C);
    M4AExp_u32 next;
    M4AExp_u32 previous;
    if (track == 0)
        return;
    next = WORD_AT(channel + 0x34);
    previous = WORD_AT(channel + 0x30);
    if (previous != 0)
        WORD_AT(previous + 0x34) = next;
    else
        WORD_AT(track + 0x20) = next;
    if (next != 0)
        WORD_AT(next + 0x30) = previous;
    WORD_AT(channel + 0x2C) = 0;
}

M4AExp_u32 M4AExp_ReadTrackByteUnguarded(M4AExp_u32 track)
{
    M4AExp_u32 cursor = WORD_AT(track + 0x40);
    WORD_AT(track + 0x40) = cursor + 1;
    return BYTE_AT(cursor);
}

void M4AExp_ClearModulation(M4AExp_u32 track)
{
    M4AExp_u32 changes;
    BYTE_AT(track + 0x16) = 0;
    BYTE_AT(track + 0x1A) = 0;
    changes = BYTE_AT(track + 0x18) == 0 ? 0x0C : 3;
    BYTE_AT(track) = BYTE_AT(track) | changes;
}

void M4AExp_Goto(M4AExp_u32 player, M4AExp_u32 track)
{
    M4AExp_u32 cursor = WORD_AT(track + 0x40);
    M4AExp_u32 target;
    /* Three upper bytes are unguarded; only the low byte uses the guard. */
    target = BYTE_AT(cursor + 3);
    target = (target << 8) | BYTE_AT(cursor + 2);
    target = (target << 8) | BYTE_AT(cursor + 1);
    target = (target << 8) | M4AExp_ReadGuardedByte(cursor);
    WORD_AT(track + 0x40) = target;
}

void M4AExp_PatternEnd(M4AExp_u32 player, M4AExp_u32 track)
{
    M4AExp_u32 level = BYTE_AT(track + 2);
    if (level != 0) {
        level--;
        BYTE_AT(track + 2) = level;
        WORD_AT(track + 0x40) = WORD_AT(track + 0x44 + level * 4);
    }
}

void M4AExp_Repeat(M4AExp_u32 player, M4AExp_u32 track)
{
    M4AExp_u32 cursor = WORD_AT(track + 0x40);
    M4AExp_u32 count = BYTE_AT(cursor);
    M4AExp_u32 repetitions;
    if (count == 0) {
        WORD_AT(track + 0x40) = cursor + 1;
        M4AExp_Goto(player, track);
        return;
    }
    /* STRB truncates storage, but the comparison retains the wide sum in ip. */
    repetitions = BYTE_AT(track + 3) + 1;
    BYTE_AT(track + 3) = repetitions;
    count = M4AExp_ReadTrackByte(track);
    if (repetitions < count) {
        M4AExp_Goto(player, track);
        return;
    }
    BYTE_AT(track + 3) = 0;
    WORD_AT(track + 0x40) = cursor + 5;
}

static void M4AExp_SetTrackParameter(M4AExp_u32 track, M4AExp_u32 offset,
                                   M4AExp_u32 bias, M4AExp_u32 changes)
{
    M4AExp_u32 value = M4AExp_ReadTrackByte(track);
    BYTE_AT(track + offset) = value - bias;
    if (changes != 0)
        BYTE_AT(track) = BYTE_AT(track) | changes;
}

M4AEXP_COMMAND(Priority) { M4AExp_SetTrackParameter(track, 0x1D, 0, 0); }
M4AEXP_COMMAND(KeyShift) { M4AExp_SetTrackParameter(track, 0x0A, 0, 0x0C); }
M4AEXP_COMMAND(Volume) { M4AExp_SetTrackParameter(track, 0x12, 0, 3); }
M4AEXP_COMMAND(Pan) { M4AExp_SetTrackParameter(track, 0x14, 0x40, 3); }
M4AEXP_COMMAND(Bend) { M4AExp_SetTrackParameter(track, 0x0E, 0x40, 0x0C); }
M4AEXP_COMMAND(BendRange) { M4AExp_SetTrackParameter(track, 0x0F, 0, 0x0C); }
M4AEXP_COMMAND(LfoDelay) { M4AExp_SetTrackParameter(track, 0x1B, 0, 0); }
M4AEXP_COMMAND(Tune) { M4AExp_SetTrackParameter(track, 0x0C, 0x40, 0x0C); }

M4AEXP_COMMAND(Tempo)
{
    M4AExp_u32 value = M4AExp_ReadTrackByte(track) << 1;
    HALF_AT(player + 0x1C) = value;
    value *= HALF_AT(player + 0x1E);
    HALF_AT(player + 0x20) = value >> 8;
}

M4AEXP_COMMAND(ModType)
{
    M4AExp_u32 value = M4AExp_ReadTrackByte(track);
    if (BYTE_AT(track + 0x18) != value) {
        BYTE_AT(track + 0x18) = value;
        BYTE_AT(track) = BYTE_AT(track) | 0x0F;
    }
}

M4AEXP_COMMAND(Port)
{
    M4AExp_u32 cursor = WORD_AT(track + 0x40);
    M4AExp_u32 reg = BYTE_AT(cursor);
    M4AExp_u32 value = M4AExp_ReadTrackByteFromCursor(track, cursor + 1);
    BYTE_AT(0x04000060U + reg) = value;
}

M4AEXP_COMMAND(LfoSpeed)
{
    M4AExp_u32 value = M4AExp_ReadTrackByteUnguarded(track);
    BYTE_AT(track + 0x19) = value;
    if (value == 0)
        M4AExp_ClearModulation(track);
}

M4AEXP_COMMAND(ModDepth)
{
    M4AExp_u32 value = M4AExp_ReadTrackByteUnguarded(track);
    BYTE_AT(track + 0x17) = value;
    if (value == 0)
        M4AExp_ClearModulation(track);
}

M4AEXP_COMMAND(Fine)
{
    M4AExp_u32 channel = WORD_AT(track + 0x20);
    M4AExp_u32 status;
    while (channel != 0) {
        status = BYTE_AT(channel);
        if (status & 0xC7)
            BYTE_AT(channel) = status | 0x40;
        M4AExp_UnlinkChannel(channel);
        channel = WORD_AT(channel + 0x34);
    }
    BYTE_AT(track) = 0;
}

M4AEXP_COMMAND(Pattern)
{
    M4AExp_u32 level = BYTE_AT(track + 2);
    M4AExp_u32 cursor;
    if (level >= 3) {
        M4AExp_Fine(player, track);
        return;
    }
    cursor = WORD_AT(track + 0x40);
    WORD_AT(track + 0x44 + level * 4) = cursor + 4;
    BYTE_AT(track + 2) = level + 1;
    M4AExp_Goto(player, track);
}

M4AEXP_COMMAND(Voice)
{
    M4AExp_u32 cursor = WORD_AT(track + 0x40);
    M4AExp_u32 index = BYTE_AT(cursor);
    M4AExp_u32 source;
    M4AExp_u32 value;
    WORD_AT(track + 0x40) = cursor + 1;
    source = WORD_AT(player + 0x30) + index * 12;
    value = WORD_AT(source);
    WORD_AT(track + 0x24) = M4AExp_GuardRead(source, value);
    value = WORD_AT(source + 4);
    WORD_AT(track + 0x28) = M4AExp_GuardRead(source, value);
    value = WORD_AT(source + 8);
    WORD_AT(track + 0x2C) = M4AExp_GuardRead(source, value);
}

M4AEXP_COMMAND(EndTie)
{
    M4AExp_u32 cursor = WORD_AT(track + 0x40);
    M4AExp_u32 key = BYTE_AT(cursor);
    M4AExp_u32 channel;
    M4AExp_u32 status;
    if (key < 0x80) {
        BYTE_AT(track + 5) = key;
        WORD_AT(track + 0x40) = cursor + 1;
    } else {
        key = BYTE_AT(track + 5);
    }
    channel = WORD_AT(track + 0x20);
    while (channel != 0) {
        status = BYTE_AT(channel);
        if ((status & 0x83) != 0 && (status & 0x40) == 0 && BYTE_AT(channel + 0x11) == key) {
            BYTE_AT(channel) = status | 0x40;
            return;
        }
        channel = WORD_AT(channel + 0x34);
    }
}

void M4AExp_SoundVSync(void)
{
    M4AExp_u32 sound = WORD_AT(0x03007FF0U);
    M4AExp_u32 ident = WORD_AT(sound);
    M4AExp_s32 counter;
    if ((M4AExp_u32)(ident - 0x68736D53U) > 1)
        return;
    counter = (M4AExp_s32)BYTE_AT(sound + 4) - 1;
    BYTE_AT(sound + 4) = counter;
    if (counter > 0)
        return;
    BYTE_AT(sound + 4) = BYTE_AT(sound + 0x0B);
    HALF_AT(0x040000C6U) = 0;
    HALF_AT(0x040000D2U) = 0;
    HALF_AT(0x040000C6U) = 0xB600;
    HALF_AT(0x040000D2U) = 0xB600;
}

M4AExp_u32 M4AExp_MultiplyHigh32(M4AExp_u32 left, M4AExp_u32 right)
{
    unsigned long long product = (unsigned long long)left * right;
    return (M4AExp_u32)(product >> 32);
}

void M4AExp_CopyJumpTable(M4AExp_u32 destination, M4AExp_u32 source)
{
    M4AExp_u32 i;
    M4AExp_u32 value;
    for (i = 0; i < 36; i++) {
        value = WORD_AT(source);
        WORD_AT(destination) = M4AExp_GuardRead(source, value);
        source += 4;
        destination += 4;
    }
}

M4AEXP_COMMAND(TrackStop)
{
    typedef void (*OscillatorOff)(M4AExp_u32 channel_type);
    M4AExp_u32 channel;
    M4AExp_u32 channel_type;
    M4AExp_u32 sound;
    OscillatorOff oscillator_off;
    if ((BYTE_AT(track) & 0x80) == 0)
        return;
    channel = WORD_AT(track + 0x20);
    while (channel != 0) {
        if (BYTE_AT(channel) != 0) {
            channel_type = BYTE_AT(channel + 1) & 7;
            if (channel_type != 0) {
                sound = WORD_AT(0x03007FF0U);
                oscillator_off = (OscillatorOff)WORD_AT(sound + 0x2C);
                oscillator_off(channel_type);
            }
            BYTE_AT(channel) = 0;
        }
        WORD_AT(channel + 0x2C) = 0;
        channel = WORD_AT(channel + 0x34);
    }
    WORD_AT(track + 0x20) = 0;
}
/* Adapted dependency from this repository's already matching src/m4a.c.
 * It uses the reconstructed multiply, rather than invoking target-module ASM.
 * This is dependency reuse, not another newly reconstructed original routine. */
M4AExp_u32 M4AExp_MidiKeyToFreqDependency(M4AExp_u32 wave,
                                        M4AExp_u32 key, M4AExp_u32 fine)
{
    M4AExp_u32 first;
    M4AExp_u32 second;
    key = (M4AExp_u8)key;
    fine = (M4AExp_u8)fine;
    if (key > 178) {
        key = 178;
        fine = 255;
    }
    first = BYTE_AT(0x080BB878U + key);
    first = WORD_AT(0x080BB92CU + (first & 15) * 4) >> (first >> 4);
    second = BYTE_AT(0x080BB879U + key);
    second = WORD_AT(0x080BB92CU + (second & 15) * 4) >> (second >> 4);
    return M4AExp_MultiplyHigh32(WORD_AT(wave + 4), first +
        M4AExp_MultiplyHigh32(second - first, fine << 24));
}

/* services: three GBA32 callbacks: ClearChain, TrkVolPitSet, MidiKeyToFreq.
 * The caller resolves the dynamic jump table, including any overrides.
 * No assumption that the original serialized ASM callbacks are C bindings. */
void M4AExp_Note(M4AExp_u32 length_index, M4AExp_u32 player,
                 M4AExp_u32 track, M4AExp_u32 services)
{
    typedef void (*ClearChainService)(M4AExp_u32);
    typedef void (*TrackService)(M4AExp_u32, M4AExp_u32);
    typedef M4AExp_u32 (*FrequencyService)(M4AExp_u32, M4AExp_u32, M4AExp_u32);
    M4AExp_u32 sound;
    M4AExp_u32 cursor;
    M4AExp_u32 value;
    M4AExp_u32 tone;
    M4AExp_u32 outer_type;
    M4AExp_u32 key;
    M4AExp_u32 rhythm_pan;
    M4AExp_u32 priority;
    M4AExp_u32 channel_type;
    M4AExp_u32 channel;
    M4AExp_u32 chosen;
    M4AExp_u32 best_priority;
    M4AExp_u32 best_owner;
    M4AExp_u32 released;
    M4AExp_s32 remaining;
    M4AExp_u32 wave;
    M4AExp_s32 pitch_key;
    M4AExp_u32 frequency;
    sound = WORD_AT(0x03007FF0U);
    BYTE_AT(track + 4) = BYTE_AT(0x080BBA5CU + length_index);
    cursor = WORD_AT(track + 0x40);
    value = BYTE_AT(cursor);
    if (value < 0x80) {
        BYTE_AT(track + 5) = value;
        cursor++;
        value = BYTE_AT(cursor);
        if (value < 0x80) {
            BYTE_AT(track + 6) = value;
            cursor++;
            value = BYTE_AT(cursor);
            if (value < 0x80) {
                BYTE_AT(track + 4) += value;
                cursor++;
            }
        }
        WORD_AT(track + 0x40) = cursor;
    }
    rhythm_pan = 0;
    tone = track + 0x24;
    outer_type = BYTE_AT(tone);
    key = BYTE_AT(track + 5);
    if (outer_type & 0xC0) {
        value = key;
        if (outer_type & 0x40)
            value = BYTE_AT(WORD_AT(track + 0x2C) + key);
        tone = WORD_AT(track + 0x28) + value * 12;
        if (BYTE_AT(tone) & 0xC0)
            return;
        if (outer_type & 0x80) {
            value = BYTE_AT(tone + 3);
            if (value & 0x80)
                rhythm_pan = value;
            key = BYTE_AT(tone + 1);
        }
    }
    priority = BYTE_AT(track + 0x1D) + BYTE_AT(player + 9);
    if (priority > 255)
        priority = 255;
    channel_type = BYTE_AT(tone) & 7;
    if (channel_type != 0) {
        channel = WORD_AT(sound + 0x1C);
        if (channel == 0)
            return;
        channel += (channel_type - 1) * 0x40;
        value = BYTE_AT(channel);
        if ((value & 0xC7) && !(value & 0x40)) {
            value = BYTE_AT(channel + 0x13);
            if (value > priority)
                return;
            if (value == priority && WORD_AT(channel + 0x2C) < track)
                return;
        }
    } else {
        best_priority = priority;
        best_owner = track;
        released = 0;
        chosen = 0;
        remaining = BYTE_AT(sound + 6);
        channel = sound + 0x50;
        do {
            value = BYTE_AT(channel);
            if ((value & 0xC7) == 0) {
                chosen = channel;
                break;
            }
            if (value & 0x40) {
                if (released == 0) {
                    released = 1;
                    best_priority = BYTE_AT(channel + 0x13);
                    best_owner = WORD_AT(channel + 0x2C);
                    chosen = channel;
                    goto next_channel;
                }
            } else if (released != 0) {
                goto next_channel;
            }
            value = BYTE_AT(channel + 0x13);
            if (value < best_priority) {
                best_priority = value;
                best_owner = WORD_AT(channel + 0x2C);
                chosen = channel;
            } else if (value == best_priority) {
                value = WORD_AT(channel + 0x2C);
                if (value >= best_owner) {
                    best_owner = value;
                    chosen = channel;
                }
            }
next_channel:
            channel += 0x40;
            remaining--;
        } while (remaining > 0);
        channel = chosen;
        if (channel == 0)
            return;
    }
    ((ClearChainService)WORD_AT(services))(channel);
    WORD_AT(channel + 0x30) = 0;
    value = WORD_AT(track + 0x20);
    WORD_AT(channel + 0x34) = value;
    if (value != 0)
        WORD_AT(value + 0x30) = channel;
    WORD_AT(track + 0x20) = channel;
    WORD_AT(channel + 0x2C) = track;
    value = BYTE_AT(track + 0x1B);
    BYTE_AT(track + 0x1C) = value;
    if (value != 0)
        M4AExp_ClearModulation(track);
    if (rhythm_pan != 0) {
        BYTE_AT(track + 0x15) = (rhythm_pan - 0xC0) * 2;
        BYTE_AT(track) |= 3;
    }
    ((TrackService)WORD_AT(services + 4))(player, track);
    WORD_AT(channel + 0x10) = WORD_AT(track + 4);
    BYTE_AT(channel + 0x13) = priority;
    BYTE_AT(channel + 8) = key;
    BYTE_AT(channel + 1) = BYTE_AT(tone);
    wave = WORD_AT(tone + 4);
    WORD_AT(channel + 0x24) = wave;
    WORD_AT(channel + 4) = WORD_AT(tone + 8);
    HALF_AT(channel + 0x0C) = HALF_AT(track + 0x1E);
    value = BYTE_AT(channel + 0x12);
    BYTE_AT(channel + 2) = (BYTE_AT(track + 0x10) * value) >> 7;
    BYTE_AT(channel + 3) = (BYTE_AT(track + 0x11) * value) >> 7;
    pitch_key = BYTE_AT(channel + 8) + (M4AExp_s8)BYTE_AT(track + 8);
    if (pitch_key < 0)
        pitch_key = 0;
    if (channel_type != 0) {
        BYTE_AT(channel + 0x1E) = BYTE_AT(tone + 2);
        value = BYTE_AT(tone + 3);
        if ((value & 0x80) || !(value & 0x70))
            value = 8;
        BYTE_AT(channel + 0x1F) = value;
        frequency = ((FrequencyService)WORD_AT(sound + 0x30))(
            channel_type, pitch_key, BYTE_AT(track + 9));
    } else {
        frequency = ((FrequencyService)WORD_AT(services + 8))(
            wave, pitch_key, BYTE_AT(track + 9));
    }
    WORD_AT(channel + 0x20) = frequency;
    BYTE_AT(channel) = 0x80;
    BYTE_AT(track) &= 0xF0;
}
/* Dependency reuse from src/m4a.c:FadeOutBody, with TrackStop bound to C. */
void M4AExp_FadeOutDependency(M4AExp_u32 player)
{
    M4AExp_u32 track;
    M4AExp_s32 count;
    M4AExp_u32 volume;
    if (HALF_AT(player + 0x24) == 0)
        return;
    HALF_AT(player + 0x26)--;
    if (HALF_AT(player + 0x26) != 0)
        return;
    volume = (M4AExp_u16)(HALF_AT(player + 0x28) - 16);
    HALF_AT(player + 0x28) = volume;
    count = BYTE_AT(player + 8);
    track = WORD_AT(player + 0x2C);
    if ((M4AExp_s16)volume <= 0) {
        while (count-- > 0) {
            M4AExp_TrackStop(player, track);
            BYTE_AT(track) = 0;
            track += 0x50;
        }
        return;
    }
    HALF_AT(player + 0x26) = HALF_AT(player + 0x24);
    while (count-- > 0) {
        if (BYTE_AT(track) & 0x80) {
            BYTE_AT(track + 0x13) = volume >> 2;
            BYTE_AT(track) |= 3;
        }
        track += 0x50;
    }
}

void M4AExp_MPlayMain(M4AExp_u32 player, M4AExp_u32 services)
{
    typedef void (*OneArgument)(M4AExp_u32);
    typedef void (*TwoArguments)(M4AExp_u32, M4AExp_u32);
    typedef void (*NoteCommand)(M4AExp_u32, M4AExp_u32, M4AExp_u32, M4AExp_u32);
    typedef M4AExp_u32 (*Frequency)(M4AExp_u32, M4AExp_u32, M4AExp_u32);
    M4AExp_u32 sound;
    M4AExp_u32 track;
    M4AExp_u32 channel;
    M4AExp_u32 flags;
    M4AExp_u32 mask;
    M4AExp_u32 active;
    M4AExp_u32 command;
    M4AExp_u32 cursor;
    M4AExp_u32 table;
    M4AExp_u32 value;
    M4AExp_u32 phase;
    M4AExp_u32 type;
    M4AExp_u32 frequency;
    M4AExp_u32 tempo;
    M4AExp_s32 count;
    M4AExp_s32 modulation;
    M4AExp_s32 key;
    if (WORD_AT(player + 0x34) != 0x68736D53U)
        return;
    WORD_AT(player + 0x34)++;
    value = WORD_AT(player + 0x38);
    if (value != 0)
        ((TwoArguments)value)(WORD_AT(player + 0x3C), services);
    if ((M4AExp_s32)WORD_AT(player + 4) < 0)
        goto unlock;
    sound = WORD_AT(0x03007FF0U);
    ((OneArgument)WORD_AT(services + 12))(player);
    tempo = HALF_AT(player + 0x22) + HALF_AT(player + 0x20);
    HALF_AT(player + 0x22) = tempo;
    while (tempo >= 150) {
        count = BYTE_AT(player + 8);
        track = WORD_AT(player + 0x2C);
        mask = 1;
        active = 0;
        do {
            flags = BYTE_AT(track);
            if (flags & 0x80) {
                active |= mask;
                channel = WORD_AT(track + 0x20);
                while (channel != 0) {
                    value = BYTE_AT(channel);
                    if (value & 0xC7) {
                        if (BYTE_AT(channel + 0x10) != 0) {
                            BYTE_AT(channel + 0x10)--;
                            if (BYTE_AT(channel + 0x10) == 0)
                                BYTE_AT(channel) = value | 0x40;
                        }
                    } else {
                        ((OneArgument)WORD_AT(services))(channel);
                    }
                    channel = WORD_AT(channel + 0x34);
                }
                if (BYTE_AT(track) & 0x40) {
                    ((OneArgument)WORD_AT(services + 16))(track);
                    BYTE_AT(track) = 0x80;
                    BYTE_AT(track + 0x0F) = 2;
                    BYTE_AT(track + 0x13) = 0x40;
                    BYTE_AT(track + 0x19) = 0x16;
                    BYTE_AT(track + 0x24) = 1;
                }
                while (BYTE_AT(track + 1) == 0) {
                    cursor = WORD_AT(track + 0x40);
                    command = BYTE_AT(cursor);
                    if (command < 0x80) {
                        command = BYTE_AT(track + 7);
                    } else {
                        WORD_AT(track + 0x40) = cursor + 1;
                        if (command >= 0xBD)
                            BYTE_AT(track + 7) = command;
                    }
                    if (command >= 0xCF) {
                        ((NoteCommand)WORD_AT(sound + 0x38))(
                            command - 0xCF, player, track, services);
                    } else if (command > 0xB0) {
                        value = command - 0xB1;
                        BYTE_AT(player + 0x0A) = value;
                        table = WORD_AT(sound + 0x34);
                        ((TwoArguments)WORD_AT(table + value * 4))(player, track);
                        if (BYTE_AT(track) == 0)
                            goto next_track;
                    } else {
                        BYTE_AT(track + 1) = BYTE_AT(0x080BBA5CU + command - 0x80);
                    }
                }
                BYTE_AT(track + 1)--;
                value = BYTE_AT(track + 0x19);
                if (value != 0 && BYTE_AT(track + 0x17) != 0) {
                    if (BYTE_AT(track + 0x1C) != 0) {
                        BYTE_AT(track + 0x1C)--;
                    } else {
                        phase = BYTE_AT(track + 0x1A) + value;
                        BYTE_AT(track + 0x1A) = phase;
                        if ((M4AExp_s8)(phase - 0x40) < 0)
                            modulation = (M4AExp_s8)phase;
                        else
                            modulation = 0x80 - phase;
                        modulation = (M4AExp_s32)(BYTE_AT(track + 0x17) * modulation) >> 6;
                        if ((M4AExp_u8)(BYTE_AT(track + 0x16) ^ modulation) != 0) {
                            BYTE_AT(track + 0x16) = modulation;
                            BYTE_AT(track) |= BYTE_AT(track + 0x18) == 0 ? 12 : 3;
                        }
                    }
                }
            }
next_track:
            count--;
            track += 0x50;
            mask <<= 1;
        } while (count > 0);
        WORD_AT(player + 0x0C)++;
        if (active == 0) {
            WORD_AT(player + 4) = 0x80000000U;
            goto unlock;
        }
        WORD_AT(player + 4) = active;
        tempo = HALF_AT(player + 0x22) - 150;
        HALF_AT(player + 0x22) = tempo;
    }
    count = BYTE_AT(player + 8);
    track = WORD_AT(player + 0x2C);
    do {
        flags = BYTE_AT(track);
        if ((flags & 0x80) && (flags & 15)) {
            ((TwoArguments)WORD_AT(services + 4))(player, track);
            channel = WORD_AT(track + 0x20);
            while (channel != 0) {
                if ((BYTE_AT(channel) & 0xC7) == 0) {
                    ((OneArgument)WORD_AT(services))(channel);
                } else {
                    type = BYTE_AT(channel + 1) & 7;
                    flags = BYTE_AT(track);
                    if (flags & 3) {
                        value = BYTE_AT(channel + 0x12);
                        BYTE_AT(channel + 2) = (BYTE_AT(track + 0x10) * value) >> 7;
                        BYTE_AT(channel + 3) = (BYTE_AT(track + 0x11) * value) >> 7;
                        if (type != 0)
                            BYTE_AT(channel + 0x1D) |= 1;
                    }
                    if (flags & 12) {
                        key = BYTE_AT(channel + 8) + (M4AExp_s8)BYTE_AT(track + 8);
                        if (key < 0)
                            key = 0;
                        if (type != 0) {
                            frequency = ((Frequency)WORD_AT(sound + 0x30))(
                                type, key, BYTE_AT(track + 9));
                            BYTE_AT(channel + 0x1D) |= 2;
                        } else {
                            frequency = ((Frequency)WORD_AT(services + 8))(
                                WORD_AT(channel + 0x24), key, BYTE_AT(track + 9));
                        }
                        WORD_AT(channel + 0x20) = frequency;
                    }
                }
                channel = WORD_AT(channel + 0x34);
            }
            BYTE_AT(track) &= 0xF0;
        }
        count--;
        track += 0x50;
    } while (count > 0);
unlock:
    WORD_AT(player + 0x34) = 0x68736D53U;
}
/* One channel's PCM contribution. Packed ARM rotates place each contribution
 * in the high byte; after four rotations this is byte-wise modular addition.
 * The signed product is explicitly reduced to ARM32 before shifting. */
static void MixChannel(M4AExp_u32 channel, M4AExp_u32 output,
                       M4AExp_u32 count, M4AExp_u32 loop_start,
                       M4AExp_u32 loop_length, M4AExp_u32 div_frequency)
{
    M4AExp_u32 remaining;
    M4AExp_u32 source;
    M4AExp_u32 fraction;
    M4AExp_u32 increment;
    M4AExp_u32 advance;
    M4AExp_u32 i;
    M4AExp_u32 fixed;
    M4AExp_u32 right;
    M4AExp_u32 left;
    M4AExp_s32 sample;
    M4AExp_s32 difference;
    M4AExp_s32 product;
    M4AExp_u32 overshoot;
    remaining = WORD_AT(channel + 0x18);
    source = WORD_AT(channel + 0x28);
    fraction = WORD_AT(channel + 0x1C);
    increment = div_frequency * WORD_AT(channel + 0x20);
    fixed = BYTE_AT(channel + 1) & 8;
    right = BYTE_AT(channel + 0x0A);
    left = BYTE_AT(channel + 0x0B);
    /* Original packed loops operate in groups of four output bytes. */
    count = (count + 3) & ~3U;
    for (i = 0; i < count; i++) {
        sample = (M4AExp_s8)BYTE_AT(source);
        if (fixed == 0) {
            difference = (M4AExp_s8)BYTE_AT(source + 1) - sample;
            product = (M4AExp_s32)(fraction * (M4AExp_u32)difference);
            sample += product >> 23;
        }
        product = (M4AExp_s32)((M4AExp_u32)sample * right);
        BYTE_AT(output + i) += product >> 8;
        product = (M4AExp_s32)((M4AExp_u32)sample * left);
        BYTE_AT(output + 0x630 + i) += product >> 8;
        if (fixed != 0) {
            source++;
            remaining--;
            if (remaining == 0) {
                if (loop_length == 0) {
                    BYTE_AT(channel) = 0;
                    return;
                }
                source = loop_start;
                remaining = loop_length;
            }
        } else {
            fraction += increment;
            advance = fraction >> 23;
            if (advance != 0) {
                fraction &= ~0x3F800000U;
                if ((M4AExp_s32)(remaining - advance) <= 0) {
                    if (loop_length == 0) {
                        BYTE_AT(channel) = 0;
                        return;
                    }
                    overshoot = advance - remaining;
                    remaining -= advance;
                    do {
                        remaining += loop_length;
                        if ((M4AExp_s32)remaining > 0)
                            break;
                        overshoot -= loop_length;
                    } while (1);
                    source = loop_start + overshoot;
                } else {
                    remaining -= advance;
                    source += advance;
                }
            }
        }
    }
    if (fixed == 0)
        WORD_AT(channel + 0x1C) = fraction;
    WORD_AT(channel + 0x18) = remaining;
    WORD_AT(channel + 0x28) = source;
}

/* Ordinary C contract replaces shared stack/high-register/ARM-entry ABI.
 * It does not implement executable IWRAM relocation or hardware timing. */
void M4AExp_SoundMainRAM(M4AExp_u32 sound, M4AExp_u32 output,
                         M4AExp_u32 count, M4AExp_u32 line_limit)
{
    M4AExp_u32 i;
    M4AExp_u32 next_buffer;
    M4AExp_u32 reverb;
    M4AExp_u32 clear_bytes;
    M4AExp_u32 channel;
    M4AExp_u32 wave;
    M4AExp_u32 status;
    M4AExp_u32 envelope;
    M4AExp_u32 value;
    M4AExp_u32 loop_start;
    M4AExp_u32 loop_length;
    M4AExp_s32 sum;
    M4AExp_s32 channels;
    reverb = BYTE_AT(sound + 5);
    if (reverb != 0) {
        next_buffer = BYTE_AT(sound + 4) == 2 ? sound + 0x350 : output + count;
        i = 0;
        do {
            sum = (M4AExp_s8)BYTE_AT(output + i) +
                  (M4AExp_s8)BYTE_AT(output + 0x630 + i) +
                  (M4AExp_s8)BYTE_AT(next_buffer + i) +
                  (M4AExp_s8)BYTE_AT(next_buffer + 0x630 + i);
            sum = (sum * (M4AExp_s32)reverb) >> 9;
            if (sum & 0x80)
                sum++;
            BYTE_AT(output + i) = sum;
            BYTE_AT(output + 0x630 + i) = sum;
            i++;
        } while ((M4AExp_s32)(count - i) > 0);
    } else {
        clear_bytes = count & ~15U;
        if (clear_bytes == 0)
            clear_bytes = 16;
        clear_bytes += count & 12;
        for (i = 0; i < clear_bytes; i += 4) {
            WORD_AT(output + i) = 0;
            WORD_AT(output + 0x630 + i) = 0;
        }
    }
    channels = BYTE_AT(sound + 6);
    channel = sound + 0x50;
    do {
        wave = WORD_AT(channel + 0x24);
        if (line_limit != 0) {
            value = BYTE_AT(0x04000006U);
            if (value < 160)
                value += 228;
            if (value >= line_limit)
                break;
        }
        status = BYTE_AT(channel);
        if ((status & 0xC7) == 0)
            goto next_pcm_channel;
        if (status & 0x80) {
            if (status & 0x40)
                goto stop_pcm_channel;
            status = 3;
            BYTE_AT(channel) = status;
            WORD_AT(channel + 0x28) = wave + 0x10;
            WORD_AT(channel + 0x18) = WORD_AT(wave + 0x0C);
            envelope = 0;
            BYTE_AT(channel + 9) = 0;
            WORD_AT(channel + 0x1C) = 0;
            if (BYTE_AT(wave + 3) & 0xC0) {
                status |= 0x10;
                BYTE_AT(channel) = status;
            }
            goto attack;
        }
        envelope = BYTE_AT(channel + 9);
        if (status & 4) {
            value = BYTE_AT(channel + 0x0D);
            BYTE_AT(channel + 0x0D) = value - 1;
            if (value <= 1)
                goto stop_pcm_channel;
            goto apply_envelope;
        }
        if (status & 0x40) {
            envelope = (envelope * BYTE_AT(channel + 7)) >> 8;
            if (envelope <= BYTE_AT(channel + 0x0C))
                goto pseudo_echo;
            goto apply_envelope;
        }
        value = status & 3;
        if (value == 2) {
            envelope = (envelope * BYTE_AT(channel + 5)) >> 8;
            value = BYTE_AT(channel + 6);
            if (envelope > value)
                goto apply_envelope;
            envelope = value;
            if (envelope == 0)
                goto pseudo_echo;
            BYTE_AT(channel) = --status;
        } else if (value == 3) {
attack:
            envelope += BYTE_AT(channel + 4);
            if (envelope >= 255) {
                envelope = 255;
                BYTE_AT(channel) = --status;
            }
        }
        goto apply_envelope;
pseudo_echo:
        envelope = BYTE_AT(channel + 0x0C);
        if (envelope == 0)
            goto stop_pcm_channel;
        status |= 4;
        BYTE_AT(channel) = status;
apply_envelope:
        BYTE_AT(channel + 9) = envelope;
        value = ((BYTE_AT(sound + 7) + 1) * envelope) >> 4;
        BYTE_AT(channel + 0x0A) = (BYTE_AT(channel + 2) * value) >> 8;
        BYTE_AT(channel + 0x0B) = (BYTE_AT(channel + 3) * value) >> 8;
        loop_start = 0;
        loop_length = 0;
        if (status & 0x10) {
            loop_start = wave + 0x10 + WORD_AT(wave + 8);
            loop_length = WORD_AT(wave + 0x0C) - WORD_AT(wave + 8);
        }
        MixChannel(channel, output, count, loop_start, loop_length, WORD_AT(sound + 0x18));
        goto next_pcm_channel;
stop_pcm_channel:
        BYTE_AT(channel) = 0;
next_pcm_channel:
        channel += 0x40;
        channels--;
    } while (channels > 0);
    WORD_AT(sound) = 0x68736D53U;
}

void M4AExp_SoundMain(M4AExp_u32 services)
{
    typedef void (*PlayerCallback)(M4AExp_u32, M4AExp_u32);
    typedef void (*SoundCallback)(void);
    M4AExp_u32 sound;
    M4AExp_u32 line_limit;
    M4AExp_u32 line;
    M4AExp_u32 callback;
    M4AExp_u32 count;
    M4AExp_u32 output;
    M4AExp_u32 counter;
    sound = WORD_AT(0x03007FF0U);
    if (WORD_AT(sound) != 0x68736D53U)
        return;
    WORD_AT(sound)++;
    line_limit = BYTE_AT(sound + 0x0C);
    if (line_limit != 0) {
        line = BYTE_AT(0x04000006U);
        if (line < 160)
            line += 228;
        line_limit += line;
    }
    callback = WORD_AT(sound + 0x20);
    if (callback != 0)
        ((PlayerCallback)callback)(WORD_AT(sound + 0x24), services);
    ((SoundCallback)WORD_AT(sound + 0x28))();
    count = WORD_AT(sound + 0x10);
    output = sound + 0x350;
    counter = BYTE_AT(sound + 4);
    if (counter > 1)
        output += (BYTE_AT(sound + 0x0B) - (counter - 1)) * count;
    M4AExp_SoundMainRAM(sound, output, count, line_limit);
}
/* Explicit EU-revision callback migration. Unknown RAM overrides are preserved;
 * callers must provide a compatible C service for overrides with special ABI. */
static M4AExp_u32 RebindCommand(M4AExp_u32 original)
{
    switch (original) {
    case 0x080B6949U: return (M4AExp_u32)M4AExp_Fine;
    case 0x080B69B9U: return (M4AExp_u32)M4AExp_Goto;
    case 0x080B69D9U: return (M4AExp_u32)M4AExp_Pattern;
    case 0x080B69F5U: return (M4AExp_u32)M4AExp_PatternEnd;
    case 0x080B6A09U: return (M4AExp_u32)M4AExp_Repeat;
    case 0x080B6A39U: return (M4AExp_u32)M4AExp_Priority;
    case 0x080B6A45U: return (M4AExp_u32)M4AExp_Tempo;
    case 0x080B6A59U: return (M4AExp_u32)M4AExp_KeyShift;
    case 0x080B6A6DU: return (M4AExp_u32)M4AExp_Voice;
    case 0x080B6A9DU: return (M4AExp_u32)M4AExp_Volume;
    case 0x080B6AB1U: return (M4AExp_u32)M4AExp_Pan;
    case 0x080B6AC5U: return (M4AExp_u32)M4AExp_Bend;
    case 0x080B6AD9U: return (M4AExp_u32)M4AExp_BendRange;
    case 0x080B70A5U: return (M4AExp_u32)M4AExp_LfoSpeed;
    case 0x080B6AEDU: return (M4AExp_u32)M4AExp_LfoDelay;
    case 0x080B70B9U: return (M4AExp_u32)M4AExp_ModDepth;
    case 0x080B6AF9U: return (M4AExp_u32)M4AExp_ModType;
    case 0x080B6B11U: return (M4AExp_u32)M4AExp_Tune;
    case 0x080B6B25U: return (M4AExp_u32)M4AExp_Port;
    case 0x080B703DU: return (M4AExp_u32)M4AExp_EndTie;
    case 0x080B6DE1U: return (M4AExp_u32)M4AExp_TrackStop;
    case 0x080B6929U: return (M4AExp_u32)M4AExp_UnlinkChannel;
    case 0x080B6911U: return (M4AExp_u32)M4AExp_Clear64;
    default: return original;
    }
}

void M4AExp_BindKnownJumpTable(M4AExp_u32 table)
{
    M4AExp_u32 i;
    for (i = 0; i < 36; i++)
        WORD_AT(table + i * 4) = RebindCommand(WORD_AT(table + i * 4));
}

void M4AExp_BindKnownSoundCallbacks(M4AExp_u32 sound)
{
    if (WORD_AT(sound + 0x20) == 0x080B6B75U)
        WORD_AT(sound + 0x20) = (M4AExp_u32)M4AExp_MPlayMain;
    if (WORD_AT(sound + 0x38) == 0x080B6E25U)
        WORD_AT(sound + 0x38) = (M4AExp_u32)M4AExp_Note;
}

void M4AExp_BindKnownPlayerCallback(M4AExp_u32 player)
{
    if (WORD_AT(player + 0x38) == 0x080B6B75U)
        WORD_AT(player + 0x38) = (M4AExp_u32)M4AExp_MPlayMain;
}
void M4AExp_InitDefaultServices(M4AExp_u32 services, M4AExp_u32 table)
{
    M4AExp_u32 fade;
    WORD_AT(services) = WORD_AT(table + 34 * 4);
    WORD_AT(services + 4) = WORD_AT(table + 33 * 4);
    WORD_AT(services + 8) = (M4AExp_u32)M4AExp_MidiKeyToFreqDependency;
    fade = WORD_AT(table + 32 * 4);
    if (fade == 0x080B7995U)
        fade = (M4AExp_u32)M4AExp_FadeOutDependency;
    WORD_AT(services + 12) = fade;
    WORD_AT(services + 16) = WORD_AT(table + 35 * 4);
}
