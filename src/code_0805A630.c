#include "global.h"

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
void sub_0805A66C(void)
{
    u8 *base = *(u8 **)0x03005CF4 + 0x1834;
    u32 i;
    for (i = 0; i <= 0x1F; i++, base += 0x28)
        if (sub_08000470((u32)base)) sub_080003A8((u32)base);
}
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
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) |= 0x80;
}
void sub_0805A704(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFF7F & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A71C);
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
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A7C4);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A874);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A8F8);
void *sub_0805A960(u32 value)
{
    u8 *entry = *(u8 **)0x03005CF4 + 0x7A4;
    u32 i;
    for (i=0; i<=0xE; i++, entry+=0x70)
        if (*(u32 *)entry == value) return entry;
    sub_080003F0();
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A994);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805A9F4);
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
u32 sub_0805AB20(u8 *item)
{
    u8 *base = *(u8 **)0x030034E0;
    u32 remaining = *(u32 *)(item + 4);
    if (*(u16 *)item == 0xA) {
        for (;;) {
            s32 best = -1;
            u32 bestValue = 0;
            for (u32 i = 0; i <= 0x18; i++) {
                u8 *entry = base + 0x2E0 + i * 0x10;
                u32 value = *(u32 *)(entry + 4);
                if (*(u16 *)entry == 0xA && value > bestValue && value != 100000) {
                    best = (s32)i;
                    bestValue = value;
                }
            }
            if (best < 0)
                break;
            u8 *entry = base + 0x2E0 + best * 0x10;
            u32 sum = bestValue + remaining;
            if (sum <= 100000) {
                *(u32 *)(entry + 4) = sum;
                return 1;
            }
            *(u32 *)(entry + 4) = 100000;
            remaining = sum - 100000;
            *(u32 *)(item + 4) = remaining;
        }
    }
    for (u32 i = 0; i <= 0x18; i++) {
        u8 *entry = base + 0x2E0 + i * 0x10;
        if (*(u16 *)entry == 0) {
            sub_0805CFF8(i, (const u32 *)item);
            return 1;
        }
    }
    return 0;
}
u32 sub_0805AC08(u8 *item)
{
    u8 *base = *(u8 **)0x030034E0;
    u32 limit = *(u16 *)(base + 0x6A) * 14;
    if (limit > 0x18) limit = 0x19;
    u32 remaining = *(u32 *)(item + 4);
    if (*(u16 *)item == 0xA) {
        for (;;) {
            s32 best = -1;
            u32 bestValue = 0;
            for (u32 i = 0; i < limit; i++) {
                u8 *entry = base + 0x2E0 + i * 0x10;
                u32 value = *(u32 *)(entry + 4);
                if (*(u16 *)entry == 0xA && value > bestValue && value != 100000) {
                    best = (s32)i;
                    bestValue = value;
                }
            }
            if (best < 0) break;
            u8 *entry = base + 0x2E0 + best * 0x10;
            u32 sum = bestValue + remaining;
            if (sum <= 100000) {
                *(u32 *)(entry + 4) = sum;
                return 1;
            }
            *(u32 *)(entry + 4) = 100000;
            remaining = sum - 100000;
            *(u32 *)(item + 4) = remaining;
        }
    }
    for (u32 i = 0; i < 0x19; i++) {
        u8 *entry = base + 0x2E0 + i * 0x10;
        if (*(u16 *)entry == 0) {
            sub_0805D028(i, (const u32 *)item);
            return 1;
        }
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD18);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AD78);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE34);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE94);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B068);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B0F0);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B140);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B21C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B2C4);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B4CC);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B618);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B688);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805BD5C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C208);
u32 sub_0805C4FC(u8 *out, u32 count, u32 category)
{
    *(u32 *)out = 0;
    if (count == 0) {
        *(u16 *)out = 0;
        *(u16 *)(out + 2) = 0;
        return 0;
    }
    count--;
    u32 roll = sub_080008C8() % 100;
    u8 *table = (u8 *)0x084E6DD8 + count * 36;
    u32 special = (*(u16 *)(table + 0) >= roll);
    if (category == 8) category = 6;
    u8 *group = *(u8 **)(table + 4 + category * 4);
    u32 n = *(u16 *)group;
    u32 pick = sub_080008C8() % (*(u16 *)(group + 2) + 1);
    u8 *entry = group + 8;
    for (u32 i = 0; i < n; i++, entry += 8) {
        u16 limit = *(u16 *)(entry + 4);
        if (pick <= limit) {
            *(u16 *)out = *(u16 *)entry;
            *(u16 *)(out + 2) = *(u16 *)(entry + 2);
            if (*(u16 *)out == 0xA) {
                *(u32 *)(out + 4) = pick;
                u32 span = *(u16 *)(entry + 2);
                u32 extra = sub_080008C8() % ((span * 15) / 10);
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
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C620);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C7B8);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB04);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CB8C);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805CDF8);
 s32 sub_0805CFA0(void)
{
    u8 *p = (u8 *)(*(u32 *)0x030034E0 + 0x150);
    u32 i;
    for (i=0; i<=0x18; i++, p+=0x10)
        if (*(u16 *)p == 0) return i;
    return -1;
}
s32 sub_0805CFCC(void) {
    u32 i;
    u8 *entry = (u8 *)gUnk_030034E0 + 0x2E0;
    for (i = 0; i <= 0x18; i++, entry += 0x10) {
        if (M2C_FIELD(entry, u16 *, 0) == 0)
            return i;
    }
    return -1;
}
void sub_0805CFF8(u32 index, const u32 *src)
{
    u8 *dst = (u8 *)(*(u32 *)0x030034E0) + 0x150 + (index <= 0x18 ? index : 0) * 0x10;
    ((u32 *)dst)[0] = src[0]; ((u32 *)dst)[1] = src[1];
    ((u32 *)dst)[2] = src[2]; ((u32 *)dst)[3] = src[3];
}
void sub_0805D028(u32 index, const u32 *src)
{
    u8 *base = *(u8 **)0x030034E0;
    u32 count = *(u16 *)(base + 0x6A);
    u32 limit = count * 15 - count;
    index = (u8)index;
    if (index >= limit)
        index = 0;
    u32 *dst = (u32 *)(base + 0x2E0 + index * 0x10);
    dst[0] = src[0];
    dst[1] = src[1];
    dst[2] = src[2];
    dst[3] = src[3];
}
u32 sub_0805D064(const u32 *src, u32 index)
{
    u32 *dst;
    if (*(const u16 *)src != 2) return 0;
    dst = (u32 *)(*(u32 *)0x030034E0 + index * 0x10 + 0x70);
    dst[0]=src[0]; dst[1]=src[1]; dst[2]=src[2]; dst[3]=src[3];
    return 1;
}
