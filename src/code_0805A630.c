#include "global.h"
struct Entry61 { u32 words[4]; };

void sub_0805A630(s32 arg0) {
    sub_0802413C(arg0, 3);
}
void sub_0805A63C(s32 arg0) {
    sub_0802413C(arg0, 4);
}
void sub_0805A648(s32 arg0) {
    sub_0802413C(arg0, 5);
}
void sub_0805A654(s32 arg0) {
    sub_0802413C(arg0, 6);
}
void sub_0805A660(s32 arg0) {
    sub_0802413C(arg0, 7);
}
#ifdef NONMATCHING
void sub_0805A66C(void)
{
    u8 *base = *(u8 **)0x03005CF4 + 0x1834;
    u32 i;
    for (i = 0; i <= 0x1F; i++, base += 0x28)
        if (sub_08000470((u32)base)) sub_080003A8((u32)base);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A66C);
#endif
void sub_0805A6A0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
void sub_0805A6B8(void *arg0)
{
    u32 i;
    for (i = 0; i < M2C_FIELD(arg0, u32 *, 0xC); i++)
        sub_080003F0();
    ((void (*)(s32, s32))M2C_FIELD(arg0, u32 *, 0))(M2C_FIELD(arg0, s32 *, 4), M2C_FIELD(arg0, s32 *, 8));
}
s32 sub_0805A6DC(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 7) & 1;
}
void sub_0805A6F0(void)
{
    gGameState->flags |= 0x80;
}
void sub_0805A704(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFF7F & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
#ifdef NONMATCHING
u32 sub_0805A71C(u32 key, u32 value)
{
    u32 i;
    for (i = 0; i <= 2; i++) {
        u8 *entry;
        if ((*(u32 *)0x03005CFC & (1u << i)) == 0)
            continue;
        entry = (u8 *)0x03005D00 + i * 0xC;
        if (*(u32 *)entry == key && *(u32 *)(entry + 4) == (u16)value && *(u32 *)(entry + 8) != 0)
            return i + 4;
    }
    return 0xFFFF;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A71C);
#endif
#ifdef NONMATCHING
void sub_0805A780(void *target)
{
    u8 *base = *(u8 **)0x03005CF4;
    u8 *entry = base + 0x7A4;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (entry + 0x48 == (u8 *)target) {
            sub_08028498(*(u16 *)(entry + 0x40));
            *(u32 *)(base + 0x54) &= ~(1u << i);
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A780);
#endif
#ifdef NONMATCHING
u32 sub_0805A7C4(u32 id, u32 x, u32 y)
{
    u32 i;
    u8 *owner = *(u8 **)0x03005CF4;
    u8 *entry = owner + 0x7A4;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        u32 bit;
        u32 mem;
        if (sub_08000470((u32)(entry + 0x48)) != 0) continue;
        bit = 1u << i;
        *(u32 *)(owner + 0x54) |= bit;
        *(u32 *)entry = *(u32 *)(owner + 0x4C);
        (*(u32 *)(owner + 0x4C))++;
        *(u32 *)(entry + 4) = id;
        *(u32 *)(entry + 0x3C) = 1;
        *(u32 *)(entry + 8) = x << 8;
        *(u32 *)(entry + 0xC) = y << 8;
        *(u32 *)(entry + 0x50) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x68) = mem;
        *(u32 *)(entry + 0x54) = (u32)sub_080284F4;
        *(u32 *)(entry + 0x58) = mem + 0x3FC;
        *(u32 *)(entry + 0x6C) = (u32)sub_0805A780;
        sub_08000274((u32)(entry + 0x48), (u32)entry);
        return *(u32 *)entry;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A7C4);
#endif
#ifdef NONMATCHING
void sub_0805A874(const u32 *args, u32 mode)
{
    u8 *state = (u8 *)0x03003D6C + sub_080020F4() * 0x14A;
    u32 data[4] = { args[0], args[1], args[2], args[3] };
    u32 callback = args[4];
    u32 value = args[5];
    if (mode) {
        while (sub_08021FE0(state, data, &data[2], &data[3]) != 0)
            sub_080003F0();
    }
    while (sub_08021FE0(state, data, &data[2], &data[3]) == 0)
        sub_080003F0();
    sub_08057328(value, callback);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A874);
#endif
#ifdef NONMATCHING
void *sub_0805A8F8(u32 arg, u32 callback)
{
    u32 i;
    u8 *entry = *(u8 **)0x03005CF4 + 0x12E4;
    for (i = 0; i <= 0x1D; i++, entry += 0x28) {
        u32 mem;
        if (sub_08000470((u32)entry) != 0) continue;
        do {
            mem = sub_08001494(0x400);
            if (mem == 0) sub_080003F0();
        } while (mem == 0);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 8) = 0x3C;
        *(u32 *)(entry + 0xC) = callback;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = 0;
        sub_08000274((u32)entry, arg);
        return entry;
    }
    return entry;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A8F8);
#endif
void *sub_0805A960(u32 value)
{
    u8 *entry = *(u8 **)0x03005CF4 + 0x7A4;
    u32 i;
    for (i=0; i<=0xE; i++, entry+=0x70)
        if (*(u32 *)entry == value) return entry;
    sub_080003F0();
    return 0;
}
#ifdef NONMATCHING
void sub_0805A994(u32 index, u32 a, u32 b)
{
    u32 bit;
    u8 *entry;
    if (index == 0)
        return;
    bit = 1u << (index - 1);
    while ((gUnk_030056FC & bit) == 0)
        sub_080003F0();
    entry = (u8 *)gUnk_030056F4 + (index - 1) * 0x2E0;
    *(u32 *)(entry + 0x38) = a;
    *(u32 *)(entry + 0x3C) = b;
    *(u32 *)(entry + 0x30) = 0;
    *(u32 *)(entry + 0x34) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A994);
#endif
#ifdef NONMATCHING
void sub_0805A9F4(u32 packed)
{
    u32 *current = (u32 *)0x03005CF8;
    u32 old = *current;
    u32 value = packed & 0xFF;
    u32 frames = packed >> 16;
    *current = value;
    if ((gUnk_030027D0 & 0x20) == 0)
        sub_08006CB4(value);
    while (frames != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0)
            frames--;
    }
    if (sub_0800CC98() == 0) {
        *current = old;
        if ((gUnk_030027D0 & 0x20) == 0)
            sub_08006CB4(old);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A9F4);
#endif
#ifdef NONMATCHING
void sub_0805AA68(u32 packed)
{
    u32 wait = packed >> 16;
    u32 value = packed & 0xFF;
    while (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0)
            wait--;
    }
    if (sub_0800CC98() == 0) {
        gUnk_03005CF8 = value;
        if ((gUnk_030027D0 & 0x20) == 0)
            sub_08006CB4(value);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AA68);
#endif
#ifdef NONMATCHING
void sub_0805AAB8(u32 packed)
{
    u32 wait = packed >> 16;
    u32 value = packed & 0xFF;
    u32 previous = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0)
        sub_08006CB4(value);
    while (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0)
            wait--;
    }
    if (sub_0800CC98() == 0)
        sub_0800A34C(*(u16 *)((u8 *)&gUnk_03003170 + 0x8C), previous, 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AAB8);
#endif
#ifdef NONMATCHING
u32 sub_0805AB20(u8 *item)
{
    u32 i;
    u8 *base = *(u8 **)0x030034E0;
    u32 remaining = *(u32 *)(item + 4);
    if (*(u16 *)item == 0xA) {
        for (;;) {
            u32 i;
            u8 *entry;
            u32 sum;
            s32 best = -1;
            u32 bestValue = 0;
            for (i = 0; i <= 0x18; i++) {
                u8 *entry = base + 0x2E0 + i * 0x10;
                u32 value = *(u32 *)(entry + 4);
                if (*(u16 *)entry == 0xA && value > bestValue && value != 100000) {
                    best = (s32)i;
                    bestValue = value;
                }
            }
            if (best < 0)
                break;
            entry = base + 0x2E0 + best * 0x10;
            sum = bestValue + remaining;
            if (sum <= 100000) {
                *(u32 *)(entry + 4) = sum;
                return 1;
            }
            *(u32 *)(entry + 4) = 100000;
            remaining = sum - 100000;
            *(u32 *)(item + 4) = remaining;
        }
    }
    for (i = 0; i <= 0x18; i++) {
        u8 *entry = base + 0x2E0 + i * 0x10;
        if (*(u16 *)entry == 0) {
            sub_0805CFF8(i, (const u32 *)item);
            return 1;
        }
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AB20);
#endif
#ifdef NONMATCHING
u32 sub_0805AC08(u8 *item)
{
    u32 remaining;
    u32 i;
    u8 *base = *(u8 **)0x030034E0;
    u32 limit = *(u16 *)(base + 0x6A) * 14;
    if (limit > 0x18) limit = 0x19;
    remaining = *(u32 *)(item + 4);
    if (*(u16 *)item == 0xA) {
        for (;;) {
            u32 i;
            u8 *entry;
            u32 sum;
            s32 best = -1;
            u32 bestValue = 0;
            for (i = 0; i < limit; i++) {
                u8 *entry = base + 0x2E0 + i * 0x10;
                u32 value = *(u32 *)(entry + 4);
                if (*(u16 *)entry == 0xA && value > bestValue && value != 100000) {
                    best = (s32)i;
                    bestValue = value;
                }
            }
            if (best < 0) break;
            entry = base + 0x2E0 + best * 0x10;
            sum = bestValue + remaining;
            if (sum <= 100000) {
                *(u32 *)(entry + 4) = sum;
                return 1;
            }
            *(u32 *)(entry + 4) = 100000;
            remaining = sum - 100000;
            *(u32 *)(item + 4) = remaining;
        }
    }
    for (i = 0; i < 0x19; i++) {
        u8 *entry = base + 0x2E0 + i * 0x10;
        if (*(u16 *)entry == 0) {
            sub_0805D028(i, (const u32 *)item);
            return 1;
        }
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AC08);
#endif
#ifdef NONMATCHING
u32 sub_0805AD18(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    u32 id;
    if (*(u16 *)(state + 0xC) != *(u16 *)(state + 0x64)) {
        id = *(u16 *)(*(u32 *)(state + 0x138) + 0x28);
    } else {
        u8 *entry = *(u8 **)0x030034E0 + *(u16 *)(*(u8 **)0x030034E0 + 0x68) * 0x10;
        if (*(u8 *)(entry + 0x79) == 0)
            return 0;
        id = *(u16 *)(entry + 0x72);
    }
    return sub_08007290(id | 0xB00000);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD18);
#endif
#ifdef NONMATCHING
void sub_0805AD78(u32 index)
{
    u32 i;
    u8 *item;
    u8 *states = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    u8 *table = *(u8 **)0x030034E0;
    for (i = 0; i < states[0x77]; i++)
        table[i * 0x10 + 0x79] = 0;
    item = table + index * 0x10;
    if (*(u16 *)(item + 0x70) == 2) {
        if (sub_0805AE34(item + 0x70)) {
            u8 *resource;
            item[0x79] = 1;
            resource = (u8 *)sub_08007290(*(u16 *)(item + 0x72) | 0xB00000);
            states = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
            *(u16 *)(states + 0x10) = resource[0x9B];
        } else {
            states = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
            *(u16 *)(states + 0x10) = index;
        }
    } else {
        states = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
        *(u16 *)(states + 0x10) = 0;
    }
    sub_08065DAC();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD78);
#endif
#ifdef NONMATCHING
u32 sub_0805AE34(const u8 *item)
{
    u8 *resource;
    u32 state;
    if (item == 0 || *(u16 *)item != 2 || item[8] != 0)
        return 0;
    resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB00000);
    state = sub_0801DE60();
    if (((*(u16 *)(resource + 0xAE) >> state) & 1) == 0)
        return 0;
    if (resource[0x9B] == 9)
        return 1;
    return *(u16 *)(resource + 0xAC) <= (u16)sub_0801D028();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE34);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE94);
#ifdef NONMATCHING
u32 sub_0805B068(const u8 *item)
{
    u32 divisor;
    u32 value = 0;
    u16 type = *(u16 *)item;
    if (type >= 2 && type <= 5) {
        u32 id = *(u16 *)(item + 2) | ((u32)(type + 9) << 20);
        u8 *resource = (u8 *)sub_08007290(id);
        value = *(u32 *)(resource + (type == 2 ? 0xA0 : 0x9C));
    }
    divisor = 10;
    while (sub_08057C34(divisor) == 0 && divisor > 1)
        divisor--;
    if (sub_0800CE30() != 0)
        return value >> 1;
    if (divisor > 5)
        divisor = 5;
    return value * divisor / 10;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B068);
#endif
#ifdef NONMATCHING
u32 sub_0805B0F0(void)
{
    u32 i;
    u8 *base = *(u8 **)0x030034E0;
    u32 total = 0;
    u8 *entry = base + 0x150;
    for (i = 0; i <= 0x18; i++, entry += 0x10)
        if (*(u16 *)entry == 0xA) total += *(u32 *)(entry + 4);
    entry = base + 0x2E0;
    for (i = 0; i <= 0x4A; i++, entry += 0x10)
        if (*(u16 *)entry == 0xA) total += *(u32 *)(entry + 4);
    return total;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B0F0);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B140);
#ifdef NONMATCHING
void sub_0805B21C(void)
{
    u32 i;
    u32 *buffer;
    u8 *task;
    u32 *slots = (u32 *)0x03005D58;
    u32 *secondary = (u32 *)0x03005D60;
    *slots = sub_08001494(0x200);
    *secondary = sub_08001494(0xF0);
    for (i = 0; i < 16; i++) {
        u16 zero = 0;
        CpuSet(&zero, (u8 *)*slots + i * 0x20, 0x01000010);
    }
    buffer = (u32 *)0x03000124;
    *buffer = sub_08001494(0x1B9);
    for (i = 0; i <= 0x1B8; i++)
        ((u8 *)*buffer)[i] = 0;
    *(u16 *)0x03005D5C = 1;
    task = (u8 *)0x03005D30;
    *(u32 *)(task + 0xC) = (u32)sub_0805B140;
    *(u32 *)(task + 0x20) = sub_08001494(0x400);
    *(u32 *)(task + 0x10) = *(u32 *)(task + 0x20) + 0x3FC;
    *(u32 *)(task + 8) = 0x41;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274((u32)task);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B21C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B2C4);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B4CC);
#ifdef NONMATCHING
void *sub_0805B618(void)
{
    u32 i;
    u8 *base = *(u8 **)0x03005D58;
    u32 active = 0;
    u32 lowest = 0x11170;
    u32 lowestIndex = 0;
    for (i = 0; i < 16; i++) {
        u8 *slot = base + i * 0x20;
        if (*(u16 *)(slot + 0xA) & (1u << i)) {
            active++;
            if (*(u16 *)(slot + 0xC) < lowest) {
                lowest = *(u16 *)(slot + 0xC);
                lowestIndex = i;
            }
        }
    }
    if (active > 15)
        *(u16 *)(base + lowestIndex * 0x20 + 0xA) = 0;
    for (i = 0; i < 16; i++) {
        u8 *slot = base + i * 0x20;
        if ((*(u16 *)(slot + 0xA) & 3) == 0)
            return slot;
    }
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B618);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B688);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805BD5C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C208);
#ifdef NONMATCHING
u32 sub_0805C4FC(u8 *out, u32 count, u32 category)
{
    u32 roll;
    u8 *table;
    u32 special;
    u8 *group;
    u32 n;
    u32 pick;
    u8 *entry;
    u32 i;
    *(u32 *)out = 0;
    if (count == 0) {
        *(u16 *)out = 0;
        *(u16 *)(out + 2) = 0;
        return 0;
    }
    count--;
    roll = sub_080008C8() % 100;
    table = (u8 *)0x084E6DD8 + count * 36;
    special = (*(u16 *)(table + 0) >= roll);
    if (category == 8) category = 6;
    group = *(u8 **)(table + 4 + category * 4);
    n = *(u16 *)group;
    pick = sub_080008C8() % (*(u16 *)(group + 2) + 1);
    entry = group + 8;
    for (i = 0; i < n; i++, entry += 8) {
        u16 limit = *(u16 *)(entry + 4);
        if (pick <= limit) {
            *(u16 *)out = *(u16 *)entry;
            *(u16 *)(out + 2) = *(u16 *)(entry + 2);
            if (*(u16 *)out == 0xA) {
                u32 span;
                u32 extra;
                *(u32 *)(out + 4) = pick;
                span = *(u16 *)(entry + 2);
                extra = sub_080008C8() % ((span * 15) / 10);
                if (extra < span / 2) extra = span / 2;
                *(u32 *)(out + 4) = extra;
            }
            break;
        }
    }
    if (special)
        sub_0805C208(out, 0);
    if (*(u16 *)out == 9) {
        *(u16 *)(out + 4) = sub_080008C8() % 10 + *(u16 *)((u8 *)&gUnk_03003170 + 0x8C) * 10;
        if (sub_0800CE30()) *(u16 *)(out + 4) += 100;
    }
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C4FC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C620);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C7B8);
#ifdef NONMATCHING
void sub_0805CB04(u32 index, u8 *out)
{
    u32 i;
    const u8 *table = (const u8 *)gUnk_084EB7E8 + index * 0x30;
    for (i = 0; i <= 0xB; i++, table += 4, out += 0x10) {
        u16 type = *(u16 *)table;
        *(u16 *)out = type;
        *(u16 *)(out + 2) = *(u16 *)(table + 2);
        if (type == 2) {
            out[8] = 0;
            *(u16 *)(out + 4) = 0;
            out[6] = 0;
            out[7] = 0;
            out[9] = 0;
        }
        if (type == 0xFFFF) {
            if ((sub_080008C8() & 1) != 0)
                sub_0805C4FC(out, 0x14, index);
            else {
                *(u16 *)out = 0;
                *(u16 *)(out + 2) = 0;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB04);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB8C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CDF8);
s32 sub_0805CFA0(void) {
    u32 i;
    u8 *p;
    for(i=0,p=(u8 *)gUnk_030034E0+0x150;i<=24;p+=16,i++) if(*(u16 *)p==0) return i;
    return -1;
}
s32 sub_0805CFCC(void) {
    u32 i;
    u8 *p;
    for(i=0,p=(u8 *)gUnk_030034E0+0x2E0;i<=24;p+=16,i++) if(*(u16 *)p==0) return i;
    return -1;
}
void sub_0805CFF8(u8 index, const struct Entry61 *src)
{
    if(index>24) index=0;
    *(struct Entry61 *)((u8 *)gUnk_030034E0+0x150+index*16)=*src;
}
void sub_0805D028(u8 index,const struct Entry61 *src) {
    u8 *base=(u8 *)gUnk_030034E0;
    s32 count=*(u16 *)(base+0x6A);
    if(index>=count*15) index=0;
    *(struct Entry61 *)(base+index*16+0x2E0)=*src;
}
#ifdef NONMATCHING
u32 sub_0805D064(const u32 *src, u32 index)
{
    u32 *dst;
    if (*(const u16 *)src != 2) return 0;
    dst = (u32 *)(*(u32 *)0x030034E0 + index * 0x10 + 0x70);
    dst[0]=src[0]; dst[1]=src[1]; dst[2]=src[2]; dst[3]=src[3];
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805D064);
#endif
