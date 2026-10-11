#include "global.h"

void sub_08059534(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013C);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0)
            sub_0805EFBC();
    }
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
void sub_080595E0(u32 arg)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x14013D);
    while (sub_0805EEFC(handle) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
    }
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~2u;
    sub_0800D108();
}
void sub_0805968C(u32 arg)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x14013E);
    while (sub_0805EEFC(handle) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
    }
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~2u;
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059738);
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_080597E4);
void sub_08059890(void)
{
    s16 y = *(s16 *)((u8 *)gUnk_03003170 + 0x80);
    s16 x = *(s16 *)((u8 *)gUnk_03003170 + 0x82);
    for (s32 i = 0; i <= 0x400; i += 2) {
        s32 first;
        s32 second;
        sub_080659F4(&first, y, 0, i);
        sub_080659F4(&second, x, -50, i);
        sub_0800BB80((s16)first, (s16)second);
        sub_080003F0();
    }
}
void sub_0805990C(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x1C3 : 0x1B7;
    base[offset + (bit >> 3)] |= (u8)(1u << (bit & 7));
}
void sub_08059954(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
void sub_08059968(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x1C3 : 0x1B7;
    base[offset + (bit >> 3)] &= (u8)~(1u << (bit & 7));
}
void sub_080599B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
void sub_080599C4(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
void sub_080599D8(u32 index)
{
    u32 bit = 1u << (index - 1);
    u8 *base = *(u8 **)0x03005CF4;
    u32 *flags = (u32 *)(base + (sub_0800CE30() ? 0x80 : 0x78));
    if ((*flags & bit) == 0)
        *flags |= bit;
}
void sub_08059A40(u32 count)
{
    for (u32 i = 1; i < count; i++) {
        u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
        *(u32 *)(state + 0x30) |= 1;
        sub_0800D0F4();
        u32 wait = 1;
        while (wait != 0) {
            sub_080003F0();
            if (sub_080021A8() == 0) wait--;
        }
    }
}
void sub_08059A94(s32 arg0)
{
  s32 temp_r4;
  temp_r4 = arg0;
  temp_r4 = temp_r4 - 1;
  if (sub_0800CE30() != 0)
  {
    *((s32 *) (((s8 *) gUnk_03005CF4) + 0x80)) = (s32) ((*((s32 *) (((s8 *) gUnk_03005CF4) + 0x80))) | (1 << temp_r4));
    return;
  }
  *((s32 *) (((s8 *) gUnk_03005CF4) + 0x78)) = (s32) ((*((s32 *) (((s8 *) gUnk_03005CF4) + 0x78))) | (1 << temp_r4));
}
void sub_08059AD0(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140217);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0)
            sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
void sub_08059B84(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140218);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
void sub_08059C38(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140219);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
void sub_08059CEC(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014021A);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
void sub_08059DA0(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014021B);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
void sub_08059E54(u32 arg0)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014017F);
    while (sub_0805EEFC(result) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) sub_0805EFBC();
    }
    sub_08029788(arg0);
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~1u;
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_08059534", sub_08059F08);
void sub_08059FBC(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        do sub_080003F0(); while (sub_0801AAE0() == 0);
    }
}
void sub_0805A004(u32 mode)
{
    if (mode > 1) return;
    sub_08028AAC(mode ? 7 : 6, 0x80, 0x58, 0);
    if (mode == 1) {
        u8 *base = *(u8 **)0x03005CF4;
        *(u32 *)(base + 0x38) |= 0x10;
    }
}
void sub_0805A040(void) {
    sub_08028AAC(8, 0x38, 0x30, 0);
}
void sub_0805A054(u32 state)
{
    for (;;) {
        sub_08028AAC(state, 0x270F, 0x270F, 0);
        u32 wait = 1;
        for (;;) {
            sub_080003F0();
            if (sub_080021A8() != 0)
                break;
            if (--wait == 0)
                break;
        }
    }
}
void sub_0805A088(u32 arg)
{
    u32 pos[2] = { 0xB700, 0xE100 };
    u32 result = 0;
    u32 packed = 0x0028000A;
    u8 *entry = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A + 0x8C;
    while (sub_08021FE0(entry, pos, &result, &packed) == 0)
        sub_080003F0();
    sub_08068070((u32)sub_0804BC38, arg);
}
void sub_0805A0EC(u32 count)
{
    if (sub_080020F4() != count)
        return;
    u8 *entry = (u8 *)(*(u32 *)0x030034E0) + 0x150;
    for (u32 i = 0; i <= 0x18 && count != 0; i++, entry += 0x10) {
        if (*(u16 *)entry == 1 && *(u16 *)(entry + 2) == 0x22) {
            *(u16 *)entry = 0;
            *(u16 *)(entry + 2) = 0;
            count--;
        }
    }
}
void sub_0805A138(u32 mode)
{
    if (mode == 0) {
        sub_08068820((u32)sub_0805A138, 1, 1);
    } else if (mode == 1) {
        if ((gUnk_030027D0 & 0x20) == 0)
            sub_08006D08(0x17B);
        sub_08028AAC(7, 0x270F, 0x270F, 0);
        *(u32 *)((u8 *)gUnk_03005CF4 + 0x38) |= 8;
    }
}
void sub_0805A194(s32 arg0)
{
 do { loop_1: sub_08028D98(arg0, 0, -1, 3); sub_08028D98(arg0, 0, 1, 3); goto loop_1; } while (0);
}
void sub_0805A1B4(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    u32 handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x14022A);
    while (sub_0805EEFC(handle) == 0) {
        sub_080003F0();
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
    }
    state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x30) &= ~2u;
    sub_0800D108();
}
void sub_0805A258(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    sub_0802939C(1, 1);
    sub_08028D98(1, 0xF0, 0x190, 0);
}
void sub_0805A2B8(void) {
    sub_08028AAC(8, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
void sub_0805A2E4(void)
{
    u8 *base = *(u8 **)0x03005CF4;
    u32 offset = sub_0800CE30() ? 0x1C4 : 0x1B8;
    base[offset] |= 0x10;
}
u32 sub_0805A318(void)
{
    u32 count = sub_08002164();
    u16 *p = (u16 *)0x03003D44;
    u32 i;
    for (i=0; i<count; i++, p += 0x53)
        if (*p == 6 || *p == 8) return 1;
    return 0;
}
void sub_0805A350(void)
{
    u8 *base = *(u8 **)0x03005CF4;
    base[sub_0800CE30() ? 0x1C6 : 0x1BA] |= 1;
}
void sub_0805A384(s32 arg0) {
    if ((arg0 != 0) && (sub_08000470((u32)arg0) != 0)) {
        sub_080003A8(arg0);
    }
    sub_08068820(sub_0805A3B0, 0, 0);
}
void sub_0805A3B0(void) {
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x17BU);
    }
    sub_08028AAC(7, 0x270F, 0x270F, 0);
    sub_08028D98(6, 0, -0xC, 0x3C);
}
void sub_0805A3F0(s32 arg0) {
    sub_08068070(sub_0805A404, arg0);
}
void sub_0805A404(s32 arg0) {
    if ((sub_0800CCCC() == 0) && !(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
}
void sub_0805A43C(u32 value)
{
    u8 *base = *(u8 **)0x03005CF4;
    base[sub_0800CE30() ? 0x1C1 : 0x1B5] = value;
}
void sub_0805A474(s32 arg0) {
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
s32 sub_0805A4A0(u32 index)
{
    return M2C_FIELD((u8 *)gUnk_03005CF4 + 0x22 + index * 2, u16 *, 0) - 1;
}
void sub_0805A4BC(u32 arg)
{
    u8 *base = *(u8 **)0x03005CF4;
    u32 *slot = (u32 *)(base + 0x6F4);
    while (sub_08000470((u32)slot) == 0) {
        *slot = sub_08001494(0xC00);
        if (*slot == 0) sub_080003F0();
    }
    if (*slot != 0) {
        u8 *obj = *(u8 **)slot;
        *(u32 *)(obj + 0x700) = (u32)sub_08027C1C;
        *(u32 *)(obj + 0x704) = *(u32 *)(obj + 0x718) + 0xBFC;
        *(u32 *)(obj + 0x6FC) = 0x46;
        *(u32 *)(obj + 0x71C) = 0;
        sub_08000274((u32)slot, (void *)arg, 0);
    }
}
void sub_0805A550(s16 *item, u32 index)
{
    u8 *state;
    if (*item == 0) return;
    state = *(u8 **)0x03005CF4;
    *(s16 **)(state + 0x724 + index * 4) = item;
    sub_08023ED8(item, index);
    (*(u16 *)(state + 0xA))++;
}
void *sub_0805A58C(u32 arg0, u32 callback)
{
    u8 *entry = *(u8 **)0x03005CF4 + 0xE34;
    for (u32 i = 0; i <= 0x1D; i++, entry += 0x28) {
        if (sub_08000470((u32)entry) == 0)
            break;
    }
    if (sub_08000470((u32)entry) != 0)
        return 0;
    *(u16 *)(*(u8 **)0x03005CF4 + 4) |= 0x80;
    u32 mem;
    do {
        mem = sub_08001494(0x400);
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);
    *(u32 *)(entry + 0x20) = mem;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = callback;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = (u32)sub_0805A704;
    sub_08000274((u32)entry, arg0);
    return entry;
}
void sub_0805A60C(s32 arg0) {
    sub_0802413C(arg0, 0);
}
void sub_0805A618(s32 arg0) {
    sub_0802413C(arg0, 1);
}
void sub_0805A624(s32 arg0) {
    sub_0802413C(arg0, 2);
}
