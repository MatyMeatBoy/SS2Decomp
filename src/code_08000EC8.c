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

void sub_08000EC8(void) {
    gUnk_03000002 = 0x2000;
    gUnk_03000000 = 0;
    gUnk_03000010 = 0;
    gUnk_03000014 = 0;
}

void sub_08000EF4(void)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
}

void sub_08000F2C(void)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}

void sub_08000F64(u16 mask)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
    gUnk_03000002 |= mask;
    REG_IE = gUnk_03000002;
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}

void sub_08000FD4(u16 mask)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
    gUnk_03000002 &= ~mask; REG_IE = gUnk_03000002;
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}

void sub_08001040(u16 mask)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
    gUnk_03000004 |= mask;
    REG_DISPSTAT = gUnk_03000004;
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}

void sub_080010AC(u16 mask)
{
    gUnk_03000004 &= ~mask;
    REG_DISPSTAT = gUnk_03000004;
}

s32 sub_080010C8(s32 arg0)
{
  s32 new_var;
  new_var = gUnk_03000010;
  gUnk_03000014 = arg0;
  ;
  return new_var;
}

void sub_080010DC(void)
{
    if (gUnk_03000014)
        ((void (*)(void))gUnk_03000014)();
    REG_IF = 2;
    gUnk_03007FF8 |= 2;
}

u32 sub_08001108(u8 vcount)
{
    u32 old = gUnk_03000004 >> 8;
    gUnk_03000004 = (gUnk_03000004 & 0xFF) | (vcount << 8);
    REG_DISPSTAT = gUnk_03000004;
    return old;
}

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001130);

u32 sub_0800115C(u32 v)
{
    u32 old = gUnk_03000010;
    gUnk_03000010 = v;
    return old;
}

void sub_0800116C(void) {
    gUnk_0300234C = NULL;
    gUnk_03002350 = 0;
}

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001180);

#ifdef NONMATCHING
u32 sub_080011E4(void *p)
{
    u32 r;
    if (p)
    {
        gUnk_0300234C = p;
        r = 1;
    }
    else
    {
        gUnk_0300234C = p;
        r = 0;
    }
    return r;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080011E4);
#endif

void sub_08001204(void)
{
    sub_08009014();
    sub_0800086C();
    gUnk_03002350 = 1;
    if (!gUnk_0300129C.forcedBlank)
    {
        VBlankIntrWait();
        gUnk_03002344++;
    }
    CpuFastFill(0xA0, gUnk_03001330, 0x400);
    sub_08000760();
    sub_08000420(1);
    sub_08001348(gUnk_03001330, (void *)OAM, 0x400);
    gUnk_03001310 = 0;
    sub_0801A558();
}

void sub_08001280(void)
{
    ((void (*)(void))gUnk_03002354)();
    REG_IF = 0x800;
    gUnk_03007FF8 |= 0x800;
}

void sub_080012AC(void)
{
    ((void (*)(void))gUnk_03002360)();
    REG_IF = 0x100;
    gUnk_03007FF8 |= 0x100;
}

u32 sub_080012D8(u32 v)
{
    u32 old = gUnk_03002354;
    gUnk_03002354 = v;
    return old;
}

u32 sub_080012E8(u32 v)
{
    u32 old = gUnk_03002360;
    gUnk_03002360 = v;
    return old;
}

void sub_080012F8(void)
{
    u32 i;

    gUnk_0300235C = (struct DmaEntry *)sub_08001494(400 * sizeof(struct DmaEntry));
    for (i = 0; i < 400; i++)
    {
        gUnk_0300235C[i].src = NULL;
        gUnk_0300235C[i].dest = NULL;
        gUnk_0300235C[i].control = 0;
    }
    gUnk_03002358 = 0;
    gUnk_03002354 = 0;
    gUnk_03002360 = 0;
}

void sub_08001348(const void *src, void *dest, u32 size)
{
    if (gUnk_03002358 < 400)
    {
        struct DmaEntry *e = &gUnk_0300235C[gUnk_03002358];
        e->src = src;
        e->dest = dest;
        e->control = size;
        if (!(size & 0x1F))
            e->control = size | 0x80000000;
        gUnk_03002358++;
    }
}

void sub_08001394(void)
{
    struct DmaEntry *e = gUnk_0300235C;
    u32 i;

    for (i = 0; i < gUnk_03002358; i++, e++)
    {
        if ((s32)e->control < 0)
            CpuFastSet(e->src, e->dest, ((e->control << 1) >> 3) & 0x1FFFFF);
        else
            CpuSet(e->src, e->dest, ((e->control >> 2) & 0x1FFFFF) | CPU_SET_32BIT);
    }
    gUnk_03002358 = 0;
}

void sub_080013F8(void)
{
    gUnk_03002358 = 0;
}

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001404);

void *sub_08001494(u32 size)
{
    struct MemBlock *b;
    struct MemBlock *n;
    u32 avail;

    size = (size + 3) & ~3;
    if (size < 16)
        size = 16;
    for (b = gUnk_03002370.head.nextFree; b != &gUnk_03002370.head; b = b->nextFree)
    {
        avail = (u32)b->next - (u32)b;
        if (avail >= size + 16)
        {
            if (avail >= size + 0x30)
            {
                n = (struct MemBlock *)((u8 *)b + size + 16);
                n->prev = (u32)b;
                n->next = b->next;
                n->prevFree = b->prevFree;
                n->nextFree = b->nextFree;
                n->used = 0;
                b->next->prev = (u32)n;
                b->next = n;
                b->prevFree->nextFree = n;
                b->nextFree->prevFree = n;
            }
            else
            {
                b->prevFree->nextFree = b->nextFree;
                b->nextFree->prevFree = b->prevFree;
            }
            b->used = 1;
            return (u8 *)b + 16;
        }
    }
    return NULL;
}

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001538);

void sub_08001634(void)
{
}

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001638);

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080016C8);

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_080016EC);

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_0800170C);

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001804);

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_0800191C);

INCLUDE_ASM("asm/nonmatchings/code_08000EC8", sub_08001990);
