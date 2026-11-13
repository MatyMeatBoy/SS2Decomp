#include "global.h"
extern void sub_08000760();
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

/* [InitializeInterruptControlState] Initializes interrupt-control storage: sets IE shadow 0x03000002 to
 * 0x2000, clears IME shadow 0x03000000 and clears VCount/HBlank callback pointers 0x03000010/0x03000014. It
 * does not itself write hardware IE/IME or clear the display-status shadow. Matched AgbMain invokes it before
 * configuring the interrupt vector and enabling interrupts. */
void sub_08000EC8(void) {
    gUnk_03000002 = 0x2000;
    gUnk_03000000 = 0;
    gUnk_03000010 = 0;
    gUnk_03000014 = 0;
}
/* [DisableInterruptMaster] Waits until outside blank intervals, then clears both IME shadow and REG_IME. */
void sub_08000EF4(void)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
}
/* [EnableInterruptMaster] Waits until outside blank intervals, then sets IME shadow and REG_IME to one. */
void sub_08000F2C(void)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}
/* [EnableInterruptSources] Disables IME, ORs mask into IE shadow and REG_IE, then re-enables IME; does not
 * preserve previous IME state. */
void sub_08000F64(u16 mask)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
    gUnk_03000002 |= mask;
    REG_IE = gUnk_03000002;
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}
/* [DisableInterruptSources] Disables IME, clears mask from IE shadow and REG_IE, then re-enables IME; does not
 * preserve previous IME state. */
void sub_08000FD4(u16 mask)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
    gUnk_03000002 &= ~mask; REG_IE = gUnk_03000002;
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}
/* [SetDisplayStatusFlags] Disables IME, ORs mask into DISPSTAT shadow/register, then re-enables IME with
 * blank-interval waits. */
void sub_08001040(u16 mask)
{
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 0);
    gUnk_03000004 |= mask;
    REG_DISPSTAT = gUnk_03000004;
    WAIT_NOT_BLANK();
    REG_IME = (gUnk_03000000 = 1);
}
/* [ClearDisplayStatusFlags] Clears mask from DISPSTAT shadow and writes REG_DISPSTAT directly. */
void sub_080010AC(u16 mask)
{
    gUnk_03000004 &= ~mask;
    REG_DISPSTAT = gUnk_03000004;
}
/* [SetHBlankCallbackAndGetVCountCallback] Stores the input pointer word as the HBlank callback at 0x03000014,
 * while returning the current VCount callback from 0x03000010. The returned pointer is intentionally described
 * as the other callback, not the replaced HBlank pointer. Matched handlers sub_080010DC and sub_08001130
 * invoke these respective slots and acknowledge interrupt masks 2 and 4. */
s32 sub_080010C8(s32 arg0)
{
  s32 new_var;
  new_var = gUnk_03000010;
  gUnk_03000014 = arg0;
  ;
  return new_var;
}
/* [HandleHBlankInterrupt] Invokes callback 03000014 when nonzero, acknowledges REG_IF and BIOS interrupt-check
 * mask 0x2 (HBlank). */
void sub_080010DC(void)
{
    if (gUnk_03000014)
        ((void (*)(void))gUnk_03000014)();
    REG_IF = 2;
    gUnk_03007FF8 |= 2;
}
/* [SetVCountCompareLine] Replaces high byte of DISPSTAT shadow with the byte argument, writes hardware and
 * returns previous high byte. */
u32 sub_08001108(u8 vcount)
{
    u32 old = gUnk_03000004 >> 8;
    gUnk_03000004 = (gUnk_03000004 & 0xFF) | (vcount << 8);
    REG_DISPSTAT = gUnk_03000004;
    return old;
}
/* [HandleVCountInterrupt] Invokes callback 03000010 when nonzero, acknowledges REG_IF and BIOS interrupt-check
 * mask 0x4 (VCount). */
void sub_08001130(void)
{
    if (gUnk_03000010)
        ((void (*)(void))gUnk_03000010)();
    REG_IF = 4;
    gUnk_03007FF8 |= 4;
}
/* [SetVCountInterruptCallback] Replaces callback 03000010 and returns its previous value. */
u32 sub_0800115C(u32 v)
{
    u32 old = gUnk_03000010;
    gUnk_03000010 = v;
    return old;
}
/* [ResetVBlankCallbackState] Clears callback 0300234C and frame-transfer-ready flag 03002350. */
void sub_0800116C(void) {
    gUnk_0300234C = NULL;
    gUnk_03002350 = 0;
}
/* [HandleVBlankInterrupt] Optionally services m4a VSync/Main; when frame-transfer flag is set, invokes
 * callback 0300234C, flushes register shadow/copy queue and clears flag. Acknowledges interrupt mask 0x1
 * (VBlank). */
void sub_08001180(void)
{
    if (gUnk_03002870)
        m4aSoundVSync();
    if (gUnk_03002350)
    {
        if (gUnk_0300234C)
            ((void (*)(void))gUnk_0300234C)();
        sub_08000B50();
        sub_08001394();
        gUnk_03002350 = 0;
    }
    if (gUnk_03002870)
        m4aSoundMain();
    REG_IF = 1;
    gUnk_03007FF8 |= 1;
}
/* [SetVBlankCallback] Stores callback 0300234C, returning one for non-null or zero for null. */
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
/* [ProcessSchedulerFrame] Performs the common scheduler-cycle frame work: services sprite-list state, advances
 * random state, marks VBlank transfer work ready, conditionally waits for VBlank and increments 0x03002344
 * only when display forced-blank is clear. Resets the OAM shadow, updates input, wakes scheduler signal 1,
 * submits the OAM transfer, clears palette-dirty state and services text drawing. Forced blank bypasses the
 * VBlank wait and counter increment; a scheduler wait is not an unconditional elapsed-video-frame guarantee. */
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
/* [HandleDma3Interrupt] Invokes callback 03002354 and acknowledges REG_IF/BIOS check mask 0x800 (DMA3); there
 * is no null callback guard. */
void sub_08001280(void)
{
    ((void (*)(void))gUnk_03002354)();
    REG_IF = 0x800;
    gUnk_03007FF8 |= 0x800;
}
/* [HandleDma0Interrupt] Invokes callback 03002360 and acknowledges REG_IF/BIOS check mask 0x100 (DMA0); there
 * is no null callback guard. */
void sub_080012AC(void)
{
    ((void (*)(void))gUnk_03002360)();
    REG_IF = 0x100;
    gUnk_03007FF8 |= 0x100;
}
/* [SetDma3InterruptCallback] Replaces callback 03002354, used by DMA3 handler 01280, and returns previous
 * value. */
u32 sub_080012D8(u32 v)
{
    u32 old = gUnk_03002354;
    gUnk_03002354 = v;
    return old;
}
/* [SetDma0InterruptCallback] Replaces callback 03002360, used by DMA0 handler 012AC, and returns previous
 * value. */
u32 sub_080012E8(u32 v)
{
    u32 old = gUnk_03002360;
    gUnk_03002360 = v;
    return old;
}
/* [InitializeMemoryCopyQueue] Allocates 400 entries, clears src/dest/control, resets queue count and clears
 * DMA3/DMA0 callback globals. Queue flush uses CPU copy BIOS calls, not DMA hardware. */
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
/* [QueueMemoryCopy] Appends src/dest/byte-size while count<400; sets high control bit for sizes aligned to 32
 * bytes. Does not enqueue when full. */
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
/* [FlushMemoryCopyQueue] Consumes queued entries with CpuFastSet or CpuSet32 according to high control bit,
 * then resets count. No DMA register programming occurs. */
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
/* [ClearMemoryCopyQueue] Resets queued memory-copy count to zero without executing copies. */
void sub_080013F8(void)
{
    gUnk_03002358 = 0;
}
/* [InitializeEwramHeap] Builds free-list/sentinel metadata over EWRAM with heap start EWRAM_START and recorded
 * size 0x3FFFF. */
void sub_08001404(void)
{
    volatile struct MemBlock *root = &gUnk_02000010;
    struct Heap *heap;
    register struct MemBlock *block asm("r2");
    u32 start = EWRAM_START;
    register u32 usedBit asm("r6");
    u32 flags;
    *(volatile u32 *)root = start;
    root->next = &gUnk_0203FFF0;
    heap = &gUnk_03002370;
    root->prevFree = &heap->head;
    root->nextFree = &heap->head;
    root->used = 0;
    block = (struct MemBlock *)*(volatile u32 *)root;
    flags = *((u8 *)block + 3);
    usedBit = 0x80;
    *((u8 *)block + 3) = flags | usedBit;
    ((struct MemBlock *)*(volatile u32 *)root)->prev = 0;
    ((struct MemBlock *)*(volatile u32 *)root)->next = root;
    ((struct MemBlock *)*(volatile u32 *)root)->prevFree = &heap->head;
    ((struct MemBlock *)*(volatile u32 *)root)->nextFree = NULL;
    block = root->next;
    *((u8 *)block + 3) |= usedBit;
    block = root->next;
    *(u32 *)block = (*(u32 *)block & 0x80000000) | (u32)root;
    root->next->next = NULL;
    ((struct MemBlock *)*(volatile u32 *)root)->prevFree = NULL;
    ((struct MemBlock *)*(volatile u32 *)root)->nextFree = &heap->head;
    *(u32 *)&heap->head = (u32)root->next;
    heap->head.next = root;
    heap->head.prevFree = root;
    heap->head.nextFree = root;
    heap->start = (void *)start;
    heap->size = 0x3FFFF;
}
/* [HeapAllocate] Aligns allocation size, searches free blocks and splits the selected block. */
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
void sub_08001538_free(void *) asm("sub_08001538");
/* [HeapFree] Existing _free C definition is aliased to this canonical symbol. Bounds-checks pointer, clears
 * block used bit and coalesces adjacent free blocks in heap free list. */
void sub_08001538_free(void *pointer)
{
    struct MemBlock *block = (struct MemBlock *)((u8 *)pointer - 16);
    register struct MemBlock *next asm("r5");
    struct MemBlock *previous;
    struct MemBlock *limit;
    struct Heap *heap;
    void *start = gUnk_03002370.start;
    u8 clearBits;
    heap = &gUnk_03002370;
    if ((u32)pointer < (u32)start || (u32)pointer > (u32)start + heap->size) return;
    clearBits = ((u8 *)block)[3] & 0x7F;
    ((u8 *)block)[3] = clearBits;
    next = block->next;
    previous = (struct MemBlock *)*(u32 *)block;
    if (!previous->used) {
        next->prev = (u32)previous;
        previous->next = next;
        if (heap->head.nextFree == &heap->head) for (;;) {}
        if (!next->used) {
            previous->next = next->next;
            next->next->prev = (u32)previous;
            next->prevFree->nextFree = next->nextFree;
            next->nextFree->prevFree = next->prevFree;
        }
    } else if (!next->used) {
        block->next = next->next;
        next->next->prev = (u32)block;
        block->prevFree = next->prevFree;
        block->nextFree = next->nextFree;
        next->prevFree->nextFree = block;
        next->nextFree->prevFree = block;
        block->used = 0;
    } else {
        ((u8 *)block)[3] = clearBits;
        limit = *(struct MemBlock * volatile *)&heap->head.next;
        if (block == limit) goto insertHead;
        goto testPrevious;
insertPrevious:
        block->prevFree = previous;
        block->nextFree = previous->nextFree;
        previous->nextFree->prevFree = block;
        previous->nextFree = block;
        return;
searchPrevious:
        previous = (struct MemBlock *)previous->prev;
        if (!previous->used) goto insertPrevious;
        limit = *(struct MemBlock * volatile *)&heap->head.next;
testPrevious:
        if (previous != limit) goto searchPrevious;
insertHead:
        block->prevFree = &heap->head;
        block->nextFree = heap->head.nextFree;
        heap->head.nextFree->prevFree = block;
        heap->head.nextFree = block;
    }
}
/* [UnusedNoOpStub10] Complete void body is empty; ordinal distinguishes this entry from other proven no-op
 * entries without implying a hidden purpose. */
void sub_08001634(void)
{
}
/* [HeapAllocateFromEnd] Aligns size to 4 with minimum 16, traverses free list backward and splits an
 * allocation from the selected block end, returning payload after 16-byte header. */
void *sub_08001638(u32 size)
{
    struct MemBlock *block;
    struct MemBlock *previous;
    struct MemBlock *next;
    u32 available;
    size = (size + 3) & ~3;
    if (size <= 15) size = 16;
    for (block = gUnk_03002370.head.prevFree; block != &gUnk_03002370.head; block = block->prevFree) {
        next = block->next;
        available = (u32)next - (u32)block;
        if (available >= size + 16) {
            if (available >= size + 0x30) {
                previous = block;
                block = (struct MemBlock *)((u8 *)next - size - 16);
                block->prev = (u32)previous;
                block->next = previous->next;
                previous->next->prev = (u32)block;
                previous->next = block;
            } else {
                block->prevFree->nextFree = block->nextFree;
                block->nextFree->prevFree = block->prevFree;
            }
            block->used = 1;
            return (u8 *)block + 16;
        }
    }
    return NULL;
}
