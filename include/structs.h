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

#endif // GUARD_STRUCTS_H
