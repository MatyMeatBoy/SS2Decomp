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

u32 sub_080016EC(void)
{
    u32 total = 0;
    struct MemBlock *b = gUnk_03002370.head.nextFree;
    while (b != &gUnk_03002370.head)
    {
        total += (u32)b->next - (u32)b;
        b = b->nextFree;
    }
    return total;
}

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_0800170C);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_08001804);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_0800191C);

INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_08001990);
