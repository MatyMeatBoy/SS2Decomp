#include "global.h"

u32 sub_0805DF38(u32 arg0, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5);
s32 sub_0805EEFC(void *arg0);
u32 sub_0805EF90(void);

#ifdef NONMATCHING
void sub_080571A4(u32 a, u32 b, u32 value)
{
    a &= 0xFF;
    b &= 0xFF;
    value &= 0xFF;
    if (sub_08002204() != 0)
        *((u8 *)gUnk_03005CF4 + 0x1C8 + a * 5 + b) = value;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080571A4);
#endif
#ifdef NONMATCHING
u32 sub_080571D8(u32 a, u32 b, u32 value)
{
    u8 *base=*(u8 **)0x03005CF4;
    return base[0x1C8 + (a*5 + b)] == (value & 0xFF);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080571D8);
#endif
#ifdef NONMATCHING
u32 sub_08057210(u32 index)
{
    u32 i;
    u8 *base = *(u8 **)0x03005CF4 + 0x1C8 + (u8)index * 5;
    for (i = 0; i <= 4; i++)
        if (base[i] == 2)
            return 1;
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057210);
#endif
#ifdef NONMATCHING
u32 sub_08057254(u8 index)
{
    u8 *table = (u8 *)gUnk_03005CF4 + 0x1C8 + index * 5;
    u32 i;
    for (i = 0; i <= 4; i++)
        if (table[i] == 1 || table[i] == 2)
            return 0;
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057254);
#endif
#ifdef NONMATCHING
void sub_080572A4(void)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 i;
    for (i = 0; i < 10; i++) {
        base[0x22C + i] = 0;
        *(u32 *)(base + 0x160 + i * 8) = 0;
        *(u32 *)(base + 0x164 + i * 8) = 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080572A4);
#endif
void sub_080572E4(void)
{
    gGameState->flags |= 0x100;
}
void sub_080572FC(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFEFF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08057314(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
s32 sub_08057328(u32 a, void *b) {
    u8 *entry;
    u32 count;
    register s32 result asm("r1");
    u32 memory;
    entry = (u8 *)gUnk_03005CF4 + 0xE34;
    count = 0;
    goto check;
next:
    count++;
    entry += 0x28;
check:
    if (count > 0x1D) goto out;
    result = sub_08000470(entry);
    if (result != 0) goto next;
    goto allocate;
wait:
    sub_080003F0();
allocate:
    memory = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = memory;
    if (memory == 0) goto wait;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)b;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274((s32 *)entry, (s32)a);
    return (s32)entry;
out:
    return;
}
s32 sub_08057390(s32 arg0, void (*arg1)(s32)) {
    return sub_08068070(arg1, arg0);
}
#ifdef NONMATCHING
s32 sub_080573A0(s32 arg0, void (*arg1)(s32))
{
    return ((s32 (*)(void (*)(s32), s32))sub_08068820)(arg1, arg0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080573A0);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080573B0);
s32 sub_08057424(s32 a)
{
    return sub_08000470(a);
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057430);
void sub_080574B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
#ifdef NONMATCHING
void sub_080574C4(void *target)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70)
        if (*(void **)entry == target)
            break;
    if (i > 0xE) {
        sub_080003F0();
        return;
    }
    *(u16 *)(entry + 0x36) = 4;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080574C4);
#endif
void sub_080574FC(void) {
    s32 temp_r4;
    s32 var_r5;
    u32 var_r6;

    var_r5 = gUnk_03005CF4 + 0x7A4;
    var_r6 = 0;
    do {
        temp_r4 = var_r5 + 0x48;
        if (sub_08000470(temp_r4) != 0) {
            sub_080003A8(temp_r4);
        }
        var_r6 += 1;
        var_r5 += 0x70;
    } while (var_r6 <= 0xEU);
}
#ifdef NONMATCHING
void sub_08057534(void *key, u16 x, u16 y)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    s32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (*(void **)entry == key)
            break;
    }
    if (i > 0xE) {
        sub_080003F0();
        return;
    }
    *(u16 *)(entry + 0x18) = x;
    *(u16 *)(entry + 0x1A) = y;
    *(u32 *)(entry + 0x3C) |= 0x10;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057534);
#endif
#ifdef NONMATCHING
void sub_08057580(u32 key, u32 value)
{
    u32 i;
    u8 *entry = *(u8 **)0x03005CF4 + 0x7A4;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (*(u32 *)entry == key) {
            *(u32 *)(entry + 0x44) = value;
            return;
        }
    }
    sub_080003F0();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057580);
#endif
#ifdef NONMATCHING
void sub_080575C0(u32 value)
{
    u32 handle;

    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();

    handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0xA00000 | (u16)value);
    while (sub_0805EEFC((void *)handle) == 0) {
        if (sub_0800CDF8() == 0)
            sub_080003F0();
        else
            sub_0805EFBC();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080575C0);
#endif
#ifdef NONMATCHING
void sub_08057624(u32 count)
{
    while (count != 0 && !sub_080021A8()) {
        sub_080003F0();
        count--;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057624);
#endif
void sub_08057644(void)
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
}
void sub_0805768C(void) { sub_0801ABE8(6); while (!sub_0801AAE0()) sub_080003F0(); }
void sub_080576A8(void) { sub_0801AA34(0x1E); while (!sub_0801AAE0()) sub_080003F0(); }
void sub_080576C4(void) { sub_0801AA8C(0x1E); while (!sub_0801AAE0()) sub_080003F0(); }
s32 sub_080576E0(void) {
    return sub_080020F4();
}
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080576EC);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057780);
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_0805782C);
#ifdef NONMATCHING
u32 sub_080578BC(u32 value)
{
    u32 handle;
    while (sub_0805F184() != 0)
        sub_080003F0();
    handle = sub_0805DF38(1, 0xF, 2, 0, -2, 0xA00000 | (u16)value);
    while (sub_0805EEFC(handle) == 0)
        sub_080003F0();
    return sub_0805EF14(handle);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080578BC);
#endif
void sub_0805790C(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 2; sub_08067D74(); }
#ifdef NONMATCHING
void sub_08057934(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~3u; sub_08067D74(); }
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057934);
#endif
void sub_0805795C(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; sub_0800D0F4(); }
void sub_08057984(void)
{
  (&gUnk_03003CE0[sub_080020F4()])->flags &= ~((char) 1u);
  sub_0800D108();
}
u8 sub_080579AC(void) {
    return sub_0801DE60();
}
void sub_080579BC(void)
{
    struct Player *p = &gUnk_03003CE0[sub_080020F4()];
    p->state = 0;
}
#ifdef NONMATCHING
void sub_080579D8(u32 index)
{
    u8 *base = *(u8 **)0x03005CF4 + (sub_0800CE30() ? 0x1C3 : 0x1B7);
    base[index >> 3] |= 1u << (index & 7);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_080579D8);
#endif
#ifdef NONMATCHING
void sub_08057A20(u32 bit, u32 alternate)
{
    u8 *base=*(u8 **)0x03005CF4; u32 off=alternate?0x1C3:0x1B7;
    base[off+(bit>>3)] |= 1<<(bit&7);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057A20);
#endif
#ifdef NONMATCHING
void sub_08057A5C(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x1C3 : 0x1B7;
    base[offset + (bit >> 3)] &= (u8)~(1u << (bit & 7));
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057A5C);
#endif
#ifdef NONMATCHING
void sub_08057AA4(u32 bit, u32 alternate)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = alternate ? 0x1C3 : 0x1B7;
    base[offset + (bit >> 3)] &= (u8)~(1u << (bit & 7));
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057AA4);
#endif
#ifdef NONMATCHING
u32 sub_08057AE8(u32 bit)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 offset = sub_0800CE30() ? 0x1C3 : 0x1B7;
    return (base[offset + (bit >> 3)] >> (bit & 7)) & 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057AE8);
#endif
#ifdef NONMATCHING
void sub_08057B2C(u32 index, u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    base[(sub_0800CE30() ? 0x1BC : 0x1B0) + index] = (u8)value;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057B2C);
#endif
#ifdef NONMATCHING
u8 sub_08057B64(u32 offset)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    return base[(sub_0800CE30() ? 0x1BC : 0x1B0) + offset];
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057B64);
#endif
#ifdef NONMATCHING
u32 sub_08057B98(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 bit = 1u << ((value - 1) & 31);
    return *(u32 *)(base + (sub_0800CE30() ? 0x7C : 0x74)) & bit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057B98);
#endif
#ifdef NONMATCHING
void sub_08057BD0(u32 index)
{
    u8 *base = *(u8 **)0x03005CF4;
    *(u32 *)(base + (sub_0800CE30() ? 0x7C : 0x74)) |= 1u << (index - 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057BD0);
#endif
s32 sub_08057C0C(void)
{
  if (sub_0800CE30() == 0)
  {
    return *((s32 *) (((s8 *) gUnk_03005CF4) + 0x74));
  }
  if (gUnk_03005CF4)
  {
    return *((s32 *) (((s8 *) gUnk_03005CF4) + 0x7C));
  }
  else
  {
    return *((s32 *) (((s8 *) gUnk_03005CF4) + 0x7C));
  }
}
#ifdef NONMATCHING
u32 sub_08057C34(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 bit = 1u << ((value - 1) & 31);
    u32 flags = sub_0800CE30() ? *(u32 *)(base + 0x80) : *(u32 *)(base + 0x78);
    return flags & bit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057C34);
#endif
#ifdef NONMATCHING
void sub_08057C6C(u32 value)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u32 bit = 1u << ((value - 1) & 31);
    u32 offset = sub_0800CE30() ? 0x80 : 0x78;
    *(u32 *)(base + offset) |= bit;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080571A4", sub_08057C6C);
#endif
