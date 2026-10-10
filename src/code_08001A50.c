#include "global.h"
#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

struct MemBlock {
    u32 prev:31;
    u32 used:1;
    struct MemBlock *next;
    struct MemBlock *prevFree;
    struct MemBlock *nextFree;
};

struct Heap {
    struct MemBlock head;
    void *start;
    u32 size;
};

void sub_08001A50(void)
{
    if (gUnk_030024B0[0])
        gUnk_030024B0[8] = 1;
}

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001A64);

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001AA4);

void sub_08001B04(u16 arg0) {
    ReadFlash(arg0);
}

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001B14);

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001B54);

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001B78);

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001BE4);

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_08001DF0);

void sub_0800207C(void)
{
    gUnk_030027D0 = 0x80000000;
}

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_0800208C);

void sub_080020E0(void)
{
    gUnk_030027D0 |= 0x40000000;
}

INCLUDE_ASM("asm/nonmatchings/code_08001A50", sub_080020F4);
