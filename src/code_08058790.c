#include "global.h"

extern u32 sub_0805AB20(void *arg0);

void sub_08058790(void)
{
    u16 count;
    sub_0800CF90();
    for (count = 1; count != 0; count--) {
        sub_080003F0();
        if (sub_080021A8()) break;
    }
    sub_0801A664(0, 2);
    for (count = 1; count != 0; count--) {
        sub_080003F0();
        if (sub_080021A8()) break;
    }
}
void sub_080587D8(void) {
    sub_0800CFA4();
}
void sub_080587E4(void) {
    sub_08015D74();
}
void sub_080587F0(void) {
    sub_08015D98();
}
void sub_080587FC(u16 arg0) {
    sub_0800CC48(arg0);
}
void sub_0805880C(void) {
    sub_0800CC68();
}
s32 sub_08058818(void) {
    return sub_0800CE30();
}
s32 sub_08058824(void) {
    return sub_0800CF48();
}
s32 sub_08058830(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 8) & 1;
}
u32 sub_08058844(void)
{
    u32 count = 0;
    u32 i = 0;
    u8 *base = (u8 *)gUnk_030034E0 + 0xC10;
    for (; i <= 0x90; i++)
        if (base[i] != 0) count++;
    if (count == 0x91) return 1;
    return 0;
}
u32 sub_08058878(u32 offset, u32 shift)
{
    u8 *base;
    if (sub_0800CE30())
        base = (u8 *)gUnk_03005CF4 + 0x240;
    else
        base = (u8 *)gUnk_03005CF4 + 0x236;
    if (!((base[offset] >> shift) & 1)) return 0;
    return 1;
}
void sub_080588C0(u32 index, u32 bit)
{
    struct StateA { u8 pad[0x240]; u8 flags[10]; };
    struct StateB { u8 pad[0x236]; u8 flags[10]; };
    if (sub_0800CE30())
        ((struct StateA *)gUnk_03005CF4)->flags[index] |= 1 << bit;
    else
        ((struct StateB *)gUnk_03005CF4)->flags[index] |= 1 << bit;
}
void *sub_08058900(u32 index)
{
    struct TableA { u8 pad[0xA8]; void *items[10]; };
    struct TableB { u8 pad[0xF8]; void *items[10]; };
    void *result;
    if (sub_0800CE30() == 0)
        result = ((struct TableA *)gUnk_03005CF4)->items[index];
    else
        result = ((struct TableB *)gUnk_03005CF4)->items[index];
    return result;
}
void *sub_08058934(u32 index)
{
    struct TableA { u8 pad[0xD0]; void *items[10]; };
    struct TableB { u8 pad[0x120]; void *items[10]; };
    void *result;
    if (sub_0800CE30() == 0)
        result = ((struct TableA *)gUnk_03005CF4)->items[index];
    else
        result = ((struct TableB *)gUnk_03005CF4)->items[index];
    return result;
}
void sub_0805896C(u32 index, void *value)
{
    struct TableA { u8 pad[0xA8]; void *items[10]; };
    struct TableB { u8 pad[0xF8]; void *items[10]; };
    if (sub_0800CE30())
        ((struct TableB *)gUnk_03005CF4)->items[index] = value;
    else
        ((struct TableA *)gUnk_03005CF4)->items[index] = value;
}
void sub_080589A0(u32 index, void *value)
{
    struct TableA { u8 pad[0xD0]; void *items[10]; };
    struct TableB { u8 pad[0x120]; void *items[10]; };
    if (sub_0800CE30())
        ((struct TableB *)gUnk_03005CF4)->items[index] = value;
    else
        ((struct TableA *)gUnk_03005CF4)->items[index] = value;
}
s32 sub_080589D8(s32 arg0)
{
  s32 *var_r0;
  s32 var_r1;
  if (sub_0800CE30() != 0)
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x88;
  }
  else
  {
    var_r1 = 1 << arg0;
    var_r0 = gUnk_03005CF4 + 0x84;
  }
  if (var_r1 & (*var_r0))
  {
    if (var_r0)
    {
      return 1;
    }
    else
    {
      return 1;
    }
  }
  return 0;
}
void sub_08058A18(u32 bit)
{
    if (sub_0800CE30())
        *(u32 *)(gUnk_03005CF4 + 0x88) |= 1u << bit;
    else
        *(u32 *)(gUnk_03005CF4 + 0x84) |= 1u << bit;
}
void sub_08058A4C(u32 bit)
{
    if (sub_0800CE30())
        *(u32 *)(gUnk_03005CF4 + 0x88) &= ~(1u << bit);
    else
        *(u32 *)(gUnk_03005CF4 + 0x84) &= ~(1u << bit);
}
u32 sub_08058A80(void)
{
    u32 count = 0;
    u32 i;
    for (i = 0; i <= 0xA; i++) {
        s32 mask;
        u32 found;
        if (sub_0800CE30()) {
            mask = (1 << i) & *(u32 *)(gUnk_03005CF4 + 0x88);
            if (!mask) goto absent;
            goto increment;
        }
        mask = (1 << i) & *(u32 *)(gUnk_03005CF4 + 0x84);
        found = 1;
        if (mask) goto test;
    absent:
        found = 0;
    test:
        if (found) {
        increment:
            count++;
        }
    }
    return count;
}
u32 sub_08058AD0(void)
{
    struct Player { u8 pad[0x64]; u16 state; u8 rest[0xE6]; };
    u32 count = sub_08002164();
    u32 i;
    for (i = 0; i < count; i++)
        if (((struct Player *)gUnk_03003CE0)[i].state == 6 ||
            ((struct Player *)gUnk_03003CE0)[i].state == 8)
            return 1;
    return 0;
}
void sub_08058B08(u16 arg0, u16 arg1)
{
    u32 packed = arg0 | ((u32)arg1 << 16);
    void (*callback)(void) = sub_0805A9F4;
    struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
            sub_080003F0();
        entry->u8 = 0x3C;
        entry->uC = callback;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = 0;
        sub_08000274((u32)entry, packed);
    }
}
void sub_08058B74(u16 resource, u16 arg1, u16 arg2)
{
    u32 packed;
    void (*callback)(void);
    struct Task *entry;
    u32 i;
    gUnk_03005CF8 = resource;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(resource);
    packed = ((u32)(arg1 - 1) << 16) | arg2;
    callback = sub_0805AA68;
    entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
            sub_080003F0();
        entry->u8 = 0x3C;
        entry->uC = callback;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = 0;
        sub_08000274((u32)entry, packed);
    }
}
void sub_08058C08(u16 arg0, u16 arg1)
{
    u32 packed = arg0 | ((u32)arg1 << 16);
    void (*callback)(void) = sub_0805AAB8;
    struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
            sub_080003F0();
        entry->u8 = 0x3C;
        entry->uC = callback;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = 0;
        sub_08000274((u32)entry, packed);
    }
}
void sub_08058C74(s16 arg0) {
    M2C_FIELD(gUnk_030034E0, s16 *, 0x68) = arg0;
    sub_0805AD78();
}
void sub_08058C8C(s32 arg0)
{
    if (sub_0800CB9C() == 0) {
        if (!(gUnk_030027D0 & 0x20)) {
            gUnk_03005CF8 = arg0;
            ((void (*)(s32))sub_08006CB4)(arg0);
        }
    } else {
        sub_080586B4(0);
    }
}
void sub_08058CC4(u32 value)
{
    switch (value) {
    case 2:
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x14);
        break;
    case 1: case 4: case 5: case 7: case 9:
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x13);
        break;
    case 6: case 8:
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x1B);
        break;
    }
}
u32 sub_08058D4C(u32 key)
{
  int new_var;
  u32 i;
  u8 *base = *((u8 **) 0x03005CF4);
  u8 *entry = base + 0x7A4;
  u32 mask;
  for (i = 0; i <= 0xE; i++, entry += 0x70)
  {
    new_var = (*((u32 *) (base + 0x54))) & (1u << i);
    if (new_var && ((*((u32 *) (entry + 4))) == key))
    {
      return *((u32 *) entry);
    }
  }

  return 0;
}
s32 sub_08058D8C(void) {
    return sub_080008C8();
}
s32 sub_08058D98(s32 value)
{
    struct {
        u16 kind;
        u16 pad02;
        s32 value;
        u8 pad08[8];
    } request;
    request.kind = 10;
    request.value = value;
    return sub_0805AB20(&request);
}
s32 sub_08058DB0(void)
{
    struct Player { u8 *item; u8 pad[0x148]; };
    s32 value = sub_0800CD8C();
    u32 found = (u32)(value | -value) >> 31;
    u8 *players = (u8 *)gUnk_03003CE0;
    u32 i;
    if (((struct PlayerW12 *)players)[sub_080020F4()].state == 0xE)
        found = 1;
    i = 0;
    players += 0x148;
    for (; i < sub_08002164(); i++) {
        u32 kind = *(u8 *)((struct Player *)players)[i].item;
        if ((kind << 28) >> 28 == 0xE) {
            found = 1;
            break;
        }
    }
    return found;
}
s32 sub_08058E08(void) {
    return M2C_FIELD(gUnk_030034E0, s32 *, 0x20);
}
void sub_08058E14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
void sub_08058E28(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) & ~(1 << arg0));
}
s32 sub_08058E3C(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x6C) & (1 << bit)) != 0;
}
void sub_08058E54(void)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001404ED);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08058EF8(u32 arg0)
{
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    sub_080445E8(1, arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08058F4C(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140107);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08059000(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A5);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_080590B4(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A6);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08059168(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401A7);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_0805921C(u8 value)
{
    u8 *p;
    if (sub_0800CE30())
        p = (u8 *)gUnk_03005CF4 + 0x1BC;
    else
        p = (u8 *)gUnk_03005CF4 + 0x1B0;
    *p = value;
}
void sub_08059250(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x001401E0);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_080592FC(void)
{
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802A19C();
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08059340(void)
{
  int new_var2;
  int new_var3;
  u8 *p;
  int new_var;
  new_var2 = 0xA;
  new_var3 = new_var2;
 do { new_var = new_var3; *(((u8 *) ((uintptr_t) gUnk_03005CF4)) + ((sub_0800CE30()) ? (0x1BD) : (0x1B1))) = new_var; } while (0);
}
void sub_08059374(void)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140124);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08059418(s32 arg0)
{
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    if (sub_0800CE30() == 0) sub_080445E8(2, arg0);
    else sub_080445E8(3, arg0);
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
void sub_08059488(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013B);
    while (sub_0805EEFC(result) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags &= ~1u;
    sub_0800D108();
}
