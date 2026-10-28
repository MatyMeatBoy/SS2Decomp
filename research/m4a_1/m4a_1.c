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
