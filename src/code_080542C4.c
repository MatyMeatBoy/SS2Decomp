#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080542C4);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_0805442C);
void sub_08054514(void) {
    u8 *var_r1;
    u8 *var_r1_2;
    s32 temp_r4;
    s32 temp_r5;
    u32 var_r2;
    u32 var_r2_2;

    temp_r5 = sub_080289C0(0x24, 0x138, 0xB0);
    temp_r4 = sub_080289C0(0x10024, 0x138, 0xC8);
    sub_08028D98(temp_r5, 0, -0xC8, 0xC8);
    var_r1 = gUnk_03005CF4 + 0x7A4;
    var_r2 = 0;
loop_1:
    if (*(u32 *)var_r1 != temp_r5) {
        var_r2 += 1;
        var_r1 += 0x70;
        if (var_r2 > 0xEU) {
            sub_080003F0();
            var_r1 = NULL;
        } else {
            goto loop_1;
        }
    }
    if (var_r1 != NULL) {
        M2C_FIELD(var_r1, s16 *, 0x36) = 4;
    }
    var_r1_2 = gUnk_03005CF4 + 0x7A4;
    var_r2_2 = 0;
loop_7:
    if (*(u32 *)var_r1_2 != temp_r4) {
        var_r2_2 += 1;
        var_r1_2 += 0x70;
        if (var_r2_2 > 0xEU) {
            sub_080003F0();
            var_r1_2 = NULL;
        } else {
            goto loop_7;
        }
    }
    if (var_r1_2 != NULL) {
        M2C_FIELD(var_r1_2, s16 *, 0x36) = 4;
    }
}
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
void sub_080545A0(void)
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
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054644);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054748);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054904);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054CE8);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054FB8);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055174);
void sub_0805664C(s32);
static inline void spawn56(void (*cb)(s32), s32 arg)
{
    u8 *task = gUnk_03005CF4 + 0xE34;
    u32 i;
    u8 *stack;
    for (i = 0; i <= 0x1D; i++, task += 0x28) {
        if (sub_08000470(task) == 0) {
            while ((stack = sub_08001494(0x400), *(u8 **)(task + 0x20) = stack) == NULL)
                sub_080003F0();
            *(u32 *)(task + 8) = 0x3C;
            *(void (**)(s32))(task + 0xC) = cb;
            *(u8 **)(task + 0x10) = stack + 0x3FC;
            *(u32 *)(task + 0x24) = 0;
            sub_08000274(task, arg);
            break;
        }
    }
}
void sub_08055558(void)
{
    spawn56(sub_0805664C, 0x33);
    spawn56(sub_0805664C, 0x34);
    spawn56(sub_0805664C, 0x35);
    spawn56(sub_0805664C, 0x36);
    spawn56(sub_0805664C, 0x37);
    spawn56(sub_0805664C, 0x38);
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
}
void sub_0805664C(s32);
void sub_080557CC(void)
{
    spawn56(sub_0805664C, 0x39);
    spawn56(sub_0805664C, 0x3A);
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
}
void sub_080558D0(void)
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
void sub_08055A60(void);
void sub_08055974(void)
{
    void (*cb)(void) = sub_08055A60;
    u8 *task = gUnk_03005CF4 + 0xE34;
    u32 i;
    u8 *stack;
    u8 *flag;
    for (i = 0; i <= 0x1D; i++, task += 0x28) {
        if (sub_08000470(task) == 0) {
            while ((stack = sub_08001494(0x400), *(u8 **)(task + 0x20) = stack) == NULL)
                sub_080003F0();
            *(u32 *)(task + 8) = 0x3C;
            *(void (**)(void))(task + 0xC) = cb;
            *(u8 **)(task + 0x10) = stack + 0x3FC;
            *(u32 *)(task + 0x24) = 0;
            sub_08000274(task, 0);
            break;
        }
    }
    {
        register u32 v asm("r1");
        register u32 one asm("r0");
        if (sub_0800CE30() != 0)
            flag = gUnk_03005CF4 + 0x1C6;
        else
            flag = gUnk_03005CF4 + 0x1BA;
        v = *flag;
        one = 1;
        v &= one;
        if (v)
            sub_08028AAC(8, 9999, 9999, 0);
    }
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
}
struct T56Task { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
void sub_08055BA4(void);
void sub_0805A384(s32);
void sub_0805A350(s32);
void sub_08055A60(void)
{
    u32 args[6];
    void (*cb)(void) = sub_08055BA4;
    struct T56Task *task = (struct T56Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    void (*cb2)(s32);
    u8 *stack;
    struct T56Task *last;
    for (i = 0; i <= 0x1D; i++, task++) {
        if (sub_08000470(task) == 0) {
            while ((stack = sub_08001494(0x400), task->f20 = (u32)stack) == 0)
                sub_080003F0();
            task->f8 = 0x3C;
            task->fC = (u32)cb;
            task->f10 = (u32)(stack + 0x3FC);
            task->f24 = 0;
            sub_08000274(task, 0);
            last = task;
            break;
        }
    }
    {
    register u32 j asm("r6");
    register u32 f asm("r5");
    cb2 = sub_0805A384;
    task = (struct T56Task *)(gUnk_03005CF4 + 0xE34);
    j = 0;
    goto check;
next:
    j++;
    task++;
check:
    if (j > 29) goto third;
    f = sub_08000470(task);
    if (f != 0) goto next;
    args[3] = (u32)cb2;
    args[4] = (u32)last;
    task->f8 = 0x3C;
    task->f20 = sub_08001494(0x400);
    task->fC = (u32)sub_0802A104;
    task->f10 = task->f20 + 0x3FC;
    task->f24 = f;
    sub_08000274(task, args, 6);
    sub_080003F0();
    sub_080003F0();
third:
    cb2 = sub_0805A350;
    task = (struct T56Task *)(gUnk_03005CF4 + 0xE34);
    j = 0;
    goto check2;
next2:
    j++;
    task++;
check2:
    if (j > 29) return;
    f = sub_08000470(task);
    if (f != 0) goto next2;
    args[3] = (u32)cb2;
    args[4] = 0;
    task->f8 = 0x3C;
    task->f20 = sub_08001494(0x400);
    task->fC = (u32)sub_0802A104;
    task->f10 = task->f20 + 0x3FC;
    task->f24 = f;
    sub_08000274(task, args, 8);
    sub_080003F0();
    sub_080003F0();
    }
}
struct PositionTable56 { u32 value[5]; };
extern struct PositionTable56 positions56 asm("gUnk_080BB6D0");
extern u8 routes56[256] asm("gUnk_080BB6E4");
void sub_08055BA4(void)
{
    struct PositionTable56 positions = positions56;
    u8 routes[256];
    s32 i;
    u16 wait;
    u8 *p; s32 off;

    memcpy(routes, routes56, sizeof(routes));

    i = 0;
    p = routes;
    for (;;) {
        off = i * 8;
        sub_08028AAC(6, 120, (u16)positions.value[*(u32 *)(p + off)], 0);
        sub_08028D98(6, 0, -28, 10);
        wait = *(u16 *)(routes + 4 + off);
        while (wait != 0) {
            sub_080003F0();
            if (sub_080021A8() != 0) break;
            wait--;
        }
        sub_08028D98(6, 0, 28, 10);
        sub_08028AAC(6, 9999, 9999, 0);
        wait = 30;
        goto body;
        do {
            wait--;
            if (wait == 0) break;
        body:
            sub_080003F0();
        } while (sub_080021A8() == 0);
        i = (i + 1) & 31;
    }
}
void sub_08055D1C(void);
static inline u8 *find56(s32 id)
{
    u8 *p = gUnk_03005CF4 + 0x7A4;
    u32 i = 0;
    do {
        if (*(s32 *)p == id)
            return p;
        i++;
        p += 0x70;
    } while (i <= 14);
    sub_080003F0();
    return NULL;
}
void sub_08055C58(void)
{
    s32 id = sub_080289C0(0x3E, 0x78, 0x60);
    u8 *p;
    u8 *q;
    void (*cb)(void);
    p = find56(id);
    if (p != NULL) {
        *(u16 *)(p + 0x18) = 8;
        *(u16 *)(p + 0x1A) = 0x1E;
        *(u32 *)(p + 0x3C) |= 0x10;
    }
    cb = sub_08055D1C;
    q = find56(id);
    if (q != NULL)
        *(void (**)(void))(q + 0x44) = cb;
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
}
extern u8 gS03003170_56[] asm("gUnk_03003170");
static inline void Keep55D1C(u8 *b, u32 n)
{
    s16 *px = (s16 *)(b + 0x7C);
    s32 x = *px;
    s16 *py = (s16 *)(b + 0x7E);
    s32 y = *py;
    sub_08084F9C(n);
    sub_080003F4(0x11201100);
    *px = x;
    *py = y;
}
static inline void Fade55D1C(u32 n)
{
    sub_0800CE40();
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    Keep55D1C(gS03003170_56, n);
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
}
void sub_08055D1C(void)
{
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 1;
    }
    sub_0800D0F4();
    if (sub_0800CE30() != 0)
        Fade55D1C(4);
    else
        Fade55D1C(3);
    {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= ~1;
    }
    sub_0800D108();
}
void sub_080560D0(u32);
static inline void SpawnArgs56(u8 *state, u32 value, u32 n)
{
    u32 args[6];
    void (*cb)(u32) = sub_080560D0;
    struct T56Task *task = (struct T56Task *)(state + 0xE34);
    register u32 i asm("r6") = 0;
    register u32 free asm("r5");
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    free = sub_08000470(task);
    if (free != 0) goto next;
    args[3] = (u32)cb;
    args[4] = value;
    task->f8 = 0x3C;
    task->f20 = sub_08001494(0x400);
    task->fC = (u32)sub_0802A104;
    task->f10 = task->f20 + 0x3FC;
    task->f24 = free;
    sub_08000274(task, args, n);
    sub_080003F0();
    sub_080003F0();
}
void sub_08055E74(void)
{
    u8 *state = (u8 *)gUnk_03005CF4;
    u32 bits;
    u32 a, b, c, d;
    a = 1; bits = *(u32 *)(state + 0x38); a &= bits; if (a) a = 1;
    b = bits & 2; if (b) b = 1;
    c = bits & 4; if (c) c = 1;
    d = bits & 8; if (d) d = 1;
    if (!a)
        SpawnArgs56(state, 0, 6);
    else if (!b)
        SpawnArgs56(state, 2, 7);
    else if (!c)
        SpawnArgs56(state, 4, 8);
    else if (!d)
        SpawnArgs56(state, 6, 9);
    else
        SpawnArgs56(state, 8, 10);
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
}
static inline void SpawnArgsG56(u32 value, u32 n)
{
    u32 args[6];
    void (*cb)(u32) = sub_080560D0;
    struct T56Task *task = (struct T56Task *)((u8 *)gUnk_03005CF4 + 0xE34);
    register u32 i asm("r6") = 0;
    register u32 free asm("r5");
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    free = sub_08000470(task);
    if (free != 0) goto next;
    args[3] = (u32)cb;
    args[4] = value;
    task->f8 = 0x3C;
    task->f20 = sub_08001494(0x400);
    task->fC = (u32)sub_0802A104;
    task->f10 = task->f20 + 0x3FC;
    task->f24 = free;
    sub_08000274(task, args, n);
    sub_080003F0();
    sub_080003F0();
}
void sub_080560D0(u32 arg0)
{
    register u8 *state asm("r2");
    register u32 bit asm("r1");
    switch (arg0) {
    case 0:
        SpawnArgsG56(2, 7);
        sub_08068820(sub_080560D0, 1, 0);
        break;
    case 1:
        sub_08028AAC(7, 0x100, 0xD8, 0);
        state = (u8 *)gUnk_03005CF4;
        bit = 1;
        goto set;
    case 2:
        SpawnArgsG56(4, 8);
        sub_08068820(sub_080560D0, 3, 1);
        break;
    case 3:
        sub_08028AAC(8, 0x180, 0xD8, 0);
        state = (u8 *)gUnk_03005CF4;
        bit = 2;
        goto set;
    case 4:
        SpawnArgsG56(6, 9);
        sub_08068820(sub_080560D0, 5, 2);
        break;
    case 5:
        sub_08028AAC(9, 0x200, 0xD8, 0);
        state = (u8 *)gUnk_03005CF4;
        bit = 4;
        goto set;
    case 6:
        SpawnArgsG56(8, 10);
        sub_08068820(sub_080560D0, 7, 3);
        break;
    case 7:
        sub_08028AAC(10, 0x260, 0xD8, 0);
        state = (u8 *)gUnk_03005CF4;
        bit = 8;
    set:
        *(u32 *)(state + 0x38) |= bit;
        break;
    case 8:
        sub_08068820(sub_080560D0, 9, 4);
        break;
    case 9: {
        u16 wait;
        sub_08073E2C(0x2A000, 0x12800, 0x29, 1);
        wait = 4;
        goto body;
        do {
            wait--;
            if (wait == 0) break;
        body:
            sub_080003F0();
        } while (sub_080021A8() == 0);
        { s32 x = 0x29800; s32 y = 0x12800; asm("" : "+r"(x), "+r"(y)); sub_08073E2C(x, y, 0x29, 1); }
        sub_08073E2C(0x2A800, 0x12800, 0x29, 1);
        if (!(gUnk_030027D0 & 0x20))
            sub_08006D08(0x17B);
        sub_08028AAC(11, 0x2A0, 0x128, 0);
        break;
    }
        }
}
void sub_080563F0(void)
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
void sub_08056494(void)
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
struct Scene56 { s32 x; s32 y; u32 lo; u32 hi; s32 a; s32 b; u32 wait; };
extern struct Scene56 scenes56[] asm("gUnk_084B1D40");
s32 sub_08021FE0(void *, s32 *, s32 *, s32 *);
static inline void Walk56(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    u8 *entry;
    a <<= 16;
    result = 0;
    pos[0] = x << 8;
    pos[1] = y << 8;
    b <<= 16;
    packed = (a >> 16) | b;
    entry = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    while (sub_08021FE0(entry + 0x8C, pos, &result, &packed) == 0)
        sub_080003F0();
}
void sub_08056538(s32 arg0)
{
    u16 wait;
    Walk56(scenes56[arg0].x, scenes56[arg0].y, (u16)scenes56[arg0].lo, (u16)scenes56[arg0].hi);
    sub_08029CEC(scenes56[arg0].a, scenes56[arg0].b, 1);
    for (wait = scenes56[arg0].wait; wait != 0; wait--) {
        sub_080003F0();
        if (sub_080021A8() != 0)
            break;
    }
    spawn56(sub_08056538, arg0);
}
struct Spot56 { s32 x; s32 y; u32 lo; u32 hi; u32 dx; u32 dy; };
extern struct Spot56 spots56[] asm("gUnk_084B1D78");
static inline s32 Walk98(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    u8 *entry;
    a <<= 16;
    result = 0;
    pos[0] = x << 8;
    pos[1] = y << 8;
    b <<= 16;
    packed = (a >> 16) | b;
    entry = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    while (sub_08021FE0(entry + 0x8C, pos, &result, &packed) == 0 ||
           !(*(u16 *)(entry + 0x14) & 1)) {
        if (sub_08058608()) return 0;
        sub_080003F0();
    }
    return 0;
}
void sub_0805664C(s32 arg0)
{
    Walk98(spots56[arg0].x, spots56[arg0].y, (u16)spots56[arg0].lo, (u16)spots56[arg0].hi);
    if (sub_0800CCCC() != 1) {
    { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
    sub_0800D0F4();
    { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 2; }
    sub_08067D74();
    if (!(gUnk_030027D0 & 0x20))
        sub_08006D08(0x24);
    sub_08028AAC(0, (u16)spots56[arg0].dx, (u16)spots56[arg0].dy, 0x5A);
    { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~2; }
    sub_08067D74();
    { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
    sub_0800D108();
    spawn56(sub_0805664C, arg0);
    }
}
#ifdef NONMATCHING
extern u8 table567D4[] asm("gUnk_084B23A8");
extern u8 playerX567D4[] asm("gUnk_03003D6C");
extern u8 playerY567D4[] asm("gUnk_03003D70");
void callback56CB4(u32) asm("sub_08056CB4");
void callback5990C56(u32) asm("sub_0805990C");
void sub_080567D4(s32 arg0) {
    s32 sp0;
    u8 *sp4;
    u32 *sp8;
    s32 *spC;
    u32 *sp10;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r1_3;
    s32 temp_r1_4;
    s32 temp_r1_6;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 temp_r5_5;
    s32 temp_r5_7;
    u8 *var_r0;
    u8 *var_r0_2;
    u8 *var_r0_4;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_4;
    s32 var_r3_2;
    s32 var_r4;
    s32 var_r4_4;
    s32 var_r4_6;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_5;
    u32 temp_r0;
    u32 temp_r4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r5;
    u32 temp_r5_4;
    u32 temp_r5_6;
    u32 temp_r6;
    u32 temp_r8;
    u32 var_r2;
    u32 var_r3;
    u32 var_r4_7;
    u8 *var_r0_3;
    u8 temp_r0_2;
    u8 *temp_r1_5;
    u8 *temp_r1_7;
    u8 *var_r1_3;

    sp0 = arg0;
    temp_r2 = 0x2C * sp0;
    if (*(u32 *)(temp_r2 + (table567D4 + 0x20)) != 0) {
        temp_r5 = *(u32 *)(temp_r2 + (table567D4 + 0x1C));
        temp_r4 = temp_r5 >> 3;
        temp_r5_2 = temp_r5 & 7;
        if (sub_0800CE30() != 0) {
            var_r0 = gUnk_03005CF4 + 0x1C3;
        } else {
            var_r0 = gUnk_03005CF4 + 0x1B7;
        }
        var_r4 = ((s32) *(u8 *)(var_r0 + temp_r4) >> temp_r5_2) & 1;
    } else {
        var_r1 = *(u32 *)(gUnk_03005CF4 + 0x38) & (1U << *(u32 *)(temp_r2 + (table567D4 + 0x1C)));
        if (var_r1 != 0) {
            var_r1 = 1;
        }
        var_r4 = var_r1;
    }
    if (var_r4 != 0) {
        sub_08028AAC(*(u32 *)((sp0 * 0x2C) + (table567D4 + 0x28)) + 5, 0x270F, 0x270F, 0);
        return;
    }
    sp4 = table567D4;
    temp_r4_2 = 0x2C * sp0;
    sp8 = (u32 *)(table567D4 + 0xC + temp_r4_2);
    spC = (s32 *)(table567D4 + 0x14 + temp_r4_2);
    sp10 = (u32 *)(table567D4 + 0x24 + temp_r4_2);
loop_12:
    temp_r8 = (u32) *(u32 *)(sp4 + 8 + temp_r4_2) >> 1;
    temp_r6 = (u32) *sp8 >> 1;
loop_16:
    var_r4_2 = 1;
loop_18:
    sub_080003F0();
    if (sub_080021A8() == 0) {
        var_r4_2 -= 1;
        if (var_r4_2 != 0) {
            goto loop_18;
        }
    }
    temp_r4_3 = (s32) *(u32 *)((0x14C * sub_080020F4()) + playerX567D4) >> 8;
    temp_r3 = (s32) *(u32 *)((0x14C * sub_080020F4()) + playerY567D4) >> 8;
    temp_r2_2 = 0x2C * sp0;
    temp_r1 = *(u32 *)(temp_r2_2 + table567D4);
    if ((u32) temp_r4_3 >= (u32) (temp_r1 - temp_r8)) {
        if ((u32) temp_r4_3 <= (u32) (temp_r1 + temp_r8)) {
            temp_r1_2 = *(u32 *)(temp_r2_2 + (table567D4 + 4));
            if (((u32) temp_r3 >= (u32) (temp_r1_2 - temp_r6)) && ((u32) temp_r3 <= (u32) (temp_r1_2 + temp_r6))) {
                goto loop_16;
            }
        }
    }
    do {
loop_21:
        var_r4_3 = 1;
loop_23:
        sub_080003F0();
        if (sub_080021A8() == 0) {
            var_r4_3 -= 1;
            if (var_r4_3 != 0) {
                goto loop_23;
            }
        }
        temp_r4_4 = (s32) *(u32 *)((sub_080020F4() * 0x14C) + playerX567D4) >> 8;
        temp_r3_2 = (s32) *(u32 *)((sub_080020F4() * 0x14C) + playerY567D4) >> 8;
        temp_r5_3 = 0x2C * sp0;
        temp_r1_4 = *(u32 *)(temp_r5_3 + table567D4);
        if ((u32) temp_r4_4 < (u32) (temp_r1_4 - temp_r8)) {
            goto loop_21;
        }
        if ((u32) temp_r4_4 > (u32) (temp_r1_4 + temp_r8)) {
            goto loop_21;
        }
        temp_r1_3 = *(u32 *)(temp_r5_3 + (table567D4 + 4));
        if ((u32) temp_r3_2 < (u32) (temp_r1_3 - temp_r6)) {
            goto loop_21;
        }
    } while ((u32) temp_r3_2 > (u32) (temp_r1_3 + temp_r6));
    if (sub_0800CCCC() == 1) {
        return;
    }
    if (*(u32 *)(temp_r5_3 + (table567D4 + 0x20)) != 0) {
        temp_r5_4 = *(u32 *)(temp_r5_3 + (table567D4 + 0x1C));
        temp_r4_5 = temp_r5_4 >> 3;
        temp_r5_5 = temp_r5_4 & 7;
        if (sub_0800CE30() != 0) {
            var_r0_2 = gUnk_03005CF4 + 0x1C3;
        } else {
            var_r0_2 = gUnk_03005CF4 + 0x1B7;
        }
        var_r4_4 = ((s32) *(u8 *)(var_r0_2 + temp_r4_5) >> temp_r5_5) & 1;
    } else {
        var_r1_2 = *(u32 *)(gUnk_03005CF4 + 0x38) & (1U << *(u32 *)(temp_r5_3 + (table567D4 + 0x1C)));
        if (var_r1_2 != 0) {
            var_r1_2 = 1;
        }
        var_r4_4 = var_r1_2;
    }
    if (var_r4_4 != 0) {
        return;
    }
    temp_r1_5 = sp4 + 0x10;
    var_r3 = 0;
    var_r2 = 0;
    var_r1_3 = gUnk_030034E0 + 0x150;
    do {
        if ((*(u16 *)(var_r1_3 + 0) == *(u32 *)(temp_r4_2 + temp_r1_5)) && (*(u16 *)(var_r1_3 + 2) == *spC)) {
            var_r3 += 1;
        }
        var_r1_3 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x18U);
    if (var_r3 < (u32) *(u32 *)((temp_r1_5 - 0x10) + 0x18 + temp_r4_2)) {
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006D08(0x61U);
        }
        *(u16 *)((u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4() + 0x11E) = 6;
        goto loop_12;
    }
    temp_r0 = (u32) sub_080020F4();
    sub_08068070((u32) callback56CB4, temp_r0);
    do {
        var_r4_5 = 1;
loop_50:
        sub_080003F0();
        if (sub_080021A8() == 0) {
            var_r4_5 -= 1;
            if (var_r4_5 != 0) {
                goto loop_50;
            }
        }
        if (sub_0800CE30() != 0) {
            var_r0_3 = gUnk_03005CF4 + 0x1C1;
        } else {
            var_r0_3 = gUnk_03005CF4 + 0x1B5;
        }
        temp_r0_2 = *var_r0_3;
    } while ((s32) temp_r0_2 <= 7);
    if ((temp_r0_2 & 3) != temp_r0) {
        return;
    }
    temp_r1_6 = 0x2C * sp0;
    if (*(u32 *)(temp_r1_6 + (table567D4 + 0x20)) != 0) {
        temp_r5_6 = *(u32 *)(temp_r1_6 + (table567D4 + 0x1C));
        temp_r4_6 = temp_r5_6 >> 3;
        temp_r5_7 = temp_r5_6 & 7;
        if (sub_0800CE30() != 0) {
            var_r0_4 = gUnk_03005CF4 + 0x1C3;
        } else {
            var_r0_4 = gUnk_03005CF4 + 0x1B7;
        }
        var_r4_6 = ((s32) *(u8 *)(var_r0_4 + temp_r4_6) >> temp_r5_7) & 1;
    } else {
        var_r1_4 = *(u32 *)(gUnk_03005CF4 + 0x38) & (1U << *(u32 *)(temp_r1_6 + (table567D4 + 0x1C)));
        if (var_r1_4 != 0) {
            var_r1_4 = 1;
        }
        var_r4_6 = var_r1_4;
    }
    if (var_r4_6 != 0) {
        temp_r0_3 = sub_0800CE30();
        if (temp_r0_3 != 0) {
            *(u8 *)(gUnk_03005CF4 + 0x1C1) = 0;
            return;
        }
        *(u8 *)(gUnk_03005CF4 + 0x1B5) = (s8) temp_r0_3;
        return;
    }
    sub_08068070((u32) sub_0805A43C, 0U);
    *(u16 *)((u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4() + 0x11E) = 5;
    var_r3_2 = *(u32 *)(sp4 + 0x18 + temp_r4_2);
    var_r4_7 = 0;
loop_70:
    temp_r1_7 = gUnk_030034E0 + (var_r4_7 * 0x10);
    if ((*(u16 *)(temp_r1_7 + 0x150) != *(u32 *)(sp4 + 0x10 + temp_r4_2)) || (*(u16 *)(temp_r1_7 + 0x152) != *spC) || (var_r3_2 -= 1, *(u16 *)(temp_r1_7 + 0x150) = 0U, *(u16 *)(temp_r1_7 + 0x152) = 0U, (var_r3_2 != 0))) {
        var_r4_7 += 1;
        if (var_r4_7 <= 0x18U) {
            goto loop_70;
        }
    }
    temp_r4_7 = *(u32 *)(sp4 + 0x1C + temp_r4_2);
    if (*(u32 *)(sp4 + 0x20 + temp_r4_2) != 0) {
        sub_08068070((u32) callback5990C56, temp_r4_7);
    } else {
        sub_08068070((u32) sub_08059954, temp_r4_7);
    }
    sub_08068820(sub_0805A474, *(u32 *)(sp4 + 0x28 + temp_r4_2) + 5, *sp10);
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080567D4);
#endif
void sub_08056CB4(u32 value)
{
    u8 *base;
    if (sub_080020F4() != 0)
        return;
    if (sub_0800CE30())
        base = (u8 *)gUnk_03005CF4 + 0x1C1;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1B5;
    {
        register s32 check asm("r0") = *base;
        if (check > 7)
            return;
    }
    value += 8;
    sub_08068070(sub_0805A43C, value);
    value = (u8)value;
    if (sub_0800CE30())
        base = (u8 *)gUnk_03005CF4 + 0x1C1;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1B5;
    *base = value;
}
void sub_08056D2C(void)
{
    if (sub_08000470(gUnk_03005CF4 + 0x1794) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x1794);
        while (sub_08000470(gUnk_03005CF4 + 0x1794) != 0)
            sub_080003F0();
    }
    sub_08001538(gUnk_03005CF4);
    gUnk_03005CF4 = 0;
}
extern s32 sub_08019FA8();
struct Bits56D80 { u16 x0 : 7, x : 9; u16 y0 : 3, y : 9, y1 : 4; u8 f : 6; };
u32 sub_08056D80(s16 *pos, u16 rx, u16 ry)
{
    u32 n = sub_08002164();
    u32 found = 0;
    u32 i;
    u8 f;
    if (sub_08019FA8() == 0)
        return 0;
    for (i = 0; i < n; i++) {
        u8 *p = (u8 *)&gUnk_03003CE0[i];
        struct Bits56D80 *b = *(struct Bits56D80 **)(p + 0x148);
        s32 d;
        s32 e;
        f = b->f;
        if (f & 0x20)
            continue;
        if (*(u32 *)(p + 0x30) & 0x2000)
            continue;
        {
            u32 bx = b->x;
            u32 by = b->y;
            d = pos[0] - bx;
            if (d < 0)
                d = -d;
            if (d >= rx)
                continue;
            e = pos[1] - by;
            if (e < 0)
                e = -e;
            if (e < ry) {
                found = 1;
                break;
            }
        }
    }
    return found;
}
void sub_08056E24(void)
{
    gGameState->flags |= 8;
}
void sub_08056E38(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFF7 & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056E50(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 3) & 1;
}
void sub_08056E64(void)
{
    gGameState->flags |= 0x10;
}
void sub_08056E78(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFEF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056E90(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 4) & 1;
}
void sub_08056EA4(void) {
    if (sub_08000470(gUnk_03005CF4 + 0x17E4) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x17E4);
    }
}
struct Ent6ED0 { u32 a, b, c, d; u32 task[2]; u32 f18; void (*f1C)(); u32 f20; u32 pad[3]; u32 f30; u32 f34; };
struct GS6ED0 { u8 pad[0x1D34]; struct Ent6ED0 ents[5]; };
extern struct GS6ED0 *gs6ED0 asm("gUnk_03005CF4");
extern void sub_0805A6B8();
void sub_08056ED0(u32 a, u32 b, u32 c, u32 d)
{
    u32 i;
    u32 r;
    struct Ent6ED0 *e;
    u32 mem;
    i = 0;
    while (1) {
        if (i > 4) return;
        r = sub_08000470((u32)gs6ED0->ents[i].task);
        if (r == 0) break;
        i++;
    }
    e = &gs6ED0->ents[i];
    e->a = a;
    e->b = b;
    e->c = c;
    e->d = d;
    e->f1C = sub_0805A6B8;
    mem = (u32)sub_08001494(0x400);
    e->f30 = mem;
    e->f20 = mem + 0x3FC;
    e->f18 = 0x46;
    e->f34 = r;
    sub_08000274(e->task, e);
}
s32 sub_08056F78(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 5) & 1;
}
void sub_08056F8C(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFDF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
void sub_08056FA4(void)
{
    gGameState->flags |= 0x20;
}
void sub_08056FB8(u16 arg0, u16 arg1) {
    sub_08026CD0(arg0, arg1, 0);
}
void sub_08056FCC(void)
{
    gGameState->flags |= 0x40;
}
void sub_08056FE0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFBF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056FF8(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 6) & 1;
}
s32 sub_0805700C(void)
{
  s32 var_r2;
  s8 *new_var2;
  s8 *new_var;
  u32 var_r1;
  var_r2 = 0;
  var_r1 = 0;
  new_var2 = (new_var = ((s8 *) gUnk_03004210) + 4);
  do
  {
    if (((1 << var_r1) & (*((s32 *) new_var2))) != 0U)
    {
      var_r2 += 1;
    }
    var_r1 += 1;
  }
  while (var_r1 <= 0x16U);
  return var_r2;
}
u16 sub_08057038(void)
{
    u32 count = 0;
    u32 i = 10;
    u32 *p = (u32 *)gUnk_03004210;
    u32 one = 1;
    u32 bits = p[3];
    for (; i <= 19; i++)
        if ((one << i) & bits)
            count++;
    return count;
}
u32 sub_08057068(void *arg)
{
    u8 *entry;
    u32 data;
    u32 i;
    if (*(u32 *)((u8 *)gUnk_03005CF4 + 0x54) == 0)
        return 0;
    entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    data = 0x80010;
    for (i = 0; i <= 14; i++, entry += 0x70) {
        register u8 *state asm("r0") = (u8 *)gUnk_03005CF4;
        u32 flag = 1 << i;
        if ((*(u32 *)(state + 0x54) & flag) && (*(u32 *)(entry + 0x3C) & 0x10)) {
            if (sub_08021FE0(arg, entry + 8, &data, entry + 0x18))
                return 1;
        }
    }
    return 0;
}
void sub_080570DC(u32 all)
{
    extern u32 gUnk_03005CF0;
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    register u32 i asm("r5");
    i = 0;
    do {
        if (sub_08000470((u32)entry))
            sub_080003A8((u32)entry);
        i++;
        entry += 0x28;
    } while (i <= 29);
    if (all) {
        entry = (u8 *)gUnk_03005CF4 + 0x12E4;
        i = 0;
    do {
            if (sub_08000470((u32)entry))
                sub_080003A8((u32)entry);
            i++;
            entry += 0x28;
        } while (i <= 29);
    }
    {
    u8 *objects = (u8 *)gUnk_03005CF4 + 0x7A4;
    i = 0;
    do {
        u8 *task = objects + 0x48;
        if (sub_08000470((u32)task))
            sub_080003A8((u32)task);
        i++;
        objects += 0x70;
    } while (i <= 14);
    }
    gUnk_03005CF0 = 0;
}
void sub_08057170(void)
{
    u32 i, j;
    for (i = 0; i < 20; i++)
        for (j = 0; j < 5; j++) {
            register u8 *base asm("r0") = (u8 *)gUnk_03005CF4;
            u32 index = j + i * 5;
            base += 0x1C8;
            base += index;
            *base = 0;
        }
}
