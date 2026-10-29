#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804D330);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DA44);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DB48);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DDBC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E360);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E628);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E7B8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EABC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804ED18);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EE20);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EEA8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F128);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F390);
extern void sub_0804FA68(s32);
extern void sub_08050524(s32);
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
struct TaskF998 { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
struct StateF998 { u8 pad0[0x38]; u32 flags; u8 pad3C[0xE34-0x3C]; struct TaskF998 tasks[30]; };
extern struct StateF998 *stateF998 asm("gUnk_03005CF4");
void sub_0804F998(void) {
    u32 args[6];
    struct TaskF998 *task;
    register u32 i asm("r6");
    register u32 zero asm("r5");
    register u32 bit asm("r1");
    register struct StateF998 *state asm("r2");
    register u32 data asm("r0");
    void (*callback)(s32);
    state = stateF998;
    bit = 1;
    if (!(state->flags & bit)) {
        callback = sub_0804FA68;
        task = state->tasks;
        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i <= 29) {
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            args[3] = (u32)callback;
            data = 0;
            args[4] = data;
            task->f8 = 0x3C;
            task->f20 = sub_08001494(0x400);
            task->fC = (u32)sub_0802A104;
            task->f10 = task->f20 + 0x3FC;
            task->f24 = zero;
            sub_08000274(task, args, 6);
            sub_080003F0();
            sub_080003F0();
        }
    } else {
        sub_08028AAC(7, 0x88, 0xC8, 0);
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
#ifdef NONMATCHING
struct StateFA68 { u8 pad[0x38]; u32 flags38; };
extern struct StateFA68 *stateFA68 asm("gUnk_03005CF4");
void sub_0804FA68(s32 arg0) {
    u16 ticks;
    register struct StateFA68 *state asm("r2");
    register u32 bit asm("r1");
    switch (arg0) {
    case 0:
        sub_08068820(sub_0804FA68, (void *)1, 0);
        break;
    case 1:
        sub_08073E2C(0x8800, 0xC800, 0x29, 1);
        ticks = 4;
        goto wait;
decrement:
        ticks--;
        if (ticks == 0) goto after;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto decrement;
after:
        sub_08073E2C(0x8000, 0xC800, 0x29, 1);
        sub_08073E2C(0x9000, 0xC800, 0x29, 1);
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x17B);
        sub_08028AAC(7, 0x88, 0xC8, 0);
        state = stateFA68;
        bit = 1;
        state->flags38 |= bit;
        break;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FA68);
#endif
struct PlayerFB0C { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct StateFB0C { u8 pad[4]; u16 flags; };
extern struct PlayerFB0C playersFB0C[] asm("gUnk_03003CE0");
extern struct StateFB0C *stateFB0C asm("gUnk_03005CF4");
extern void sub_080586B4(s32);
void sub_0804FB0C(void) {
    s32 temp_r0;
    u16 var_r4;
    u32 temp_r4;
    struct PlayerFB0C *temp_r2;
    struct PlayerFB0C *temp_r2_2;

    temp_r2 = &playersFB0C[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_0800CB9C() == 0) {
        if (!(gUnk_030027D0 & 0x20)) {
            gUnk_03005CF8 = 0xA5;
            sub_08006CB4(0xA5U);
        }
    } else {
        sub_080586B4(0);
    }
    if (sub_0800CC98() == 0) {
        temp_r0 = sub_0801AB24();
        switch (temp_r0) {                          /* irregular */
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
while (sub_0801AAE0() == 0) sub_080003F0();
    }
    var_r4 = 0x14;
    goto wait;
decrement:
    var_r4--;
    if (var_r4 == 0) goto after;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto decrement;
after:
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140064U);
while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
    stateFB0C->flags = (u16) (0x20 | stateFB0C->flags);
    temp_r2_2 = &playersFB0C[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FC3C);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FF04);
struct Player502DC { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct Slot502DC { s32 id; u8 pad[0x32]; u16 state; u8 tail[0x38]; };
struct State502DC { u8 pad0[4]; u16 flags; u8 pad6[0x7A4-6]; struct Slot502DC slots[15]; };
extern struct State502DC *state502DC asm("gUnk_03005CF4");
extern struct Player502DC players502DC[] asm("gUnk_03003CE0");
extern void sub_0802939C(s32,s32);
extern void sub_0802A01C(void);
extern void sub_0805990C(void);
void sub_080502DC(void) {
    struct Slot502DC *slot;
    struct Player502DC *player;
    u16 ticks;
    register u32 offset asm("r2");
    register u32 waitHandle asm("r4");
    u32 wait, handle, i;
    s32 ui;
    do {
        ticks = 1;
        goto wait1;
dec1:
        ticks--;
        if (ticks == 0) goto after1;
wait1:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec1;
after1:
        if (!((state502DC->flags >> 4) & 1)) wait = sub_08019C3C();
        else wait = 1;
    } while (wait != 0);
    offset = sub_080020F4();
    offset *= 0x14C;
    player = (struct Player502DC *)((u8 *)players502DC + offset);
    player->flags |= 1;
    sub_0800D0F4();
    sub_08068070((u32)sub_0805990C, 15);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    handle = sub_0805DF38(1,15,2,0,0x2D,0x140069);
    ticks = 30;
    goto wait2;
dec2:
    ticks--;
    if (ticks == 0) goto after2;
wait2:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec2;
after2:
    ui = sub_080289C0(0x13,0x170,0x88);
    ticks = 1;
    goto wait3;
dec3:
    ticks--;
    if (ticks == 0) goto after3;
wait3:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec3;
after3:
    sub_08028AAC(1,0x270F,0x270F,0);
    sub_0802A01C();
    waitHandle = handle;
    while (sub_0805EEFC((void *)waitHandle) == 0) sub_080003F0();
    sub_0802939C(ui,10);
    sub_08028AAC(ui,0x99,0x5D,0x64);
    slot = state502DC->slots;
    i = 0;
    while (slot->id != ui) {
        i++;
        slot++;
        if (i > 14) {
            sub_080003F0();
            slot = 0;
            break;
        }
    }
    if (slot != 0) slot->state = 4;
    offset = sub_080020F4();
    offset *= 0x14C;
    player = (struct Player502DC *)((u8 *)players502DC + offset);
    player->flags &= ~1;
    sub_0800D108();
}
struct TaskF50454 { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
struct StateF50454 { u8 pad0[0x38]; u32 flags; u8 pad3C[0xE34-0x3C]; struct TaskF50454 tasks[30]; };
extern struct StateF50454 *stateF50454 asm("gUnk_03005CF4");
void sub_08050454(void) {
    u32 args[6];
    struct TaskF50454 *task;
    register u32 i asm("r6");
    register u32 zero asm("r5");
    register u32 bit asm("r1");
    register struct StateF50454 *state asm("r2");
    register u32 data asm("r0");
    void (*callback)(s32);
    state = stateF50454;
    bit = 2;
    if (!(state->flags & bit)) {
        callback = sub_08050524;
        task = state->tasks;
        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i <= 29) {
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            args[3] = (u32)callback;
            data = 0;
            args[4] = data;
            task->f8 = 0x3C;
            task->f20 = sub_08001494(0x400);
            task->fC = (u32)sub_0802A104;
            task->f10 = task->f20 + 0x3FC;
            task->f24 = zero;
            sub_08000274(task, args, 6);
            sub_080003F0();
            sub_080003F0();
        }
    } else {
        sub_08028AAC(7, 0x378, 0xA0, 0);
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
#ifdef NONMATCHING
struct State50524 { u8 pad[0x38]; u32 flags38; };
extern struct State50524 *state50524 asm("gUnk_03005CF4");
void sub_08050524(s32 arg0) {
    u16 ticks;
    register struct State50524 *state asm("r2");
    register u32 bit asm("r1");
    switch (arg0) {
    case 0:
        sub_08068820(sub_08050524, (void *)1, 0);
        break;
    case 1:
        sub_08073E2C(0x37800, 0xA000, 0x29, 1);
        ticks = 4;
        goto wait;
decrement:
        ticks--;
        if (ticks == 0) goto after;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto decrement;
after:
        sub_08073E2C(0x37000, 0xA000, 0x29, 1);
        sub_08073E2C(0x38000, 0xA000, 0x29, 1);
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x17B);
        sub_08028AAC(7, 0x378, 0xA0, 0);
        state = state50524;
        bit = 2;
        state->flags38 |= bit;
        break;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050524);
#endif
struct State505C8 { u8 pad[0x38]; u32 flags; };
struct Entity505C8 { u8 pad[0xC]; u16 state; u8 tail[0x2E0-0xE]; };
extern struct State505C8 *state505C8 asm("gUnk_03005CF4");
extern struct Entity505C8 *entities505C8 asm("gUnk_030056F4");
void sub_080505C8(void) {
    register u32 ticks asm("r4");
    register u32 stride asm("r0");
    register u32 i asm("r3");
    register u32 bit asm("r1");
    register u32 one asm("r6");
    u16 zero;
    register s32 *bits asm("r5");
    register struct State505C8 *state asm("r0");
    register struct State505C8 *state2 asm("r2");
    register struct Entity505C8 *entity asm("r2");
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    state = state505C8;
    bit = 4;
    if (!(state->flags & bit)) {
        ticks = 30;
        goto wait;
decrement:
        stride = ticks - 1;
        ticks = (u16)stride;
        if (ticks == 0) goto after;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto decrement;
after:
        state2 = state505C8;
        bit = 4;
        state2->flags |= bit;
    }
    entity = entities505C8;
    i = 0;
    bits = &gUnk_030056FC;
    one = 1;
    zero = 0;
    do {
        bit = one << i;
        if ((*bits & bit) && entity->state == 12) entity->state = zero;
        i++;
        stride = 0x2E0;
        entity = (struct Entity505C8 *)((u8 *)entity + stride);
    } while (i <= 4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050688);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080509A8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050E48);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051A78);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051BFC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051CE4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051DF0);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051E98);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08052060);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080523D8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0805247C);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080526B4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080529E0);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08052D0C);
extern u8 *gGS2FE8 asm("gUnk_03005CF4");
extern void sub_0805990C();
extern void sub_0803E5D8();
static inline u8 *Sel2FE8(void)
{
    if (sub_0800CE30())
        return gGS2FE8 + 0x1C7;
    return gGS2FE8 + 0x1BB;
}
void sub_08052FE8(void)
{
    u8 mode;
    u32 a, b;
    {
        u8 *q = Sel2FE8();
        s32 m = ~1;
        *q = m & *q;
    }
    mode = sub_0801DE60();
    b = sub_0800CCCC();
    a = 0;
    if (mode == 6)
        a = 1;
    {
        u32 c = 0;
        if (b == 0)
            c = 1;
        if (a & c)
            sub_08068070((u32)sub_0805990C, 0x20);
    }
    sub_08068070((u32)sub_0803E5D8, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053060);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053120);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080531C4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053510);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080537DC);
extern u32 gW03005CF8 asm("gUnk_03005CF8");
extern u32 gW030027D0 asm("gUnk_030027D0");
extern u8 *gP030056F4 asm("gUnk_030056F4");
extern u32 gM030056FC asm("gUnk_030056FC");
struct E2E0a { u8 b[0xC]; u16 hC; u8 r[0x2E0 - 0xE]; };
static inline void SetMode53A80(u32 m)
{
    gW03005CF8 = m;
    if ((gW030027D0 & 0x20) == 0)
        sub_08006CB4(m);
}
static inline void Clr53A80(u8 *p)
{
    u32 i;
    for (i = 0; i <= 4; i++, p += 0x2E0)
        if ((gM030056FC & (1 << i)) && *(u16 *)(p + 0xC) == 0xC)
            *(u16 *)(p + 0xC) = 0;
}
void sub_08053A80(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053B24);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053C5C);
void sub_08053CF4(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
void sub_08053D98(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053E3C);
