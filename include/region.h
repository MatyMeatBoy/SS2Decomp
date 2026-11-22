#ifndef GUARD_REGION_H
#define GUARD_REGION_H

// Regional layout differences of shared EU sources (docs/agents/REGIONS.md).
// The EU build defines neither REGION_USA nor REGION_JP; make REGION=usa compare additionally
// compiles every src/*.c with -DREGION_USA and takes relocated functions from that build.

// Player record (array gUnk_03003CE0): EU 0x14C bytes, USA 0x158. USA inserts 10 bytes
// before EU +0x0C and keeps the u32 flags word (EU +0x30, USA +0x3C) aligned.
// PLAYER_FIELD(o) maps an EU offset to the regional one.
#ifdef REGION_USA
#define PLAYER_SIZE 0x158
#define PLAYER_FIELD(o) ((o) < 0x0C ? (o) : (o) < 0x2A ? (o) + 10 : (o) + 12)
#else
#define PLAYER_SIZE 0x14C
#define PLAYER_FIELD(o) (o)
#endif

#endif // GUARD_REGION_H
