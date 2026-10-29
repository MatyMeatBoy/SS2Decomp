#include "global.h"

extern s32 sub_08074398(u16, u16, s32);

struct Task3E2C { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern vu32 gMask3E2C asm("gUnk_030063E0");
extern u8 *gInfo3E2C asm("gUnk_03006380");
extern u8 *gTasks3E2C asm("gUnk_030063B0");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_08073CF4();
extern void sub_0807A120();
void sub_08073E2C_v(u32 a, u32 b, u32 c, u32 d) asm("sub_08073E2C");
void sub_08073E2C_v(u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    u32 mem;
    u32 off;
    u32 *e;
    struct Task3E2C *t;
    vu32 *m = &gMask3E2C;
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    if (d != 0)
        d = 1;
    {
        u8 **pi = &gInfo3E2C;
        u8 *p = *pi;
        off = i * 0x18;
        e = (u32 *)(off + (u32)p);
    }
    e[0] = 0;
    e[1] = i;
    e[2] = d;
    e[3] = c;
    e[5] = a;
    e[4] = b;
    mem = sub_08001494(0x400);
    {
        u8 *q = gTasks3E2C;
        t = (struct Task3E2C *)(i * 0x28 + (u32)q);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08073CF4;
    t->f8 = 0x34;
    t->f10 = mem + 0x3FC;
    t->f24 = (u32)sub_0807A120;
    sub_08000274_2(t, gInfo3E2C + off);
    gMask3E2C |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08073EE8);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807414C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074398);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074530);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080746A4);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074818);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807498C);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074B00);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074C74);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08074DE8);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075088);
struct Task5494 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMasks5494[] asm("gUnk_030063E0");
extern u8 *gLists5494[] asm("gUnk_030063B0");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08075088();
void sub_08075494(u32 who)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task5494 *t;
    {
        vu32 *b = gMasks5494;
        m = &b[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists5494[who];
        t = (struct Task5494 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f8 = 0x34;
    t->fC = (u32)sub_08075088;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who, i);
    gMasks5494[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075520);
extern void sub_08075520();
void sub_080756EC(u32 who)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task5494 *t;
    {
        vu32 *b = gMasks5494;
        m = &b[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists5494[who];
        t = (struct Task5494 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    t->f8 = 0x34;
    t->fC = (u32)sub_08075520;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who, i);
    gMasks5494[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08075778);
struct Task60E8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info60E8 { u32 who, i, a, pad, c, b; };
extern u32 gMasks60E8[] asm("gUnk_030063E0");
extern u8 *gLists60E8[] asm("gUnk_030063B0");
extern u8 *gInfo60E8[] asm("gUnk_03006380");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_08075778();
void sub_080760E8(u32 who, u32 a, u32 b, u32 c)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task60E8 *t;
    struct Info60E8 *e;
    {
        vu32 *mb = gMasks60E8;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x3C0);
    {
        u8 *p = gLists60E8[who];
        t = (struct Task60E8 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo60E8[who];
        e = (struct Info60E8 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->c = c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08075778;
    t->f10 = mem + 0x3BC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks60E8[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080761A4);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08076A88);
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08076BA0);
struct Task7444 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info7444 { u32 who, i, a, pad, cd, b; };
extern u32 gMasks7444[] asm("gUnk_030063E0");
extern u8 *gLists7444[] asm("gUnk_030063B0");
extern u8 *gInfo7444[] asm("gUnk_03006380");
extern void sub_08076BA0();
void sub_08077444(u32 who, u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task7444 *t;
    struct Info7444 *e;
    {
        vu32 *mb = gMasks7444;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x800);
    {
        u8 *p = gLists7444[who];
        t = (struct Task7444 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo7444[who];
        e = (struct Info7444 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->cd = d << 16 | c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08076BA0;
    t->f10 = mem + 0x7FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks7444[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077508);
struct Task7D04 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMasks7D04[] asm("gUnk_030063E0");
extern u8 *gLists7D04[] asm("gUnk_030063B0");
extern void sub_08077508();
void sub_08077D04(u32 who, u32 b)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task7D04 *t;
    u8 **l;
    who += 4;
    i = 0;
    {
        vu32 *mb = gMasks7D04;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists7D04;
        l = &lb[who];
    }
    ((struct Task7D04 *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task7D04 *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08077508;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who - 4, b << 16 | i);
    gMasks7D04[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08077DAC);
extern void sub_08077DAC();
void sub_0807854C(u32 who, u32 b)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task7D04 *t;
    u8 **l;
    who += 4;
    i = 0;
    {
        vu32 *mb = gMasks7D04;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists7D04;
        l = &lb[who];
    }
    ((struct Task7D04 *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task7D04 *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08077DAC;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who - 4, b << 16 | i);
    gMasks7D04[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_080785F4);
extern void sub_080785F4();
void sub_08078B24(u32 who, u32 b)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task7D04 *t;
    u8 **l;
    who += 4;
    i = 0;
    {
        vu32 *mb = gMasks7D04;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists7D04;
        l = &lb[who];
    }
    ((struct Task7D04 *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task7D04 *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_080785F4;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who - 4, b << 16 | i);
    gMasks7D04[who] |= 1 << i;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08078BCC);
struct Task93BC { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u32 gMasks93BC[] asm("gUnk_030063E0");
extern u8 *gLists93BC[] asm("gUnk_030063B0");
extern void sub_08078BCC();
void sub_080793BC(u32 who)
{
    u32 i;
    vu32 *m;
    u32 mem;
    struct Task93BC *t;
    u8 **l;

    i = 0;
    {
        vu32 *mb = gMasks93BC;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    {
        u8 **lb = gLists93BC;
        l = &lb[who];
    }
    ((struct Task93BC *)(i * 0x28 + (u32)*l))->f8 = 0x34;
    mem = sub_08001494(0x400);
    t = (struct Task93BC *)(i * 0x28 + (u32)*l);
    t->f20 = mem;
    if (mem == 0)
        return;
    t->fC = (u32)sub_08078BCC;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_3((u32)t, who, i);
    gMasks93BC[who] |= 1 << i;
}
#ifdef NONMATCHING
struct Info458 { u32 who, i, a, c, d, b; };
extern u32 gMasks458[] asm("gUnk_030063E0");
struct Spr458 { u32 f0, f4, f8, fC; u8 p10[12]; u8 f1C, f1D; u8 p1E[22]; };
struct Box458 { u16 w, h; };
struct Pl458 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 active; u8 p69[5]; u8 b6E; u8 p6F[0x1D]; s32 pos[2]; u8 p94[0x74]; u32 lastHit; u8 p10C[0x40]; };
struct En458 { u8 p0[0x14]; s32 pos[2]; u8 p1C[0x38]; u32 lastHit; u8 p58[0x184]; u8 active; u8 p1DD[0x51]; u8 bw, bh; u8 p230[0xB0]; };
extern struct Pl458 gPl458[] asm("gUnk_03003CE0");
extern struct En458 *gEn458 asm("gUnk_030056F4");
extern void sub_08065158_458(void *, u32, u32, u32, u32) asm("sub_08065158");
extern void sub_08065370_458(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_0800BC08_458(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void sub_08007870_458(s32, s32, u32, u32, u8, void *, u32, u32) asm("sub_08007870");
extern void sub_0801FB14_458(s32 *, s32 *, u32) asm("sub_0801FB14");
extern s32 sub_08021FE0_458(s32 *, s32 *, s32 *, struct Box458 *) asm("sub_08021FE0");
extern void sub_0801F1C4_458(s32 *, void *, u32) asm("sub_0801F1C4");
extern void sub_08029CEC_458(s32, s32, s32) asm("sub_08029CEC");
extern void sub_0801FC34_458(s32 *, s32 *, u32) asm("sub_0801FC34");
extern void sub_08022028_458(s32 *, void *, u32) asm("sub_08022028");
extern void sub_08029A7C_458(s32, u32, s32) asm("sub_08029A7C");
extern u8 *sub_08007290_458(u32) asm("sub_08007290");
void sub_08079458(struct Info458 *info)
{
    struct Spr458 spr;
    s16 dx, dy;
    u16 frame, phase;
    struct { s32 x, y; } pos;
    s32 size;
    struct Box458 box;
    u16 dmg;
    u32 k, who, i, big, local;
    u8 *obj;
    s32 timer;

    u32 shade;
    u16 j;
    u32 r;
    struct En458 *e;
    struct Pl458 *p;
    
    local = sub_080020F4();
    pos.x = info->a;
    pos.y = info->b;
    who = info->who;
    i = info->i;
    phase = 0;
    frame = 0;
    sub_08065158_458(&spr, 0x500AF, 0, 0x80000000, 0);
    switch (info->c) {
    case 0:
        timer = 0xB4;
        size = 0x00200030;
        obj = sub_08007290_458(0x0010000D);
        dmg = sub_080008C8() % 20;
        dmg += 50;
        big = 0;
        break;
    case 2:
        timer = 0x78;
        size = 0x00200030;
        obj = sub_08007290_458(0x0010000D);
        dmg = sub_080008C8() % 20;
        dmg += 50;
        big = 0;
        break;
    case 4:
        timer = 0;
        size = 0x00200030;
        obj = sub_08007290_458(0x0010000D);
        dmg = sub_080008C8() % 20;
        dmg += 50;
        big = 0;
        break;
    case 1:
        timer = 0xB4;
        size = 0x00300040;
        obj = sub_08007290_458(0x0010000E);
        dmg = sub_080008C8() % 40;
        dmg += 100;
        big = 1;
        break;
    case 3:
        timer = 0x78;
        size = 0x00300040;
        obj = sub_08007290_458(0x0010000E);
        dmg = sub_080008C8() % 40;
        dmg += 100;
        big = 1;
        break;
    case 5:
        timer = 0;
        size = 0x00300040;
        obj = sub_08007290_458(0x0010000E);
        dmg = sub_080008C8() % 40;
        dmg += 100;
        big = 1;
        break;
    }
    k = obj[0xA8];
    if (timer != 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x17C);
    while (timer-- != 0) {
        sub_0800BC08_458((pos.x << 8) >> 16, (pos.y << 8) >> 16, &dx, &dy, 0x30, 0);
        shade = (u8)sub_0800BC44(pos.x >> 8, pos.y >> 8, 0);
        sub_08065370_458(&spr, k, &frame, &phase, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0) {
            u32 q = (u32)timer / 60;
            sub_0805FAC0(dx, dy - 8, q + 1, q ? 2 : 1);
            sub_08007870_458(dx, dy, 0, k, shade, &spr.f1C, spr.f8, spr.f0);
        }
        sub_080003F0();
    }
    sub_08022078(pos.x, pos.y);
    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0) {
        if (big == 0)
            sub_0805865C(0x2F);
        else
            sub_0805865C(0x30);
    }
    if (local == who || (sub_08002204() != 0 && who > 3)) {
        sub_0801FC34_458((s32 *)&pos, &size, dmg);
        for (j = 0; j <= 4; j++) {
            if (*(u32 *)&gUnk_030056FC & (1 << j)) {
                e = &gEn458[j];
                if (e->active != 0) {
                    box.w = e->bw;
                    box.h = e->bh;
                    if (sub_08021FE0_458((s32 *)&pos, e->pos, &size, &box))
                        sub_0801F1C4_458((s32 *)&pos, e, dmg);
                }
            }
        }
    }
    p = &gPl458[sub_080020F4()];
    if (p->state != 14 && p->active != 0 && p->state != 11 && !(p->flags & 0x2000)) {
        if (sub_0800CDF8() == 0 && sub_0800D1B0() == 0 && sub_0800CCCC() == 0) {
            box.h = 0x10;
            box.w = 0x10;
            if (sub_08021FE0_458((s32 *)&pos, p->pos, &size, &box)) {
                r = sub_080008C8() % 100;
                if (p->b6E == 0 || r >= p->b6E) {
                    sub_08029A7C_458(0, dmg, 1);
                } else {
                    sub_08022504(p->pos[0], p->pos[1]);
                    dmg = dmg / 4 ? dmg / 4 : 1;
                    sub_08029A7C_458(0, dmg, 1);
                    sub_0805865C(0x164);
                }
            }
        } else if (sub_0800CDC0() != 0 && gUnk_030056FC != 0) {
            box.h = 0x10;
            box.w = 0x10;
            if (sub_08021FE0_458((s32 *)&pos, p->pos, &size, &box))
                sub_08022028_458((s32 *)&pos, p, dmg);
        }
    }
    gMasks458[who] &= ~(1 << i);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_08079458);
#endif
struct Task9888 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct Info9888 { u32 who, i, a, c, d, b; };
extern u32 gMasks9888[] asm("gUnk_030063E0");
extern u8 *gLists9888[] asm("gUnk_030063B0");
extern u8 *gInfo9888[] asm("gUnk_03006380");
extern void sub_08000274_2(void *, void *) asm("sub_08000274");
extern void sub_08079458();
void sub_08079888(u32 who, u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task9888 *t;
    struct Info9888 *e;
    {
        vu32 *mb = gMasks9888;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists9888[who];
        t = (struct Task9888 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo9888[who];
        e = (struct Info9888 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->d = d;
    e->c = c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08079458;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks9888[who] |= 1 << i;
}
struct Spr948 { u32 f0, f4, f8, fC; u8 p10[12]; u8 f1C, f1D; u8 p1E[22]; };
struct Box948 { u16 w, h; };
struct Pl948 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 active; u8 p69[0x23]; s32 pos[2]; u8 p94[0x74]; u32 lastHit; u8 p10C[0x40]; };
struct En948 { u8 p0[0x14]; s32 pos[2]; u8 p1C[0x38]; u32 lastHit; u8 p58[0x184]; u8 active; u8 p1DD[0x51]; u8 bw, bh; u8 p230[0xB0]; };
extern struct Pl948 gPl948[] asm("gUnk_03003CE0");
extern struct En948 *gEn948 asm("gUnk_030056F4");
extern void sub_08065158_948(void *, u32, u32, u32, u32) asm("sub_08065158");
extern void sub_08065370_948(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_0800BC08_948(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void sub_08007870_948(s32, s32, u32, u16, u8, void *, u32, u32) asm("sub_08007870");
extern void sub_0801FB14_948(s32 *, s32 *, u32) asm("sub_0801FB14");
extern s32 sub_08021FE0_948(s32 *, s32 *, s32 *, struct Box948 *) asm("sub_08021FE0");
extern void sub_0801F1C4_948(s32 *, void *, u32) asm("sub_0801F1C4");
extern void sub_08029CEC_948(s32, s32, s32) asm("sub_08029CEC");
void sub_08079948(struct Info9888 *info)
{
    struct Spr948 spr;
    s16 dx, dy;
    u16 frame, phase;
    s32 pos[2];
    s32 size;
    struct Box948 box;
    u32 who, i, counter, local;
    s32 timer;
    u32 shade;
    u16 j;
    struct En948 *e;
    struct Pl948 *p;
    local = sub_080020F4();
    pos[0] = info->a;
    pos[1] = info->b;
    who = info->who;
    i = info->i;
    phase = 0;
    frame = 0;
    size = 0x00180020;
    counter = 0x88800000;
    sub_08065158_948(&spr, 0x500AF, 0, 0x80000000, 0);
    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x35);
    timer = 4;
    do {
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0)
            sub_08007870_948(dx, dy, 8, frame, shade, &spr.f1C, spr.f8, spr.f0);
        sub_080003F0();
    } while (timer-- != 0);
    sub_08065158_948(&spr, 0x5008C, 0, 0x80000000, 0);
    sub_08000AF0(0x17, (void *)spr.fC, 2);
    spr.f1C = 7;
    spr.f1D = 8;
    timer = 0xB4;
    if (sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(0x17A);
    while (timer-- != 0) {
        if (local == who || (sub_08002204() != 0 && who > 3)) {
            sub_0801FB14_948(pos, &size, 10);
            for (j = 0; j <= 4; j++) {
                if (*(u32 *)&gUnk_030056FC & (1 << j)) {
                    e = &gEn948[j];
                    if (e->active != 0 && e->lastHit != counter) {
                        box.w = e->bw;
                        box.h = e->bh;
                        if (sub_08021FE0_948(pos, e->pos, &size, &box)) {
                            sub_0801F1C4_948(pos, e, 10);
                            e->lastHit = counter;
                        }
                    }
                }
            }
        }
        p = &gPl948[sub_080020F4()];
        if (p->state != 14 && p->active != 0 && p->lastHit != counter && p->state != 11 && !(p->flags & 0x2000)) {
            if (sub_0800CCCC() == 0 && sub_0800CDF8() == 0 && sub_0800D1B0() == 0) {
                box.h = 0x10;
                box.w = 0x10;
                if (sub_08021FE0_948(pos, p->pos, &size, &box)) {
                    sub_08029CEC_948(1, 10, 1);
                    p->lastHit = counter;
                }
            } else if (sub_0800CDC0() != 0 && gUnk_030056FC != 0) {
                box.h = 0x10;
                box.w = 0x10;
                if (sub_08021FE0_948(pos, p->pos, &size, &box)) {
                    sub_08029CEC_948(1, 10, 1);
                    p->lastHit = counter;
                }
            }
        }
        if (!(gUnk_03002344 & 0x1F))
            counter++;
        sub_0800BC08_948((pos[0] << 8) >> 16, (pos[1] << 8) >> 16, &dx, &dy, 0x30, 0);
        shade = (u8)sub_0800BC44(pos[0] >> 8, pos[1] >> 8, 0);
        sub_08065370_948(&spr, 8, &frame, &phase, 1);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0)
            sub_08007870_948(dx, dy, 8, frame, shade, &spr.f1C, spr.f8, spr.f0);
        sub_080003F0();
    }
    gMasks9888[who] &= ~(1 << i);
}
extern void sub_08079948();
void sub_08079CC4(u32 who, u32 a, u32 b, u32 c, u32 d)
{
    u32 i = 0;
    vu32 *m;
    u32 mem;
    struct Task9888 *t;
    struct Info9888 *e;
    {
        vu32 *mb = gMasks9888;
        m = &mb[who];
    }
    while (*m & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = sub_08001494(0x400);
    {
        u8 *p = gLists9888[who];
        t = (struct Task9888 *)(i * 0x28 + (u32)p);
    }
    t->f20 = mem;
    if (mem == 0)
        return;
    {
        u8 *p = gInfo9888[who];
        e = (struct Info9888 *)(i * 0x18 + (u32)p);
    }
    e->who = who;
    e->i = i;
    e->a = a;
    e->b = b;
    e->d = d;
    e->c = c;
    t->f8 = 0x34;
    t->fC = (u32)sub_08079948;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_2(t, e);
    gMasks9888[who] |= 1 << i;
}
struct SprD84 { s32 f0, f4, f8, fC, f10, f14, f18; u8 b1C[0x18]; };
extern void sub_0800BC08_6(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern u32 sub_08065370_5r(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern void sub_08065158_5(void *, u32, u32, s32, s32) asm("sub_08065158");
extern void sub_08068A00(s32, s32, void *);
void sub_08079D84(struct Info9888 *info, u32 packed)
{
    struct SprD84 s;
    u16 a3C;
    u16 a3E;
    s16 x40;
    s16 y42;
    s32 pos[2];
    u16 done;
    s32 r;
    s32 x;
    s32 y;
    u8 k;
    sub_080020F4();
    sub_08065158_5(&s, 0x5008C, 1, -1, 0);
    sub_08000AF0(0x17, (void *)s.fC, 2);
    s.b1C[0] = 7;
    s.b1C[1] = 8;
    pos[0] = (packed & 0xFFFF) << 8;
    pos[1] = (packed >> 16) << 8;
    a3C = 0;
    a3E = 0;
    done = 0;
    sub_08068A00(pos[0], pos[1], info);
    while (sub_0800CB78() == 0 && done == 0) {
        done = sub_08065370_5r(&s, 0x15, &a3C, &a3E, done);
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (r = sub_0800CCCC()) == 0) {
            sub_0800BC08_6((s16)(x = pos[0] >> 8), (s16)(y = pos[1] >> 8), &x40, &y42, 16, r);
            k = sub_0800BC44(x, y, 0);
            if (gUnk_03003170.curLevel == 4 && sub_0800CDC0() != 0)
                k = 0;
            if (gUnk_03002344 & 1)
                sub_080659BC(&s, x40, y42 + 1, 0x15, a3C, k);
        }
        sub_080003F0();
    }
    gMasks9888[info->who] &= ~(1 << info->i);
}
extern void sub_08000274_9ed0(void *, void *, u32) asm("sub_08000274");
void sub_08079ED0(struct Info9888 *src, u32 x, u32 y)
{
    u32 i = 0;
    u32 mem;
    u32 w;
    u8 **lists;
    struct Task9888 *t;
    while (gMasks9888[*(vu32 *)&src->who] & (1 << i)) {
        i++;
        if (i > 0xF)
            return;
    }
    if (i > 0xF)
        return;
    mem = (u32)sub_08001494(0x400);
    lists = gLists9888;
    w = src->who;
    ((struct Task9888 *)(lists[w] + i * 0x28))->f20 = mem;
    if (mem == 0)
        return;
    *(struct Info9888 *)(gInfo9888[w] + i * 0x18) = *src;
    ((struct Info9888 *)(gInfo9888[src->who] + i * 0x18))->i = i;
    ((struct Task9888 *)(gLists9888[src->who] + i * 0x28))->f8 = 0x34;
    w = src->who * 4;
    t = (struct Task9888 *)(*(u8 **)((u8 *)gLists9888 + w) + i * 0x28);
    t->fC = (u32)sub_08079D84;
    t->f10 = t->f20 + 0x3FC;
    t->f24 = 0;
    sub_08000274_9ed0(t, *(u8 **)((u8 *)gInfo9888 + w) + i * 0x18, (x >> 8) | ((y >> 8) << 16));
    gMasks9888[src->who] |= 1 << i;
}
s32 sub_08079FD0(s32 arg0) {
    s16 temp_r1;
    s32 var_r4;
    u32 var_r5;
    void *temp_r6;

    temp_r6 = (&((struct Sz332 *)&gUnk_03003CE0)[sub_080020F4()]);
    var_r4 = 7;
    var_r5 = 0x80000;
loop_1:
    temp_r1 = sub_0806898C(arg0, var_r4) - 1;
    if (((s32) temp_r1 >= 0) && ((s32) M2C_FIELD(temp_r6, s16 *, 0xC2) >= (s32) temp_r1)) {
        return (s32) (var_r5 >> 0x10);
    }
    var_r5 += 0xFFFF0000;
    var_r4 -= 1;
    if (var_r4 <= 0) {
        return 0;
    }
    goto loop_1;
}
u16 sub_0807A028(u16 arg0) {
    return sub_08073EE8(arg0, 0x7FFFFFFF);
}
extern s32 sub_08074398_5(u16, u16, s32, s32, s32) asm("sub_08074398");
u16 sub_0807A040(u16 a, u16 b, s32 c, s32 d)
{
    return sub_08074398_5(a, b, c, d, 0x7FFFFFFF);
}
extern u8 gA7A064_6410[] asm("gUnk_03006410");
extern u8 gA7A064_6430[] asm("gUnk_03006430");
extern u32 gA7A064_63E0[] asm("gUnk_030063E0");
extern u32 gW7A064_641C asm("gUnk_0300641C");
extern u32 gA7A064_63B0[] asm("gUnk_030063B0");
extern u32 gA7A064_6380[] asm("gUnk_03006380");
extern u32 gW7A064_6370 asm("gUnk_03006370");
extern u32 gW7A064_6420 asm("gUnk_03006420");
void sub_0807A064(u32 k)
{

    u32 sz;
    gA7A064_6410[k] = 0;
    gA7A064_6430[k] = 0;
    gA7A064_63E0[k] = 0;
    gW7A064_641C = 0;
    gA7A064_63B0[k] = sub_08001494(0x280);
    sz = 0x180;
    gA7A064_6380[k] = sub_08001494(sz);
    if (k == 0) {
        gW7A064_6370 = sub_08001494(0x500);
        gW7A064_6420 = sub_08001494(sz);
    }
}
void sub_0807A0E0(void *arg0)
{
    u8 *p = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    u16 d = sub_0806898C(M2C_FIELD(arg0, s32 *, 0xC), M2C_FIELD(arg0, s32 *, 0x14)) - 1;
    u16 *f = (u16 *)(p + 0xC2);
    u32 n = *f - d;
    *f = n;
    if ((s16)n < 0)
        *f = 0;
}
void sub_0807A120(void) {

}
static inline u8 Sum_A124(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
u32 sub_0807A124(void)
{
    u32 sz = 0x1000;
    u8 *p = sub_08001494(sz);
    u8 *q = sub_08001494(sz);
    u32 r;
    memcpy(p, (void *)gUnk_030034E0, 0xCA4);
    memcpy(q, gUnk_03004210, 0x51C);
    p[0xCA4] = Sum_A124(p, 0xCA4);
    q[0x51C] = Sum_A124(q, 0x51C);
    sub_08001B14(*(u16 *)(gUnk_030034E0 + 0xE), p);
    r = (u16)sub_08001B14(*(u16 *)(gUnk_030034E0 + 0xE) + 8, q);
    if (r == 0) {
        r = sub_08001B54(*(u16 *)(gUnk_030034E0 + 0xE), p);
        r |= sub_08001B54(*(u16 *)(gUnk_030034E0 + 0xE) + 8, q);
        if (r == 0) {
            sub_08001538((s32)p);
            sub_08001538((s32)q);
            return 0;
        }
    }
    sub_08001538((s32)p);
    sub_08001538((s32)q);
    return r;
}
extern void sub_08001B04_4(u32, u32, void *, u32) asm("sub_08001B04");
static inline u8 Sum_A20C(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
s32 sub_0807A20C(u8 a)
{
    u32 sz = 0x1000;
    u8 *p = sub_08001494(sz);
    u8 *q = sub_08001494(sz);
    sub_08001B04_4(a, 0, p, sz);
    sub_08001B04_4(a + 8, 0, q, sz);
    if (p[0xCA4] == Sum_A20C(p, 0xCA4) && q[0x51C] == Sum_A20C(q, 0x51C)) {
        memcpy((void *)gUnk_030034E0, p, 0xCA4);
        memcpy(gUnk_03004210, q, 0x51C);
        sub_08001538((s32)p);
        sub_08001538((s32)q);
        return 1;
    }
    sub_08001538((s32)p);
    sub_08001538((s32)q);
    return 0;
}
s32 sub_0807A2E0(u8 a)
{
    u8 *p = sub_08001494(0xCA8);
    u8 *q = sub_08001494(0x520);
    u8 *t;
    u32 i;
    for (t = p, i = 0; i <= 0xCA7; i++)
        *t++ = 0;
    p[0xCA4] = 0;
    while ((u16)sub_08001B14(a, p))
        ;
    for (t = q, i = 0; i <= 0x51F; i++)
        *t++ = 0;
    q[0x51C] = 0;
    while ((u16)sub_08001B14(a + 8, q))
        ;
    sub_08001538((s32)p);
    sub_08001538((s32)q);
    return 1;
}
struct Save378 { u32 w0; u8 p4[6]; u16 hA, hC; u8 pE[0xE]; u32 w1C, w20; u8 p24[8]; u32 w2C; };
struct Sum378 { u8 valid, b1, b2, b3, b4, b5, b6, b7; u32 w8; u16 hC, hE; u8 name[12]; u32 a1C[8]; u32 a3C[12]; };
struct Blk20_378 { u32 w[8]; };
struct Blk30_378 { u32 w[12]; };
extern struct Save378 *gSave378 asm("gUnk_030034E0");
struct Opt378 { u32 w0, w4; u8 p8[0x14]; u16 h1C, h1E; u8 p20[0xC]; u32 w2C; };
extern struct Opt378 *gSave4210_378 asm("gUnk_03004210");
struct Pl378 { u8 p0[0x58]; struct Blk30_378 b58; u8 p88[0xC4]; };
extern struct Pl378 gPl378[] asm("gUnk_03003CE0");
extern s32 sub_0807A20C(u8);
extern void sub_08013850();
extern void CpuSet_378(void *, void *, u32) asm("CpuSet");
u32 sub_0807A378(struct Sum378 *e)
{
    u32 ret;
    u32 i, j;
    u32 zero;
    u32 t;
    sub_08013850();
    ret = 0;
    i = 0;
    zero = 0;
    do {
        if (sub_0807A20C(i) == 0) {
            vu16 z = 0;
            CpuSet_378((void *)&z, e, 0x01000036);
            i++;
        } else {
            struct Save378 *s;
            struct Opt378 *o;
            e->valid = 1;
            s = gSave378;
            e->b1 = s->hA;
            e->b2 = s->hC;
            e->b3 = s->w20;
            e->w8 = s->w1C;
            o = gSave4210_378;
            t = (o->w4 >> 12) & 1;
            e->b5 = t;
            e->b6 = zero;
            e->b7 = zero;
            if (t)
                ret = 1;
            switch (o->w0) {
            case 3:
            case 4:
                e->hE = o->h1C;
                e->hC = o->h1E;
                if (o->w2C & 0x200)
                    e->b7 = 1;
                break;
            default:
                e->hE = zero;
                e->hC = 0xFFFF;
                break;
            }
            sub_0801E024(&gPl378[sub_080020F4()]);
            sub_0801DD9C();
            *(struct Blk20_378 *)e->a1C = *(struct Blk20_378 *)((u8 *)gSave378 + 0x10);
            *(struct Blk30_378 *)e->a3C = gPl378[sub_080020F4()].b58;
            j = 0;
            i++;
            do {
                e->name[j] = ((u8 *)gSave378)[j];
                j++;
            } while (j <= 9);
        }
        e++;
    } while (i <= 7);
    return ret;
}
INCLUDE_ASM("asm/nonmatchings/code_08073E2C", sub_0807A4B4);
u8 sub_0807A544(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
static inline u8 Sum_A56C(const u8 *data, u32 length)
{
    u8 sum = 0;
    const u8 *p = data;
    u32 i;
    for (i = 0; i < length; i++, p++)
        sum += *p;
    return ~sum;
}
u32 sub_0807A56C(u8 sector)
{
    u32 sz = 0xCA8;
    u8 *data = (u8 *)sub_08001494(sz);
    sub_08001B04_4(sector, 0, data, sz);
    if (data[0xCA4] != Sum_A56C(data, 0xCA4)) {
        sub_08001538(data);
        return 0;
    }
    sub_08001538(data);
    return 1;
}
