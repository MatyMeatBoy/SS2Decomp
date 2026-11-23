#ifndef GUARD_REGION_H
#define GUARD_REGION_H

// Regional layout differences of shared EU sources (docs/agents/REGIONS.md).
// The EU build defines neither REGION_USA nor REGION_JP; make REGION=usa compare additionally
// compiles every src/*.c with -DREGION_USA and takes relocated functions from that build.

// Player record (array gUnk_03003CE0): EU 0x14C bytes, USA 0x158. USA inserts 10 bytes
// before EU +0x0C and 2 more before the u32 flags word (EU +0x2E -> USA +0x38, EU +0x30 -> +0x3C).
// PLAYER_FIELD(o) maps an EU offset to the regional one; a pad that starts right after a member
// ending at such a boundary starts at PLAYER_FIELD(boundary - 1) + 1, not PLAYER_FIELD(boundary).
// Enemy actor records (array at *gUnk_030056F4): EU 0x2E0 bytes, USA 0x454 (ENEMY_SIZE). USA inserts
// 0x174 bytes at EU +0x206 (inside the block at +0x204); ENEMY_FIELD(o) maps EU offsets.
// Character save record (pointer gUnk_030034E0): USA inserts 10 bytes before EU +0x0A and
// keeps the word-aligned block at EU +0x10 (USA +0x1C) aligned. SAVE_FIELD(o) maps EU offsets.
// Resource ids (archive << 16 | entry): many USA archive 5/6/8 entries are numbered 4 lower
// (EU 0x5008C = USA 0x50088), but not all of them; RES_ID(id) marks the uses verified per function.
// Text records (sub_08007290): the string starts after a 2-byte EU, 4-byte USA header (TEXT_HEADER).
#ifdef REGION_USA
#define PLAYER_SIZE 0x158
#define PLAYER_FIELD(o) ((o) < 0x0C ? (o) : (o) < 0x30 ? (o) + 10 : (o) + 12)
#define SAVE_FIELD(o) ((o) < 0x0A ? (o) : (o) < 0x10 ? (o) + 10 : (o) + 12)
#define ENEMY_SIZE 0x454
#define ENEMY_FIELD(o) ((o) < 0x206 ? (o) : (o) + 0x174)
#define RES_ID(id) ((id) - 4)
#define TEXT_HEADER 4
#else
#define PLAYER_SIZE 0x14C
#define PLAYER_FIELD(o) (o)
#define SAVE_FIELD(o) (o)
#define ENEMY_SIZE 0x2E0
#define ENEMY_FIELD(o) (o)
#define RES_ID(id) (id)
#define TEXT_HEADER 2
#endif

#endif // GUARD_REGION_H
