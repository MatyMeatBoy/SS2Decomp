#ifndef M4AEXP_CORE_H
#define M4AEXP_CORE_H

/* Serialized GBA addresses stay 32 bit. This backend executes on ARM/GBA;
 * a future native host backend must translate addresses instead of casting them. */
typedef unsigned char M4AExp_u8;
typedef unsigned short M4AExp_u16;
typedef unsigned int M4AExp_u32;
typedef signed char M4AExp_s8;
typedef signed short M4AExp_s16;
typedef signed int M4AExp_s32;
typedef char M4AExp_assert_u32_size[sizeof(M4AExp_u32) == 4 ? 1 : -1];

void M4AExp_Clear64(M4AExp_u32 address);
M4AExp_u32 M4AExp_GuardRead(M4AExp_u32 source, M4AExp_u32 value);
M4AExp_u32 M4AExp_ReadGuardedByte(M4AExp_u32 source);
M4AExp_u32 M4AExp_ReadTrackByte(M4AExp_u32 track);
M4AExp_u32 M4AExp_ReadTrackByteFromCursor(M4AExp_u32 track, M4AExp_u32 cursor);
void M4AExp_UnlinkChannel(M4AExp_u32 channel);
M4AExp_u32 M4AExp_ReadTrackByteUnguarded(M4AExp_u32 track);
void M4AExp_ClearModulation(M4AExp_u32 track);
void M4AExp_Goto(M4AExp_u32 player, M4AExp_u32 track);
void M4AExp_PatternEnd(M4AExp_u32 player, M4AExp_u32 track);
void M4AExp_Repeat(M4AExp_u32 player, M4AExp_u32 track);
#define M4AEXP_COMMAND(name) void M4AExp_##name(M4AExp_u32 player, M4AExp_u32 track)
M4AEXP_COMMAND(Priority);
M4AEXP_COMMAND(Tempo);
M4AEXP_COMMAND(KeyShift);
M4AEXP_COMMAND(Volume);
M4AEXP_COMMAND(Pan);
M4AEXP_COMMAND(Bend);
M4AEXP_COMMAND(BendRange);
M4AEXP_COMMAND(LfoDelay);
M4AEXP_COMMAND(ModType);
M4AEXP_COMMAND(Tune);
M4AEXP_COMMAND(Port);
M4AEXP_COMMAND(LfoSpeed);
M4AEXP_COMMAND(ModDepth);
M4AEXP_COMMAND(Fine);
M4AEXP_COMMAND(Pattern);
M4AEXP_COMMAND(Voice);
M4AEXP_COMMAND(EndTie);
void M4AExp_SoundVSync(void);
M4AExp_u32 M4AExp_MultiplyHigh32(M4AExp_u32 left, M4AExp_u32 right);
void M4AExp_CopyJumpTable(M4AExp_u32 destination, M4AExp_u32 source);

#endif
