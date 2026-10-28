#include "global.h"
extern u32 gTbl084F0AC0[] asm("gUnk_084F0AC0");
extern void sub_080887D4();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");

void sub_08086860(void);
void sub_08087CC0(void);
void sub_08087A5C(void);
void sub_08087788(void);
void sub_080878AC(void);

extern u32 gUnk_084F26E4[];

extern u32 gUnk_084F4818[];

INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08087CC0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080887D4);
struct Task6450 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task6450 gTask6450 asm("gUnk_03006450");
void sub_08088914(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08086860;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task3480 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task3480 gTask3480 asm("gUnk_03003480");
extern void sub_08087788();
void sub_0808894C(u16 a, u32 b, u16 c, u32 d)
{
    u32 p1 = b << 16 | a;
    u32 p2 = d << 16 | c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_08087788;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_0808899C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08087CC0;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task61B0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task61B0 gTask61B0 asm("gUnk_030061B0");
void sub_080889D4(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1);
}
extern void sub_080878AC();
void sub_08088A18(u16 a, u32 b, u32 c)
{
    u32 p1 = b << 16 | a;
    u32 p2 = c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_080878AC;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_08088A60(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x10000);
}
void sub_08088AA8(u32 arg)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u8 *e;
    u32 i;
    u8 *t;
    u32 r;
    for (e = base + 0x7A4, i = 0, t = base + 0x7EC; i <= 0xE; i++, e += 0x70, t = e + 0x48) {
        r = sub_08000470((u32)t);
        if (r == 0) {
            *(u16 *)(e + 0x40) = i;
            *(u32 *)(e + 0x68) = sub_08001494(0x800);
            *(u32 *)(e + 0x54) = (u32)sub_080887D4;
            *(u32 *)(e + 0x58) = *(u32 *)(e + 0x68) + 0x7FC;
            *(u32 *)(e + 0x50) = 0xA;
            *(u32 *)(e + 0x6C) = r;
            sub_08000274_3((u32)t, (u32)e, arg);
            sub_08057624(2);
            break;
        }
    }
}
void sub_08088B24(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x20000);
}
u32 sub_08088B6C(u8 *tbl, u32 arg1)
{
    u8 *p = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    u32 i;
    u16 *e;
    s32 d;
    u8 *gs;
    u16 zero;
    for (i = 1, zero = 0; i <= 3; i++) {
        e = (u16 *)(tbl + (*(u16 *)((u8 *)gUnk_03005CF4 + 0x36) * 36 + 4) + i * 8);
        d = (*(s32 *)(p + 0x8C) >> 11) - e[0];
        if (d < 0)
            d = -d;
        if (d <= 1 && (*(s32 *)(p + 0x90) >> 11) == e[1]) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            gs = (u8 *)gUnk_03005CF4;
            *(u16 *)(gs + 0x36) = arg1;
            *(u16 *)(gs + 2) = e[2];
            *(u32 *)(gs + 0x71C) = gTbl084F0AC0[e[2]];
            *(u16 *)(gs + 0x10) = zero;
            *(u16 *)(gs + 0x1C) = zero;
            return 1;
        }
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088C24);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088F30);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089204);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089384);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089500);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089784);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080898D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089AE4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089CA0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089EC4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A008);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A294);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A380);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A4D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A744);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A830);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A984);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AA70);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AC08);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AD90);
#ifdef NONMATCHING
void sub_0808AFA4(const u16 *pos)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x8C) = (u32)pos[0] << 8;
    *(u32 *)(state + 0x90) = (u32)pos[1] << 8;
    *(u32 *)(state + 0x94) = *(u32 *)(state + 0x8C);
    *(u32 *)(state + 0x98) = *(u32 *)(state + 0x90);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFA4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFE8);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808B978);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C020);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C0C4);
#ifdef NONMATCHING
extern u8 gUnk_084F0C28[];
extern u8 gUnk_084F0C8A[];
extern void sub_0802F208(void);
extern void sub_080003F4(s32);
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern void sub_080290E4(s32, s32);
extern void sub_080257D4(void *, s32);
extern void sub_0801A664(s32, s32);
/* The first team-count loop stops at the local player, as in the original.
 * Only indices 0..3 select a winner message; the original skips other indices.
 * Explicit shifts retain subtraction before table scaling; registers still differ. */
void sub_0808CB58(void) {
    u32 anim[13];
    s32 counts[4];
    s32 teams[4];
    u32 textId;
    s32 *sp5C;
    s16 *var_r0_3;
    s32 *temp_r0_2;
    s32 *temp_r2_3;
    s32 *var_r0;
    s32 *var_r1;
    s32 *var_r5_4;
    s32 *var_r6_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    s32 var_r1_2;
    s32 var_r6;
    u16 temp_r0_4;
    u16 temp_r5;
    u32 temp_r0_3;
    u32 var_r2;
    register u32 var_r4 asm("r4");
    u32 var_r5_3;
    u32 var_r6_3;
    register u32 var_sl asm("r10");
    u8 *var_r5;
    u8 *var_r5_2;
    u8 temp_r0;
    u8 *players;
    u32 stride;
    s32 tableIndex;
    s32 tableOffset;
    u16 tableY;
    u8 *current;
    u8 *players2;
    register u8 *table asm("r4");
    register s32 *countBase asm("r8");


    switch ((u32)gUnk_03003470) {
    case 0: sub_08065158(anim, 0x50006, 0, -1, 0); break;
    case 1: sub_08065158(anim, 0x50007, 0, -1, 0); break;
    case 2: sub_08065158(anim, 0x50008, 0, -1, 0); break;
    case 3: sub_08065158(anim, 0x50009, 0, -1, 0); break;
    case 4: sub_08065158(anim, 0x5000A, 0, -1, 0); break;
    }
    sub_0800CF58();
    sub_08028AAC(0, 0x79, 0x1BE, 0);
    sub_080290E4(0, 4);
    sp5C = teams;
    countBase = counts;
    while (sub_08067C18() == 0) sub_080003F0();
    while (sub_08067C08() == 0) sub_080003F0();
    sub_08067BF8();
    var_r6 = 0;
    var_r4 = 0;
    players = (u8 *)gUnk_03003CE0;
    stride = 0x14C;
    var_r5 = players + 0x68;
    while ((var_r4 < sub_08002164()) && (sub_080020F4() != var_r4)) {
        if (*((players + stride * sub_080020F4()) + 0x68) == *var_r5) {
            var_r6 += 1;
        }
        var_r5 += 0x14C;
        var_r4 += 1;
    }
    players2 = (u8 *)gUnk_03003CE0;
    if (*((players2 + 0x14C * sub_080020F4()) + 0x68) != 0) {
        table = gUnk_084F0C8A;
        tableIndex = *((players2 + 0x14C * sub_080020F4()) + 0x68) - 3;
        tableOffset = ((tableIndex << 1) + tableIndex) << 1;
        temp_r5 = *(u16 *)(table + tableOffset);
        tableIndex = *((players2 + 0x14C * sub_080020F4()) + 0x68) - 3;
        tableOffset = ((tableIndex << 1) + tableIndex) << 1;
        table += 2;
        tableY = (var_r6 * 10) + *(u16 *)(tableOffset + table);
        sub_08028AAC(0, temp_r5, tableY, 0);
        tableIndex = *((players2 + 0x14C * sub_080020F4()) + 0x68) - 3;
        tableOffset = ((tableIndex << 1) + tableIndex) << 1;
        table += 2;
        sub_080290E4(0, *(s16 *)(tableOffset + table));
    } else {
        table = gUnk_084F0C8A;
        sub_08028AAC(0, (s32) (u16) ((var_r6 << 5) + *(u16 *)(table + 0x18)), (s32) *(u16 *)(table + 0x1A), 0);
        sub_080290E4(0, *(s16 *)(table + 0x1C));
    }
    var_r4 = 0;
    var_r6_2 = sp5C;
    var_r5_2 = ((u8 *)gUnk_03003CE0 + 0x68);
    while (var_r4 < sub_08002164()) {
        *var_r6_2 = (s32) *var_r5_2;
        var_r6_2 += 1;
        var_r5_2 += 0x14C;
        var_r4 += 1;
    }
    sub_08057328(0, &sub_0802F208);
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = 0U;
    sub_08057934();
    sub_080003F4(0x09999000);
    var_r5_3 = 0;
loop_27:
    if (sp5C[sub_080020F4()] == 0) {
        sub_08015C14();
    }
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = 0U;
    var_r4 = 0;
    var_r0 = countBase;
    do {
        *var_r0 = 0;
        var_r0 += 1;
        var_r4 += 1;
    } while (var_r4 <= 3U);
    var_r4 = 0;
    while (var_r4 < sub_08002164()) {
        temp_r2 = 0x14C * var_r4;
        current = (u8 *)gUnk_03003CE0 + temp_r2;
        if ((((u32) (**(u8 **)(current + 0x148) << 0x1C) >> 0x1C) != 0xB) && !(*(u32 *)(current + 0x30) & 0x2000)) {
            temp_r0 = *(current + 0x68);
            if (temp_r0 != 0) {
                temp_r0_2 = &countBase[temp_r0 - 3];
                *temp_r0_2 += 1;
            }
        }
        var_r4 += 1;
    }
    var_r2 = 0;
    var_r4 = 0;
    var_r1 = countBase;
    do {
        if (*var_r1 != 0) {
            var_r2 += 1;
            (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = var_r4;
        }
        var_r1 += 1;
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
    if (var_r2 <= 1U) {
        temp_r0_3 = var_r5_3;
        var_r5_3 += 1;
        if (temp_r0_3 > 2U) goto stable;
    } else {
        var_r5_3 = 0;
    }
    sub_08057624(1U);
    goto loop_27;
stable:
    if (var_r2 != 1) {

    } else {
        var_r6_3 = 0;
        var_r4 = 0;
        var_r5_4 = sp5C;
        while (var_r4 < sub_08002164()) {
            temp_r1 = *var_r5_4;
            if ((temp_r1 != 0) && ((temp_r1 - 3) == (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)))) {
                var_r6_3 += 1;
            }
            var_r5_4 += 1;
            var_r4 += 1;
            }
        while (sub_0805EF90() != 0) sub_080003F0();
        if (var_r6_3 <= 1U) {
            var_r4 = 0;
            goto check_player;
next_player:
            var_r4 += 1;
check_player:
            if (var_r4 >= sub_08002164()) goto found_player;
            temp_r2_2 = 0x14C * var_r4;
            if (*(u32 *)((u8 *)gUnk_03003CE0 + temp_r2_2 + 0x30) & 0x2000) goto next_player;
            if (*((u8 *)gUnk_03003CE0 + temp_r2_2 + 0x68) == 0) goto next_player;
found_player:
            switch (var_r4) {
            case 0: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FB); break;
            case 1: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FC); break;
            case 2: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FD); break;
            case 3: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FE); break;
            }
        } else {
            temp_r0_4 = *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A);
            switch (temp_r0_4) {
            case 0: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FF); break;
            case 1: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140200); break;
            case 2: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140201); break;
            case 3: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140202); break;
            }
        }
        *((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x68) = 0;
        sub_0806617C();
        while (sub_0805EEFC((void *)var_sl) == 0) sub_080003F0();
    }
    sub_080257D4(&gUnk_084F0C28, 0);
    sub_08056E24();
    if (sp5C[sub_080020F4()] == 0) {
        temp_r2_3 = (s32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x30);
        *temp_r2_3 |= 0x400;
        sub_08067D74();
    }
    while (sub_08056E90() == 0) sub_08057624(1U);
    if ((sp5C[sub_080020F4()] - 3) == (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A))) {
        (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x58)) = 0;
    } else {
        var_r1_2 = sp5C[sub_080020F4()];
        if (var_r1_2 == 0) {
            var_r0_3 = (s16 *)(*(u8 **)&gUnk_03005CF4 + 0x58);
        } else {
            var_r0_3 = (s16 *)(*(u8 **)&gUnk_03005CF4 + 0x58);
            var_r1_2 = 2;
        }
        *var_r0_3 = (s16) var_r1_2;
    }
    (*(u32 *)(*(u8 **)&gUnk_03005CF4 + 0x40)) = 0;
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x36)) = 1;
    sub_0801A664(0, 0x14);
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808CB58);
#endif
extern void sub_0808D118(void);
void sub_0808D05C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = (u32)sub_0808D118;
    if (sub_0800CB9C())
        gTask6450.fC = (u32)sub_0808C0C4;
    else
        gTask6450.fC = (u32)sub_0808AFE8;
    sub_08000274((u32)&gTask6450, 0);
}
void sub_0808D0B0(void) {
    sub_08057934();
    sub_08057984();
    sub_080587E4();
}
void sub_0808D0C4(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    if ((*(u32 *)(state + 0x30) & 0x4000) == 0) {
        do {
            sub_08057624(1);
        } while ((*(u32 *)(state + 0x30) & 0x4000) == 0);
    }
    sub_08057DD0(0x78, 0x14A, 0x78, 0x50, (u32)sub_0808C020, 0);
}
void sub_0808D118(void) {

}
u32 sub_0808D11C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D190(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D204(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern void sub_08098108(void);
s32 sub_0808D278(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_08098108, (u32)sub_08099720);
    sub_0800CD9C();
fail:
    return 0;
}
u32 sub_0808D31C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D390(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern void sub_08099838(void);
s32 sub_0808D404(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_08099838, (u32)sub_0809ADE8);
    sub_0800CD9C();
fail:
    return 0;
}
