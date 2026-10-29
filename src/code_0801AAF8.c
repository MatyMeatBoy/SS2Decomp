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
struct S17Pair { u16 type, id; };
extern struct S17Pair gUnk_0848FB68[];
extern u8 gUnk_0848FB7C[];
extern u8 gUnk_0848FB84[];
extern u8 gUnk_0848FB90[];
extern u8 gUnk_0848FB9C[];
extern u8 gUnk_0848FBA8[];
extern u8 gUnk_0848FBB4[];
extern u8 gUnk_0848FBC0[];
extern u8 gUnk_0848FBCC[];
extern u8 gUnk_0848FBD8[];
extern u8 gUnk_0848FBE4[];
extern u8 gUnk_0848FBF0[];
extern u8 gUnk_0848FBFC[];
extern u8 gUnk_0848FC08[];
extern u8 gUnk_0848FC14[];
extern u8 gUnk_0848FC20[];
extern u8 gUnk_0848FC2C[];
extern u8 gUnk_0848FC38[];
extern u8 gUnk_0848FC44[];
extern u8 gUnk_0848FC50[];
extern u8 gUnk_0848FC5C[];
extern u8 gUnk_0848FC68[];
extern u8 gUnk_0848FC74[];
extern u8 gUnk_0848FC80[];
extern u8 gUnk_0848FC8C[];
extern u8 gUnk_0848FC98[];
extern u8 gUnk_0848FCA4[];
extern u8 gUnk_0848FCB0[];
extern u8 gUnk_0848FCBC[];
extern u8 gUnk_0848FCC8[];
extern u8 gUnk_0848FCD4[];
extern u8 gUnk_0848FCE0[];
extern u8 gUnk_0848FCEC[];
extern u8 gUnk_0848FCF8[];
extern u8 gUnk_0848FD04[];
extern u8 gUnk_0848FD10[];
extern u8 gUnk_0848FD1C[];
extern u8 gUnk_0848FD28[];
extern u8 gUnk_0848FD34[];
extern u8 gUnk_0848FD40[];
extern u8 gUnk_0848FD4C[];
extern u8 gUnk_0848FD58[];
extern u8 gUnk_0848FD64[];
extern u8 gUnk_0848FD70[];
extern u8 gUnk_0848FD7C[];
extern u8 gUnk_0848FD88[];
extern u8 gUnk_0848FD94[];
extern u8 gUnk_0848FDA0[];
extern u8 gUnk_0848FDAC[];
extern u8 gUnk_0848FDB8[];
extern u8 gUnk_0848FDC4[];
extern u8 gUnk_0848FDD0[];
extern u8 gUnk_0848FDDC[];
extern u8 gUnk_0848FDE8[];
extern u8 gUnk_0848FDF4[];
extern u8 gUnk_0848FE00[];
extern u8 gUnk_0848FE0C[];
extern u8 gUnk_0848FE18[];
extern u8 gUnk_0848FE24[];
extern u8 gUnk_0848FE30[];
extern u8 gUnk_0848FE3C[];
extern u8 gUnk_0848FE48[];
extern u8 gUnk_0848FE54[];
extern u8 gUnk_0848FE60[];
extern u8 gUnk_0848FE6C[];
extern u8 gUnk_0848FE78[];
extern u8 gUnk_0848FE84[];
extern u8 gUnk_0848FEA8[];
extern u8 gUnk_0848FEB4[];
extern u8 gUnk_0848FEC0[];
extern u8 gUnk_0848FECC[];
extern u8 gUnk_0848FED8[];
struct S17Stats32 { u32 words[8]; };
struct S17Effect { u16 type, id, value; u8 b6, b7, b8; u8 pad[7]; };
void sub_0801ACB8(void)
{
    struct S17Effect effect;
    register struct S17Stats32 *templates asm("r2");
    u8 *state = (u8 *)gUnk_030034E0;
    register u8 *player asm("r9") = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    u8 i;
    s16 *energy;
    s16 *hp;
    s16 *maxHp;
    s16 *maxEnergy;
    u16 *selected;
    templates = (struct S17Stats32 *)gUnk_0848FA48;
    asm("" : "+r"(templates));
    *(struct S17Stats32 *)(state + 0x10) = templates[*(u16 *)(state + 0xA)];
    switch (sub_0801DE60()) {
    case 0:
        sub_0805D064(gUnk_0848FB84, 0);
        sub_0805D064(gUnk_0848FB90, 1);
        sub_0805D064(gUnk_0848FB9C, 2);
        sub_0807BEA0(4, 0, gUnk_0848FBA8);
        sub_0807BEA0(2, 0, gUnk_0848FBB4);
        sub_0807BEA0(3, 0, gUnk_0848FBC0);
        sub_0807BEA0(5, 0, gUnk_0848FBD8);
        sub_0807BEA0(6, 0, gUnk_0848FBCC);
        break;
    case 3:
        sub_0805D064(gUnk_0848FDC4, 0);
        sub_0805D064(gUnk_0848FDD0, 1);
        sub_0805D064(gUnk_0848FDDC, 2);
        sub_0807BEA0(4, 0, gUnk_0848FDE8);
        sub_0807BEA0(2, 0, gUnk_0848FDF4);
        sub_0807BEA0(3, 0, gUnk_0848FE00);
        sub_0807BEA0(5, 0, gUnk_0848FE18);
        sub_0807BEA0(6, 0, gUnk_0848FE0C);
        break;
    case 2:
        sub_0805D064(gUnk_0848FD64, 0);
        sub_0805D064(gUnk_0848FD70, 1);
        sub_0805D064(gUnk_0848FD7C, 2);
        sub_0807BEA0(4, 0, gUnk_0848FD88);
        sub_0807BEA0(2, 0, gUnk_0848FD94);
        sub_0807BEA0(3, 0, gUnk_0848FDA0);
        sub_0807BEA0(5, 0, gUnk_0848FDB8);
        sub_0807BEA0(6, 0, gUnk_0848FDAC);
        break;
    case 1:
        sub_0805D064(gUnk_0848FBE4, 0);
        sub_0805D064(gUnk_0848FBF0, 1);
        sub_0805D064(gUnk_0848FBFC, 2);
        sub_0807BEA0(4, 0, gUnk_0848FC08);
        sub_0807BEA0(2, 0, gUnk_0848FC14);
        sub_0807BEA0(3, 0, gUnk_0848FC20);
        sub_0807BEA0(5, 0, gUnk_0848FC2C);
        sub_0807BEA0(6, 0, gUnk_0848FC38);
        break;
    case 4:
        sub_0805D064(gUnk_0848FC44, 0);
        sub_0805D064(gUnk_0848FC50, 1);
        sub_0805D064(gUnk_0848FC5C, 2);
        sub_0807BEA0(4, 0, gUnk_0848FC68);
        sub_0807BEA0(2, 0, gUnk_0848FC74);
        sub_0807BEA0(3, 0, gUnk_0848FC80);
        sub_0807BEA0(5, 0, gUnk_0848FC8C);
        sub_0807BEA0(6, 0, gUnk_0848FC98);
        break;
    case 6:
        sub_0805D064(gUnk_0848FE24, 0);
        sub_0805D064(gUnk_0848FE30, 1);
        sub_0805D064(gUnk_0848FE3C, 2);
        sub_0807BEA0(4, 0, gUnk_0848FE48);
        sub_0807BEA0(2, 0, gUnk_0848FE54);
        sub_0807BEA0(3, 0, gUnk_0848FE60);
        sub_0807BEA0(5, 0, gUnk_0848FE6C);
        sub_0807BEA0(6, 0, gUnk_0848FE78);
        break;
    case 5:
        sub_0805D064(gUnk_0848FCA4, 0);
        sub_0805D064(gUnk_0848FCB0, 1);
        sub_0805D064(gUnk_0848FCBC, 2);
        sub_0807BEA0(4, 0, gUnk_0848FCC8);
        sub_0807BEA0(2, 0, gUnk_0848FCD4);
        sub_0807BEA0(3, 0, gUnk_0848FCE0);
        sub_0807BEA0(5, 0, gUnk_0848FCF8);
        sub_0807BEA0(6, 0, gUnk_0848FCEC);
        break;
    case 7:
        sub_0805D064(gUnk_0848FD04, 0);
        sub_0805D064(gUnk_0848FD10, 1);
        sub_0805D064(gUnk_0848FD1C, 2);
        sub_0807BEA0(4, 0, gUnk_0848FD28);
        sub_0807BEA0(2, 0, gUnk_0848FD34);
        sub_0807BEA0(3, 0, gUnk_0848FD40);
        sub_0807BEA0(5, 0, gUnk_0848FD58);
        sub_0807BEA0(6, 0, gUnk_0848FD4C);
        break;
    case 8:
        sub_0805D064(gUnk_0848FE84, 0);
        sub_0805D064(gUnk_0848FE84, 1);
        sub_0805D064(gUnk_0848FE84, 2);
        sub_0807BEA0(4, 0, gUnk_0848FEA8);
        sub_0807BEA0(2, 0, gUnk_0848FEB4);
        sub_0807BEA0(3, 0, gUnk_0848FEC0);
        sub_0807BEA0(5, 0, gUnk_0848FED8);
        sub_0807BEA0(6, 0, gUnk_0848FECC);
        break;
    }
    sub_0805AD78(0);
    sub_0805D094();
    sub_0805D0E8();
    sub_0805D13C();
    sub_0805D190();
    sub_0805D1E0();
    i = 0;
    selected = (u16 *)(state + 0x68);
    energy = (s16 *)(player + 0xC2);
    maxEnergy = (s16 *)(player + 0x60);
    hp = (s16 *)(player + 0xC4);
    maxHp = (s16 *)(player + 0x62);
    do {
        *(u32 *)&effect.value = 0;
        effect.id = gUnk_0848FB68[i].id;
        effect.type = gUnk_0848FB68[i].type;
        effect.value = 0;
        effect.b8 = 0;
        sub_0805CFF8(i, &effect);
        i++;
    } while (i <= 4);
    sub_0805CFF8(0x18, gUnk_0848FB7C);
    switch (sub_0802A9B0()) {
    case 0: *(u16 *)(state + 0x12) += 5; break;
    case 1: *(u16 *)(state + 0x24) += 30; break;
    case 2:
        effect.type = 6;
        effect.id = 0x5E;
        effect.b8 = 0;
        effect.value = 0;
        effect.b6 = 0;
        effect.b7 = 0;
        sub_0805AB20(&effect);
        break;
    case 3:
        effect.type = 5;
        effect.id = 0x21;
        effect.b8 = 0;
        effect.value = 0;
        effect.b6 = 0;
        effect.b7 = 0;
        sub_0805AB20(&effect);
        break;
    case 4: *(u16 *)(state + 0x10) += 5; break;
    case 5: *(u16 *)(state + 0x26) += 30; break;
    case 6: *(u16 *)(state + 0x16) += 5; break;
    case 7: *(u16 *)(state + 0x2E) += 30; break;
    case 8:
        effect.type = 4;
        effect.id = 0x95;
        effect.b8 = 0;
        effect.value = 0;
        effect.b6 = 0;
        effect.b7 = 0;
        sub_0805AB20(&effect);
        break;
    case 9: *(u16 *)(state + 0x2A) += 30; break;
    case 10: *(u16 *)(state + 0x2C) += 30; break;
    case 11:
        effect.type = 6;
        effect.id = 0x5F;
        effect.b8 = 0;
        effect.value = 0;
        effect.b6 = 0;
        effect.b7 = 0;
        sub_0805AB20(&effect);
        break;
    case 12:
        *(u16 *)(state + 0x14) += 5;
        *(u16 *)(state + 0x28) += 30;
        break;
    }
    *selected = 0;
    sub_0801E024(player);
    if (*energy > *maxEnergy)
        *energy = (u16)*maxEnergy;
    if (*hp > *maxHp)
        *hp = (u16)*maxHp;
}


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

struct S17SetEntry { u8 data[0x150]; };
extern struct S17SetEntry gUnk_08490120[];
#ifdef NONMATCHING
s32 sub_0801B8A8(void *a, void *b, void *c, void *d, void *e, void *f)
{
    void *set;

    if (gUnk_03006440)
        M2C_FIELD(gUnk_03006440, s32 *, 0x5B4) = 0;
    if (a) {

        if (M2C_FIELD(a, u16 *, 0xC2)) {
            set = &gUnk_08490120[M2C_FIELD(a, u16 *, 0xC2)];
            if (sub_0801B74C(set, a, b, c, d, e, f)) {
                if (gUnk_03006440)
                    M2C_FIELD(gUnk_03006440, void **, 0x5B4) = set;
                return (s32)(set + 0x144);
            }
        }
    }
    if (
        (b && M2C_FIELD(b, u16 *, 0xB4) &&
         (set = &gUnk_08490120[M2C_FIELD(b, u16 *, 0xB4)], sub_0801B74C(set, a, b, c, d, e, f))) ||
        (c && M2C_FIELD(c, u16 *, 0xB4) &&
         (set = &gUnk_08490120[M2C_FIELD(c, u16 *, 0xB4)], sub_0801B74C(set, a, b, c, d, e, f))) ||
        (d && M2C_FIELD(d, u16 *, 0xB4) &&
         (set = &gUnk_08490120[M2C_FIELD(d, u16 *, 0xB4)], sub_0801B74C(set, a, b, c, d, e, f))) ||
        (e && M2C_FIELD(e, u16 *, 0xB0) &&
         (set = &gUnk_08490120[M2C_FIELD(e, u16 *, 0xB0)], sub_0801B74C(set, a, b, c, d, e, f))) ||
        (f && M2C_FIELD(f, u16 *, 0xAC) &&
         (set = &gUnk_08490120[M2C_FIELD(f, u16 *, 0xAC)], sub_0801B74C(set, a, b, c, d, e, f)))
    ) {
        if (gUnk_03006440)
            M2C_FIELD(gUnk_03006440, void **, 0x5B4) = set;
        return (s32)(set + 0x144);
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801B8A8);
#endif

#ifdef NONMATCHING
/* Incomplete m2c draft: switch-table branches still need reconstruction. */
M2C_UNK sub_0801BA74(void *arg0, s32 arg1, void *arg2, void *arg3, s32 arg4) {
    s32 sp18;
    s32 sp1C;
    void *sp20;
    s32 sp24;
    s32 sp28;
    void *sp2C;
    void *sp30;
    s32 sp34;
    s32 sp38;
    u8 *sp3C;
    void *sp40;
    void *sp44;
    void *sp48;
    s16 temp_r1_4;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_4;
    s32 var_r0_6;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r1_5;
    s32 var_r4;
    s32 var_r4_2;
    s32 var_r4_3;
    s32 var_r4_4;
    s8 var_r4_5;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r1_5;
    u16 temp_r3;
    u16 temp_r4_8;
    u16 var_r0_10;
    u16 var_r0_11;
    u16 var_r0_12;
    u16 var_r0_13;
    u16 var_r0_14;
    u16 var_r0_15;
    u16 var_r0_16;
    u16 var_r0_17;
    u16 var_r0_18;
    u16 var_r0_19;
    u16 var_r0_2;
    u16 var_r0_3;
    u16 var_r0_5;
    u16 var_r0_7;
    u16 var_r0_8;
    u16 var_r0_9;
    u16 var_r4_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u16 var_r4_9;
    u32 temp_r0_15;
    u32 temp_r0_5;
    u8 temp_r0_10;
    u8 temp_r0_11;
    u8 temp_r0_12;
    u8 temp_r0_13;
    u8 temp_r0_14;
    u8 temp_r0_4;
    u8 temp_r1_6;
    u8 temp_r1_7;
    u8 temp_r4_3;
    u8 temp_r4_4;
    u8 temp_r4_5;
    u8 temp_r4_6;
    u8 temp_r4_7;
    u8 var_r5_2;
    u8 var_r5_3;
    u8 var_r5_4;
    u8 var_r5_5;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_9;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r1_3;
    void *var_r5;

    temp_r4 = gUnk_030034E0;
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 2)) {
        temp_r1 = temp_r4 + (M2C_FIELD(temp_r4, u16 *, 0x68) * 0x10);
        if ((M2C_FIELD(temp_r1, u8 *, 0x79) == 0) || (M2C_FIELD(temp_r1, u8 *, 0x78) != 0)) {
            var_r0 = 0;
        } else {
            var_r0_2 = M2C_FIELD(temp_r1, u16 *, 0x72);
            goto block_7;
        }
    } else {
        var_r0_2 = M2C_FIELD(arg1, u16 *, 2);
block_7:
        var_r0 = sub_08007290(var_r0_2 | 0xB0000);
    }
    sp20 = (void *) var_r0;
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 3)) {
        if ((M2C_FIELD(gUnk_030034E0, u8 *, 0x119) == 0) || (M2C_FIELD(gUnk_030034E0, u8 *, 0x118) != 0)) {
            sp28 = 0;
        } else {
            var_r0_3 = M2C_FIELD(temp_r4, u16 *, 0x112);
            goto block_15;
        }
    } else {
        var_r0_3 = M2C_FIELD(arg1, u16 *, 2);
block_15:
        sp28 = sub_08007290(var_r0_3 | 0xC0000);
    }
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 4)) {
        if ((M2C_FIELD(gUnk_030034E0, u8 *, 0x109) == 0) || (M2C_FIELD(gUnk_030034E0, u8 *, 0x108) != 0)) {
            var_r0_4 = 0;
        } else {
            var_r0_5 = M2C_FIELD(temp_r4, u16 *, 0x102);
            goto block_23;
        }
    } else {
        var_r0_5 = M2C_FIELD(arg1, u16 *, 2);
block_23:
        var_r0_4 = sub_08007290(var_r0_5 | 0xD0000);
    }
    sp2C = (void *) var_r0_4;
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 5)) {
        if ((M2C_FIELD(gUnk_030034E0, u8 *, 0x129) == 0) || (M2C_FIELD(gUnk_030034E0, u8 *, 0x128) != 0)) {
            var_r0_6 = 0;
        } else {
            var_r0_7 = M2C_FIELD(temp_r4, u16 *, 0x122);
            goto block_31;
        }
    } else {
        var_r0_7 = M2C_FIELD(arg1, u16 *, 2);
block_31:
        var_r0_6 = sub_08007290(var_r0_7 | 0xE0000);
    }
    sp30 = (void *) var_r0_6;
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 6)) {
        if (M2C_FIELD(gUnk_030034E0, u8 *, 0x149) == 0) {
            sp24 = 0;
        } else {
            var_r0_8 = M2C_FIELD(temp_r4, u16 *, 0x142);
            goto block_38;
        }
    } else {
        var_r0_8 = M2C_FIELD(arg1, u16 *, 2);
block_38:
        sp24 = sub_08007290(var_r0_8 | 0xF0000);
    }
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 7)) {
        if (M2C_FIELD(gUnk_030034E0, u8 *, 0x139) == 0) {
            sp34 = 0;
        } else {
            var_r0_9 = M2C_FIELD(temp_r4, u16 *, 0x132);
            goto block_45;
        }
    } else {
        var_r0_9 = M2C_FIELD(arg1, u16 *, 2);
block_45:
        sp34 = sub_08007290(var_r0_9 | 0x110000);
    }
    temp_r0 = gUnk_030034E0 + 0x10;
    temp_r0_2 = temp_r0 + 0xC;
    M2C_FIELD(arg2, s32 *, 0) = (s32) M2C_FIELD(gUnk_030034E0, s32 *, 0x10);
    M2C_FIELD(arg2, s32 *, 4) = (s32) M2C_FIELD(temp_r0, s32 *, 4);
    M2C_FIELD(arg2, s32 *, 8) = (s32) M2C_FIELD(temp_r0, s32 *, 8);
    temp_r1_2 = arg2 + 0xC;
    M2C_FIELD(arg2, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0, s32 *, 0xC);
    M2C_FIELD(temp_r1_2, s32 *, 4) = (s32) M2C_FIELD(temp_r0_2, s32 *, 4);
    M2C_FIELD(temp_r1_2, s32 *, 8) = (s32) M2C_FIELD(temp_r0_2, s32 *, 8);
    M2C_FIELD(temp_r1_2, s32 *, 0xC) = (s32) M2C_FIELD(temp_r0_2, s32 *, 0xC);
    M2C_FIELD((temp_r1_2 + 0xC), s32 *, 4) = (s32) M2C_FIELD((temp_r0_2 + 0xC), s32 *, 4);
    M2C_FIELD(arg2, s32 *, 8) = (u16) M2C_FIELD(((M2C_FIELD(gUnk_030034E0, u16 *, 0xA) << 5) + gUnk_0848FA48), u16 *, 8);
    M2C_FIELD(arg0, u16 *, 0x64) = (u16) M2C_FIELD(gUnk_030034E0, u16 *, 0xA);
    M2C_FIELD(arg0, s8 *, 0x66) = (s8) M2C_FIELD(gUnk_030034E0, u16 *, 0xC);
    M2C_FIELD(arg3, u16 *, 0) = 0U;
    M2C_FIELD(arg3, u16 *, 2) = 0U;
    M2C_FIELD(arg3, s16 *, 4) = 0;
    M2C_FIELD(arg3, u16 *, 6) = 0xFFU;
    M2C_FIELD(arg3, u8 *, 0x1F) = 3U;
    M2C_FIELD(arg3, s8 *, 0x20) = 3;
    M2C_FIELD(arg3, s8 *, 0x1D) = 0;
    M2C_FIELD(arg3, s8 *, 0x1E) = 0;
    M2C_FIELD(arg3, u16 *, 8) = 0U;
    M2C_FIELD(arg3, u16 *, 0xA) = 0U;
    M2C_FIELD(arg3, s8 *, 0x12) = 0;
    M2C_FIELD(arg3, s8 *, 0x13) = 0;
    M2C_FIELD(arg3, s8 *, 0x14) = 0;
    M2C_FIELD(arg3, s8 *, 0x15) = 0;
    M2C_FIELD(arg3, s8 *, 0x11) = 0;
    M2C_FIELD(arg3, s8 *, 0xF) = 0;
    M2C_FIELD(arg3, u8 *, 0x16) = 0U;
    M2C_FIELD(arg3, s8 *, 0x17) = 0;
    M2C_FIELD(arg3, s8 *, 0x18) = 0;
    M2C_FIELD(arg3, s8 *, 0x19) = 0xA;
    M2C_FIELD(arg3, s8 *, 0x1B) = 0x64;
    M2C_FIELD(arg3, s8 *, 0x1C) = 0;
    M2C_FIELD(arg3, s8 *, 0x1A) = 0;
    M2C_FIELD(arg3, s8 *, 0x21) = 0;
    temp_r0_3 = arg3 + 0x21 + 3;
    M2C_FIELD(arg3, u16 *, 0x24) = 0U;
    M2C_FIELD(temp_r0_3, s16 *, 2) = 0;
    M2C_FIELD(temp_r0_3, s16 *, 4) = 0;
    M2C_FIELD(temp_r0_3, s16 *, 6) = 0;
    M2C_FIELD(temp_r0_3, s16 *, 8) = 0;
    M2C_FIELD(temp_r0_3, s16 *, 0xA) = 0;
    sp1C = 0;
    sp44 = arg0 + 0x64;
    sp48 = arg0 + 0x66;
    sp3C = arg3 + 0x20;
    sp40 = temp_r0_3;
    if (sp20 != NULL) {
        if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 2)) {
            temp_r1_3 = gUnk_030034E0 + (M2C_FIELD(gUnk_030034E0, u16 *, 0x68) * 0x10);
            if (M2C_FIELD(temp_r1_3, u8 *, 0x79) != 0) {
                var_r0_10 = M2C_FIELD(temp_r1_3, u16 *, 0x74);
                if (var_r0_10 == 0) {
                    goto block_54;
                }
                goto block_53;
            }
            goto block_54;
        }
        var_r0_10 = M2C_FIELD(arg1, u16 *, 4);
        if (var_r0_10 != 0) {
block_53:
            var_r4 = sub_08007290((var_r0_10 - 1) | 0x130000);
        } else {
block_54:
            var_r4 = 0;
        }
        M2C_FIELD(arg3, u16 *, 6) = (u16) M2C_FIELD(sp20, u8 *, 0xA4);
        sub_0801B264(sp20 + 0xB0, arg2, arg3);
        sub_0801B264(var_r4 + 0xA0, arg2, arg3);
    }
    if (sp28 != 0) {
        if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 3)) {
            if (M2C_FIELD(gUnk_030034E0, u8 *, 0x119) != 0) {
                var_r0_11 = M2C_FIELD(gUnk_030034E0, u16 *, 0x114);
                if (var_r0_11 == 0) {
                    goto block_64;
                }
                goto block_63;
            }
            goto block_64;
        }
        var_r0_11 = M2C_FIELD(arg1, u16 *, 4);
        if (var_r0_11 != 0) {
block_63:
            var_r4_2 = sub_08007290((var_r0_11 - 1) | 0x130000);
        } else {
block_64:
            var_r4_2 = 0;
        }
        sub_0801B264(sp28 + 0xA4, arg2, arg3);
        sub_0801B264(var_r4_2 + 0xA0, arg2, arg3);
    }
    if (sp2C != NULL) {
        if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 4)) {
            if (M2C_FIELD(gUnk_030034E0, u8 *, 0x109) != 0) {
                var_r0_12 = M2C_FIELD(gUnk_030034E0, u16 *, 0x104);
                if (var_r0_12 == 0) {
                    goto block_74;
                }
                goto block_73;
            }
            goto block_74;
        }
        var_r0_12 = M2C_FIELD(arg1, u16 *, 4);
        if (var_r0_12 != 0) {
block_73:
            var_r4_3 = sub_08007290((var_r0_12 - 1) | 0x130000);
        } else {
block_74:
            var_r4_3 = 0;
        }
        sub_0801B264(sp2C + 0xA4, arg2, arg3);
        sub_0801B264(var_r4_3 + 0xA0, arg2, arg3);
    }
    if (sp30 != NULL) {
        if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 5)) {
            if (M2C_FIELD(gUnk_030034E0, u8 *, 0x129) != 0) {
                var_r0_13 = M2C_FIELD(gUnk_030034E0, u16 *, 0x124);
                if (var_r0_13 == 0) {
                    goto block_84;
                }
                goto block_83;
            }
            goto block_84;
        }
        var_r0_13 = M2C_FIELD(arg1, u16 *, 4);
        if (var_r0_13 != 0) {
block_83:
            var_r4_4 = sub_08007290((var_r0_13 - 1) | 0x130000);
        } else {
block_84:
            var_r4_4 = 0;
        }
        sub_0801B264(sp30 + 0xA4, arg2, arg3);
        sub_0801B264(var_r4_4 + 0xA0, arg2, arg3);
        if (M2C_FIELD(sp30, u8 *, 0xA0) != 0) {
            var_r4_5 = M2C_FIELD(arg3, s8 *, 0x15);
            sub_0801DE60();
            temp_r0_4 = sub_0801DE60();
            switch (temp_r0_4) {
            case 0:
                var_r1 = 3;
block_91:
                var_r4_5 = (s8) (u16) (sub_0801E0AC(arg4, var_r1) * 8);
                break;
            case 3:
                var_r1 = 2;
                goto block_91;
            }
            M2C_FIELD(arg3, u8 *, 0x16) = (u8) (var_r4_5 + M2C_FIELD(arg3, u8 *, 0x16));
        }
    }
    if (sp24 != 0) {
        sub_0801B264(sp24 + 0xA0, arg2, arg3);
    }
    sp38 = 0;
    M2C_FIELD(arg0, u16 *, 0x132) = 0U;
    var_r5 = M2C_FIELD(arg0, void **, 0x34);
    sp18 = 0;
loop_96:
    temp_r1_4 = M2C_FIELD(var_r5, s16 *, 0);
    if (((s32) temp_r1_4 < 0) && (temp_r1_4 != -2)) {

    } else if ((u32) M2C_FIELD(var_r5, u16 *, 2) > 3U) {
        temp_r0_5 = M2C_FIELD(var_r5, u16 *, 4) - 1;
        if (temp_r0_5 <= 6U) {
            switch (temp_r0_5) {
            case 0:
                break;
            }
            if ((((u16) M2C_FIELD(var_r5, s16 *, 0) << 0x10) == 0) && (M2C_FIELD(arg0, u16 *, 0x132) != 0xD)) {
                M2C_FIELD(arg0, u16 *, 0x132) = 0xEU;
            }
        }
    } else {
        temp_r3 = M2C_FIELD(var_r5, u16 *, 2);
        temp_r4_2 = 0x14C * temp_r3;
        if (*(temp_r4_2 + &gUnk_03003CE0->flags) & 0x2000) {

        } else {
            temp_r0_6 = M2C_FIELD((temp_r4_2 + gUnk_03003CE0), u16 *, 0xC);
            if ((u32) temp_r0_6 > 8U) {

            } else {
                switch (temp_r0_6) {
                case 0:
                    break;
                }
                if (M2C_FIELD(var_r5, u16 *, 4) != 7) {

                } else if (M2C_FIELD(arg0, u8 *, 0x68) != M2C_FIELD(&gUnk_03003CE0[temp_r3], u8 *, 0x68)) {

                } else {
                    temp_r0_7 = M2C_FIELD(var_r5, u16 *, 6);
                    M2C_FIELD(arg3, u16 *, 0) = (u16) (M2C_FIELD(arg3, u16 *, 0) + ((s32) (temp_r0_7 * 2 * (temp_r0_7 + 0x14)) / 20));
                }
            }
        }
    }
    temp_r0_8 = sp18 + 1;
    sp18 = (s32) temp_r0_8;
    var_r5 += 0x28;
    if ((u32) temp_r0_8 <= 7U) {
        goto loop_96;
    }
    temp_r0_9 = sub_0801B8A8(sp20, sp28, sp2C, sp30, sp24, sp34);
    if (temp_r0_9 != NULL) {
        sub_0801B264(temp_r0_9, arg2, arg3);
    }
    if (sp20 != NULL) {
        temp_r4_3 = M2C_FIELD(sp20, u8 *, 0x9C);
        temp_r1_5 = sub_0801B58C(sp20, arg4, temp_r4_3, sub_0801DE60()) + M2C_FIELD(arg3, u16 *, 0);
        M2C_FIELD(arg3, u16 *, 0) = temp_r1_5;
        if ((arg1 != 0) && (M2C_FIELD(arg1, u16 *, 0) == 2)) {
            var_r0_14 = temp_r1_5 + M2C_FIELD(arg1, u8 *, 6);
        } else {
            var_r0_14 = M2C_FIELD(arg3, u16 *, 0) + M2C_FIELD((gUnk_030034E0 + (M2C_FIELD(gUnk_030034E0, u16 *, 0x68) * 0x10)), u8 *, 0x76);
        }
        M2C_FIELD(arg3, u16 *, 0) = var_r0_14;
    }
    M2C_FIELD(arg3, u16 *, 0) = (u16) ((u16) M2C_FIELD(arg2, s32 *, 0) + M2C_FIELD(arg3, u16 *, 0));
    if (sp28 != 0) {
        temp_r4_4 = M2C_FIELD(sp28, u8 *, 0x9B);
        sub_0801DE60();
        var_r5_2 = temp_r4_4;
        temp_r0_10 = sub_0801DE60();
        switch (temp_r0_10) {
        case 0:
            var_r4_6 = sub_0801E0AC(arg4, 4);
            var_r1_2 = 4;
block_196:
            var_r5_2 = (u8) (u16) ((s32) (((s16) var_r5_2 + ((u32) (var_r4_6 << 0x10) >> 0xF)) * (sub_0801E0AC(arg4, var_r1_2) + 0xA)) / 10);
            break;
        case 3:
            var_r4_6 = sub_0801E0AC(arg4, 3);
            var_r1_2 = 3;
            goto block_196;
        }
        sp1C = (s32) (u16) (sp1C + var_r5_2);
        if ((arg1 != 0) && (M2C_FIELD(arg1, u16 *, 0) == 3)) {
            var_r0_15 = sp1C + M2C_FIELD(arg1, u8 *, 6);
        } else {
            var_r0_15 = sp1C + M2C_FIELD(gUnk_030034E0, u8 *, 0x116);
        }
        sp1C = (s32) var_r0_15;
    }
    if ((sp20 != NULL) && (M2C_FIELD(sp20, u8 *, 0x9B) == 9)) {
        if ((arg1 != 0) && (M2C_FIELD(arg1, u16 *, 0) == 2)) {
            var_r0_16 = sp1C + M2C_FIELD(arg1, u8 *, 6);
        } else {
            var_r0_16 = sp1C + M2C_FIELD((gUnk_030034E0 + (M2C_FIELD(gUnk_030034E0, u16 *, 0x68) * 0x10)), u8 *, 0x76);
        }
        sp1C = (s32) var_r0_16;
    }
    if (sp2C != NULL) {
        temp_r4_5 = M2C_FIELD(sp2C, u8 *, 0x9B);
        sub_0801DE60();
        var_r5_3 = temp_r4_5;
        temp_r0_11 = sub_0801DE60();
        switch (temp_r0_11) {
        case 0:
            var_r4_7 = sub_0801E0AC(arg4, 4);
            var_r1_3 = 4;
block_215:
            var_r5_3 = (u8) (u16) ((s32) (((s16) var_r5_3 + ((u32) (var_r4_7 << 0x10) >> 0xF)) * (sub_0801E0AC(arg4, var_r1_3) + 0xA)) / 10);
            break;
        case 3:
            var_r4_7 = sub_0801E0AC(arg4, 3);
            var_r1_3 = 3;
            goto block_215;
        }
        sp1C = (s32) (u16) (sp1C + var_r5_3);
        if ((arg1 != 0) && (M2C_FIELD(arg1, u16 *, 0) == 4)) {
            var_r0_17 = sp1C + M2C_FIELD(arg1, u8 *, 6);
        } else {
            var_r0_17 = sp1C + M2C_FIELD(gUnk_030034E0, u8 *, 0x106);
        }
        sp1C = (s32) var_r0_17;
    }
    if (sp30 == NULL) {

    } else {
        if (M2C_FIELD(sp30, u8 *, 0xA0) != 0) {
            temp_r4_6 = M2C_FIELD(sp30, u8 *, 0x9B);
            sub_0801DE60();
            var_r5_4 = temp_r4_6;
            temp_r0_12 = sub_0801DE60();
            switch (temp_r0_12) {
            case 0:
                var_r4_8 = sub_0801E0AC(arg4, 3);
                var_r1_4 = 3;
block_229:
                var_r5_4 = (u8) (u16) ((s32) (((s16) var_r5_4 + ((u32) (var_r4_8 << 0x10) >> 0xF)) * (sub_0801E0AC(arg4, var_r1_4) + 0xA)) / 10);
                break;
            case 3:
                var_r4_8 = sub_0801E0AC(arg4, 2);
                var_r1_4 = 2;
                goto block_229;
            }
            var_r0_18 = sp1C + var_r5_4;
        } else {
            temp_r4_7 = M2C_FIELD(sp30, u8 *, 0x9B);
            sub_0801DE60();
            var_r5_5 = temp_r4_7;
            temp_r0_13 = sub_0801DE60();
            switch (temp_r0_13) {
            case 0:
                var_r4_9 = sub_0801E0AC(arg4, 4);
                var_r1_5 = 4;
block_236:
                var_r5_5 = (u8) (u16) ((s32) (((s16) var_r5_5 + ((u32) (var_r4_9 << 0x10) >> 0xF)) * (sub_0801E0AC(arg4, var_r1_5) + 0xA)) / 10);
                break;
            case 3:
                var_r4_9 = sub_0801E0AC(arg4, 3);
                var_r1_5 = 3;
                goto block_236;
            }
            var_r0_18 = sp1C + var_r5_5;
        }
        sp1C = (s32) var_r0_18;
        if ((arg1 != 0) && (M2C_FIELD(arg1, u16 *, 0) == 5)) {
            var_r0_19 = sp1C + M2C_FIELD(arg1, u8 *, 6);
        } else {
            var_r0_19 = sp1C + M2C_FIELD(gUnk_030034E0, u8 *, 0x126);
        }
        sp1C = (s32) var_r0_19;
    }
    M2C_FIELD(arg3, u16 *, 2) = (u16) (sp1C + M2C_FIELD(arg3, u16 *, 2));
    M2C_FIELD(arg3, u16 *, 0x24) = (u16) (M2C_FIELD(arg2, u16 *, 0x14) + M2C_FIELD(arg3, u16 *, 0x24));
    M2C_FIELD(arg3, u16 *, 0x26) = (u16) (M2C_FIELD(arg2, u16 *, 0x16) + M2C_FIELD(arg3, u16 *, 0x26));
    M2C_FIELD(arg3, u16 *, 0x28) = (u16) (M2C_FIELD(arg2, u16 *, 0x18) + M2C_FIELD(arg3, u16 *, 0x28));
    M2C_FIELD(arg3, u16 *, 0x2A) = (u16) (M2C_FIELD(arg2, u16 *, 0x1A) + M2C_FIELD(arg3, u16 *, 0x2A));
    M2C_FIELD(arg3, u16 *, 0x2C) = (u16) (M2C_FIELD(arg2, u16 *, 0x1C) + M2C_FIELD(arg3, u16 *, 0x2C));
    M2C_FIELD(arg3, u16 *, 0x2E) = (u16) (M2C_FIELD(arg2, u16 *, 0x1E) + M2C_FIELD(arg3, u16 *, 0x2E));
    if ((s32) M2C_FIELD(arg2, s16 *, 6) <= 0) {
        M2C_FIELD(arg2, s16 *, 6) = 1;
    }
    if ((s32) (s16) M2C_FIELD(arg2, s32 *, 4) <= 0) {
        M2C_FIELD(arg2, s32 *, 4) = 0;
    }
    M2C_FIELD(arg3, u16 *, 0xA) = (u16) ((M2C_FIELD(arg2, s16 *, 6) * 3) + M2C_FIELD(arg3, u16 *, 0xA));
    M2C_FIELD(arg3, u16 *, 8) = (u16) (((s16) M2C_FIELD(arg2, s32 *, 4) * 0xA * 2) + M2C_FIELD(arg3, u16 *, 8));
    temp_r0_14 = sub_0801DE60();
    if ((u32) temp_r0_14 <= 7U) {
        switch (temp_r0_14) {
        case 0:
            break;
        }
        temp_r4_8 = sub_0801E0AC(arg4, 7);
        M2C_FIELD(arg3, u16 *, 0) = (u16) (M2C_FIELD(arg3, u16 *, 0) + ((s32) (((u32) (temp_r4_8 << 0x10) >> 0xF) * (sub_0801E0AC(arg4, 7) + 0x14)) / 20));
    }
    if (sp20 != NULL) {
        M2C_FIELD(arg3, u16 *, 6) = (u16) (M2C_FIELD(arg3, u16 *, 6) - ((s16) M2C_FIELD(arg2, s16 *, 2) / 20));
        temp_r0_15 = (u8) M2C_FIELD(sp20, u8 *, 0xA4) >> 1;
        if ((s32) (s16) M2C_FIELD(arg3, u16 *, 6) < (s32) temp_r0_15) {
            M2C_FIELD(arg3, u16 *, 6) = (u16) temp_r0_15;
        }
    }
    if (1 & sp38) {
        M2C_FIELD(arg3, u16 *, 2) = (u16) ((s32) (M2C_FIELD(arg3, u16 *, 2) << 0x10) >> 0x11);
        M2C_FIELD(arg2, s32 *, 8) = (s16) ((s32) ((u16) M2C_FIELD(arg2, s32 *, 8) << 0x10) >> 0x11);
    }
    if (sp38 & 2) {
        M2C_FIELD(arg2, s16 *, 2) = (s16) ((s32) ((u16) M2C_FIELD(arg2, s16 *, 2) << 0x10) >> 0x11);
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0) < 0) {
        M2C_FIELD(arg3, u16 *, 0) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 2) < 0) {
        M2C_FIELD(arg3, u16 *, 2) = 0U;
    }
    if ((s32) M2C_FIELD(arg3, s16 *, 4) < 0) {
        M2C_FIELD(arg3, s16 *, 4) = 0;
    }
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 6)) {
        temp_r1_6 = M2C_FIELD(arg3, u8 *, 0x1F);
        if ((u32) temp_r1_6 <= (u32) M2C_FIELD(gUnk_030034E0, u16 *, 0x68)) {
            M2C_FIELD(gUnk_030034E0, u16 *, 0x68) = (u16) ((s32) M2C_FIELD(gUnk_030034E0, u16 *, 0x68) % (s32) temp_r1_6);
        }
    }
    if ((arg1 == 0) || (M2C_FIELD(arg1, u16 *, 0) != 6)) {
        temp_r1_7 = *sp3C;
        if ((u32) temp_r1_7 <= (u32) M2C_FIELD(gUnk_030034E0, u16 *, 0x54)) {
            M2C_FIELD(gUnk_030034E0, u16 *, 0x54) = (u16) ((s32) M2C_FIELD(gUnk_030034E0, u16 *, 0x54) % (s32) temp_r1_7);
        }
    }
    if (sub_0801DF8C() != 0) {
        M2C_FIELD(arg2, s32 *, 8) = (u16) M2C_FIELD(((M2C_FIELD(gUnk_030034E0, u16 *, 0xA) << 5) + gUnk_0848FA48), u16 *, 8);
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x24) > 0xC8) {
        M2C_FIELD(arg3, u16 *, 0x24) = 0xC8U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x26) > 0xC8) {
        M2C_FIELD(arg3, u16 *, 0x26) = 0xC8U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x28) > 0xC8) {
        M2C_FIELD(arg3, u16 *, 0x28) = 0xC8U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x2A) > 0xC8) {
        M2C_FIELD(arg3, u16 *, 0x2A) = 0xC8U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x2C) > 0xC8) {
        M2C_FIELD(arg3, u16 *, 0x2C) = 0xC8U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x2E) > 0xC8) {
        M2C_FIELD(arg3, u16 *, 0x2E) = 0xC8U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x24) < 0) {
        M2C_FIELD(arg3, u16 *, 0x24) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x26) < 0) {
        M2C_FIELD(arg3, u16 *, 0x26) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x28) < 0) {
        M2C_FIELD(arg3, u16 *, 0x28) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x2A) < 0) {
        M2C_FIELD(arg3, u16 *, 0x2A) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x2C) < 0) {
        M2C_FIELD(arg3, u16 *, 0x2C) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg3, u16 *, 0x2E) < 0) {
        M2C_FIELD(arg3, u16 *, 0x2E) = 0U;
    }
    if ((s32) (s16) M2C_FIELD(arg2, s32 *, 0) < 0) {
        M2C_FIELD(arg2, s32 *, 0) = 0;
    }
    if ((s32) M2C_FIELD(arg2, s16 *, 2) < 0) {
        M2C_FIELD(arg2, s16 *, 2) = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801BA74);
#endif
#ifdef NONMATCHING
struct RescueC8F0Entity {
u16 id;
u8 pad2[10];
u16 state;
u8 padE[60];
u16 value4A;
s32 value4C;
u8 pad50[12];
s16 limit5C;
u8 pad5E[4];
u16 status;
u8 pad64[2];
u16 field66;
u8 pad68[356];
u16 field1CC;
u16 field1CE;
u8 pad1D0[45];
u8 field1FD;
u8 pad1FE[3];
u8 field201;
u8 pad202[2];
u16 field204;
u8 pad206[32];
u8 field226;
u8 pad227[181];
u16 * link;
};
struct RescueC8F0Slot { s16 timer; u16 source, kind, value; u8 pad[0x10]; s32 scale; u8 tail[0xc]; };

extern u8 rescueC8F0Records[] asm("gUnk_03003CE0");
extern s32 rescueC8F0Test(s32 *, void *, s32 *, s32 *) asm("sub_08021FE0");
void sub_0801C8F0(struct RescueC8F0Entity *arg0) {
    s32 zero;
    s32 pos[2];
    s32 sp8;
    s32 spC;
    s16 *var_r1;
    s16 temp_r1;
    s16 var_r0_2;
    s32 temp_r0;
    s32 temp_r0_5;
    s32 temp_r2;
    u32 baseAddress;
    s32 var_r0;
    s32 var_r1_2;
    u16 *var_r2;
    u16 temp_r0_3;
    u16 temp_r0_6;
    u16 temp_r0_7;
    u16 temp_r0_8;
    u16 temp_r0_9;
    u32 temp_r0_4;
    u32 var_r6;
    u8 temp_r0_2;
    u8 **temp_r1_3;
    u8 *temp_r1_2;
    u8 *temp_r6;
    struct RescueC8F0Slot *var_r5;

    temp_r6 = (u8 *)arg0 + 0x204;
    temp_r0 = sub_08007290((*(u16 *)(temp_r6 + 0x28)) | 0xB0000);
    sub_0801B264((void *)(temp_r0 + 0xB0), temp_r6, (void *)((u8 *)arg0 + 0x1CC));
    temp_r0_2 = (*(u8 *)(temp_r0 + 0x9C));
    zero = 0;
    arg0->field1CC = (u16) temp_r0_2;
    arg0->field1CC += arg0->field204;
    arg0->field1CE = (u16) (*(u16 *)(temp_r6 + 0xA));
    arg0->status = zero;
    if (2 & arg0->field201) {
        arg0->status = 8;
    }
    if (arg0->field226 == 3) {
        return;
    }
    var_r5 = (struct RescueC8F0Slot *)((u8 *)arg0 + 0x8c);
    var_r6 = 0;
loop_5:
    temp_r1 = var_r5->timer;
    if (((s32) temp_r1 < 0) && (temp_r1 != -2)) {

    } else {
        temp_r0_3 = var_r5->source;
        if ((u32) temp_r0_3 <= 3U) {
            baseAddress = (u32)rescueC8F0Records;
            temp_r2 = 0x14C * temp_r0_3;
            temp_r1_2 = (u8 *)(baseAddress + temp_r2);
            temp_r0_6 = (*(u16 *)(temp_r1_2 + 0xC));
            switch (temp_r0_6) {                    /* switch 1; irregular */
            case 3:                                 /* switch 1 */
                temp_r0_7 = var_r5->kind;
                switch (temp_r0_7) {                /* switch 2; irregular */
                case 4:                             /* switch 2 */
                    temp_r0_8 = (*(u16 *)(temp_r1_2 + 0x10));
                    switch (temp_r0_8) {            /* switch 3; irregular */
                    case 2:                         /* switch 3 */
                        var_r2 = &arg0->field1CE;
                        var_r1_2 = var_r5->value * 8;
*var_r2 -= var_r1_2; break;
                        break;
                    case 4:                         /* switch 3 */
                        var_r2 = &arg0->field1CE;
                        var_r1_2 = var_r5->value * 0xC;
                        *var_r2 -= var_r1_2; break;
                    }
                    var_r1 = (s16 *)&arg0->field1CE;
                    if ((s32) (s16) arg0->field1CE >= 0) {

                    } else {
                        var_r0 = 0;
                        *var_r1 = (s16) var_r0;
                    }
                    break;
                case 6:                             /* switch 2 */
                    temp_r1_3 = (u8 **)(temp_r2 + (rescueC8F0Records + 0x148));
                    pos[0] = ((u16) (*(u16 *)(*temp_r1_3)) >> 4) << 8;
                    pos[1] = (u32) ((*(u16 *)(*temp_r1_3 + 2)) << 0x14) >> 0xC;
                    sp8 = 0x300030;
                    spC = 0x10001;
                    if (rescueC8F0Test(&pos[0], (u8 *)arg0 + 0x14, &sp8, &spC) == 0) {

                    } else {
                        temp_r0_9 = arg0->field1CC - (var_r5->value * 4);
                        arg0->field1CC = temp_r0_9;
                        if ((s32) (temp_r0_9 << 0x10) >= 0) {

                        } else {
                            arg0->field1CC = 0U;
                        }
                    }
                    break;
                }
                break;
            case 5:                                 /* switch 1 */
                if (sub_0800CDC0() != 0) {

                } else if (var_r5->kind != 6) {

                } else {
                    var_r1 = (s16 *)&arg0->status;
                    var_r0 = 9;
                    *var_r1 = (s16)var_r0; goto processed;
                }
                break;
            case 7:                                 /* switch 1 */
                if (var_r5->kind != 4) {

                } else if ((sub_0800CDC0() == 0) && (arg0->field1FD = 1, (arg0->state != 0xA))) {

                } else {
                    var_r5->timer = -1;
                }
                break;
            }
        } else {
            temp_r0_4 = var_r5->kind - 1;
            switch (temp_r0_4) {                    /* switch 4; irregular */
            case 1:                                 /* switch 4 */
                var_r1 = (s16 *)&arg0->status;
                var_r0 = 9;
                *var_r1 = (s16)var_r0; goto processed;
            case 2:                                 /* switch 4 */
                arg0->status = 0xA;
                arg0->field1FD = 1;
                arg0->field201 = 0U;
                break;
            case 4:                                 /* switch 4 */
                arg0->status = 0xC;
                var_r0 = (s32) (arg0->link[1] << 0x10) >> 0x11;
                var_r1 = (s16 *)((u8 *)arg0 + 0x206);
                *var_r1 = (s16)var_r0; goto processed;
            case 5:                                 /* switch 4 */
                arg0->status = 0xD;
                var_r0_2 = var_r5->timer;
block_52:
                if (((var_r0_2 % 60) << 0x10) == 0) {
                    temp_r0_5 = (s32) (((var_r5->scale * 0xA) + 0x64) * var_r5->value) / 100;
                    arg0->value4C = temp_r0_5;
                    arg0->value4A = (u16) (arg0->value4A + temp_r0_5);
                }
                break;
            case 6:                                 /* switch 4 */
                arg0->status = 0xD;
                var_r0_2 = var_r5->timer;
                goto block_52;
            case 0:                                 /* switch 4 */
                if ((var_r5->timer == 0) && ((s32) (arg0->limit5C - arg0->value4A) > 0) && (arg0->state != 0xB) && (arg0->field66 == 0)) {
                    sub_08021DC4(arg0->id + 4);
                    arg0->value4A = (u16) (var_r5->value + arg0->value4A);
                    arg0->value4C = (s32) var_r5->value;
                }
                break;
            case 3:                                 /* switch 4 */
                if ((var_r5->timer == 0) && ((s32) (arg0->limit5C - arg0->value4A) > 0) && (arg0->state != 0xB) && (arg0->field66 == 0)) {
                    sub_08022180(arg0->id + 4);
                    arg0->value4A = (u16) (var_r5->value + arg0->value4A);
                    arg0->value4C = (s32) var_r5->value;
                    var_r1 = (s16 *)&arg0->status;
                    var_r0 = 0xB;
                    *var_r1 = (s16)var_r0; goto processed;
                }
                break;
            }
        }
processed:
        if (var_r5->timer != -2) {
            var_r5->timer = (s16) ((u16) var_r5->timer - 1);
        }
    }
    var_r6 += 1;
    var_r5++;
    if (var_r6 <= 7U) {
        goto loop_5;
    }
}

#else
INCLUDE_ASM("asm/nonmatchings/code_0801AAF8", sub_0801C8F0);
#endif
void sub_0801CC10(u32 arg0, s32 arg1)
{
  u8 *p = (u8 *) (&gUnk_03003CE0[sub_080020F4()]);
  u8 *q = (u8 *) (&gUnk_03003CE0[arg0]);
  s32 x;
  u32 y;
  u32 t1;
  u32 t0;
  u16 *t;
  s32 d;
  u16 dx;
  u16 dy;
  s16 *c;
  s16 *c1;
  x = (*((s32 *) (p + 0x8C))) << 5;
  y = ((u32) ((*((s32 *) (p + 0x90))) << 5)) >> 16;
  t = *((u16 **) (q + 0x148));
  t0 = t[0];
  dy = ((u32) (t[1] << 20)) >> 23;
  d = (x >> 16) - (t0 >> 7);
  if (d < 0)
  {
    d = -d;
  }
  dx = d;
  d = ((s16) y) - ((s16) dy);
  if (d < 0)
  {
    d = -d;
  }
  dy = d;
  if (p == q)
  {
    c1 = (s16 *) (p + 0xC4);
    c = c1;
    dx = *((u16 *) c1);
    if (((s16) dx) > 0)
    {
      *((u16 *) c1) = dx + arg1;
    }
  }
  else
  {
    ;
    if (((((s16) dx) <= 13) && (((s16) dy) <= 9)) && ((*((s16 *) (p + 0xC4))) > 0))
    {
      *((u16 *) ((s16 *) (p + 0xC4))) = (*((u16 *) ((s16 *) (p + 0xC4)))) + arg1;
    }
  }
  if ((*((s16 *) (p + 0xC4))) > (*((s16 *) (p + 0x62))))
  {
    *((u16 *) ((s16 *) (p + 0xC4))) = *((u16 *) (p + 0x62));
  }
}
struct RescueCCC8Record { u8 pad[0x10]; u16 kind; u8 tail[0x13a]; };
extern struct RescueCCC8Record rescueCCC8Records[] asm("gUnk_03003CE0");
extern u8 *rescueCCC8Current asm("gUnk_030034E0");
s32 sub_0801CCC8(void) {
 struct RescueCCC8Record *p;
 u16 kind;
 u8 cls, v;
 u8 *q, *item;
 p = &rescueCCC8Records[sub_080020F4()];
 kind = *(u16 *)(rescueCCC8Current + 0xa);
 if (kind == 8) kind = 6;
 cls = kind;
 switch (cls) {
case 0:
 switch (p->kind) {
case 1: return *(u16 *)(rescueCCC8Current + 52);
case 2: return *(u16 *)(rescueCCC8Current + 56);
case 3: return *(u16 *)(rescueCCC8Current + 60);
}
break;
case 2:
 switch (p->kind) {
case 7: return *(u16 *)(rescueCCC8Current + 52);
case 3: return *(u16 *)(rescueCCC8Current + 56);
case 9:
q = rescueCCC8Current + *(u16 *)(rescueCCC8Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
if (v == 7) return *(u16 *)(rescueCCC8Current + 0x48);
break;
}
break;
case 3:
 switch (p->kind) {
case 2: return *(u16 *)(rescueCCC8Current + 52);
case 4: return *(u16 *)(rescueCCC8Current + 56);
}
break;
case 1:
 switch (p->kind) {
case 5: return *(u16 *)(rescueCCC8Current + 52);
case 9:
q = rescueCCC8Current + *(u16 *)(rescueCCC8Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 1: return *(u16 *)(rescueCCC8Current + 56);
case 2: return *(u16 *)(rescueCCC8Current + 60);
case 3: return *(u16 *)(rescueCCC8Current + 64);
case 4: return *(u16 *)(rescueCCC8Current + 68);
case 5: return *(u16 *)(rescueCCC8Current + 72);
case 6: return *(u16 *)(rescueCCC8Current + 76);
}
break;
}
break;
case 6:
 switch (p->kind) {
case 5: return *(u16 *)(rescueCCC8Current + 52);
case 9:
q = rescueCCC8Current + *(u16 *)(rescueCCC8Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 13: return *(u16 *)(rescueCCC8Current + 56);
case 14: return *(u16 *)(rescueCCC8Current + 60);
case 15: return *(u16 *)(rescueCCC8Current + 64);
case 16: return *(u16 *)(rescueCCC8Current + 68);
case 17: return *(u16 *)(rescueCCC8Current + 72);
case 18: return *(u16 *)(rescueCCC8Current + 76);
}
break;
}
break;
case 4:
 switch (p->kind) {
case 5: return *(u16 *)(rescueCCC8Current + 52);
case 4: return *(u16 *)(rescueCCC8Current + 56);
case 9:
q = rescueCCC8Current + *(u16 *)(rescueCCC8Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 8: return *(u16 *)(rescueCCC8Current + 60);
case 9: return *(u16 *)(rescueCCC8Current + 64);
case 10: return *(u16 *)(rescueCCC8Current + 68);
case 11: return *(u16 *)(rescueCCC8Current + 72);
case 12: return *(u16 *)(rescueCCC8Current + 76);
}
break;
}
break;
case 5:
 switch (p->kind) {
case 6: return *(u16 *)(rescueCCC8Current + 52);
case 8: return *(u16 *)(rescueCCC8Current + 56);
}
break;
case 7:
 switch (p->kind) {
case 1: return *(u16 *)(rescueCCC8Current + 52);
case 8: return *(u16 *)(rescueCCC8Current + 56);
case 9:
q = rescueCCC8Current + *(u16 *)(rescueCCC8Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 19: return *(u16 *)(rescueCCC8Current + 64);
case 21: return *(u16 *)(rescueCCC8Current + 68);
case 20: return *(u16 *)(rescueCCC8Current + 72);
}
break;
}
break;
}
return 0;
}

extern u8 *rescueD028Current asm("gUnk_030034E0");
s32 sub_0801D028(u16 arg0) {
 u16 kind;
 u8 cls, v;
 u8 *q, *item;
 kind = *(u16 *)(rescueD028Current + 0xa);
 if (kind == 8) kind = 6;
 cls = kind;
 switch (cls) {
case 0:
 switch (arg0) {
case 1: return *(u16 *)(rescueD028Current + 52);
case 2: return *(u16 *)(rescueD028Current + 56);
case 3: return *(u16 *)(rescueD028Current + 60);
}
break;
case 2:
 switch (arg0) {
case 7: return *(u16 *)(rescueD028Current + 52);
case 3: return *(u16 *)(rescueD028Current + 56);
case 9:
q = rescueD028Current + *(u16 *)(rescueD028Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
if (v == 7) return *(u16 *)(rescueD028Current + 0x48);
break;
}
break;
case 3:
 switch (arg0) {
case 2: return *(u16 *)(rescueD028Current + 52);
case 4: return *(u16 *)(rescueD028Current + 56);
}
break;
case 1:
 switch (arg0) {
case 5: return *(u16 *)(rescueD028Current + 52);
case 9:
q = rescueD028Current + *(u16 *)(rescueD028Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 1: return *(u16 *)(rescueD028Current + 56);
case 2: return *(u16 *)(rescueD028Current + 60);
case 3: return *(u16 *)(rescueD028Current + 64);
case 4: return *(u16 *)(rescueD028Current + 68);
case 5: return *(u16 *)(rescueD028Current + 72);
case 6: return *(u16 *)(rescueD028Current + 76);
}
break;
}
break;
case 6:
 switch (arg0) {
case 5: return *(u16 *)(rescueD028Current + 52);
case 9:
q = rescueD028Current + *(u16 *)(rescueD028Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 13: return *(u16 *)(rescueD028Current + 56);
case 14: return *(u16 *)(rescueD028Current + 60);
case 15: return *(u16 *)(rescueD028Current + 64);
case 16: return *(u16 *)(rescueD028Current + 68);
case 17: return *(u16 *)(rescueD028Current + 72);
case 18: return *(u16 *)(rescueD028Current + 76);
}
break;
}
break;
case 4:
 switch (arg0) {
case 5: return *(u16 *)(rescueD028Current + 52);
case 4: return *(u16 *)(rescueD028Current + 56);
case 9:
q = rescueD028Current + *(u16 *)(rescueD028Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 8: return *(u16 *)(rescueD028Current + 60);
case 9: return *(u16 *)(rescueD028Current + 64);
case 10: return *(u16 *)(rescueD028Current + 68);
case 11: return *(u16 *)(rescueD028Current + 72);
case 12: return *(u16 *)(rescueD028Current + 76);
}
break;
}
break;
case 5:
 switch (arg0) {
case 6: return *(u16 *)(rescueD028Current + 52);
case 8: return *(u16 *)(rescueD028Current + 56);
}
break;
case 7:
 switch (arg0) {
case 1: return *(u16 *)(rescueD028Current + 52);
case 8: return *(u16 *)(rescueD028Current + 56);
case 9:
q = rescueD028Current + *(u16 *)(rescueD028Current + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 19: return *(u16 *)(rescueD028Current + 64);
case 21: return *(u16 *)(rescueD028Current + 68);
case 20: return *(u16 *)(rescueD028Current + 72);
}
break;
}
break;
}
return 0;
}

struct RescueD34CRecord { u8 pad[0x10]; u16 kind; u8 tail[0x13a]; };
extern struct RescueD34CRecord rescueD34CRecords[] asm("gUnk_03003CE0");
extern u8 *rescueD34CCurrent asm("gUnk_030034E0");
s32 sub_0801D34C(void) {
 struct RescueD34CRecord *p;
 u8 *cap;
 u16 kind;
 u8 cls, v;
 u8 *q, *item;
 p = &rescueD34CRecords[sub_080020F4()];
 cap = (u8 *)sub_0805AD18();
 kind = *(u16 *)(rescueD34CCurrent + 0xa);
 if (kind == 8) kind = 6;
 cls = kind;
 switch (cls) {
case 0:
 switch (p->kind) {
case 1: return *(u16 *)(rescueD34CCurrent + 52);
case 2: return *(u16 *)(rescueD34CCurrent + 56);
case 3: return *(u16 *)(rescueD34CCurrent + 60);
}
break;
case 2:
 switch (p->kind) {
case 7: return *(u16 *)(rescueD34CCurrent + 52);
case 3: return *(u16 *)(rescueD34CCurrent + 56);
case 9:
q = rescueD34CCurrent + *(u16 *)(rescueD34CCurrent + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
if (v == 7) return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 0x48) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 0x48);
break;
}
break;
case 3:
 switch (p->kind) {
case 2: return *(u16 *)(rescueD34CCurrent + 52);
case 4: return *(u16 *)(rescueD34CCurrent + 56);
}
break;
case 1:
 switch (p->kind) {
case 5: return *(u16 *)(rescueD34CCurrent + 52);
case 9:
q = rescueD34CCurrent + *(u16 *)(rescueD34CCurrent + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 1: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 56) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 56);
case 2: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 60) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 60);
case 3: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 64) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 64);
case 4: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 68) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 68);
case 5: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 72) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 72);
case 6: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 76) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 76);
}
break;
}
break;
case 6:
 switch (p->kind) {
case 5: return *(u16 *)(rescueD34CCurrent + 52);
case 9:
q = rescueD34CCurrent + *(u16 *)(rescueD34CCurrent + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 13: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 56) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 56);
case 14: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 60) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 60);
case 15: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 64) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 64);
case 16: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 68) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 68);
case 17: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 72) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 72);
case 18: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 76) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 76);
}
break;
}
break;
case 4:
 switch (p->kind) {
case 5: return *(u16 *)(rescueD34CCurrent + 52);
case 4: return *(u16 *)(rescueD34CCurrent + 56);
case 9:
q = rescueD34CCurrent + *(u16 *)(rescueD34CCurrent + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 8: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 60) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 60);
case 9: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 64) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 64);
case 10: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 68) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 68);
case 11: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 72) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 72);
case 12: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 76) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 76);
}
break;
}
break;
case 5:
 switch (p->kind) {
case 6: return *(u16 *)(rescueD34CCurrent + 52);
case 8: return *(u16 *)(rescueD34CCurrent + 56);
}
break;
case 7:
 switch (p->kind) {
case 1: return *(u16 *)(rescueD34CCurrent + 52);
case 8: return *(u16 *)(rescueD34CCurrent + 56);
case 9:
q = rescueD34CCurrent + *(u16 *)(rescueD34CCurrent + 0x68) * 0x10;
 if (q[0x79] == 0) item = 0;
 else item = (u8 *)sub_08007290(*(u16 *)(q + 0x72) | 0xb0000);
 if (item[0x9b] == 9) v = item[0xa7]; else v = 0;
switch (v) {
case 19: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 64) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 64);
case 21: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 68) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 68);
case 20: return *(u16 *)(cap + 0xac) < *(u16 *)(rescueD34CCurrent + 72) ? *(u16 *)(cap + 0xac) : *(u16 *)(rescueD34CCurrent + 72);
}
break;
}
break;
}
return 0;
}

struct RescueD7ACSlot { s16 timer; u16 source, kind, value; u8 pad[0x20]; };
struct RescueD7ACRecord { u8 pad0[0xc]; u16 state; u8 padE[0x26]; struct RescueD7ACSlot *slots; u8 pad38[0x30]; u8 team; u8 tail[0xe3]; };
extern struct RescueD7ACRecord rescueD7ACRecords[] asm("gUnk_03003CE0");
extern u32 rescueD7ACEntities asm("gUnk_030056F4");
extern u32 rescueD7ACMask asm("gUnk_030056FC");
void sub_0801D7AC(s32 source, s32 target, u32 kind, s32 value) {
 struct RescueD7ACRecord *p;
 u32 baseAddress = (u32)rescueD7ACRecords;
 struct RescueD7ACSlot *slot, *slot5;
 u32 i, j;
 s32 found;
 volatile u16 zero;
 u32 subtype, mask;
 u8 *entity;
 p = (struct RescueD7ACRecord *)(baseAddress + source * 0x14c);
 switch (p->state) {
case 0:
if (rescueD7ACRecords[target].team != p->team) return;
if (kind != 7) return;
if (source == target) return;
found = 0;
slot = rescueD7ACRecords[target].slots;
for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -2 && slot->kind == 7 && slot->source == source) { slot->value = value; found = 1; break; }
 }
 if (!found) {
 slot = rescueD7ACRecords[target].slots;
 for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -1) { slot->source = source; slot->timer = -2; slot->kind = 7; slot->value = value; break; }
 }
 }
break;
case 2:
if (kind != 7) return;
if (rescueD7ACRecords[target].team != p->team) return;
found = 0;
slot = rescueD7ACRecords[target].slots;
for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -2 && slot->kind == 7 && slot->source == source) { slot->value = value; found = 1; break; }
 }
 if (!found) {
 slot = rescueD7ACRecords[target].slots;
 for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -1) { slot->source = source; slot->timer = -2; slot->kind = 7; slot->value = value; break; }
 }
 }
break;
case 5:
if (kind != 7) return;
found = 0;
if (rescueD7ACRecords[target].team != p->team) return;
slot5 = rescueD7ACRecords[target].slots;
for (i = 0; i < 8; i++, slot5++) {
 if (slot5->timer == -2 && slot5->kind == 7 && slot5->source == source) { slot5->value = value; found = 1; break; }
 }
 if (!found) {
 slot5 = rescueD7ACRecords[target].slots;
 for (i = 0; i < 8; i++, slot5++) {
 if (slot5->timer == -1) { slot5->source = source; slot5->timer = -2; slot5->kind = 7; slot5->value = value; break; }
 }
 }
break;
case 3:
mask = 0xff;
if ((kind & mask) == 4) {
 subtype = (kind >> 8) & mask;
 if (subtype <= 3) {
 if (rescueD7ACRecords[target].team == p->team) return;
 slot = rescueD7ACRecords[subtype].slots;
 for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -1) { zero = 0; CpuSet(&zero, slot, 0x1000014); slot->source = source; slot->timer = 120; slot->kind = 4; slot->value = value; }
 }
 } else {
 for (j = 0; j < 5; j++) {
 if (rescueD7ACMask & (1 << j)) {
 entity = (u8 *)(j * 0x2e0 + rescueD7ACEntities);
 if (subtype == *(u16 *)(entity + 2)) {
 slot = (struct RescueD7ACSlot *)(entity + 0x8c);
 for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -1) { zero = 0; CpuSet(&zero, slot, 0x1000014); slot->source = source; slot->timer = 120; slot->kind = 4; slot->value = value; }
 }
 return;
 }
 }
 }
 }
 return;
} else if ((kind & 0xff) == 6) {
found = 0;
slot = rescueD7ACRecords[target].slots;
for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -2 && slot->kind == 6 && slot->source == source) { slot->value = value; found = 1; break; }
 }
 if (!found) {
 slot = rescueD7ACRecords[target].slots;
 for (i = 0; i < 8; i++, slot++) {
 if (slot->timer == -1) { slot->source = source; slot->timer = -2; slot->kind = 6; slot->value = value; break; }
 }
 }
}
break;
}
}

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
