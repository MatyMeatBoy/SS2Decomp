#include "global.h"
extern u32 gA03005700[] asm("gUnk_03005700");
extern u32 gW030042E8 asm("gUnk_030042E8");
extern u32 gW030056F0 asm("gUnk_030056F0");
extern u16 gH03005724 asm("gUnk_03005724");
extern u32 gW030056F8 asm("gUnk_030056F8");
extern u32 gW030056FC asm("gUnk_030056FC");
extern u8 *gP030056F4 asm("gUnk_030056F4");

void sub_0800BC08(s32, s32, u16 *, s16 *, s32, s32);
extern u8 gUnk_03003E28[];
extern u32 *gUnk_084B139C[];
extern u32 *gUnk_084B13BC[];
extern u32 *gUnk_084B13E4[];
extern u32 *gUnk_084B1420[];
extern u32 *gUnk_084B1454[];
extern u32 *gUnk_084B148C[];
extern u32 *gUnk_084B14D0[];
extern u32 *gUnk_084B1504[];
extern u32 *gUnk_084B154C[];
extern u32 *gUnk_084B1590[];
extern u32 *gUnk_084B15E4[];
extern u32 *gUnk_084B15E8[];
extern u32 *gUnk_084B15F8[];
extern u32 *gUnk_084B160C[];
extern u32 *gUnk_084B1610[];

void sub_080153A4(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 angle;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(p->w26 + 0xF9);
    angle = (u16)(p->w26 * 40 + 0x80);
    while (p->wB6 == 0 && p->state == 5) {
        p->w1C = sub_08013E90((s16)angle, (s32 *)&p->pos8C, p->w1C,
                              (u16)sub_0800CCCC(), 0);
        sub_08013CEC((u8 *)p);
        sub_080003F0();
    }
    if (p->state != 0xA && p->state != 0xB) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
void sub_08015464(void)
{
    struct PlayerW12 *p = (struct PlayerW12 *)&gUnk_03003CE0[sub_080020F4()];
    u16 saved = p->w26;
    register u16 *done asm("r6");
    u32 initial;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(saved + 0xF9);
    {
        register u16 *view asm("r0") = &p->wB6;
        register u32 loaded asm("r1") = *view;
        asm("" : "+r"(view), "+r"(loaded));
        done = view;
        initial = loaded;
        asm("" : "+r"(done));
    }
    while (initial == 0 && p->state == 5) {
        u32 *counter = (u32 *)((u8 *)p + 0xDC);
            switch (*(u16 *)((u8 *)p + 0xB2)) {
            case 2:
            case 5:
            case 7:
                if (*(u16 *)((u8 *)p + 0xB4) == 1)
                    (*counter)++;
                break;
            }
            sub_080003F0();
            initial = *done;

    }
    if ((u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}


extern struct Task tasks15[] asm("gUnk_03003C40");
struct PlrKind15 { u8 pad0[0xC]; u16 sub; u8 padE[2]; u16 kind; u8 pad12[0x14C - 0x12]; };
extern struct PlrKind15 kinds15[] asm("gUnk_03003CE0");
void sub_080156FC();
void sub_080152CC();
struct Info15 { u32 kind:4; u32 mid:24; u32 top:4; u32 lo:14; u32 level:3; u32 hi:15; };
struct Plr15 {
    u16 id;
    u8 pad2[0x1A];
    u16 w1C;
    u8 pad1E[2];
    u16 state;
    u8 pad22[2];
    s16 w24;
    u16 w26;
    u16 w28;
    u8 pad2A[6];
    u32 flags;
    u8 pad34[0xC];
    s16 w40;
    u8 pad42[0x4A];
    struct V2W12 pos8C;
    struct V2W12 pos94;
    u8 pad9C[0xB0 - 0x9C];
    u16 wB0;
    u16 wB2;
    u16 wB4;
    u16 wB6;
    u16 wB8;
    u8 padBA[0xDC - 0xBA];
    s32 counterDC;
    u8 padE0[0x122 - 0xE0];
    u16 w122;
    u8 pad124[0x148 - 0x124];
    struct Info15 *info;
};
extern struct Plr15 players15[] asm("gUnk_03003CE0");
void sub_0801551C(void)
{
    s32 index = sub_080020F4();
    s32 memory;
    if (sub_08000470((u32)&tasks15[index]) != 0) {
        if (sub_080020F4() == index && (u16)(gUnk_03003CE0[index].state - 10) > 1) {
            if ((gUnk_03003CE0[index].flags & 0x2000) == 0)
                gUnk_03003CE0[index].state = 0;
        }
        return;
    }
    switch (kinds15[index].kind) {
    case 5:
        if (kinds15[index].sub != 4)
            tasks15[index].uC = sub_08015464;
        else
            tasks15[index].uC = sub_080153A4;
        break;
    case 4:
        tasks15[index].uC = sub_080152CC;
        break;
    default:
        return;
    }
    tasks15[index].u8 = 0x34;
    while ((tasks15[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks15[index].u10 = memory + 0x3FC;
    tasks15[index].u24 = 0;
    sub_08000274(&tasks15[index]);
}
void sub_08015620(s32 index)
{
    u8 unused[0x34];
    struct Plr15 *p = &players15[index];
    s32 self = sub_080020F4();
    u32 level;
    u32 timer;
    p->w122 = 0;
    level = p->info->level;
    timer = (level + 3) * 8;
    if (p->state != 0xD && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
        sub_0805865C(level + 0x100);
    while (timer != 0 && p->state == 5) {
        if (p->wB6 != 0) {
            timer = ((timer << 16) + 0xFFFF0000) >> 16;
            if (index == self && (timer & 0xF) == 0)
                p->counterDC++;
        }
        sub_080003F0();
    }
    if (index == self && (u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
#ifdef NONMATCHING
void sub_080156FC(s32 index)
{
    struct Plr15 *p = &players15[index];
    u32 count;
    u32 frame;
    count = p->info->level;
    p->wB0 = p->info->top;
    switch (count) {
    case 1:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 2:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 3:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 4:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 5:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 6:
        count = 5;
        p->wB0 += 0x10;
        break;
    case 7:
        count = 5;
        p->wB0 += 0x10;
        break;
    }
    p->wB8 = p->wB0;
    frame = 0;
    while (count != 0 && p->info->kind == 5) {
        if (!(p->wB2 & 1) && p->wB4 == 2 && count != 0) {
            p->counterDC++;
            sub_08077444(p->id, sub_0807A028(1), count, count, ++frame);
            if (frame > 2)
                frame = 0;
            count--;
        }
        sub_080003F0();
    }
    if (sub_080020F4() == index && (u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_080156FC);
#endif
void sub_08015820(s32 index)
{
    s32 memory;
    if (sub_08000470((u32)&tasks15[index]) != 0) {
        if (sub_080020F4() == index && (u16)(gUnk_03003CE0[index].state - 10) > 1) {
            if ((gUnk_03003CE0[index].flags & 0x2000) == 0)
                gUnk_03003CE0[index].state = 0;
        }
        return;
    }
    switch (kinds15[index].kind) {
    case 1:
        tasks15[index].uC = sub_08015620;
        break;
    case 8:
        tasks15[index].uC = sub_080156FC;
        break;
    default:
        return;
    }
    tasks15[index].u8 = 0x34;
    while ((tasks15[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks15[index].u10 = memory + 0x3FC;
    tasks15[index].u24 = 0;
    sub_08000274(&tasks15[index], index);
}
void sub_08015914(s32 index)
{
    struct Plr15 *p = &players15[index];
    struct Info15 *info = p->info;
    u32 level;
    u32 count;
    level = info->level;
    p->wB0 = info->top;
    p->wB0 += 8;
    count = 2;
    p->wB8 = p->wB0;
    if (p->info->kind == 5) {
        for (;;) {
            if ((p->wB2 == 1 || p->wB2 == 3) && p->wB4 == 1)
                p->counterDC++;
            if (p->wB6 != 0 && count != 0) {
                if (--count == 0) {
                    p->wB6 = count;
                    p->wB2 = count;
                    p->wB4 = count;
                }
            }
            p->pos94 = p->pos8C;
            p->w1C = sub_08013E90(((s32)gUnk_0847AD1C[level] >> 1) + p->w40, &p->pos8C, p->w1C,
                                  (u16)sub_0800CCCC(), 0);
            sub_08013CEC(p);
            sub_080003F0();
            if (count == 0 || p->info->kind != 5)
                break;
        }
    }
    if (sub_080020F4() == index && (u16)(p->state - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
void sub_08015A48(s32 index)
{
    struct Plr15 *p = &players15[index];
    struct Info15 *info = p->info;
    u32 count;
    count = info->level;
    p->wB0 = info->top;
    p->wB0 += 8;
    count++;
    p->wB8 = p->wB0;
    if (count != 0 && p->info->kind == 5) {
        for (;;) {
            if (p->wB6 != 0 && count != 0) {
                count--;
                p->counterDC++;
                p->wB6 = 0;
                p->wB2 = 0;
                p->wB4 = 0;
            }
            sub_080003F0();
            if (count == 0 || p->info->kind != 5)
                break;
        }
    }
    if (sub_080020F4() == index && (u32)(p->info->kind - 10) > 1) {
        if ((p->flags & 0x2000) == 0)
            p->state = 0;
    }
    p->w24 = 0;
    p->w28 = p->w26;
    p->w26 = 0;
    p->w122 = 0;
}
void sub_08015914();
void sub_08015A48();
void sub_08015B20(s32 index)
{
    s32 memory;
    if (sub_08000470((u32)&tasks15[index]) != 0) {
        if (sub_080020F4() == index && (u16)(gUnk_03003CE0[index].state - 10) > 1) {
            if ((gUnk_03003CE0[index].flags & 0x2000) == 0)
                gUnk_03003CE0[index].state = 0;
        }
        return;
    }
    switch (kinds15[index].kind) {
    case 6:
        tasks15[index].uC = sub_08015914;
        break;
    case 8:
        tasks15[index].uC = sub_08015A48;
        break;
    default:
        return;
    }
    tasks15[index].u8 = 0x34;
    while ((tasks15[index].u20 = memory = (s32)sub_08001494(0x400)) == 0)
        sub_080003F0();
    tasks15[index].u10 = memory + 0x3FC;
    tasks15[index].u24 = 0;
    sub_08000274(&tasks15[index], index);
}
void sub_08015C14(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 1;
}
void sub_08015C38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
}
void sub_08015C5C(s32 arg0, s32 arg1) {
    void *temp_r2;

    temp_r2 = (&((struct Sz332 *)&gUnk_03003CE0)[sub_080020F4()]);
    M2C_FIELD(temp_r2, s32 *, 0x9C) = arg0;
    M2C_FIELD((temp_r2 + 0x9C), s32 *, 4) = arg1;
    M2C_FIELD(temp_r2, s32 *, 0x30) = (s32) (M2C_FIELD(temp_r2, s32 *, 0x30) | 0x24);
}
void sub_08015C8C(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 0x80000;
    sub_08067D74();
}
void sub_08015CB4(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= 0xFFF7FFFF;
    sub_08067D74();
}
void sub_08015CE0(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags |= 0x100000;
}
void sub_08015D04(void) {
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->flags &= 0xFFEFFFFF;
}
void sub_08015D2C(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 2;
}
void sub_08015D50(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~2;
}
void sub_08015D74(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x1000;
}
void sub_08015D98(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFFFEFFF;
}
void sub_08015DC0(s32 *p)
{
    s32 v = *p;
    if (v <= 23) {
        *p = v - 8;
        if (*p <= 0) *p = 0;
    } else {
        *p = v - (v >> 1);
    }
}
void sub_08015DE0(s32 *value, s32 target)
{
    s32 current = *value;
    s32 step = (target - current) >> 1;
    *value = step > 0 ? current + step : current + 1;
    if (target <= *value)
        *value = target;
}
void sub_08015E00(s32 arg0)
{
  s8 *new_var;
  s32 temp_r0;
  new_var = (s8 *) (&gUnk_03003C10);
  *((s32 *) (new_var + 8)) = 0x34;
  temp_r0 = sub_08001494(0x400);
  *((s32 *) (new_var + 0x20)) = temp_r0;
  *((M2C_UNK **) (new_var + 0xC)) = &sub_08014170;
  *((s32 *) (new_var + 0x10)) = (s32) (temp_r0 + 0x3FC);
  *((s32 *) (new_var + 0x24)) = 0;
  sub_08000274(&gUnk_03003C10, arg0);
}
void sub_08015E3C(u8 *arg0, s32 arg1) {
    u16 r3;
    u16 *p;
    s32 r1;

    r3 = (u16)(*(s8 *)(arg0 + 0x6C) * 10 + gUnk_0847ACE8[arg1]);
    if ((s16)r3 < 0) {
        r3 = 0;
    }
    p = (u16 *)(arg0 + 0xC2);
    r1 = *p - (s16)r3;
    *p = r1;
    if ((s16)r1 < 0) {
        *p = 0;
    }
}
extern u16 gUnk_0847ACE8[];
u32 sub_08015E84(u8 *arg0)
{
    register s32 signedByte asm("r2") = (s8)arg0[0x6C];
    register s32 half asm("r1");
    asm("" : "+r"(signedByte));
    half = signedByte * 5;
    asm("" : "+r"(half));
    {
        s32 i = 7;
        register u16 *table asm("r2") = gUnk_0847ACE8;
        register s32 delta asm("r6") = half * 2;
        s16 *value;
        table += 7;
        asm("" : "+r"(table), "+r"(delta));
        value = (s16 *)(arg0 + 0xC2);
        for (; i >= 0; table--, i--) {
            u16 threshold = delta + *table;
            s32 current;
            if ((s16)threshold < 0)
                threshold = 0;
            asm("" : : : "memory");
            current = *value;
            asm("" : "+r"(current));
            if (current >= (s16)threshold)
                return (u16)i;
    }
    return 0;
    }
}



void sub_08015ED4(void) {

    gUnk_03003CE0[sub_080020F4()].flags |= 0x400000;
}
void sub_08015EF8(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= 0xFFBFFFFF;
}
u32 sub_08015F20(void) {
    return (gUnk_03003CE0[sub_080020F4()].flags >> 2) & 1;
}
u32 sub_08015F44(s32 level)
{
    register u32 **table asm("r0");
    u32 result;
    u32 last = gUnk_0847846C[level].count - 1;
    switch (level) {
    case 1: table = gUnk_084B139C; break;
    case 2: table = gUnk_084B13BC; break;
    case 3: table = gUnk_084B13E4; break;
    case 4: table = gUnk_084B1420; break;
    case 5: table = gUnk_084B1454; break;
    case 6: table = gUnk_084B148C; break;
    case 7: table = gUnk_084B14D0; break;
    case 8: table = gUnk_084B1504; break;
    case 9: table = gUnk_084B154C; break;
    case 10: table = gUnk_084B1590; break;
    case 11: table = gUnk_084B15E4; break;
    case 12: table = gUnk_084B15E8; break;
    case 13: table = gUnk_084B15F8; break;
    case 14: table = gUnk_084B160C; break;
    case 15: table = gUnk_084B1610; break;
    default: return result;
    }
    result = *table[last];
    return result;
}
u32 sub_0801602C(s32 level)
{
    u32 *entry;
    u32 result;
    switch (level) {
    case 1: entry = gUnk_084B139C[0]; break;
    case 2: entry = gUnk_084B13BC[0]; break;
    case 3: entry = gUnk_084B13E4[0]; break;
    case 4: entry = gUnk_084B1420[0]; break;
    case 5: entry = gUnk_084B1454[11]; break;
    case 6: entry = gUnk_084B148C[5]; break;
    case 7: entry = gUnk_084B14D0[0]; break;
    case 8: entry = gUnk_084B1504[14]; break;
    case 9: entry = gUnk_084B154C[16]; break;
    case 10: entry = gUnk_084B1590[3]; break;
    case 11: entry = gUnk_084B15E4[0]; break;
    case 12: entry = gUnk_084B15E8[0]; break;
    case 13: entry = gUnk_084B15F8[0]; break;
    case 14: entry = gUnk_084B160C[0]; break;
    case 15: entry = gUnk_084B1610[0]; break;
    default: return result;
    }
    result = *entry;
    return result;
}
void sub_08016114(void)
{
    u8 *p;
    u32 i;
    u32 z;
    u32 *q;
    gP030056F4 = (u8 *)sub_08001494(0xE60);
    gW030056FC = 0;
    gW030056F8 = 0;
    gH03005724 = 0;
    gW030056F0 = sub_08001494(0x50);
    gW030042E8 = sub_08001494(0x10);
    p = gP030056F4;
    i = 0;
    z = 0;
    for (; i <= 4; i++, p += 0x2E0) {
        sub_0807A064(i + 4);
        *(u16 *)(p + 0) = z;
        *(u16 *)(p + 8) = z;
        *(u16 *)(p + 0xC) = z;
        *(u16 *)(p + 0x10) = z;
        *(u32 *)(p + 0x14) = z;
        *(u32 *)(p + 0x18) = z;
        *(u16 *)(p + 0x4A) = z;
    }
    {
    u32 z2;
    for (i = 0, z2 = 0, q = gA03005700; i <= 2; q += 3, i++) {
        q[2] = z2;
        q[1] = z2;
        q[0] = z2;
    }
    }
}
void sub_080161A4(void) {
    u16 var_r4;
    u16 var_r4_2;
    volatile s32 *maskPtr;
    u32 bitMask;
    var_r4 = 0;
    do {
        if (((s32) gUnk_03005724 >> var_r4) & 1) {
            sub_080003A8(gUnk_030056F0 + (var_r4 * 0x28));
        }
        var_r4 += 1;
    } while ((u32) var_r4 <= 1U);
    var_r4_2 = 0;
    maskPtr = (volatile s32 *)&gUnk_030056FC;
    do {
        bitMask = 1;
        bitMask <<= var_r4_2;
        if (*maskPtr & bitMask) {
            sub_080003A8((s32)((u8 *)&gUnk_03004220 + (var_r4_2 * 0x28)));
        }
        sub_080688F8(var_r4_2 + 4);
        var_r4_2 += 1;
    } while ((u32) var_r4_2 <= 4U);
    sub_08001538(gUnk_030056F0);
    sub_08001538((s32) gUnk_030056F4);
    sub_08001538(gUnk_030042E8);
    gUnk_030056F0 = 0;
    gUnk_030056F4 = NULL;
}
struct Entry1623C { u16 flags; s16 x; s16 y; u16 wE; };
struct Src1623C { u8 pad0[8]; struct Entry1623C e[5]; u8 pad30[2]; u16 w32; };
struct Slot1623C { u16 id; u8 pad2[6]; u16 fill[0x10]; };
struct Obj1623C {
    u16 id;
    u16 w2;
    u8 pad4[4];
    u16 w8;
    u8 padA[0xA];
    s32 x14;
    s32 y18;
    u8 pad1C[8];
    s32 x24;
    s32 y28;
    struct Src1623C *src;
    s32 s30;
    s32 s34;
    s32 s38;
    s32 s3C;
    u16 w40;
    u8 pad42[6];
    u16 w48;
    u16 w4A;
    s32 s4C;
    u8 pad50[4];
    u32 w54;
    u8 pad58[2];
    u16 w5A;
    u8 pad5C[4];
    u16 w60;
    u16 w62;
    u8 pad64[0x12];
    u16 w76;
    u16 w78;
    u16 w7A;
    u16 w7C;
    u8 pad7E[6];
    u16 w84;
    u8 pad86[2];
    u16 w88;
    u8 pad8A[2];
    struct Slot1623C slots[8];
    u8 pad1CC[0x10];
    u8 b1DC;
    u8 pad1DD[0x1F];
    u8 lo1FC:4;
    u8 hi1FC:4;
    u8 b1FD;
    u8 b1FE;
    u8 b1FF;
    u8 pad200;
    u8 b201;
    u8 pad202[2];
    u8 data[0xD8];
};
struct Gs1623C { u8 pad0[0x40]; u32 f40; };
extern struct Gs1623C *gs1623C asm("gUnk_03005CF4");
extern u8 tables1623C[][0xD8] asm("gUnk_0847AD3C");
extern void cpuset1623C(const void *, void *, u32) asm("CpuSet");
extern void memcpy1623C(void *, const void *, u32) asm("memcpy");
void sub_0801623C(struct Obj1623C *obj, struct Src1623C *src, u32 idx)
{
    struct Entry1623C *entry = (struct Entry1623C *)src + idx;
    s32 n = (entry[1].flags & 0xFFF) - 1;
    u8 *table;
    u32 i;
    if (sub_0800CE30() != 0)
        n += 0xC5;
    table = tables1623C[n];
    obj->lo1FC = obj->id;
    obj->w2 = 4;
    obj->x14 = entry[1].x << 11;
    obj->y18 = entry[1].y << 11;
    obj->x24 = entry[1].x << 3;
    obj->y28 = entry[1].y << 3;
    obj->src = src;
    memcpy1623C(obj->data, table, 0xD8);
    obj->w8 = entry[1].wE;
    obj->w84 = 0;
    obj->w5A = 0;
    obj->w62 = 0;
    obj->w7C = 0;
    obj->w54 = 0xFFFF;
    if (sub_0800CCCC() != 0)
        obj->w48 = gs1623C->f40;
    else
        obj->w48 = gUnk_03003170.f90;
    obj->b1FD = 0;
    obj->b201 = 1;
    obj->hi1FC = 0;
    obj->b1FE = 0;
    obj->b1FF = 0;
    obj->w60 = 0;
    obj->w40 = 0;
    obj->w76 = obj->id + 1;
    obj->w78 = src->w32;
    obj->w7A = 0;
    obj->w88 = 0;
    obj->s30 = 0;
    obj->s38 = 0;
    obj->s34 = 0;
    obj->s3C = 0;
    obj->b1DC = 2;
    obj->s4C = 0;
    obj->w4A = 0;
    for (i = 0; i < 8; i++) {
        vu16 zero;
        obj->slots[i].id = 0xFFFF;
        zero = 0;
        cpuset1623C((void *)&zero, obj->slots[i].fill, 0x01000018);
    }
    if (((struct Entry1623C *)src)[idx + 1].flags & 0x8000)
        obj->w7A |= 2;
    if (((struct Entry1623C *)src)[idx + 1].flags & 0x4000) {
        obj->w7A |= 4;
        obj->b201 = 0;
        obj->b1FD = 0xFF;
    }
    if (((struct Entry1623C *)src)[idx + 1].flags & 0x2000)
        obj->w7A |= 8;
}
#ifdef NONMATCHING
struct Src1641C { u16 x; u16 y; u16 flags; u16 f6; u16 f8; u16 fA; u16 fC; u16 fE; u16 f10; u16 f12; s32 f14; };
struct Pt1641C { s32 x, y; };
struct Slot1641C { u8 f0[0x28]; };
struct Obj1641C {
    u16 id;             /* 0x000 */
    u16 f2;             /* 0x002 */
    u8 pad4[4];
    u16 f8;             /* 0x008 */
    u8 padA[2];
    u16 fC;             /* 0x00C */
    u8 padE[6];
    struct Pt1641C pos; /* 0x014 */
    struct Pt1641C prev;/* 0x01C */
    s32 f24;            /* 0x024 */
    s32 f28;            /* 0x028 */
    s32 f2C;            /* 0x02C */
    s32 f30, f34, f38, f3C; /* 0x030 */
    u16 f40;            /* 0x040 */
    u8 pad42[6];
    u16 f48;            /* 0x048 */
    u8 pad4A[6];
    s32 f50;            /* 0x050 */
    s32 f54;            /* 0x054 */
    u8 pad58[2];
    u16 f5A;            /* 0x05A */
    u8 pad5C[4];
    u16 f60;            /* 0x060 */
    u16 f62;            /* 0x062 */
    u8 pad64[0x12];
    u16 f76;            /* 0x076 */
    u16 f78;            /* 0x078 */
    u16 f7A;            /* 0x07A */
    u16 f7C;            /* 0x07C */
    u8 pad7E[2];
    u16 f80;            /* 0x080 */
    u8 pad82[2];
    u16 f84;            /* 0x084 */
    u16 f86;            /* 0x086 */
    u16 f88;            /* 0x088 */
    u8 pad8A[2];
    struct { u16 head; u8 pad[6]; u8 body[0x20]; } slots[8]; /* 0x08C */
    u8 pad1CC[0x10];
    u8 f1DC;            /* 0x1DC */
    u8 pad1DD[0x1F];
    s8 f1FC;            /* 0x1FC */
    u8 f1FD;            /* 0x1FD */
    u8 f1FE;            /* 0x1FE */
    u8 f1FF;            /* 0x1FF */
    u8 pad200;
    u8 f201;            /* 0x201 */
    u16 f202;           /* 0x202 */
    u8 data[0xD8];      /* 0x204 */
    u8 *src;            /* 0x2DC */
};
extern u32 poolFlags1641C asm("gUnk_030056FC");
extern struct Obj1641C *poolObjects1641C asm("gUnk_030056F4");
extern struct Task tasks1641C[] asm("gUnk_03004220");
extern u8 table1641C[] asm("gUnk_0847AD3C");
extern u8 stacks1641C[] asm("gUnk_030046EC");
extern void taskMain1641C(void) asm("sub_0801801C");
extern void startTask1641C(void *, void *) asm("sub_08000274");
struct Plr1641C { u8 pad0[0x2C]; u16 w2C; u8 pad2E[0x14C - 0x2E]; };
extern struct Plr1641C players1641C[] asm("gUnk_03003CE0");
s32 sub_0801641C(struct Src1641C *src)
{
    s32 i;
    s32 slot;
    struct Obj1641C *obj;
    s32 index;
    u8 *data;
    u16 *flags;
    u32 k;
    s8 *bits;
    s32 lo;
    u16 zero16;
    u8 zero8;
    u32 nib;

    if (sub_0800CDC0() != 0) {
        for (i = 4; i >= 0; i--) {
            if (((1 << i) & poolFlags1641C) == 0) {
                slot = i;
                goto found;
            }
        }
    } else {
        for (i = 0; i <= 4; i++) {
            if (((1 << i) & poolFlags1641C) == 0) {
                slot = i;
                goto found;
            }
        }
    }
    slot = -1;
found:
    if (slot < 0)
        return 0;
    poolFlags1641C |= 1 << slot;
    obj = &poolObjects1641C[slot];
    index = (src->flags & 0xFFF) - 1;
    if (sub_0800CE30() != 0)
        index += 0xC5;
    data = table1641C + index * 0xD8;
    if ((src->f10 & 0x80) && ((s8 *)data)[0x47] != 0)
        data += 0xD8;
    obj->src = data;
    zero8 = 0;
    zero16 = 0;
    obj->id = slot;
    bits = &obj->f1FC;
    nib = 0xF;
    lo = slot & nib;
    *bits = (*bits & ~0xF) | lo;
    obj->f2 = src->f6;
    obj->pos.x = src->x << 11;
    obj->pos.y = src->y << 11;
    obj->f24 = src->x << 3;
    obj->f28 = src->y << 3;
    obj->prev = obj->pos;
    obj->f2C = src->f14;
    memcpy(obj->data, data, 0xD8);
    obj->f8 = src->f8;
    obj->f84 = src->f10 & 0xFF7F;
    obj->f86 = src->f12;
    obj->f5A = zero16;
    obj->f62 = zero16;
    obj->f7C = zero16;
    obj->f80 = zero16;
    obj->f54 = 100;
    obj->f7A = zero16;
    obj->f1FD = zero8;
    obj->f201 = 1;
    *bits &= nib;
    obj->f1FE = zero8;
    obj->f1FF = zero8;
    obj->f202 = obj->f2;
    flags = &obj->f7A;
    if (src->flags & 0x4000) {
        *flags |= 0x44;
        obj->f201 = zero8;
        obj->f1FD = 0xFF;
    }
    if (sub_0800CCCC() != 0)
        obj->f48 = players1641C[sub_080020F4()].w2C;
    else
        obj->f48 = gUnk_03003170.f90;
    obj->f50 = (slot + 4) << 24;
    obj->f60 = 0;
    obj->f40 = 0;
    obj->f76 = obj->id + 1;
    obj->f78 = src->fC;
    obj->f88 = 0;
    obj->f30 = 0;
    obj->f38 = 0;
    obj->f34 = 0;
    obj->f3C = 0;
    for (k = 0; k <= 7; k++) {
        obj->slots[k].head = 0xFFFF;
        CpuFill16(0, obj->slots[k].body, 0x30);
    }
    if (src->flags & 0x8000)
        *flags |= 2;
    if (src->flags & 0x2000)
        *flags |= 8;
    obj->f1DC = 0;
    switch (src->fE) {
    case 0:
        obj->fC = 0xE;
        break;
    case 1:
        obj->fC = 0xF;
        break;
    case 2:
        obj->fC = 0;
        break;
    default:
        obj->fC = 0;
        break;
    }
    tasks1641C[slot].uC = taskMain1641C;
    tasks1641C[slot].u10 = (s32)(stacks1641C + (slot << 10));
    tasks1641C[slot].u20 = 0;
    tasks1641C[slot].u8 = 0x3C;
    tasks1641C[slot].u18 = 0;
    tasks1641C[slot].u0 = 0;
    tasks1641C[slot].u24 = 0;
    startTask1641C(&tasks1641C[slot], obj);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_0801641C);
#endif
extern u32 poolFlags014 asm("gUnk_030056FC");
extern void startPool014(void *,void *) asm("sub_08000274");
extern u8 *poolObjects014 asm("gUnk_030056F4");
extern struct Task taskArray014s[] asm("gUnk_03004220");
s32 sub_0801674C(s32 arg0, s32 arg1)
{
    s32 i;
    s32 slot;
    u8 *object;
    u8 *memory;
    s32 zero;

    for (i = 0; i <= 4; i++) {
        if (((1 << i) & poolFlags014) == 0) {
            slot = i;
            goto found;
        }
    }
    slot = -1;
found:
    if (slot < 0)
        return 0;
    poolFlags014 |= 1 << slot;
    object = poolObjects014 + slot * 0x2E0;
    zero = 0;
    *(u16 *)object = slot;
    *(u32 *)(object + 0x50) = (slot + 4) << 24;
    taskArray014s[slot].uC = (void *)arg0;
    memory = sub_08001494(0x800);
    taskArray014s[slot].u20 = (s32)memory;
    taskArray014s[slot].u10 = (s32)(memory + 0x7FC);
    taskArray014s[slot].u8 = 0x3C;
    taskArray014s[slot].u18 = zero;
    taskArray014s[slot].u0 = zero;
    taskArray014s[slot].u24 = arg1;
    startPool014(&taskArray014s[slot], object);
    return 1;
}
struct Record1681C { u8 *source; u8 kind, sound; u16 extra; };
struct State1681C { u16 x,y,flags,index,f8,fA,fC,fE,kind,sound; u8 *source; };
extern struct Record1681C *volatile records1681C asm("gUnk_030042E8");
extern s32 step1681C(struct State1681C *) asm("sub_0801641C");
extern s32 position1681C(s32 *) asm("sub_08017F7C");
extern void sound1681C(u8,u32,s32) asm("sub_080571A4");
void sub_0801681C(u16 index) {
    struct State1681C state;
    struct { s32 x, y; } coords;
    register struct Record1681C *record asm("r3");
    register struct Record1681C *loaded asm("r0");
    register u32 value asm("r1");
    register struct State1681C *statePtr asm("r2");
    u8 *source, *entry;
    s32 kind;
    s32 *pos;
    loaded = records1681C;
    record = (struct Record1681C *)(index * 8 + (u32)loaded);
    source = record->source;
    kind = record->kind & ~0x80;
    statePtr = &state;
    entry = source + kind * 8;
    statePtr->x = *(u16 *)(entry + 0xA);
    statePtr->y = *(u16 *)(entry + 0xC);
    state.source = source;
    statePtr->flags = *(u16 *)(entry + 8);
    statePtr->f8 = *(u16 *)(entry + 0xE);
    state.kind = record->kind;
    state.sound = record->sound;
    state.fC = *(u16 *)(source + 0x32);
    state.fE = *(u16 *)(source + 0x34);
    state.index = record->extra + kind;
    state.fA = *(u16 *)(source + 0x30);
    coords.x = state.x << 11;
    value = state.y << 11;
    coords.y = value;
    pos = &coords.x;
    for (;;) {
        value = state.flags;
        if (!(0x4000 & value) && position1681C(pos) == 0) break;
        sub_080003F0();
        if (sub_0800CB78() != 0 || sub_08056E90() != 0 || records1681C[index].kind == 0xFF || step1681C(&state) != 0)
            goto done;
    }
    sound1681C((u8)state.sound, (u8)state.kind & 0x7F, 1);
done:
    sub_080003F0();
    gUnk_03005724 &= ~(1u << index);
}
extern volatile u16 bits168FC asm("gUnk_03005724");
struct Pair168FC { u32 first, second; };
extern struct Pair168FC *pairs168FC asm("gUnk_030042E8");
extern struct Task *volatile tasks168FC asm("gUnk_030056F0");
extern struct Task *volatile runtimeTasks168FC asm("gUnk_030056F0");
extern void callback168FC(void) asm("sub_0801681C");
extern void sound168FC(u8,u8,s32) asm("sub_080571A4");
s32 sub_080168FC(struct Pair168FC *arg) {
    u16 index;
    register s32 mask asm("r0");
    register volatile u16 *bitPointer asm("r2");
    register u32 one asm("r1");
    register struct Task *task asm("r1");
    register struct Task *initialBase asm("r1");
    register struct Task *initialTask asm("r0");
    register u32 factor asm("r2");
    register u32 stackOffset asm("r3");
    register u32 top asm("r0");
    register u32 memory asm("r2");
    register u32 offset4 asm("r5");
    register u32 taskState asm("r6");
    index = 0;
    bitPointer = &bits168FC;
    mask = *bitPointer;
    one = 1;
    goto test;
next:
    index++;
    if (index > 1) goto full;
    mask = (s32)*bitPointer >> index;
test:
    if (mask & one) goto next;
    if (index > 1) {
full:
        if (sub_08002204() != 0)
            sound168FC(((u8 *)arg)[5], ((u8 *)arg)[4], 1);
        return -1;
    }
    pairs168FC[index] = *arg;
    initialBase = tasks168FC;
    factor = index * 4;
    initialTask = (struct Task *)((factor + index) * 8 + (u32)initialBase);
    initialTask->uC = callback168FC;
    offset4 = factor;
    taskState = index + 0x96;
    for (;;) {
        memory = sub_08001494(0x200);
        task = runtimeTasks168FC;
        task = (struct Task *)((offset4 + index) * 8 + (u32)task);
        task->u20 = memory;
        if (memory != 0) break;
        sub_080003F0();
    }
    stackOffset = 0x1FC;
    top = memory + stackOffset;
    task->u10 = top;
    task->u8 = taskState;
    task->u18 = 0;
    task->u0 = 0;
    task->u24 = 0;
    sub_08000274(task, index);
    bits168FC |= 1 << index;
    return 0;
}
extern void sound169C8(u8,u8,s32) asm("sub_080571A4");
void sub_080169C8(void) {
    register u32 i asm("r5");
    u32 taskOffset;
    u32 objectOffset;
    register u32 j asm("r5");
    register u32 secondOffset asm("r4");
    s32 *secondBase;
    register u32 loopZero asm("r1");
    register u32 k asm("r5");
    u16 *flag;
    u32 *word1, *word2;
    u32 zero;
    u8 *task, *object;
    u32 *entry;
    i = 0; objectOffset = 0; taskOffset = 0;
    do {
        task = (u8 *)&gUnk_03004220 + taskOffset;
        if (sub_08000470((u32)task) != 0) {
            sub_080003A8((s32)task);
            object = (u8 *)(objectOffset + (u32)gP030056F4);
            *(u16 *)(object + 0x5C) = 0;
            *(u16 *)(object + 0xC) = 11;
            sound169C8(object[0x86], object[0x84], 3);
        }
        objectOffset += 0x2E0; taskOffset += 0x28; i++;
    } while (i <= 4);
    j = 0; secondBase = &gUnk_030056F0; secondOffset = 0;
    do {
        if (sub_08000470(*secondBase + secondOffset) != 0)
            sub_080003A8(*secondBase + secondOffset);
        secondOffset += 0x28; j++;
    } while (j <= 1);
    k = 0;
    flag = &gUnk_03005724; word1 = &gW030056FC; word2 = &gW030056F8;
    loopZero = 0;
    entry = gA03005700;
    do {
        entry[2] = loopZero; entry[1] = loopZero; entry[0] = loopZero;
        entry += 3; k++;
    } while (k <= 2);
    zero = 0;
    *flag = zero;
    *word1 = zero;
    *word2 = zero;
}
#ifdef NONMATCHING
struct Obj16A7C { u8 pad0[0x2C]; s32 owner; u8 pad30[0x7A - 0x30]; u16 flags; u8 pad7C[0x2E0 - 0x7C]; };
struct Rec16A7C { s32 owner; u8 kind; u8 pad[3]; };
extern struct Obj16A7C *objects16A7C asm("gUnk_030056F4");
extern u32 active16A7C asm("gUnk_030056FC");
extern u16 bits16A7C asm("gUnk_03005724");
extern struct Rec16A7C *records16A7C asm("gUnk_030042E8");
void sub_08016A7C(s32 owner)
{
    struct Obj16A7C *obj;
    s32 mask;
    s32 found;
    u32 i;
    u32 k;
    u32 j;

    obj = objects16A7C;
    mask = 0;
    i = 0;
    do {
        s32 bit = 1 << i;
        if ((active16A7C & bit) && obj->owner == owner)
            mask |= bit;
        i++;
        obj++;
    } while (i <= 4);
    found = mask;
    for (j = 0; j <= 4; j++) {
        if ((1 << j) & found)
            objects16A7C[j].flags |= 1;
    }
    for (k = 0; k <= 1; k++) {
        if ((bits16A7C >> k) & 1 && records16A7C[k].owner == owner)
            records16A7C[k].kind |= 0xFF;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016A7C);
#endif
struct Pos16B30 { u32 kind:4; u32 x:12; u32 y:12; u32 pad2:4; u32 f4:6; u32 f4b:2; };
struct Dist16B30 { s32 dist; s32 index; };
struct Plr16B30 { u16 id; u8 pad2[0x2E]; u32 flags; u8 pad34[0x30]; u16 kind; u8 pad66[0xE2]; struct Pos16B30 *pos; };
extern struct Plr16B30 players16B30[] asm("gUnk_03003CE0");
s32 sub_08016B30(u8 *self, s32 *best)
{
    struct Dist16B30 list[4];
    u32 count;
    s32 x, y;
    struct Plr16B30 *p;
    u32 i, j;

    count = sub_08002164();
    x = *(s32 *)(self + 0x14) >> 8;
    y = *(s32 *)(self + 0x18) >> 8;
    p = players16B30;
    for (i = 0; i < count; i++, p++) {
        u32 flags;
        u32 kind;
        list[i].dist = 0x7FFFFFFF;
        flags = p->flags;
        if (flags & 0x2000)
            continue;
        kind = p->kind;
        if (kind > 9 && !((*(u16 *)(self + 0x5A) >> p->id) & 1))
            continue;
        if (kind == 9 || (flags & 0x40002))
            continue;
        {
            struct Pos16B30 *pos = p->pos;
            if (pos->kind != 0xB && !(pos->f4 & 0x20)) {
                s32 d[2];
                d[0] = x - pos->x;
                d[1] = y - pos->y;
                list[i].dist = d[0] * d[0] + d[1] * d[1];
            }
        }
        list[i].index = i;
    }
    for (i = 0; i < count; i++) {
        for (j = i + 1; j < count; j++) {
            if (list[i].dist > list[j].dist) {
                list[i].dist ^= list[j].dist;
                list[j].dist ^= list[i].dist;
                list[i].dist ^= list[j].dist;
                list[i].index ^= list[j].index;
                list[j].index ^= list[i].index;
                list[i].index ^= list[j].index;
            }
        }
    }
    {
        s32 d = Sqrt(list[0].dist);
        if (d > *best)
            return 10;
        *best = d;
        return list[0].index;
    }
}
s32 sub_08016C88(s32 arg0, s32 arg1, s32 arg2, s32 arg3, u16 arg4)
{
  s16 dx;
  s16 dy;
  u32 angle;
  u32 idx;
  u32 t;
  s16 px;
  s16 py;
  s16 qx;
  s16 qy;
  s32 s0;
  u32 *new_var;
  s0 = arg0 << 8;
  t = arg1 << 8;
  px = arg2;
  qx = s0 >> 16;
  dx = px - qx;
  py = arg3;
  qy = (s16) (t >> 16);
  new_var = &t;
  dy = py - qy;
  if (Sqrt((dx * dx) + (dy * dy)) > ((s16) arg4))
  {
    angle = ArcTan2(dx, dy);
    t = angle << 19;
    idx = angle >> 13;
    if ((*new_var) > 0x80000000)
    {
      if (idx <= 6)
      {
        idx++;
      }
      else
      {
        idx = 0;
      }
    }
    if (idx > 7)
    {
      return 0;
    }
    switch (idx)
    {
      case 0:
        return 0x10;

      case 1:
        return 0x90;

      case 2:
        return 0x80;

      case 3:
        return 0xA0;

      case 4:
        return 0x20;

      case 5:
        return 0x60;

      case 6:
        return 0x40;

      case 7:
        return 0x50;

    }

  }
  return 0;
}
extern s32 aimD40(s32,s32,s32,s32,s32) asm("sub_08016C88");
void sub_08016D40(u8 *object, u16 arg) {
    u8 *source;
    u16 *volatile *packed;
    u32 zero;
    u32 count;
    u16 *counter;
    if (object[0x201] & 2) {
        source = gP030056F4 + (object[0x1FC] >> 4) * 0x2E0;
        *(s32 *)(object + 0x24) = *(s32 *)(source + 0x14) >> 8;
        *(s32 *)(object + 0x28) = *(s32 *)(source + 0x18) >> 8;
    } else {
        source = (u8 *)gUnk_03003CE0 + (object[0x1FC] >> 4) * 0x14C;
        packed = (u16 *volatile *)(source + 0x148);
        *(s32 *)(object + 0x24) = (*packed)[0] >> 4;
        *(s32 *)(object + 0x28) = ((u32)(*packed)[1] << 20) >> 20;
    }
    if (gUnk_03002344 % 25 == *(u16 *)object * 5)
        *(u16 *)(object + 4) = aimD40(*(s32 *)(object + 0x14), *(s32 *)(object + 0x18), *(s32 *)(object + 0x24), *(s32 *)(object + 0x28), (s16)arg);
    counter = (u16 *)(object + 0x44);
    count = *counter + 1;
    zero = 0;
    *counter = count;
    if ((u16)count > 180) {
        *counter = zero;
        *(u16 *)(object + 4) = zero;
    }
}
#ifdef NONMATCHING
struct Reg16E04 { s32 key; s32 sub; s32 count; };
extern u32 used16E04 asm("gUnk_030056F8");
extern struct Reg16E04 regs16E04[] asm("gUnk_03005700");
u16 sub_08016E04(s32 key, u16 sub)
{
    u32 i;
    u32 j;

    for (i = 0; i <= 2; i++) {
        if ((used16E04 & (1 << i)) && regs16E04[i].key == key && regs16E04[i].sub == sub) {
            regs16E04[i].count++;
            return i + 4;
        }
    }
    for (j = 0; j <= 2; j++) {
        u32 bit = 1 << j;
        if (!(used16E04 & bit)) {
            regs16E04[j].key = key;
            regs16E04[j].sub = sub;
            regs16E04[j].count = 1;
            used16E04 |= bit;
            return j + 4;
        }
    }
    return 0xFFFF;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016E04);
#endif
extern u32 gW6ECC_56F8 asm("gUnk_030056F8");
extern u32 gT6ECC_5700 asm("gUnk_03005700");
void sub_08016ECC_u16(u16 arg0) asm("sub_08016ECC");
void sub_08016ECC_u16(u16 arg0)
{
  u32 *flagp;
  u32 mask;
  u32 flags;
  u32 *tbl;
  u32 off;
  u16 idx;
  idx = arg0 - 4;
  flagp = &gW6ECC_56F8;
  mask = 1 << idx;
  flags = *flagp;
  if (flags & mask)
  {
    tbl = &gT6ECC_5700;
    off = (idx * 3) * 4;
    if ((*((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8))) <= 1)
    {
      *((u32 *) (((u8 *) tbl) + off)) = 0;
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 4)) = 0;
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8)) = 0;
      *flagp = flags & (~mask);
    }
    else
    {
      *((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8)) = (*((u32 *) ((((u8 *) (&gT6ECC_5700)) + off) + 8))) - 1;
    }
  }
}
INCLUDE_ASM("asm/nonmatchings/code_080153A4", sub_08016F28);
struct T015CEntity { u16 id; u8 pad2[0xA]; u16 kind; u8 padE[6]; s32 x,y; u8 pad1C[0x5A]; u16 cursor; u8 pad78[2]; u16 flags; u8 pad7C[0x194]; u32 active; u8 pad214[0x1A]; u8 radius; };
extern struct T015CEntity *T015CEntities asm("gUnk_030056F4");
extern u8 T015CDirections[] asm("gUnk_084790B4");
extern u8 T015CAngles[] asm("gUnk_0849E730");
extern u16 T015CProbe(u8,s32,s32,s32) asm("sub_0800B118");
void sub_08017C6C(struct T015CEntity *p) {
    register s32 x asm("r8");
    register s32 y asm("r9");
    s32 dx,ax;
    register s32 delta asm("r5");
    u16 *cp;
    s16 dy;
    register u32 angle asm("r0");
    register s32 idx asm("r1");
    register u32 cosindex asm("r1");
    register u32 finalindex asm("r0");
    register s32 finalproduct asm("r0");
    register u8 *anglesptr asm("r1");
    register u32 minus asm("r4");
    register u32 hitraw asm("r0");
    register u32 hit asm("r1");
    s32 ay;
    register s32 index asm("r2");
    u32 sumraw;
    u16 cursor;
    u32 nextvalue;
    register u32 offset asm("r0");
    register u32 *flagptr asm("r0");
    register u32 angleword asm("r0");
    register u32 *phaseptr asm("r0");
    register u32 phase asm("r1");
    register u32 id asm("r2");
    register u32 bit asm("r0");
    register u32 mask asm("r1");
    register struct T015CEntity **baseptr asm("r1");
    register struct T015CEntity *base asm("r1");
    register u32 loadtemp asm("r0");
    register u32 dxraw asm("r1");
    register u32 dyraw asm("r0");
    register s32 deltaraw asm("r2");
    register s32 product asm("r1");
    register s32 signedangle asm("r3");
    s32 cosine;
    register u32 cursorraw asm("r3");
    register u32 one asm("r5");
    u32 radiusraw;
    u32 flags;
    register u16 radius asm("sl");
    u16 dist;
    register s32 px asm("r4");
    register s32 py asm("r2");
    register s16 *sines asm("r6");
    u8 r;
    register struct T015CEntity *q asm("r3");
    x=p->x; y=p->y;
    cp=&p->cursor; loadtemp=*cp;
    cursorraw=loadtemp << 16;
    cursor=cursorraw >> 16;
    if ((u16)cursor>4) goto reset;
    phaseptr=&gUnk_03002344;
    phase=*phaseptr;
    one=1;
    phase &= one;
    id=p->id;
    bit=one;
    bit &= id;
    if (phase != bit) return;
    flags=p->flags & 0xFFEF; p->flags=flags;
    radiusraw=p->radius << 16;
    r=radiusraw >> 16;
    if (!radiusraw || p->active==0xFF) goto next;
    baseptr=&T015CEntities;
    index=(s32)cursorraw >> 16;
    offset=index*0x2E0;
    base=*baseptr;
    q=(struct T015CEntity *)((u8 *)base+offset);
    flagptr=&gUnk_030056FC;
    mask=one<<index;
    if (!(*flagptr & mask) || p->kind==0xB) goto next;
    sumraw=(q->radius+(u16)r)<<16;
    radius=sumraw>>16;
    asm("" : "+r"(radius));
    if (!sumraw) goto next;
    dxraw=q->x;
    dxraw=(x-dxraw)<<8;
    dyraw=(u32)((y-q->y)<<8)>>16;
    dx=(s32)dxraw>>16;
    ax=dx; if(dx<0) ax=-dx;
    if(ax>7) goto next;
    dy=dyraw;
    ay=dy; if(dy<0) ay=-dy;
    if(ay>7) goto next;
    mask=0x10;
    bit=flags;
    bit |= mask;
    p->flags=bit;
    dist=Sqrt(dx*dx+dy*dy);
    angle=(u16)ArcTan2(dx,dy)>>8;
    deltaraw=((s16)radius-(s16)dist)<<16;
    sines=gUnk_080B9704;
    angleword=(u32)angle << 16;
    signedangle=(s32)angleword >> 16;
    cosindex=signedangle+0x40;
    cosine=sines[cosindex];
    delta=deltaraw>>17;
    product=cosine*delta;
    px=x+product;
    product=sines[signedangle]*delta;
    py=y+product;
    hitraw=T015CProbe(T015CDirections[angleword>>20],px,py,0)<<16;
    hit=hitraw>>16;
    if(hitraw) {
        hitraw=hit<<16;
        anglesptr=T015CAngles;
        minus=0xFFFF0000;
        hitraw=(s32)(hitraw+minus)>>15;
        idx=(s32)(*(u16 *)(hitraw+(u32)anglesptr)<<20)>>16;
        finalindex=idx+0x40;
        finalproduct=sines[finalindex]*delta;
        px=x+finalproduct;
        finalproduct=sines[idx]*delta;
        py=y+finalproduct;
        p->x=px; p->y=py;
    }

next:
    cp=&p->cursor; nextvalue=*cp+1; *cp=nextvalue;
    if((u16)nextvalue<=5) return;
reset:
    *cp=p->id+1;
}







s32 sub_08017E34(s32 *arg0) {
    u8 *base;
    u32 n;
    u32 i;
    s32 result;
    s16 *pb;
    struct {
        u16 a;
        s16 b;
    } buf;

    sub_0800BC08((((s32) arg0[5]) << 8) >> 0x10, (((s32) arg0[6]) << 8) >> 0x10,
                 &buf.a, &buf.b, 0x30, 0);
    result = 0;
    n = sub_08002164();
    i = 0;
    pb = &buf.b;
    if (result < n) {
        base = gUnk_03003E28;
        do {
            u8 *p = *(u8 **) (base + i * 0x14C);
            if (!(((u32) (p[4] << 0x1A) >> 0x1A) & 0x20) && (u16) (buf.a + 0x3F) <= 0x16A) {
                if (*pb > -0x40) {
                    if (*pb <= 0xC7) {
                        result = 1;
                    }
                }
            }
            i++;
        } while (i < n);
    }
    return result;
}
struct T015ERect { u32 x:16; u32 y:16; };
struct T015EPos { u16 x, y; u8 flags:6; u8 rest:2; };
struct T015EPlayer { u8 pad[0x148]; struct T015EPos *pos; };
extern struct T015EPlayer T015EPlayers[] asm("gUnk_03003CE0");
extern s32 T015ETest(s32 *, void *, s32 *, u32 *) asm("sub_08021FE0");
s32 sub_08017EC8(u8 *arg0)
{
    s32 pos[2];
    s32 size;
    u32 rect;
    register s32 found asm("r8");
    struct T015EPlayer *p;
    register u32 count asm("r5");
    register u32 i asm("r6");
    register u8 *lo asm("r2");
    register u32 high asm("r1");
    if (*(u16 *)(arg0 + 0x7A) & 0x40) return 1;
    size = 0x014001E0;
    lo = arg0 + 0x22E;
    asm("" : "+r"(lo));
    high = arg0[0x22F] << 16;
    asm("" : "+r"(high), "+r"(lo));
    rect = *lo | high;
    found = 0;
    asm("" : "+r"(found));
    count = sub_08002164();
    p = T015EPlayers;
    i = 0;
    if ((u32)found < count) do {
        if (!(((u32)(p->pos->flags << 26) >> 26) & 0x20)) {
            pos[0] = (p->pos->x >> 4) << 8;
            pos[1] = ((u32)p->pos->y << 20) >> 12;
            if (T015ETest(pos, arg0 + 0x14, &size, &rect)) found = 1;
        }
        i++;
        p++;
    } while (i < count);
    asm("" : "+r"(count), "+r"(i), "+r"(found));
    return found;
}
