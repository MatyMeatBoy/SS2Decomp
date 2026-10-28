#include "global.h"

u32 sub_08057CAC(u32 value)
{
    u32 result;
    value--;
    if (sub_0800CE30() == 0)
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x78) &= ~(1u << value));
    else
        result = (*(u32 *)((u8 *)gUnk_03005CF4 + 0x80) &= ~(1u << value));
    return result;
}
s32 sub_08057CEC(void)
{
  int new_var2;
  s32 *new_var;
  if (sub_0800CE30() == 0)
  {
    return *((s32 *) (((s8 *) ((void *) gUnk_03005CF4)) + 0x78));
    new_var2 = 0;
 do { } while (new_var2);
  }
  new_var = (s32 *) (((s8 *) (((void *) gUnk_03005CF4) + 0x80)) + 0);
  return *new_var;
}
void sub_08057D14(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x50) = arg0;
}
s32 sub_08057D20(void) {
    return M2C_FIELD(gUnk_03005CF4, s32 *, 0x50);
}
void sub_08057D2C(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_0805A874;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 1);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
void sub_08057DD0(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_0805A874;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 0);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
void sub_08057E74(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_08028830;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 1);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
void sub_08057F18(u32 x, u32 y, u16 type, u16 value, u32 arg4, u32 arg5)
{
    u32 data[6];
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    u32 i = 0;
    u32 active;
    u32 mem;
    goto check;
next:
    i++;
    entry += 0x28;
check:
    if (i > 0x1D) goto out;
    active = sub_08000470((u32)entry);
    if (active != 0) goto next;
    {
        data[0] = x << 8;
        data[1] = y << 8;
        *(u16 *)((u8 *)data + 8) = type;
        *(u16 *)((u8 *)data + 10) = value;
        data[3] = arg4;
        data[4] = arg5;
        *(u32 *)(entry + 8) = 0x3C;
        mem = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = mem;
        *(u32 *)(entry + 0xC) = (u32)sub_08028830;
        *(u32 *)(entry + 0x10) = mem + 0x3FC;
        *(u32 *)(entry + 0x24) = active;
        sub_08000274((u32)entry, data, 0);
        sub_080003F0();
        sub_080003F0();
    }
out:
    return;
}
void sub_08057FBC(u32 selector, u32 value)
{
    struct PlayerValue { u8 pad[0x11E]; u16 value; u8 tail[0x2C]; };
    register u16 *target asm("r0");
    if (selector > 0x100000) {
        u8 *entry = (u8 *)gUnk_03005CF4 + 0x7A4;
        u8 *result;
        u32 i;
        for (i = 0; i <= 14; i++, entry += 0x70) {
            if (*(u32 *)entry == selector) {
                result = entry;
                goto found;
            }
        }
        sub_080003F0();
        result = 0;
found:
        if (!result)
            return;
        target = (u16 *)(result + 0x42);
    } else if (selector != 0) {
        selector--;
        if (selector <= 4) {
            register void **address asm("r1") = &gUnk_030056F4;
            u32 offset = selector * 0x2E0;
            register u8 *slot asm("r1") = *address;
            slot += offset;
            sub_08019EB8(*(u16 *)(slot + 2), (u16)value);
        }
        return;
    } else {
        register u32 index asm("r0") = sub_080020F4();
        index *= 0x14C;
        target = (u16 *)(index + (u32)gUnk_03003CE0);
        target = (u16 *)((u8 *)target + 0x11E);
    }
    *target = value;
}
void sub_08058048(u32 x, u32 y, u32 kind, u32 value)
{
    struct Item { u16 kind, value; u8 tail[12]; } data;
    if (kind == 10) {
        data.kind = kind;
        *(u32 *)data.tail = value;
    } else {
        u32 i;
        data.kind = kind;
        data.value = value;
        for (i = 0; i < 12; i++)
            data.tail[i] = 0;
    }
    while (sub_08067B9C(x << 8, y << 8, &data) == 0)
        sub_080003F0();
}
s32 sub_08058094(void)
{
    s32 temp;
    s32 i;
    s32 j;
    register s32 total asm("r3");
    u8 *entry;
    u8 *other;
    register s32 *state asm("r1");
    register s32 *saved asm("r4");
    total = 0;
    state = &gUnk_030034E0;
    entry = (u8 *)*state + 0x150;
    saved = state;
    i = 24;
    do {
        if (*(u16 *)entry == 10)
            total += *(s32 *)(entry + 4);
        i--;
        entry += 16;
    } while (i >= 0);
    other = (u8 *)*saved + 0x2E0;
    temp = *(u16 *)((u8 *)*saved + 0x6A) * 15;
    if (temp > 0) {
        j = temp;
        do {
            if (*(u16 *)other == 10)
                total += *(s32 *)(other + 4);
            j--;
            other += 16;
        } while (j != 0);
    }
    return total;
}
void sub_080580EC(void) {
    sub_0807C014();
}
u32 sub_080580F8(u32 a, u32 b)
{
    u32 count = 0;
    u32 i = 0;
    u8 *initial = (u8 *)gUnk_030034E0;
    register u16 *first asm("r3") = (u16 *)(initial + 0x2e0);
    u8 *base = initial;
    for (; i <= 0x4a; first += 8, base += 16, i++)
        if (*first == a && *(u16 *)(base + 0x2e2) == b)
            count++;
    return count;
}
u32 sub_0805813C(u32 a, u32 b)
{
    u32 count = 0;
    u32 i = 0;
    u8 *initial = (u8 *)gUnk_030034E0;
    register u16 *first asm("r3") = (u16 *)(initial + 0x150);
    u8 *base = initial;
    for (; i <= 0x18; first += 8, base += 16, i++)
        if (*first == a && *(u16 *)(base + 0x152) == b)
            count++;
    return count;
}
void sub_0805817C(u32 type, u32 value, u32 count)
{
    struct Item { u16 kind, value; u8 tail[12]; } record, money;
    u32 i;
    if (type != 10) {
        record.kind = type;
        record.value = value;
        for (i = 0; i < 12; i++)
            record.tail[i] = 0;
        for (i = 0; i < count; i++)
            sub_0805AB20(&record);
    } else {
        for (i = 0; i < count; i++) {
            money.kind = 10;
            *(u32 *)money.tail = value;
            sub_0805AB20(&money);
        }
    }
}
void sub_080581E4(u32 a, u32 b, u32 count)
{
    u32 i;
    for (i = 0; i <= 24; i++) {
        register u32 address asm("r0") = gUnk_030034E0;
        u32 offset = i * 16;
        u8 *base = (u8 *)(address + offset);
        if (*(u16 *)(base + 0x150) == a && *(u16 *)(base + 0x152) == b) {
            count--;
            *(u16 *)(base + 0x150) = 0;
            *(u16 *)(base + 0x152) = 0;
            if (!count)
                break;
        }
    }
}
s32 sub_08058240(void)
{
    u32 i = sub_080020F4();
    register u8 *base asm("r1") = (u8 *)gUnk_03003CE0;
    i *= 0x14C;
    base += 0x8C;
    return *(s32 *)(i + (u32)base) >> 8;
}
s32 sub_08058260(void)
{
    u32 i = sub_080020F4();
    register u8 *base asm("r1") = (u8 *)gUnk_03003CE0;
    i *= 0x14C;
    base += 0x90;
    return *(s32 *)(i + (u32)base) >> 8;
}
void sub_08058280(void)
{
    u8 *entry = (u8 *)gUnk_030056F4;
    u32 i;
    s32 mask;
    for (i = 0; i <= 4; i++, entry += 0x2E0) {
        mask = gUnk_030056FC & (1u << i);
        if (mask && *(u16 *)(entry + 0xC) == 0xC)
            *(u16 *)(entry + 0xC) = 0;
    }
    sub_08019F04();
}
s32 sub_080582C0(void)
{
  int new_var;
 do { if (sub_0805CFA0() >= 0) { return 1; do { } while (new_var); } return 0; } while (0);
}
u32 sub_080582D4(u16 value)
{
    while (sub_0805F184() != 0)
        sub_080003F0();
    while (sub_0805EF90() != 0)
        sub_080003F0();
    return sub_0805DF38(1, 0xF, 2, 0, 0x2D, 0x140000 | value);
}
void sub_08058318(s32 arg0)
{
    while (!sub_0805EEFC(arg0))
        sub_080003F0();
}
void sub_08058334(u32 x, u32 y, u16 a, u16 b, u32 callback)
{
    u32 pos[2];
    u32 info;
    u32 packed;
    u8 *player = (u8 *)&gUnk_03003D6C + sub_080020F4() * 0x14C;
    info = 0x00200018;
    pos[0] = x << 8;
    pos[1] = y << 8;
    packed = a | ((u32)b << 16);
    if (sub_08021FE0(player, pos, &info, &packed)) {
        struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
        u32 i;
        for (i = 0; i <= 0x1D && sub_08000470((u32)entry) != 0; i++, entry++) {}
        if (i <= 0x1D) {
            while ((entry->u20 = (s32)sub_08001494(0x400)) == 0)
                sub_080003F0();
            entry->u8 = 0x3C;
            entry->uC = (void *)callback;
            entry->u10 = entry->u20 + 0x3FC;
            entry->u24 = 0;
            sub_08000274((u32)entry, 0);
        }
        sub_0800035C();
    }
}
void sub_080583EC(void) {
    sub_0805EFBC();
    do {
        sub_080003F0();
    } while (sub_0805F184() != 0);
}
void sub_08058404(s32 arg0) {
    if ((arg0 != 0) && (sub_08000470((u32)arg0) != 0)) {
        sub_080003A8(arg0);
    }
}
s32 sub_08058420(void)
{
  s8 *new_var;
  u16 *new_var2;
  s32 *new_var3;
  new_var = (s8 *) gUnk_03005CF4;
  new_var2 = (u16 *) (new_var + 4);
  if ((((u16) (*new_var2)) >> 4) & 1)
  {
    return 1;
  }
  new_var3 = &gUnk_03005CF4;
  if ((gUnk_03005CF4 && (*new_var3)) && (*new_var3))
  {
  }
  return sub_08019C3C();
}
void sub_08058444(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    struct PlayerW12 *entry;
    a <<= 16;
    result = 0;
    pos[0] = x << 8;
    pos[1] = y << 8;
    b <<= 16;
    packed = (a >> 16) | b;
    entry = &((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    while (sub_08021FE0(&entry->pos8C, pos, &result, &packed) == 0)
        sub_080003F0();
}
void sub_08058498(u32 x, u32 y, u32 a, u32 b)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    struct PlayerW12 *entry;
    a <<= 16;
    result = 0;
    pos[0] = x << 8;
    pos[1] = y << 8;
    b <<= 16;
    packed = (a >> 16) | b;
    entry = &((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    while (sub_08021FE0(&entry->pos8C, pos, &result, &packed) == 0 ||
           !(*(u16 *)((u8 *)entry + 0x14) & 1)) {
        if (sub_08058608()) return;
        sub_080003F0();
    }
}
void sub_080584FC(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
void sub_08058510(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
s32 sub_08058524(s32 bit)
{
    return (M2C_FIELD(gUnk_03005CF4, u32 *, 0x38) & (1 << bit)) != 0;
}
u32 sub_0805853C(u32 bit, u32 alternate)
{
    u32 index = bit >> 3;
    u8 *base;
    bit &= 7;
    if (alternate == 0)
        base = (u8 *)gUnk_03005CF4 + 0x1B7;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1C3;
    return (base[index] >> bit) & 1;
}
void sub_08058574(u32 callback, u32 arg1, u32 arg2)
{
    struct Task *entry = (struct Task *)(gUnk_03005CF4 + 0xE34);
    u32 i;
    s32 busy;
    u32 args[6];
    for (i = 0; i <= 0x1D && (busy = sub_08000470((u32)entry)) != 0; i++, entry++) {}
    if (i <= 0x1D) {
        /* The original caller only fills these two argument slots. */
        args[3] = arg1;
        args[4] = arg2;
        entry->u8 = 0x3C;
        entry->u20 = (s32)sub_08001494(0x400);
        entry->uC = sub_0802A104;
        entry->u10 = entry->u20 + 0x3FC;
        entry->u24 = busy;
        sub_08000274((u32)entry, args, callback);
        sub_080003F0();
        sub_080003F0();
    }
}
void sub_080585F4(s32 arg0, s32 arg1) {
    sub_0805D37C(arg0 << 8, arg1 << 8);
    sub_080687A8();
}
s32 sub_08058608(void) {
    return sub_0800CCCC();
}
u16 sub_08058614(void)
{
    return gUnk_03003170.f90;
}
void sub_08058620(const s16 *arg0)
{
    struct State { u8 pad[0x724]; const s16 *items[32]; };
    u8 *state = (u8 *)gUnk_03005CF4;
    u32 index = *(u16 *)(state + 0xA);
    if (*arg0 != 0) {
        ((struct State *)state)->items[index] = arg0;
        sub_08023ED8(arg0, index);
        (*(u16 *)((u8 *)gUnk_03005CF4 + 0xA))++;
    }
}
void sub_0805865C(s32 arg0)
{
    if ((gUnk_030027D0 & 0x20) == 0)
        ((void (*)(s32))sub_08006D08)(arg0);
}
void sub_0805867C(void) {
    sub_08006D5C();
}
s32 sub_08058688(s32 value)
{
    s32 old = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0)
        ((void (*)(s32))sub_08006CB4)(value);
    return old;
}
s32 sub_080586B4(void)
{
    s32 value = gUnk_03005CF8;
    ((void (*)(s32))sub_08006CD0)(value);
    gUnk_03005CF8 = 0;
    return value;
}
s32 sub_080586D0(void) {
    s32 temp_r5;

    temp_r5 = gUnk_03005CF8;
    sub_08006C30();
    gUnk_03005CF8 = 0;
    return temp_r5;
}
void sub_080586EC(u32 index, u32 x, u32 y)
{
    u8 *entry;
    s32 ready;
    if (index == 0)
        return;
    index--;
    ready = gUnk_030056FC & (1u << index);
    while (!ready) {
        sub_080003F0();
        ready = gUnk_030056FC & (1u << index);
    }
    entry = (u8 *)gUnk_030056F4 + index * 0x2E0;
    *(u32 *)(entry + 0x30) = x;
    *(u32 *)(entry + 0x34) = y;
    *(u32 *)(entry + 0x38) = 0;
    *(u32 *)(entry + 0x3C) = 0;
}
void sub_0805874C(void) {
    sub_0801A388();
}
void sub_08058758(s32 arg0, s32 arg1, s32 arg2) {
    sub_08073E2C(arg0 << 8, arg1 << 8, arg2, 1);
}
void sub_08058768(s32 arg0, s32 arg1, s32 arg2) {
    sub_08073E2C(arg0 << 8, arg1 << 8, arg2, 0);
}
void sub_08058778(void) {
    sub_0805C7B8();
}
s32 sub_08058784(void) {
    return sub_0805CDF8();
}
