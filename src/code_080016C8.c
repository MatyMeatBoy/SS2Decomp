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

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_080016C8);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_080016EC);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_0800170C);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_08001804);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_0800191C);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_08001990);
