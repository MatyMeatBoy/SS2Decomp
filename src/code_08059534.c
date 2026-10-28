#include "global.h"

void sub_08059534(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013C);
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
void sub_080595E0(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013D);
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
void sub_0805968C(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013E);
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
void sub_08059738(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014013F);
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
void sub_080597E4(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140140);
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
void sub_08059890(void)
{
    struct Scroll { u8 pad[0x80]; s16 y; s16 x; };
    s32 step = 2;
    s32 y = ((struct Scroll *)&gUnk_03003170)->y;
    s32 x = ((struct Scroll *)&gUnk_03003170)->x;
    s32 i;
    s32 first;
    s32 second;
    s16 targetY = 0;
    s16 targetX = -50;
    for (i = 0; i <= 0x400; i += step) {
        sub_080659F4(&first, y, targetY, i);
        sub_080659F4(&second, x, targetX, i);
        ((void (*)(s32, s32))sub_0800BB80)((s16)first, (s16)second);
        sub_080003F0();
    }
}
void sub_0805990C(u32 bit)
{
    struct StateA { u8 pad[0x1C3]; u8 flags[12]; };
    struct StateB { u8 pad[0x1B7]; u8 flags[12]; };
    u32 index = bit >> 3;
    bit &= 7;
    if (sub_0800CE30())
        ((struct StateA *)gUnk_03005CF4)->flags[index] |= 1 << bit;
    else
        ((struct StateB *)gUnk_03005CF4)->flags[index] |= 1 << bit;
}
void sub_08059954(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) | (1 << arg0));
}
void sub_08059968(u32 bit)
{
    struct StateA { u8 pad[0x1C3]; u8 flags[12]; };
    struct StateB { u8 pad[0x1B7]; u8 flags[12]; };
    u32 index = bit >> 3;
    bit &= 7;
    if (sub_0800CE30())
        ((struct StateA *)gUnk_03005CF4)->flags[index] &= ~(1 << bit);
    else
        ((struct StateB *)gUnk_03005CF4)->flags[index] &= ~(1 << bit);
}
void sub_080599B0(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x38) & ~(1 << arg0));
}
void sub_080599C4(s32 arg0) {
    M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) = (s32) (M2C_FIELD(gUnk_03005CF4, s32 *, 0x6C) | (1 << arg0));
}
void sub_080599D8(u32 index)
{
    u32 bit = index - 1;
    u32 mask;
    if (sub_0800CE30())
        mask = *(u32 *)(gUnk_03005CF4 + 0x80) & (1 << bit);
    else
        mask = *(u32 *)(gUnk_03005CF4 + 0x78) & (1 << bit);
    if (mask == 0) {
        bit = index - 1;
        if (sub_0800CE30())
            *(u32 *)(gUnk_03005CF4 + 0x80) |= 1 << bit;
        else
            *(u32 *)(gUnk_03005CF4 + 0x78) |= 1 << bit;
    }
}
void sub_08059A40(s32 count)
{
    u16 i;
    u16 wait;
    for (i = 1; i < count; i++) {
        ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
        sub_0800D0F4();
        for (wait = 1; wait != 0; wait--) {
            sub_080003F0();
            if (sub_080021A8()) break;
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
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140217);
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
void sub_08059B84(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140218);
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
void sub_08059C38(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140219);
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
void sub_08059CEC(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014021A);
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
void sub_08059DA0(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014021B);
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
void sub_08059E54(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014017F);
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
void sub_08059F08(u32 arg0)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x00140180);
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
void sub_08059FBC(void)
{
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
void sub_0805A004(u32 mode)
{
    switch (mode) {
    case 0: sub_08028AAC(6, 0x80, 0x58, 0); break;
    case 1:
        sub_08028AAC(7, 0x80, 0x58, 0);
        { u32 *flags = (u32 *)((u8 *)gGameState + 0x38);
          register u32 mask asm("r1") = 0x10;
          *flags |= mask; }
        break;
    }
}
void sub_0805A040(void) {
    sub_08028AAC(8, 0x38, 0x30, 0);
}
void sub_0805A054(u32 state)
{
    u16 wait;
    register u32 coordinate asm("r5") = 0x270F;
again:
    sub_08028AAC(state, coordinate, coordinate, 0);
    wait = 1;
    goto test;
countdown:
    wait--;
    if (wait == 0) goto again;
test:
    sub_080003F0();
    if (sub_080021A8() == 0) goto countdown;
    goto again;
}
void sub_0805A088(u32 arg)
{
    u32 pos[2];
    u32 result;
    u32 packed;
    u8 *entry;
    result = 0;
    pos[0] = 0xB700;
    pos[1] = 0xE100;
    packed = 0x0028000A;
    entry = (u8 *)&((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    while (sub_08021FE0(entry + 0x8C, pos, &result, &packed) == 0)
        sub_080003F0();
    sub_08068070((u32)sub_0804BC38, arg);
}
void sub_0805A0EC(u32 owner)
{
    extern u8 * volatile mapObjects asm("gUnk_030034E0");
    u32 remaining;
    u32 i;
    register u32 zero asm("r5");
    register u8 * volatile *map asm("r6");
    if (sub_080020F4() != owner) return;
    remaining = 1;
    i = 0;
    map = &mapObjects;
    zero = 0;
loop:
    {
        register u8 *base asm("r0") = *map;
        u8 *slot = base + i * 16;
        register u32 offset asm("r0") = 0x150;
        u16 *status = (u16 *)(slot + offset);
        if (*status == 1) {
            offset = 0x152;
            slot += offset;
            if (*(u16 *)slot == 0x22) {
                remaining--;
                *status = zero;
                *(u16 *)slot = zero;
                if (remaining == 0) goto done;
            }
        }
    }
    i++;
    if (i <= 0x18) goto loop;
done:
    return;
}
void sub_0805A138(u32 mode)
{
    switch (mode) {
    case 0:
        sub_08068820((u32)sub_0805A138, 1, 1);
        break;
    case 1:
        if ((gUnk_030027D0 & 0x20) == 0)
            sub_08006D08(0x17B);
        sub_08028AAC(7, 0x270F, 0x270F, 0);
        { u32 *flags = (u32 *)((u8 *)gGameState + 0x38);
          register u32 mask asm("r1") = 8;
          *flags |= mask; }
        break;
    }
}
void sub_0805A194(s32 arg0)
{
 do { loop_1: sub_08028D98(arg0, 0, -1, 3); sub_08028D98(arg0, 0, 1, 3); goto loop_1; } while (0);
}
void sub_0805A1B4(void)
{
    u32 result;
    ((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()].flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    result = sub_0805DF38(1, 0xF, 2, 0, -1, 0x0014022A);
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
    sub_08028D98(1, 0xF0, 0, 0x190);
}
void sub_0805A2B8(void) {
    sub_08028AAC(8, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
void sub_0805A2E4(void)
{
    register u8 *field asm("r1");
    u32 old;
    register u32 mask asm("r0");
    if (sub_0800CE30()) field = (u8 *)gGameState + 0x1C4;
    else field = (u8 *)gGameState + 0x1B8;
    old = *field;
    mask = 0x10;
    mask |= old;
    *field = mask;
}
u32 sub_0805A318(void)
{
    struct PlayerKinds { u8 pad[0x64]; u16 kind; u8 tail[0xE6]; };
    u32 count = sub_08002164();
    u32 i;
    for (i = 0; i < count; i++) {
        u16 kind = ((struct PlayerKinds *)gUnk_03003CE0)[i].kind;
        if (kind == 6 || kind == 8) return 1;
    }
    return 0;
}
void sub_0805A350(void)
{
    u8 *field;
    u32 old;
    register u32 mask asm("r0");
    if (sub_0800CE30()) field = (u8 *)gGameState + 0x1C6;
    else field = (u8 *)gGameState + 0x1BA;
    old = *field;
    mask = 1;
    mask |= old;
    *field = mask;
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
void sub_0805A43C(u8 value)
{
    u32 offset;
    u8 *base;
    if (sub_0800CE30() != 0) {
        base = (u8 *)gGameState;
        offset = 0x1C1;
    } else {
        base = (u8 *)gGameState;
        offset = 0x1B5;
    }
    base[offset] = value;
}
void sub_0805A474(s32 arg0) {
    sub_08028AAC(arg0, 0x270F, 0x270F, 0);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x23U);
    }
}
struct GameState22 { u8 pad0[0x22]; u16 arr22[1]; };
u16 sub_0805A4A0(u16 index)
{
    return ((struct GameState22 *)gUnk_03005CF4)->arr22[index] - 1;
}
void sub_0805A4BC(u32 arg)
{
    u32 mem;
    register u8 *base asm("r0");
    register u8 **owner asm("r4") = (u8 **)&gUnk_03005CF4;
    if (sub_08000470((u32)*owner + 0x6F4) != 0) return;
    goto allocate;
retry:
    sub_080003F0();
allocate:
    {
        register u32 slotOffset asm("r2");
        mem = sub_08001494(0xC00);
        slotOffset = 0x714;
        *(u32 *)(*owner + slotOffset) = mem;
    }
    if (mem == 0) goto retry;
    base = (u8 *)gGameState;
    *(u32 *)(base + 0x700) = (u32)sub_08027C1C;
    *(u32 *)(base + 0x704) = *(u32 *)(base + 0x714) + 0xBFC;
    *(u32 *)(base + 0x6FC) = 0x46;
    *(u32 *)(base + 0x718) = 0;
    sub_08000274((u32)(base + 0x6F4), arg);
}
void sub_0805A550(s16 *item, u32 index)
{
    struct SlotArray { u8 pad[0x724]; s16 *items[1]; };
    if (*item == 0) return;
    ((struct SlotArray *)gGameState)->items[index] = item;
    sub_08023ED8(item, index);
    (*(u16 *)((u8 *)gGameState + 0xA))++;
}
void *sub_0805A58C(u32 arg0, u32 callback)
{
    u32 i;
    u32 mem;
    register u8 *base asm("r1") = (u8 *)gGameState;
    register u32 offset asm("r2") = 0xE34;
    u8 *entry = base + offset;
    i = 0;
    goto search;
next:
    i++;
    entry += 0x28;
search:
    if (i > 0x1D) goto done;
    if (sub_08000470((u32)entry) != 0) goto next;
    {
            gGameState->flags |= 0x80;
            goto allocate;
retry:
            sub_080003F0();
allocate:
            {
                mem = sub_08001494(0x400);
                *(u32 *)(entry + 0x20) = mem;
            }
            if (mem == 0) goto retry;
            *(u32 *)(entry + 8) = 0x3C;
            *(u32 *)(entry + 0xC) = callback;
            *(u32 *)(entry + 0x10) = mem + 0x3FC;
            *(u32 *)(entry + 0x24) = (u32)sub_0805A704;
            sub_08000274((u32)entry, arg0);
            return entry;
    }
done:
    ;
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
