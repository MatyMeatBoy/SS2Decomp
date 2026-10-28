#include "global.h"

s32 sub_0801AAF8(void)
{
    if (gUnk_03000026 == 1 && gUnk_03000022 > gUnk_03000020)
        return 1;
    return 0;
}
u32 sub_0801AB24(void)
{
    extern volatile u16 flagBits asm("gUnk_03000028");
    register s32 flags asm("r1") = flagBits;
    s32 result;
    if (!(flags & 8)) result = 2 & (-((s16)(flags & 0x20) != 0));
    else result = 1;
    return result;
}
void sub_0801AB50(u16 arg0)
{
    u32 m = 0x21;
    gUnk_03000026 = -1;
    gUnk_03000020 = arg0;
    gUnk_03000022 = 0;
    sub_08000420(100);
    gUnk_03000028 = (gUnk_03000028 | 4) & -m;
}
void sub_0801AB90(u16 arg0) {
    register volatile u16 *p asm("r2");
    register u16 value asm("r0");
    if (((s32)gUnk_03000026 >= 0) || !(0x8000 & gUnk_03000022)) {
        gUnk_03000026 = -1;
        gUnk_03000020 = arg0;
        gUnk_03000022 = arg0;
        sub_08000420(0x64);
        p = &gUnk_03000028;
        value = *p;
        asm volatile("movs r1, #16\n\t.hword 0x4308\n\tmovs r1, #9\n\t.hword 0x4249\n\t.hword 0x4008" : "+r"(value) : : "r1", "memory");
        *p = value;
    }
}
void sub_0801ABE8(u32 arg0) {
    int new_var;
    gUnk_03000026 = 1;
    gUnk_03000020 = arg0;
    gUnk_03000022 = 0;
    sub_08000420(0x64);
    new_var = 0x21;
    gUnk_03000028 = (gUnk_03000028 | 0xC) & (-new_var);
}
void sub_0801AC24(u16 arg0) {
    int mask = 9;
    if (gUnk_03000026 != 1 || gUnk_03000022 <= gUnk_03000020) {
        gUnk_03000026 = 1;
        gUnk_03000020 = arg0;
        gUnk_03000022 = 0;
        sub_08000420(0x64);
        gUnk_03000028 = (gUnk_03000028 | 0x30) & -mask;
    }
}
s32 sub_0801AC78(void) {
    s32 var_r2;

    var_r2 = 0;
    if (!(0x16 & (u16) gUnk_03000028)) {
        var_r2 = 1;
    }
    if ((var_r2 != 0) && (gUnk_03000026 == -1) && (gUnk_03000022 == 0)) {
        return 1;
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801ACB8);
u32 sub_0801B264(void *mods, u16 *stats, u8 *extra)
{
    u32 flags = 0;
    u32 i = 0;
    do {
        u32 type = M2C_FIELD(mods + i * 4, u16 *, 0);
        if (type) flags |= 1 << type;
        switch (type) {
        case 1:
            stats[0] = stats[0] + M2C_FIELD(mods + i * 4, u16 *, 2);
            flags |= 1;
            break;
        case 2:
            stats[1] = stats[1] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 3:
            stats[2] = stats[2] + M2C_FIELD(mods + i * 4, u16 *, 2);
            flags |= 6;
            break;
        case 4:
            stats[3] = stats[3] + M2C_FIELD(mods + i * 4, u16 *, 2);
            flags |= 5;
            break;
        case 5:
            *(u16 *)(extra + 0xA) = *(u16 *)(extra + 0xA) + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 6:
            *(u16 *)(extra + 0x8) = *(u16 *)(extra + 0x8) + M2C_FIELD(mods + i * 4, u16 *, 2) * 10;
            break;
        case 7:
            stats[4] = stats[4] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 8:
            stats[10] = stats[10] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 9:
            stats[11] = stats[11] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 10:
            stats[12] = stats[12] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 11:
            stats[13] = stats[13] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 12:
            stats[14] = stats[14] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 13:
            stats[15] = stats[15] + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 14:
            *(u16 *)(extra + 0x0) = *(u16 *)(extra + 0x0) + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 15:
            *(u16 *)(extra + 0x2) = *(u16 *)(extra + 0x2) + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 16:
            *(u16 *)(extra + 0x6) = *(u16 *)(extra + 0x6) + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 17:
            extra[0x1D] = extra[0x1D] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 18:
            extra[0x1E] = extra[0x1E] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 19:
            *(u16 *)(extra + 0x4) = *(u16 *)(extra + 0x4) + M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 20:
            extra[0x15] = extra[0x15] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 21:
            extra[0x11] = extra[0x11] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 22: {
            register u32 value asm("r1") = extra[0x11];
            register u32 result asm("r0") = 0x80 | value;
            extra[0x11] = result;
            break;
        }
        case 23:
            extra[0x14] = extra[0x14] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 24:
            extra[0x12] = extra[0x12] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 25:
            extra[0x13] = extra[0x13] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 26:
            extra[0x1F] = extra[0x1F] + M2C_FIELD(mods + i * 4, u16 *, 2) * 3;
            break;
        case 27:
            extra[0x20] = extra[0x20] + M2C_FIELD(mods + i * 4, u16 *, 2) * 3;
            break;
        case 28:
            extra[0xF] = 1;
            break;
        case 29:
            extra[0x18] = extra[0x18] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 30:
            extra[0x19] = extra[0x19] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 31:
            extra[0x1A] = extra[0x1A] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 32:
            extra[0x17] = extra[0x17] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 33:
            extra[0x16] = extra[0x16] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 34:
            extra[0x1B] = extra[0x1B] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 35:
            extra[0x1C] = extra[0x1C] + (u8)M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        case 36:
            *(u16 *)(extra + 0xC) = 9;
            break;
        case 37:
            extra[0xE] = 10;
            break;
        case 38:
            extra[0xE] = 11;
            break;
        case 40: {
            u32 value = M2C_FIELD(mods + i * 4, u16 *, 2);
            extra[0x21] = value;
            break;
        }
        case 41:
            extra[0x10] = M2C_FIELD(mods + i * 4, u16 *, 2);
            break;
        }
        i++;
    } while (i <= 2);
    return flags;
}




s32 sub_0801B58C(u8 *item, s32 stats, u16 value, u16 kind)
{
    register s32 factor asm("r4");
    switch (kind) {
    case 0:
        switch (item[0x9B]) {
        case 2:
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1) + ((s16)value * ((u16)factor + 10)) / 10;
            break;
        case 3:
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 2);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 2) + ((s16)value * ((u16)factor + 10)) / 10;
            break;
        case 1:
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
            break;
        }
        break;
    case 3:
        if (item[0x9B] == 2) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
        } else if (item[0x9B] == 4) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1) + ((s16)value * ((u16)factor + 10)) / 10;
        }
        break;
    case 2:
        if (item[0x9B] != 3) {
            if (item[0x9B] == 7) {
                factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
                value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
            }
        } else {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1) + ((s16)value * ((u16)factor + 10)) / 10;
        }
        break;
    case 5:
        if (item[0x9B] == 6) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
        } else if (item[0x9B] == 8) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1) + ((s16)value * ((u16)factor + 10)) / 10;
        }
        break;
    case 4:
        if (item[0x9B] == 4) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1) + ((s16)value * ((u16)factor * 8 + 100)) / 100;
        } else if (item[0x9B] == 5) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
        }
        break;
    case 7:
        if (item[0x9B] == 1) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
        } else if (item[0x9B] == 8) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 1) + ((s16)value * ((u16)factor + 10)) / 10;
        }
        break;
    case 1: case 6: case 8:
        if (item[0x9B] == 5) {
            factor = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0);
            value = ((s32 (*)(s32, s32))sub_0801E0AC)(stats, 0) + ((s16)value * ((u16)factor + 10)) / 10;
        }
        break;
    }
    return value;
}



void sub_0801B6F4(s16 *p, s16 delta) {
    p[0] = delta + p[0];
    p[1] = delta + p[1];
    p[2] = delta + p[2];
    p[3] = delta + p[3];
    p[4] = delta + p[4];
    p[5] = delta + p[5];
}
void sub_0801B720(s16 *p, s16 delta) {
    p[0] = p[0] - delta;
    p[1] = p[1] - delta;
    p[2] = p[2] - delta;
    p[3] = p[3] - delta;
    p[4] = p[4] - delta;
    p[5] = p[5] - delta;
}
struct S17ItemC4 { u8 data[0xC4]; };
struct S17ItemB8 { u8 data[0xB8]; };
struct S17ItemB4 { u8 data[0xB4]; };
struct S17ItemB0 { u8 data[0xB0]; };
struct S17Set { u8 pad[0x136]; u16 slots[6]; };
s32 sub_0801B74C(struct S17Set *set, struct S17ItemC4 *a, struct S17ItemB8 *b, struct S17ItemB8 *c, struct S17ItemB8 *d, struct S17ItemB4 *e, struct S17ItemB0 *f)
{
    s32 matched = 0;
    s32 count = 0;
    u32 i = 0;
    do {
        if (set->slots[i] != 0xFFFF) {
            count++;
            switch (i) {
            case 0:
                if (a && a - (struct S17ItemC4 *)sub_08007290(0xB0000) == set->slots[i])
                    matched++;
                break;
            case 2:
                if (b && b - (struct S17ItemB8 *)sub_08007290(0xC0000) == set->slots[i])
                    matched++;
                break;
            case 1:
                if (c && c - (struct S17ItemB8 *)sub_08007290(0xD0000) == set->slots[i])
                    matched++;
                break;
            case 3:
                if (d && d - (struct S17ItemB8 *)sub_08007290(0xE0000) == set->slots[i])
                    matched++;
                break;
            case 4:
                if (e && e - (struct S17ItemB4 *)sub_08007290(0xF0000) == set->slots[i])
                    matched++;
                break;
            case 5:
                if (f && f - (struct S17ItemB0 *)sub_08007290(0x110000) == set->slots[i])
                    matched++;
                break;
            }
        }
        i++;
    } while (i <= 5);
    if (matched == count) return 1;
    return 0;
}

INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B8A8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801BA74);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801C8F0);
#ifdef NONMATCHING
void sub_0801CC10(s32 index, s16 delta)
{
    u8 *target;
    u8 *current = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    u8 *other = (u8 *)gUnk_03003CE0 + index * 0x14C;
    s32 dx, dy;
    target = *(u8 **)(other + 0x148);
    dx = ((*(s32 *)(current + 0x8C) << 5) >> 16) - ((s16)(*(u16 *)target >> 7));
    if (dx < 0) dx = -dx;
    dy = ((*(s32 *)(current + 0x90) << 5) >> 16) - ((s16)((*(u16 *)(target + 2) << 20) >> 23));
    if (dy < 0) dy = -dy;
    if (current == other) {
        s16 *value = (s16 *)(current + 0xC4);
        if (*value > 0) *value += delta;
    } else if (dx <= 13 && dy <= 9) {
        s16 *value = (s16 *)(current + 0xC4);
        if (*value > 0) *value += delta;
    }
    if (*(s16 *)(current + 0xC4) > *(s16 *)(current + 0x62))
        *(u16 *)(current + 0xC4) = *(u16 *)(current + 0x62);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801CC10);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801CCC8);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D028);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D34C);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801D7AC);
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DB94);
void sub_0801DD9C(void) {
    sub_0801E024(&gUnk_03003CE0[sub_080020F4()]);
}
void sub_0801DDB8(s32 arg0) {
    CpuSet(gUnk_030034E0 + 0x10, arg0, 0x04000008);
}
void sub_0801DDD4(s32 arg0) {
    CpuSet(arg0, gUnk_030034E0 + 0x10, 0x04000008);
}
void sub_0801DDF0(void *arg0) {
    CpuSet(gUnk_03003D18 + sub_080020F4() * 0x14C, arg0, 0x04000008);
}
void sub_0801DE18(void *arg0) {
    CpuSet(gUnk_03003D38 + sub_080020F4() * 0x14C, arg0, 0x18);
}
void sub_0801DE3C(void *arg0) {
    CpuSet(arg0, gUnk_03003D38 + sub_080020F4() * 0x14C, 0x18);
}
u8 sub_0801DE60(void)
{
  u16 temp_r0;
  temp_r0 = *((u16 *) (((s8 *) gUnk_030034E0) + 0xA));
  if (temp_r0 != 8)
  {
    return (u8) temp_r0;
  }
  if (temp_r0)
  {
    return 6U;
  }
  else
  {
    return 6U;
  }
}
void sub_0801DE78(void *arg0) {
    struct S36 { u32 w[9]; } *dst = arg0;
    struct S36 *src = (struct S36 *) ((u8 *) gUnk_030034E0 + 0x30);
    *dst = *src;
}
void sub_0801DE98(void *arg0) {
    struct S36 { u32 w[9]; } *src = arg0;
    struct S36 *dst = (struct S36 *) ((u8 *) gUnk_030034E0 + 0x30);
    *dst = *src;
}
u32 sub_0801DEB8(void)
{
    u8 *table = (u8 *)gUnk_030034E0;
    u8 *item = table + *(u16 *)(table + 0x68) * 0x10;
    u8 *resource;
    if (item[0x79] == 0)
        resource = 0;
    else
        resource = (u8 *)sub_08007290(*(u16 *)(item + 0x72) | 0xB0000);
    if (resource[0x9B] == 9)
        return resource[0xA7];
    return 0;
}
void sub_0801DF08(void) {
    u8 *p = (u8 *) &gUnk_03003CE0[sub_080020F4()];

    u16 v = *(u16 *) (p + 0x62);
    *(u16 *) (p + 0xC4) = v;
    if (sub_0801DE60() == 1) {
        u16 w = *(u16 *) (p + 0x60);
        *(u16 *) (p + 0xC2) = w;
    }
    *(u16 *) (p + 0x20) = 0;
    *(u32 *) (p + 0x30) = 0x40;
}
#ifdef NONMATCHING
u32 sub_0801DF4C(u16 id)
{
    u32 i;
    u8 *base = *(u8 **)0x030056F4;
    if (*(u16 *)(base + 2) == id)
        return 0;
    for (i = 1; i <= 4; i++)
        if (*(u16 *)(base + i * 0x2E0 + 2) == id)
            return i;
    return 5;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801DF4C);
#endif
s32 sub_0801DF80(void) {
    return gUnk_030034E0;
}
s32 sub_0801DF8C(void) {
    u8 *p = (u8 *) &gUnk_03003CE0[sub_080020F4()];
    u32 flags = *(u32 *) (p + 0x30);
    s32 r4;

    if (!(flags & 0x100000)) {
        r4 = 0;
        if (*(u16 *) (p + 0x20) == 0xB) {
            r4 = 1;
        } else if (*(s16 *) (p + 0xC4) == 0) {
            r4 = 1;
        } else if ((s16) (*(u16 *) (p + 0xC4) - *(u16 *) (p + 0x88)) <= 0) {
            r4 = 1;
        } else if (flags & 0x2000) {
            r4 = 1;
        }
        return r4;
    }
    return 0;
}
void sub_0801DFE8(s32 arg0, void *arg1, void *arg2) {
    struct S32 { u32 w[8]; } *d1 = arg1;
    struct S48 { u32 w[12]; } *d2 = arg2;
    struct S32 *s1 = (struct S32 *) gUnk_0848FA48;
    struct S48 *s2;

    *d1 = s1[arg0];
    s2 = (struct S48 *) gUnk_0849E580;
    *d2 = s2[arg0];
}
void sub_0801E024(void *arg0) {
    u16 temp_r7;
    u8 temp_r8;

    temp_r7 = M2C_FIELD(arg0, u16 *, 0x64);
    temp_r8 = M2C_FIELD(arg0, u8 *, 0x66);
    sub_0801BA74(arg0, 0, arg0 + 0x38, arg0 + 0x58, gUnk_030034E0 + 0x30);
    if ((s32) M2C_FIELD(arg0, s16 *, 0xC4) > (s32) (s16) M2C_FIELD(arg0, u16 *, 0x62)) {
        M2C_FIELD(arg0, s16 *, 0xC4) = (s16) M2C_FIELD(arg0, u16 *, 0x62);
    }
    if ((temp_r7 != M2C_FIELD(arg0, u16 *, 0x64)) || (temp_r8 != M2C_FIELD(arg0, u8 *, 0x66))) {
        sub_0806617C();
        sub_0805AD78(M2C_FIELD(gUnk_030034E0, u16 *, 0x68));
    }
}
u16 sub_0801E0A0(void) {
    return M2C_FIELD(gUnk_030034E0, u16 *, 0xC);
}
u16 sub_0801E0AC(s32 arg0, s32 arg1) {
    u16 var_r0;

    var_r0 = M2C_FIELD((arg0 + ((u32) (arg1 << 0x10) >> 0xE)), u16 *, 4);
    if (var_r0 == 7) {
        var_r0 = 8;
    }
    return var_r0;
}
void sub_0801E0BC(void *arg0, u16 arg1) {
    u16 temp_r1;

    temp_r1 = arg1;
    M2C_FIELD(arg0, u16 *, 0) = temp_r1;
    M2C_FIELD(arg0, u16 *, 2) = temp_r1;
    M2C_FIELD(arg0, u16 *, 4) = temp_r1;
    M2C_FIELD(arg0, u16 *, 6) = temp_r1;
    M2C_FIELD(arg0, u16 *, 8) = temp_r1;
    M2C_FIELD(arg0, u16 *, 0xA) = temp_r1;
}
void sub_0801E0D0(u16 *dst, const u16 *src)
{
    dst[0] = dst[0] + src[0];
    dst[1] = dst[1] + src[1];
    dst[2] = dst[2] + src[2];
    dst[3] = dst[3] + src[3];
    dst[4] = dst[4] + src[4];
    dst[5] = dst[5] + src[5];
}
void *sub_0801E104(u8 *arg0) {
    u8 *p = arg0 + 0x8c;
    u32 i = 0;

    do {
        if (*(s16 *) p != -1) {
            i++;
            p += 0x28;
        } else {
            return p;
        }
    } while (i <= 7);
    return 0;
}
s32 sub_0801E12C(s32 arg0, s32 arg1, s32 arg2)
{
  u32 var_r1;
  void *var_r3;
  int new_var;
  var_r3 = arg0 + 0x8C;
  var_r1 = 0;
  new_var = -1;
  loop_1:
  if (((*((s16 *) (((s8 *) var_r3) + 0))) == new_var) || (((*((u16 *) (((s8 *) var_r3) + 4))) == arg1) && ((*((u16 *) (((s8 *) var_r3) + 2))) == arg2)))
  {
    return (s32) var_r3;
  }

  var_r1 += 1;
  var_r3 += 0x28;
  if (var_r1 > 7U)
  {
    return 0;
  }
  goto loop_1;
}
s32 sub_0801E164(void *arg0, s32 arg1)
{
  s16 temp_r0;
  u32 var_r1;
  void *var_r2;
  var_r2 = *((void **) (((s8 *) arg0) + 0x34));
  var_r1 = 0;
 do { loop_1: temp_r0 = *((s16 *) (((s8 *) var_r2) + 0)); if ((temp_r0 == (-1)) || (((temp_r0 == (-2)) && ((*((u16 *) (((s8 *) var_r2) + 4))) == arg1)) && ((*((u16 *) (((s8 *) arg0) + 0))) == (*((u16 *) (((s8 *) var_r2) + 2)))))) { return (s32) var_r2; } var_r1 += 1; var_r2 += 0x28; if (var_r1 > 7U) { return 0; } } while (0);
  goto loop_1;
}
void *sub_0801E1A4(u8 *arg0, s32 arg1) {
    u8 *p = *(u8 **) (arg0 + 0x34);
    u32 i = 0;

    do {
        if (*(s16 *) p != -1 && *(u16 *) (p + 4) == arg1 && *(u16 *) (p + 2) == 100) {
            return p;
        }
        i++;
        p += 0x28;
    } while (i <= 7);
    return 0;
}
s32 sub_0801E1D8(void *arg0, s32 arg1, s32 arg2)
{
  u32 var_r1;
  int new_var;
  void *var_r3;
  var_r3 = *((void **) (((s8 *) arg0) + 0x34));
  var_r1 = 0;
  new_var = -1;
  loop_1:
  if ((((*((s16 *) (((s8 *) var_r3) + 0))) != new_var) && ((*((u16 *) (((s8 *) var_r3) + 4))) == arg1)) && (arg2 == (*((u16 *) (((s8 *) var_r3) + 2)))))
  {
    return (s32) var_r3;
  }

  var_r1 += 1;
  var_r3 += 0x28;
  if (var_r1 > 7U)
  {
    return 0;
  }
  goto loop_1;
}
void *sub_0801E20C(u8 *arg0, s32 arg1, s32 arg2) {
    u8 *p = arg0 + 0x8c;
    u32 i = 0;

    do {
        if (*(s16 *) p != -1 && *(u16 *) (p + 4) == arg1 && arg2 == *(u16 *) (p + 2)) {
            return p;
        }
        i++;
        p += 0x28;
    } while (i <= 7);
    return 0;
}
