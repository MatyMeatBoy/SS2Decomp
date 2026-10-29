#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080443EC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080444C0);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080445E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08044D1C);
void sub_08044E34(s32 arg0) {
    register s32 arg asm("r8") = arg0;
    s32 *base;
    u32 mask;
    register s32 count asm("r4");
    register s32 oldBit asm("r5");
    s32 value;
    register s32 temp asm("r0");
    mask = 1;
    base = &gUnk_03005CF4;
start:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    oldBit = (value >> 5) & mask;
    count = 1;
    goto wait;
dec:
    temp = count - 1;
    asm volatile("" : "+r" (temp));
    count = (u16)temp;
    if (count == 0) goto compare;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
compare:
    count = 1;
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C4);
    else value = *(u8 *)(*(u32 *)base + 0x1B8);
    if (oldBit == ((value >> 5) & count)) goto start;
    sub_0802939C(arg, 1);
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08044EB4);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804534C);
void sub_080455F0(s32 arg0) {
    register s32 arg asm("r5") = arg0;
    register s32 mask asm("r6");
    s32 *base = &gUnk_03005CF4;
    s32 value;
    s32 oldBit;
    u16 count;
    register s32 call0 asm("r0");
    register s32 call1 asm("r1");
    register s32 call2 asm("r2");
    register s32 call3 asm("r3");
    mask = 1;
loop:
    if (sub_0800CE30() != 0) value = *(u8 *)(*(u32 *)base + 0x1C5);
    else value = *(u8 *)(*(u32 *)base + 0x1B9);
    oldBit = (value >> 4) & mask;
    if (oldBit != 0) {
        call0 = arg; call1 = 0x79; call2 = 0x186; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    } else {
        call2 = 0x270F; call0 = arg; call1 = 0x270F; call3 = 0;
        sub_08028AAC(call0, call1, call2, call3);
    }
    count = 1;
    goto wait;
dec:
    count = count - 1;
    if (count == 0) goto loop;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec;
    goto loop;
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045660);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045764);
struct Bits5AFC { u8 b0:5; u8 b5:1; u8 b6:1; u8 b7:1; };
extern u8 *gGS5AFC asm("gUnk_03005CF4");
static inline struct Bits5AFC *SelA_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C3);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B7);
}
static inline struct Bits5AFC *SelB_5AFC(void)
{
    if (sub_0800CE30())
        return (struct Bits5AFC *)(gGS5AFC + 0x1C5);
    return (struct Bits5AFC *)(gGS5AFC + 0x1B9);
}
void sub_08045AFC(void)
{
    if (*(u8 *)SelA_5AFC() >> 7) {
        { u8 *q = (u8 *)SelB_5AFC(); s32 m = ~0x20; *q = m & *q; }
        sub_0805C7B8(0);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045B68);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045E38);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08045F44);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08046490);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080469DC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08046F28);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047474);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804778C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047970);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08047B2C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_080480E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804819C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08048570);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08048A74);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08049DC4);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_08049EBC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804A188);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804A478);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804A89C);
struct T49TaskAE48 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
extern u8 *t49_gsAE48 asm("gUnk_03005CF4");
extern void t49_cbAE48(void) asm("sub_080567D4");
static inline void t49_startAE48(void *callback, u32 arg)
{
    struct T49TaskAE48 *task = (struct T49TaskAE48 *)(t49_gsAE48 + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
void sub_0804AE48(void)
{
    s32 zero;
    t49_startAE48(t49_cbAE48, 0);
    t49_startAE48(t49_cbAE48, 1);
    zero = sub_0800CE30();
    if (zero != 0) t49_gsAE48[0x1C1] = 0;
    else t49_gsAE48[0x1B5] = zero;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
struct T49TaskAF80 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };

struct T49ReqAF80 { u32 a, b, c; void *callback; u32 arg, unused; };
extern u8 *t49_gsAF80 asm("gUnk_03005CF4");
extern void sub_0804B054(s32);

static inline u32 t49_hasAF80(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline void t49_startAF80(void *cb, u32 value, u32 mode)
{
    struct T49ReqAF80 req;
    struct T49TaskAF80 *task;
    u32 i;
    register u32 zero asm("r5");

        task = (struct T49TaskAF80 *)(t49_gsAF80 + 0xE34);

        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) return;
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            req.callback = cb;
            req.arg = value;
            task->flags = 60;
            task->memory = sub_08001494(0x400);
            task->callback = (u32)sub_0802A104;
            task->stack = task->memory + 0x3FC;
            task->arg = zero;
            sub_08000274(task, &req, mode);
            sub_080003F0();
            sub_080003F0();
}
void sub_0804AF80(void)
{
    if (t49_hasAF80(t49_gsAF80, 8) == 0) {
        t49_startAF80(sub_0804B054, 0, 7);
    } else {
        sub_08028AAC(8, 0x198, 0x158, 0);
    }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
extern u8 *t49_gsB054 asm("gUnk_03005CF4");
extern void t49_spawnB054(void *, s32, s32) asm("sub_08068820");
static inline void t49_flagB054(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline void t49_effectB054(s32 x, s32 y)
{ sub_08073E2C(x, y, 41, 1); }
void sub_0804B054(s32 arg0)
{
    u16 timer;
    switch (arg0) {
    case 0:
        t49_spawnB054(sub_0804B054, 1, 0);
        break;
    case 1:
        t49_flagB054(t49_gsB054, 8);
        t49_effectB054(0x19800, 0x15900);
        timer = 4;
        goto wait;
next:
        if (--timer == 0) goto done;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto next;
done:
        t49_effectB054(0x19000, 0x15900);
        t49_effectB054(0x1A000, 0x15900);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(0x17B);
        sub_08028AAC(8, 0x198, 0x158, 0);
        break;
    }
}
#ifdef NONMATCHING
struct T49PlayerB100 { u8 pad[0x30]; u32 flags; u8 tail[0x118]; };
struct T49EntityB100 { u8 pad[12]; u16 state; u8 padE[0x22]; u32 x, y; void *callback; u32 arg; u8 tail[0x2A0]; };
extern struct T49PlayerB100 t49_playersB100[] asm("gUnk_03003CE0");
extern struct T49EntityB100 *t49_entitiesB100 asm("gUnk_030056F4");
extern u8 *t49_gsB100 asm("gUnk_03005CF4");
extern void t49_cbB100(void) asm("sub_0804B32C");
static inline u32 t49_testB100(u32 mask)
{ return gUnk_030056FC & mask; }
static inline void t49_waitMaskB100(s16 mask)
{
    if ((gUnk_030056FC & mask) == 0) {
        do { sub_080003F0(); } while ((gUnk_030056FC & mask) == 0);
    }
}
static inline void t49_bindB100(void *callback, u32 arg, s16 index)
{
    struct T49EntityB100 *p;
    u32 i;
    s32 slot = index;
    t49_waitMaskB100(arg);
    p = t49_entitiesB100;
    p[slot].callback = callback;
    p[slot].arg = arg;
    p[slot].x = 0;
    p[slot].y = 0;
    i = 0;
    do {
        if (t49_testB100(1 << i) != 0 && p->state == 12) p->state = 0;
        i++;
        p++;
    } while (i <= 4);
    sub_08019F04();
}
static inline void t49_transitionB100(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
static inline void t49_setFlagB100(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline u8 *t49_offsetB100(u8 *ptr, u32 offset)
{ return ptr + offset; }
static inline u8 *t49_selectB100(void)
{
    if (sub_0800CE30() != 0) return t49_offsetB100(t49_gsB100, 0x1C5);
    return t49_offsetB100(t49_gsB100, 0x1B9);
}
static inline struct T49PlayerB100 *t49_playerB100(s32 index)
{
    u32 address = index;
    address *= 0x14C;
    address += (u32)t49_playersB100;
    return (struct T49PlayerB100 *)address;
}
static inline u32 t49_hasB100(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline s32 t49_extractB100(s32 value)
{ return (value >> 2) & 1; }
void sub_0804B100(void)
{
    u8 *selected;
    s32 bit, alternate;
    u32 dialog;
    struct T49PlayerB100 *player;
    selected = t49_selectB100();
    bit = t49_extractB100(*selected);
    if (bit == 0) t49_bindB100(t49_cbB100, 2, 1);
    else {
        sub_08028AAC(1, 9999, 9999, 0);
        sub_08028AAC(2, 9999, 9999, 0);
    }
    alternate = sub_0800CCCC();
    if (t49_hasB100(t49_gsB100, 16) == 0 && bit == 0 && alternate == 0) {
        player = t49_playerB100(sub_080020F4());
        player->flags |= 1;
        sub_0800D0F4();
        t49_transitionB100();
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, 45, 0x14003E);
        while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
        t49_setFlagB100(t49_gsB100, 16);
        player = t49_playerB100(sub_080020F4());
        player->flags &= ~1;
        sub_0800D108();
    } else t49_transitionB100();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B100);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B32C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B61C);
#ifdef NONMATCHING
extern void t49_BB80(s32, s32) asm("sub_0800BB80");
static inline void t49_moveB8EC(s16 step, s16 tx, s16 ty)
{
    s32 a, b;

    s32 delta = step;
    s32 x = (s16)gUnk_03003170.f80;
    s32 y = (s16)gUnk_03003170.f82;
    s32 i;
    for (i = 0; i <= 0x400; i += delta) {
        sub_080659F4(&a, x, tx, i);
        sub_080659F4(&b, y, ty, i);
        t49_BB80((s16)a, (s16)b);
        sub_080003F0();
    }
}
void sub_0804B8EC(s32 arg0)
{
    u16 timer = 100;
    goto wait;
next:
    if (--timer == 0) goto done;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto next;
done:
    t49_moveB8EC(2, arg0, -300);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B8EC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804B984);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804BC38);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804BEF8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C150);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C408);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C4E8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C5A8);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C67C);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804C948);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804CBBC);
INCLUDE_ASM("asm/nonmatchings/code_080443EC", sub_0804D020);
