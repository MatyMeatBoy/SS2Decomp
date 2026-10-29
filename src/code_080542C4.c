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
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055558);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080557CC);
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
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055974);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055A60);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055BA4);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055C58);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055D1C);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055E74);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080560D0);
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
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056538);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_0805664C);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080567D4);
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
