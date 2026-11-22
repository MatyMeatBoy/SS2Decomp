#ifndef GUARD_REGION_H
#define GUARD_REGION_H

// Regional layout differences of shared EU sources (docs/agents/REGIONS.md).
// The EU build defines neither REGION_USA nor REGION_JP; make REGION=usa compare additionally
// compiles every src/*.c with -DREGION_USA and takes relocated functions from that build.

// Player record (array gUnk_03003CE0): EU 0x14C bytes, USA 0x158. USA inserts 10 bytes
// before EU +0x0C and keeps the u32 flags word (EU +0x30, USA +0x3C) aligned.
// PLAYER_FIELD(o) maps an EU offset to the regional one.
// Enemy actor records (array at *gUnk_030056F4): EU 0x2E0 bytes, USA 0x454 (ENEMY_SIZE).
// Character save record (pointer gUnk_030034E0): USA inserts 10 bytes before EU +0x0A and
// keeps the word-aligned block at EU +0x10 (USA +0x1C) aligned. SAVE_FIELD(o) maps EU offsets.
#ifdef REGION_USA
#define PLAYER_SIZE 0x158
#define PLAYER_FIELD(o) ((o) < 0x0C ? (o) : (o) < 0x2A ? (o) + 10 : (o) + 12)
#define SAVE_FIELD(o) ((o) < 0x0A ? (o) : (o) < 0x10 ? (o) + 10 : (o) + 12)
#define ENEMY_SIZE 0x454
#else
#define PLAYER_SIZE 0x14C
#define PLAYER_FIELD(o) (o)
#define SAVE_FIELD(o) (o)
#define ENEMY_SIZE 0x2E0
#endif

#endif // GUARD_REGION_H
