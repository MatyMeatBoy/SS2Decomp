#include "global.h"

u32 sub_0805DF38(u32 arg0, u32 arg1, u32 arg2, u32 arg3, s32 arg4, u32 arg5);
s32 sub_0805EEFC(void *arg0);
u32 sub_0805EF90(void);

void sub_080571A4(u8 a, u8 b, u8 value)
{
    if (sub_08002204() != 0) {
        register u8 *base asm("r1") = (u8 *)gUnk_03005CF4;
        u32 index = b + a * 5;
        base += 0x1C8;
        base += index;
        *base = value;
    }
}
u32 sub_080571D8(u8 a, u8 b, u8 value)
{
    register u32 result asm("r5") = 0;
    register u8 *base asm("r4") = (u8 *)gUnk_03005CF4;
    u32 index = b + a * 5;
    base += 0x1C8;
    base += index;
    if (*base == value)
        result = 1;
    return result;
}
u32 sub_08057210(u8 index)
{
    u32 i = 0;
    register u8 *base asm("r2") = (u8 *)gUnk_03005CF4;
    u32 row = index * 5;
    base += 0x1C8;
    for (; i <= 4; i++) {
        u32 offset = (u8)i;
        register u32 found asm("r3") = 0;
        if (base[offset + row] == 2)
            found = 1;
        if (found)
            return 1;
    }
    return 0;
}
u32 sub_08057254(u8 index)
{
    u32 i = 0;
    register u8 *base asm("r2") = (u8 *)gUnk_03005CF4;
    u32 row = index * 5;
    base += 0x1C8;
    for (; i <= 4; i++) {
        u32 value;
        u32 offset = (u8)i;
        register u32 found asm("r3") = 0;
        value = base[offset + row];
        if (value == 2)
            found = 1;
        if (found)
            return 0;
        found = 0;
        if (value == 1)
            found = 1;
        if (found)
            return 0;
    }
    return 1;
}
void sub_080572A4(void)
{
    struct State { u8 pad[0x160]; u32 pairs[10][2]; u8 pad2[0x7C]; u8 flags[10]; };
    u32 i;
    for (i = 0; i < 10; i++) {
        struct State *base;
        ((struct State *)gUnk_03005CF4)->flags[i] = 0;
        base = (struct State *)gUnk_03005CF4;
        base->pairs[i][0] = 0;
        base->pairs[i][1] = 0;
    }
}
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
s32 sub_080573A0(s32 arg0, void (*arg1)(s32), void *arg2)
{
    return sub_08068820((void *)arg1, (void *)arg0, arg2);
}
void sub_080573B0(u32 arg, u32 callback)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    if (sub_08000470((u32)entry)) goto next;
    {
        while ((*(u32 *)(entry + 0x20) = sub_08001494(0x400)) == 0)
            sub_080003F0();
        mem = *(u32 *)(entry + 0x20);
        *(u32 *)(entry + 8) = 0x3C;
        *(u32 *)(entry + 0xC) = callback;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = 0;
        sub_08000274((u32)entry, arg);
        do {
            sub_080003F0();
        } while (sub_08000470((u32)entry));
    }
out:
    return;
}
s32 sub_08057424(s32 a)
{
    return sub_08000470(a);
}
u32 sub_08057430(u32 arg, u32 callback, u32 bit)
{
    u8 *state = (u8 *)gUnk_03005CF4;
    u32 mask = 1 << bit;
    u8 *entry;
    u32 i;
    u32 result;
    u32 mem;
    if (*(u32 *)(state + 0x6C) & mask)
        return;
    *(u32 *)(state + 0x6C) |= mask;
    entry = state + 0x12E4;
    i = 0;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 29) goto out;
    if (sub_08000470((u32)entry)) goto next;
    while ((*(u32 *)(entry + 0x20) = sub_08001494(0x400)) == 0)
        sub_080003F0();
    mem = *(u32 *)(entry + 0x20);
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = callback;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274((u32)entry, arg);
    result = (u32)entry;
out:
    return result;
}
void sub_080574B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
void sub_080574C4(void *target)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u32 i = 0;
    while (*(void **)entry != target) {
        i++;
        entry += 0x70;
        if (i > 0xE) {
            sub_080003F0();
            entry = 0;
            break;
        }
    }
    if (entry)
        *(u16 *)(entry + 0x36) = 4;
}
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
void sub_08057534(void *key, u16 x, u16 y)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u8 *result;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (*(void **)entry == key) {
            result = entry;
            goto found;
        }
    }
    sub_080003F0();
    result = 0;
found:
    if (result) {
        *(u16 *)(result + 0x18) = x;
        *(u16 *)(result + 0x1A) = y;
        *(u32 *)(result + 0x3C) |= 0x10;
    }
}
void sub_08057580(u32 key, u32 value)
{
    u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    u8 *result;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (*(u32 *)entry == key) {
            result = entry;
            goto found;
        }
    }
    sub_080003F0();
    result = 0;
found:
    if (result)
        *(u32 *)(result + 0x44) = value;
}
void sub_080575C0(u16 value)
{
    u32 handle;

    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();

    handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x140000 | value);
    while (sub_0805EEFC((void *)handle) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
}
void sub_08057624(u16 count)
{
    while (count != 0) { sub_080003F0(); if (sub_080021A8() != 0) break; count = count - 1; }
}
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
void sub_080576EC(u16 x, u16 y, u16 duration)
{
    s32 step;
    s32 startX;
    register s32 startY asm("r8");
    s32 i;
    s32 outX, outY;
    if (duration)
        step = 1024 / (s32)duration;
    startX = (s16)gUnk_03003170.f80;
    startY = (s16)gUnk_03003170.f82;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&outX, startX, (s16)x, i);
        sub_080659F4(&outY, startY, (s16)y, i);
        ((void (*)(s32, s32))sub_0800BB80)((s16)outX, (s16)outY);
        sub_080003F0();
    }
}
void sub_08057780(u16 x, u16 y, u16 n)
{
    s32 ax;
    s32 ay;
    s16 step;
    s32 sx;
    s32 sy;
    u16 i;
    s16 t;
    if (n != 0)
        step = 0x400 / n;
    sx = (s16)gUnk_03003170.f80;
    sy = (s16)gUnk_03003170.f82;
    i = 0;
    do {
        t = i;
        sub_080659F4(&ax, sx, (s16)x, t);
        sub_080659F4(&ay, sy, (s16)y, t);
        ((void (*)(s32, s32))sub_0800BB94)((s16)ax, (s16)ay);
        ((void (*)(s32, s32))sub_08097D18)(-ax, -ay);
        sub_080003F0();
        i = t + step;
    } while ((s16)i <= 0x400);
}
void sub_0805782C(u32 arg)
{
    s32 x, y;
    sub_0800CE40();
    sub_0801ABE8(6);
    while (!sub_0801AAE0())
        sub_080003F0();
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    x = (s16)gUnk_03003170.scrollX;
    y = (s16)gUnk_03003170.scrollY;
    sub_08084F9C(arg);
    sub_080003F4(0x11201100);
    gUnk_03003170.scrollX = x;
    gUnk_03003170.scrollY = y;
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (!sub_0801AAE0())
        sub_080003F0();
}
u32 sub_080578BC(u32 value)
{
  u16 new_var;
  u32 handle;
  new_var = (u16) value;
  while (sub_0805F184() != 0)
  {
    sub_080003F0();
  }

  handle = sub_0805DF38(1, 0xF, 2, 0, -2, 0x140000 | new_var);
  while (sub_0805EEFC(handle) == 0)
  {
    sub_080003F0();
  }

  return sub_0805EF14(handle);
}
void sub_0805790C(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 2; sub_08067D74(); }
void sub_08057934(void) { struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~2u; sub_08067D74(); }
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
void sub_080579D8(u32 bit)
{
    u32 index = bit >> 3;
    register u8 *base asm("r1");
    u32 offset;
    bit &= 7;
    if (sub_0800CE30())
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base = (1 << bit) | *base;
}
void sub_08057A20(u32 bit, u32 alternate)
{
    u32 index = bit >> 3;
    register u8 *base asm("r1");
    u32 offset;
    bit &= 7;
    if (alternate)
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base = (1 << bit) | *base;
}
void sub_08057A5C(u32 bit)
{
    u32 index = bit >> 3;
    register u8 *base asm("r2");
    u32 offset;
    bit &= 7;
    if (sub_0800CE30())
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base &= ~(1 << bit);
}
void sub_08057AA4(u32 bit, u32 alternate)
{
    u32 index = bit >> 3;
    register u8 *base asm("r2");
    u32 offset;
    bit &= 7;
    if (alternate)
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1C3;
    }
    else
        {
        base = (u8 *)gUnk_03005CF4;
        offset = 0x1B7;
    }
    base += offset;
    base += index;
    *base &= ~(1 << bit);
}
u32 sub_08057AE8(u32 bit)
{
    u32 index = bit >> 3;
    u8 *base;
    bit &= 7;
    if (sub_0800CE30() == 0)
        base = (u8 *)gUnk_03005CF4 + 0x1B7;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1C3;
    return (base[index] >> bit) & 1;
}
void sub_08057B2C(u32 index, u8 value)
{
    u8 *p;
    if (sub_0800CE30())
        p = (u8 *)gUnk_03005CF4 + 0x1BC;
    else
        p = (u8 *)gUnk_03005CF4 + 0x1B0;
    p[index] = value;
}
u8 sub_08057B64(u32 index)
{
    u8 *base;
    if (sub_0800CE30() == 0)
        base = (u8 *)gUnk_03005CF4 + 0x1B0;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1BC;
    return base[index];
}
u32 sub_08057B98(u32 value)
{
    value--;
    if (sub_0800CE30() != 0)
        return *(u32 *)((u8 *)gUnk_03005CF4 + 0x7C) & (1u << value);
    return *(u32 *)((u8 *)gUnk_03005CF4 + 0x74) & (1u << value);
}
u32 sub_08057BD0(u32 value)
{
    u32 result;
    value--;
    if (sub_0800CE30() == 0)
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x74) |= (1u << value));
    else
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x7c) |= (1u << value));
    return result;
}
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
u32 sub_08057C34(u32 value)
{
    value--;
    if (sub_0800CE30() != 0)
        return *(u32 *)((u8 *)gUnk_03005CF4 + 0x80) & (1u << value);
    return *(u32 *)((u8 *)gUnk_03005CF4 + 0x78) & (1u << value);
}
u32 sub_08057C6C(u32 value)
{
    u32 result;
    value--;
    if (sub_0800CE30() == 0)
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x78) |= (1u << value));
    else
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x80) |= (1u << value));
    return result;
}
