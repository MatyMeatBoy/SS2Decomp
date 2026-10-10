#ifndef GUARD_STRUCTS_H
#define GUARD_STRUCTS_H

// Shadow copy of REG_DISPCNT (gUnk_0300129C)
struct DispCnt {
    u16 mode:3;
    u16 cgbMode:1;
    u16 frameSelect:1;
    u16 hblankIntervalFree:1;
    u16 objMapping1D:1;
    u16 forcedBlank:1;
    u16 layers:8;
    u16 unk2;
};

// Entry of the DMA copy queue processed every VBlank (gUnk_0300235C)
struct DmaEntry {
    const void *src;
    void *dest;
    u32 control;
};

// placeholder structs: array element of N bytes
struct Sz24 { u8 b[24]; };
struct Sz40 { u8 b[40]; };
struct Sz332 { u8 b[332]; };

// Tilemap / layer system state (gUnk_03003170)
struct Layer {
    u16 x;        // 0x00
    u16 y;        // 0x02
    u16 w0;       // 0x04
    u16 w1;       // 0x06
    u16 w2;       // 0x08
    u16 w3;       // 0x0A
    u32 data;     // 0x0C
    u16 s10;      // 0x10
    u16 s12;      // 0x12
    u16 pad14;
    u16 s16;      // 0x16
};

struct TileSys {
    struct Layer layers[4];   // 0x00
    u8 pad60[8];
    u16 *map0;                // 0x68
    u16 *map1;                // 0x6C
    u16 width0;               // 0x70
    u16 pad72;
    u16 width1;               // 0x74
    u16 pad76;
    u16 mapW;                 // 0x78
    u16 mapH;                 // 0x7A
    u16 scrollX;              // 0x7C
    u16 scrollY;              // 0x7E
    u16 f80;                  // 0x80
    u16 f82;                  // 0x82
    u16 offX;                 // 0x84
    u16 offY;                 // 0x86
    u8 pad88[4];
    u16 curLevel;             // 0x8C
    u16 pad8E;
    u16 f90;                  // 0x90
    u8 pad92[10];
    u32 flags;                // 0x9C
};

struct LevelEntry {
    u16 count;
    u8 pad[0x72];
};

// Character / party member (array gUnk_03003CE0, 0x14C bytes each)
struct Player {
    char unk_0[0x20];
    u16 state;              // 0x20
    char unk_22[0xE];
    u32 flags;              // 0x30
    char unk_34[0x14C - 0x34];
};

// placeholder structs: array element of N bytes
struct Sz2 { u8 b[2]; };

// placeholder structs: array element of N bytes
struct Sz4 { u8 b[4]; };

// placeholder structs: array element of N bytes
struct Sz8 { u8 b[8]; };

// placeholder structs: array element of N bytes
struct Sz60 { u8 b[60]; };

// placeholder structs: array element of N bytes
struct Sz172 { u8 b[172]; };

// placeholder structs: array element of N bytes
struct Sz48 { u8 b[48]; };

// Small control blocks (gUnk_03000280, gUnk_030002A0): same layout, 0x20 apart
struct Ctrl {
    u8 pad0[4];
    u16 w4;    // 0x04
    u16 w6;    // 0x06
    u16 w8;    // 0x08
    u16 wA;    // 0x0A
    u8 b0C;    // 0x0C
    u8 b0D;    // 0x0D
    u8 pad0E;
    u8 b0F;    // 0x0F
};

// Pointer in gUnk_03005CF4: global game state block
struct GameState {
    u8 pad0[4];
    u16 flags;              // 0x04
    u8 pad6[0x17E4 - 6];
    u8 blk17E4[1];          // 0x17E4 (size unknown)
};

#endif // GUARD_STRUCTS_H
struct Unk030061E0 {
    u8 pad0[8];
    s32 f8;
    void *fC;
    u8 *f10;
    u8 pad14[0xC];
    u8 *f20;
    s32 f24;
};
struct Unk03002880 {
    s32 f0;
    u8 pad4[4];
    s32 f8;
    void *fC;
    u8 *f10;
    u8 pad14[4];
    s32 f18;
    u8 pad1C[4];
    u8 *f20;
    void *f24;
};
