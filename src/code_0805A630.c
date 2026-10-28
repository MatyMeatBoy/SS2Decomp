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
void sub_0805A66C(void)
{
    u32 i = 0;
    struct GameState **owner = &gGameState;
    u32 offset = 0x1834;
    for (; i <= 0x1F; offset += 0x28, i++)
        if (sub_08000470((u32)*owner + offset)) sub_080003A8((u32)*owner + offset);
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
    gGameState->flags |= 0x80;
}
void sub_0805A704(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFF7F & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
u32 sub_0805A71C(u32 key, u16 value)
{
    extern u32 activeSlots asm("gUnk_03005CFC");
    extern u8 slotRecords[] asm("gUnk_03005D00");
    register u32 i asm("r1") = 0;
    register u32 flags asm("r5") = activeSlots;
    register u32 result asm("r4") = 0x40000;
    register u32 offset asm("r3") = 0;
loop:
    if (flags & (1u << i)) {
        register u32 base asm("r2") = (u32)slotRecords;
        register u32 address asm("r0");
        address = offset + base;
        if (*(u32 *)address != key) goto next;
        address = base + 4;
        address = offset + address;
        if (*(u32 *)address != value) goto next;
        address = base + 8;
        address = offset + address;
        if (*(u32 *)address != 0) return result >> 16;
    }
next:
    result += 0x10000;
    offset += 12;
    i++;
    if (i <= 2) goto loop;
    return 0xFFFF;
}
void sub_0805A780(void *target)
{
    u8 *base = (u8 *)gGameState;
    u8 *entry = base + 0x7A4;
    u32 i;
    for (i = 0; i <= 0xE; i++, entry += 0x70) {
        if (entry + 0x48 == (u8 *)target) {
            sub_08028498(*(u16 *)(entry + 0x40));
            *(u32 *)((u8 *)gGameState + 0x54) &= ~(1u << i);
        }
    }
}
u32 sub_0805A7C4(u32 id, u32 x, u32 y)
{
    u32 i;
    u32 mem;
    register u32 one asm("r3");
    register u8 *base asm("r0") = (u8 *)gGameState;
    register u32 offset asm("r1") = 0x7A4;
    u8 *entry = base + offset;
    u8 *task;
    register u8 *owner asm("r2");
    i = 0;
    offset += 0x48;
    task = base + offset;
    goto search;
next:
    i++; entry += 0x70; task = entry + 0x48;
search:
    if (i > 0xE) return 0;
    if (sub_08000470((u32)task) != 0) goto next;
    owner = (u8 *)gGameState;
    one = 1;
    *(u32 *)(owner + 0x54) |= one << i;
    *(u32 *)entry = *(u32 *)(owner + 0x4C);
    (*(u32 *)(owner + 0x4C))++;
    *(u32 *)(entry + 4) = id;
    *(u32 *)(entry + 0x3C) = one;
    *(u32 *)(entry + 8) = x << 8;
    *(u32 *)(entry + 0xC) = y << 8;
    *(u32 *)(entry + 0x50) = 0x3C;
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x68) = mem;
    *(u32 *)(entry + 0x54) = (u32)sub_080284F4;
    *(u32 *)(entry + 0x58) = mem + 0x3FC;
    *(u32 *)(entry + 0x6C) = (u32)sub_0805A780;
    sub_08000274((u32)task, (u32)entry);
    return *(u32 *)entry;
}
void sub_0805A874(const u32 *args, u32 mode)
{
    extern u8 playerPositions[] asm("gUnk_03003D6C");
    u8 *state = playerPositions + sub_080020F4() * 0x14C;
    u32 data[4];
    u32 callback;
    u32 value;
    u32 x;
    u32 y;
    data[2] = 0;
    x = args[0]; y = args[1];
    data[0] = x; data[1] = y;
    data[3] = args[2];
    callback = args[3]; value = args[4];
    if (mode) {
        while (sub_08021FE0(state, data, &data[2], &data[3]) != 0)
            sub_080003F0();
    }
    while (sub_08021FE0(state, data, &data[2], &data[3]) == 0)
        sub_080003F0();
    sub_08057328(value, callback);
}
void *sub_0805A8F8(u32 arg0, u32 callback)
{
    u32 i;
    u32 mem;
    register u8 *base asm("r1") = (u8 *)gGameState;
    register u32 offset asm("r2") = 0x12E4;
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
            *(u32 *)(entry + 0x24) = 0;
            sub_08000274((u32)entry, arg0);
            return entry;
    }
done:
    ;
}
void *sub_0805A960(u32 value)
{
    u8 *entry = *(u8 **)0x03005CF4 + 0x7A4;
    u32 i;
    for (i=0; i<=0xE; i++, entry+=0x70)
        if (*(u32 *)entry == value) return entry;
    sub_080003F0();
    return 0;
}
void sub_0805A994(u32 index, u32 a, u32 b)
{
    u32 bit;
    u8 *entry;
    if (index == 0)
        return;
    index--;
    {
        register u32 *flags asm("r2") = (u32 *)&gUnk_030056FC;
        bit = 1u << index;
        if ((*flags & bit) == 0) {
            u32 *savedFlags = flags;
            u32 savedBit = bit;
            do { sub_080003F0(); } while ((*savedFlags & savedBit) == 0);
        }
    }
    entry = (u8 *)gUnk_030056F4 + index * 0x2E0;
    *(u32 *)(entry + 0x38) = a;
    *(u32 *)(entry + 0x3C) = b;
    *(u32 *)(entry + 0x30) = 0;
    *(u32 *)(entry + 0x34) = 0;
}
void sub_0805A9F4(u32 packed)
{
    register u32 value asm("r2") = packed;
    register u32 frames asm("r5") = value >> 16;
    register u32 previous asm("r4");
    register u32 saved asm("r6");
    register u32 wait asm("r4");
    register u32 next asm("r0");
    value &= 0xFF;
    previous = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0) sub_08006CB4(value);
    saved = previous;
    wait = frames;
    goto test;
countdown:
    next = (wait - 1) << 16;
    wait = next >> 16;
test:
    if (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) goto countdown;
    }
    if (sub_0800CC98() == 0) {
        gUnk_03005CF8 = saved;
        if ((gUnk_030027D0 & 0x20) == 0)
            ((void (*)(u32))sub_08006CB4)(saved);
    }
}
void sub_0805AA68(u32 packed)
{
    u32 value = packed;
    u32 frames = value >> 16;
    u16 wait;
    value &= 0xFF;
    wait = frames;
    goto test;
countdown:
    wait--;
test:
    if (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) goto countdown;
    }
    if (sub_0800CC98() == 0) {
        gUnk_03005CF8 = value;
        if ((gUnk_030027D0 & 0x20) == 0)
            ((void (*)(u32))sub_08006CB4)(value);
    }
}
void sub_0805AAB8(u32 packed)
{
    register u32 value asm("r2") = packed;
    u16 frames = value >> 16;
    u32 previous;
    u32 saved;
    u16 wait;
    value &= 0xFF;
    previous = gUnk_03005CF8;
    gUnk_03005CF8 = value;
    if ((gUnk_030027D0 & 0x20) == 0) sub_08006CB4(value);
    saved = previous;
    wait = frames;
    goto test;
countdown:
    wait--;
test:
    if (wait != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) goto countdown;
    }
    if (sub_0800CC98() == 0)
        sub_0800A34C(gUnk_03003170.curLevel, saved, 1);
}
#ifdef NONMATCHING
u32 sub_0805AB20(u8 *arg)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    u8 *item = arg;
    u32 type = *(u16 *)item;
    register u8 **owner asm("r12") = &mapItems;
    register s32 previous asm("r6");
    register s32 selected asm("r3");
    register s32 result asm("r1");
    register s32 best asm("r4");
    register s32 i asm("r2");
    register u8 *entry asm("r1");
    register s32 cap asm("r5");
    register u32 offset asm("r0");
    u32 sum;
    if (type != 0xA) goto empty;
    previous = -1;
    goto find;
merge:
    previous = result;
    if (result > 0x18) goto empty;
    offset = result * 0x10;
    i = 0x150;
    offset += i;
    selected = (u32)owner;
    entry = *(u8 **)selected;
    entry += offset;
    *(u16 *)entry = 0xA;
    sum = *(u32 *)(entry + 4) + *(u32 *)(item + 4);
    if (sum <= 100000) goto stacked;
    *(u32 *)(entry + 4) = 100000;
    i = sum - 100000;
    *(u32 *)(item + 4) = i;
find:
    selected = previous;
    if (previous < 0) selected = 0;
    offset = selected * 0x10;
    i = 0x150;
    offset += i;
    i = (u32)owner;
    entry = *(u8 **)i;
    entry += offset;
    best = -1;
    i = selected;
    if (selected <= 0x18) do {
        cap = 100000;
        if (*(u16 *)entry == 0xA) {
            s32 value = *(s32 *)(entry + 4);
            if (best < value && value != cap) {
                selected = i;
                best = value;
            }
        }
        i++;
        entry += 0x10;
    } while (i <= 0x18);
    result = selected;
    if (best < 0) result = -1;
    if (previous != result && result >= 0) goto merge;
empty:
    i = 0;
    offset = (u32)mapItems;
    selected = 0x150;
    entry = (u8 *)offset + selected;
    do {
        if (*(u16 *)entry == 0) goto found;
        entry += 0x10;
        i++;
    } while ((u32)i <= 0x18);
    result = -1;
    goto check;
found:
    result = i;
check:
    if (result == -1) return 0;
    goto insert;
stacked:
    *(u32 *)(entry + 4) = sum;
    goto success;
insert:
    sub_0805CFF8((u8)result, (const u32 *)item);
success:
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AB20);
#endif
#ifdef NONMATCHING
u32 sub_0805AC08(u8 *item)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    s32 previous;
    s32 selected;
    s32 best;
    s32 i;
    s32 limit;
    u8 *entry;
    u32 sum;
    if (*(u16 *)item != 0xA) goto empty;
    previous = -1;
    goto find;
merge:
    previous = selected;
    limit = *(u16 *)(mapItems + 0x6A) * 15;
    if (limit > 0x18) goto empty;
    entry = mapItems + selected * 0x10 + 0x2E0;
    *(u16 *)entry = 0xA;
    sum = *(u32 *)(entry + 4) + *(u32 *)(item + 4);
    if (sum <= 100000) {
        *(u32 *)(entry + 4) = sum;
        return 1;
    }
    *(u32 *)(entry + 4) = 100000;
    *(u32 *)(item + 4) = sum - 100000;
    if (selected >= *(u16 *)(mapItems + 0x6A) * 15) goto empty;
find:
    selected = previous;
    if (previous < 0) selected = 0;
    entry = mapItems + selected * 0x10 + 0x2E0;
    best = -1;
    limit = *(u16 *)(mapItems + 0x6A) * 15;
    for (i = selected; i < limit; i++, entry += 0x10) {
        if (*(u16 *)entry == 0xA && best < *(s32 *)(entry + 4) && *(s32 *)(entry + 4) != 100000) {
            selected = i;
            best = *(s32 *)(entry + 4);
        }
    }
    if (best < 0) selected = -1;
    if (previous != selected && selected >= 0) goto merge;
empty:
    entry = mapItems + 0x2E0;
    for (i = 0; i <= 0x18; i++, entry += 0x10)
        if (*(u16 *)entry == 0) goto found;
    return 0;
found:
    sub_0805D028((u8)i, (const u32 *)item);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AC08);
#endif
u32 sub_0805AD18(void)
{
    extern u8 *mapObjects asm("gUnk_030034E0");
    u8 *state = (u8 *)&((struct PlayerW12 *)gUnk_03003CE0)[sub_080020F4()];
    register u32 id asm("r0");
    if (*(u16 *)(state + 0xC) != *(u16 *)(state + 0x64)) {
        id = *(u16 *)(*(u32 *)(state + 0x138) + 0x28);
    } else {
        u8 *entry = mapObjects + *(u16 *)(mapObjects + 0x68) * 0x10;
        if (*(u8 *)(entry + 0x79) == 0)
            return 0;
        id = *(u16 *)(entry + 0x72);
    }
    id |= 0xB0000;
    return sub_08007290(id);
}
s32 impl_0805AD78(u32 index) asm("sub_0805AD78");
s32 impl_0805AD78(u32 index)
{
    extern u8 *mapItems asm("gUnk_030034E0");
    u32 i = 0;
    u8 *item;
    u32 offset;
    u32 valid;
    u8 *players = (u8 *)gUnk_03003CE0;
    register u8 *states asm("r0");
    register u32 player asm("r0");
    register u8 *playerBase asm("r1");
    u8 **owner;
    u8 *table;
    for (; i < players[sub_080020F4() * 0x14C + 0x77]; i++) {
        register u8 *slot asm("r1") = mapItems;
        slot = slot + i * 0x10;
        slot += 0x79;
        *slot = 0;
    }
    owner = &mapItems;
    table = *owner;
    offset = index * 0x10;
    item = table + offset;
    if (*(u16 *)(item + 0x70) == 2) {
        valid = sub_0805AE34(table + (offset + 0x70));
        if (valid) {
            u8 *resource;
            register u8 *slot asm("r0") = *owner;
            slot += offset;
            slot += 0x79;
            *slot = 1;
            resource = (u8 *)sub_08007290(*(u16 *)(mapItems + offset + 0x72) | 0xB0000);
            player = sub_080020F4();
            playerBase = (u8 *)gUnk_03003CE0;
            player *= 0x14C;
            states = (u8 *)player + (u32)playerBase;
            *(u16 *)(states + 0x10) = resource[0x9B];
        } else {
            player = sub_080020F4();
            playerBase = (u8 *)gUnk_03003CE0;
            player *= 0x14C;
            states = (u8 *)player + (u32)playerBase;
            *(u16 *)(states + 0x10) = valid;
        }
    } else {
        player = sub_080020F4();
        playerBase = (u8 *)gUnk_03003CE0;
        player *= 0x14C;
        states = (u8 *)player + (u32)playerBase;
        *(u16 *)(states + 0x10) = 0;
    }
    return sub_08065DAC();
}
u32 sub_0805AE34(const u8 *item)
{
    u8 *resource;
    u32 state;
    u32 raw;
    u32 needed;
    register u8 *kind asm("r1");
    if (item == 0 || *(u16 *)item != 2 || item[8] != 0) goto reject;
    resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB0000);
    state = sub_0801DE60();
    if (((*(u16 *)(resource + 0xAE) >> (u8)state) & 1) == 0) goto reject;
    kind = resource + 0x9B;
    if (*kind == 9) goto accept;
    resource += 0xAC;
    raw = sub_0801D028();
    needed = *(u16 *)resource;
    if (needed > (u16)raw) goto reject;
accept:
    return 1;
reject:
    return 0;
}
#ifdef NONMATCHING
u32 sub_0805AE94(u8 *item)
{
    extern u32 priceLevels[] asm("gUnk_084B24B0");
    extern u32 priceQualities[] asm("gUnk_084B2504");
    u32 flag = 0;
    u32 value = 0;
    u32 level = 0;
    u32 quality = 0;
    u32 multiplier = 10;
    register u32 id asm("r0");
    register u32 category asm("r1");
    register u32 q0 asm("r0");
    register u32 q2 asm("r2");
    u32 result;
    u8 *resource;
    switch (*(u16 *)item) {
    case 1:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0x100000);
        value = *(u32 *)(resource + 0x9C);
        break;
    case 2:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB0000);
        value = *(u32 *)(resource + 0xA0);
        flag = item[8]; level = item[6]; q0 = item[7]; quality = q0;
        goto modifier;
    case 3:
        id = *(u16 *)(item + 2);
        category = 0xC0000;
        goto shared;
    case 4:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xD0000);
        value = *(u32 *)(resource + 0x9C);
        flag = item[8]; level = item[6]; q0 = item[7]; quality = q0;
        goto modifier;
    case 7:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0x110000);
        value = *(u32 *)(resource + 0x9C);
        flag = 0; level = 0;
        break;
    case 5:
        id = *(u16 *)(item + 2);
        category = 0xE0000;
shared:
        id |= category;
        resource = (u8 *)sub_08007290(id);
        value = *(u32 *)(resource + 0x9C);
        flag = item[8]; level = item[6]; q2 = item[7]; quality = q2;
modifier:
        if (*(u16 *)(item + 4) != 0) {
            resource = (u8 *)sub_08007290((*(u16 *)(item + 4) - 1) | 0x130000);
            multiplier = *(u16 *)(resource + 0x9C);
        }
        break;
    case 6:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xF0000);
        value = *(u32 *)(resource + 0x9C);
        flag = 0; level = 0; q0 = 0; quality = q0;
        break;
    case 9:
        sub_08007290(*(u16 *)(item + 2) | 0x150000);
        switch (*(u16 *)(item + 2)) {
        case 0: value = *(u16 *)(item + 4) * 100; break;
        case 1: value = *(u16 *)(item + 4) * 250; break;
        case 2: value = *(u16 *)(item + 4) * 200; break;
        case 3: value = *(u16 *)(item + 4) * 10; break;
        case 4: value = *(u16 *)(item + 4) * 20; break;
        }
        break;
    case 10:
        value = *(u32 *)(item + 4);
        break;
    case 8:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0x120000);
        value = *(u16 *)(resource + 0x9C);
        break;
    }
    if (flag != 0) goto one;
    {
        value = value * multiplier / 10;
        value = value * priceLevels[level] / 10;
        value = value * priceQualities[quality] / 10;
        result = value;
        goto done;
    }
one:
    result = 1;
done:
    return result;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805AE94);
#endif
u32 sub_0805B068(const u8 *item)
{
    u32 divisor;
    u32 value = 0;
    register u32 id asm("r0");
    register u32 category asm("r1");
    u8 *resource;
    switch (*(u16 *)item) {
    case 2:
        resource = (u8 *)sub_08007290(*(u16 *)(item + 2) | 0xB0000);
        value = *(u32 *)(resource + 0xA0);
        break;
    case 3:
        id = *(u16 *)(item + 2);
        category = 0xC0000;
        goto common;
    case 4:
        id = *(u16 *)(item + 2);
        category = 0xD0000;
        goto common;
    case 5:
        id = *(u16 *)(item + 2);
        category = 0xE0000;
common:
        id |= category;
        resource = (u8 *)sub_08007290(id);
        value = *(u32 *)(resource + 0x9C);
        break;
    }
    divisor = 10;
    while (sub_08057C34(divisor) == 0 && divisor > 1)
        divisor--;
    if (sub_0800CE30() != 0)
        return value >> 1;
    if (divisor > 5)
        divisor = 5;
    value = value * divisor / 10;
    return value;
}
u32 sub_0805B0F0(void)
{
    extern u8 *mapObjects asm("gUnk_030034E0");
    register u32 first asm("r3") = 0;
    register u32 i asm("r2") = 0;
    register u8 **map asm("r0");
    register u8 *base asm("r0");
    register u8 *entry asm("r1");
    register u32 firstOffset asm("r4");
    register u32 second asm("r4");
    register u32 secondOffset asm("r5");
    map = &mapObjects;
    base = *map;
    firstOffset = 0x150;
    entry = base + firstOffset;
    do {
        if (*(u16 *)entry == 0xA) first += *(u32 *)(entry + 4);
        entry += 0x10; i++;
    } while (i <= 0x18);
    second = 0;
    i = 0;
    map = &mapObjects;
    base = *map;
    secondOffset = 0x2E0;
    entry = base + secondOffset;
    do {
        if (*(u16 *)entry == 0xA) second += *(u32 *)(entry + 4);
        entry += 0x10; i++;
    } while (i <= 0x4A);
    first += second;
    return first;
}
void impl_0805B140(void) asm("sub_0805B140");
void impl_0805B140(void)
{
    extern u8 *slotsMemory asm("gUnk_03005D58");
    extern u8 *secondaryTasks asm("gUnk_03005D60");
    u8 *entry;
    u32 i;
    goto test;
loop:
    if (sub_0800CD34() != 0) goto yield;
    if (sub_0800CC98() != 0) goto yield;
    if (sub_0800CD8C() != 0) goto yield;
    entry = slotsMemory;
    for (i = 0; i <= 15; i++, entry += 0x20) {
        register u32 flags asm("r1") = *(u16 *)(entry + 0xA);
        register u32 active asm("r0") = 1;
        u8 *payload;
        active &= flags;
        payload = entry + 0x10;
        if (active) {
            if (sub_0800CCCC() != 0) {
                register u32 masked asm("r1");
                register u8 *current asm("r0");
                if ((*(u16 *)(entry + 8) >> 5) != 0) {
                    masked = *(u16 *)(entry + 8) & ~0x20;
                    current = (u8 *)&gUnk_03003170;
                    current += 0x90;
                    if (masked == *(u16 *)current)
                        sub_0805FC80(*(u32 *)entry, *(u32 *)(entry + 4), payload, 1);
                }
            } else if ((*(u16 *)(entry + 8) >> 5) == 0)
                sub_0805FC80(*(u32 *)entry, *(u32 *)(entry + 4), payload, 1);
        }
    }
yield:
    sub_080003F0();
test:
    if (sub_0800CB78() == 0) goto loop;
    sub_08001538(slotsMemory);
    slotsMemory = 0;
    for (i = 0; i <= 5; i++)
        while (sub_08000470((u32)(secondaryTasks + i * 0x28)) != 0)
            sub_080003F0();
    sub_08001538(secondaryTasks);
}
void sub_0805B21C(void)
{
    extern u8 *slotsMemory asm("gUnk_03005D58");
    extern u32 secondaryMemory asm("gUnk_03005D60");
    extern u8 *smallBuffer asm("gUnk_03000124");
    extern u16 allocationCount asm("gUnk_03005D5C");
    extern u8 slotTask[] asm("gUnk_03005D30");
    u32 i;
    u8 *entry;
    u8 *task;
    u16 zero;
    register u16 *zeroPtr asm("r6");
    u32 zeroValue;
    slotsMemory = sub_08001494(0x200);
    secondaryMemory = (u32)sub_08001494(0xF0);
    entry = slotsMemory;
    i = 0;
    zeroPtr = &zero;
    zeroValue = 0;
    for (; i <= 15; i++, entry += 0x20) {
        *zeroPtr = zeroValue;
        CpuSet(&zero, entry, 0x01000010);
    }
    smallBuffer = sub_08001494(0x1B9);
    for (i = 0; i <= 0x1B8; i++)
        smallBuffer[i] = 0;
    allocationCount = 1;
    task = slotTask;
    *(u32 *)(task + 0xC) = (u32)sub_0805B140;
    *(u32 *)(task + 0x20) = (u32)sub_08001494(0x400);
    *(u32 *)(task + 0x10) = *(u32 *)(task + 0x20) + 0x3FC;
    *(u32 *)(task + 8) = 0x41;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274((u32)task);
}
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B2C4);
#ifdef NONMATCHING
void sub_0805B4CC(s32 *x, s32 *y)
{
    extern u8 *slotsMemory asm("gUnk_03005D58");
    extern u8 *freeGrid asm("gUnk_03000124");
    s32 column = 0;
    s32 row;
    s32 nextColumn;
    s32 nextRow;
    s32 testX;
    s32 testY;
    s32 radius;
    s32 first;
    s32 gridOffset;
    do {
        testX = *x + ((column - 10) << 10);
        row = 0;
        nextColumn = column + 1;
        do {
            u32 collision;
            testY = *y + ((row - 10) << 10);
            collision = sub_0800AE50(testX, testY, 0) & 7;
            nextRow = row + 1;
            if (collision == 0) {
                u8 *entry = slotsMemory;
                u32 i = 0;
                do {
                    if (*(u16 *)(entry + 0xA) & 1) {
                        s32 dx = (testX - *(s32 *)entry) >> 8;
                        s32 dy;
                        if (dx < 0) dx = -dx;
                        dy = (testY - *(s32 *)(entry + 4)) >> 8;
                        if (dy < 0) dy = -dy;
                        if (dx <= 7 && dy <= 7 && *(u16 *)(entry + 8) == 0) goto occupied;
                    }
                    i++;
                    entry += 0x20;
                } while (i <= 15);
                entry = 0;
occupied:
                if (entry == 0) freeGrid[row * 21 + column] = 1;
                else goto blocked;
            } else {
blocked:
                freeGrid[row * 21 + column] = 0;
            }
            row = nextRow;
        } while (row <= 20);
        column = nextColumn;
    } while (column <= 20);
    radius = 0;
    gridOffset = 0;
    do {
        first = -radius;
        for (column = first; column < radius; column++) {
            testX = *x + (column << 10);
            if (first < radius) {
                s32 offset = gridOffset + column;
                row = first;
                do {
                    testY = *y + (row << 10);
                    if (freeGrid[offset + 0xDC] != 0) {
                        *x = testX;
                        *y = testY;
                        return;
                    }
                    offset += 21;
                    row++;
                } while (row < radius);
            }
        }
        gridOffset -= 21;
        radius++;
    } while (radius <= 9);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B4CC);
#endif
struct Slot60 { u8 pad[10]; u16 flags; u16 age; u8 tail[18]; };
extern struct Slot60 *slots60 asm("gUnk_03005D58");
void *sub_0805B618(void)
{
    u16 temp;
    register u32 lowest asm("r2");
    register u32 lowestIndex asm("r3");
    register u32 i asm("r5");
    register u32 active asm("r6");
    register struct Slot60 *slot asm("r4");
    register struct Slot60 **owner asm("r1") = &slots60;
    register u32 initial asm("r0");
    slot = *owner;
    initial = 0x11170;
    lowest = initial;
    lowestIndex = initial;
    active = 0;
    i = 0;
    do {
        if (1 & slot->flags) {
            active++;
            temp = slot->age;
            if ((u32)temp < lowest) {
                lowest = temp;
                lowestIndex = i;
            }
        }
        i++;
        slot++;
    } while (i <= 15);
    if (active > 15) {
        register u32 address asm("r0");
        slot = slots60;
        address = lowestIndex << 5;
        address += (u32)slot;
        *(u16 *)(address + 10) = 0;
    }
    {
        struct Slot60 *second = slots60;
        u32 j;
        register u32 hint asm("r5");
        for (j = 0; j <= 15; j = hint + 1, second++) {
            hint = j;
            if (!(second->flags & 3)) return second;
        }
        return 0;
    }
}









INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805B688);
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805BD5C);
#ifdef NONMATCHING
extern u8 gUnk_08477F3C[];
extern u8 gUnk_08478044[];
extern u8 gUnk_08478158[];
extern u8 gUnk_08478220[];
extern u8 gUnk_084782F4[];
extern u8 gUnk_08478310[];
extern u8 gUnk_08478338[];
extern u8 gUnk_08478378[];

s32 sub_0805C208(void *arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    u8 *var_r5;
    u8 *var_r5_4;
    s32 temp_r0_2;
    s32 var_r7;
    s32 var_r8;
    s32 var_r9;
    s32 var_sl;
    s8 var_r1;
    u8 *var_r2;
    u8 *var_r2_2;
    u8 *var_r2_3;
    u8 *var_r2_4;
    u8 *var_r5_2;
    u8 *var_r5_3;
    u8 *var_r5_5;
    u16 temp_r0;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r1_5;
    u16 temp_r7;
    u16 var_r3;
    u16 var_r3_2;
    u16 var_r3_3;
    u32 temp_r1_3;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 temp_r2_3;
    u32 temp_r7_2;
    u32 temp_r7_3;
    u32 var_r0;
    u32 var_r4;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_4;
    u32 var_r4_5;
    u32 var_r4_6;
    u32 var_r4_7;

    /* Flowgraph is not reducible, falling back to gotos-only mode. */
    var_r9 = arg1;
    var_sl = 0;
    var_r7 = 0;
    var_r8 = 0;
    temp_r0 = M2C_FIELD(arg0, u16 *, 0x0);
    if (temp_r0 == 3) {
        goto block_25;
    }
    if ((s32) temp_r0 > 3) {
        goto block_4;
    }
    if (temp_r0 == 2) {
        goto block_7;
    }
    goto block_28;
block_4:
    if (temp_r0 == 4) {
        goto block_26;
    }
    if (temp_r0 == 5) {
        goto block_23;
    }
    goto block_28;
block_7:
    temp_r0_2 = sub_08007290(M2C_FIELD(arg0, u16 *, 0x2) | 0xB0000);
    sp0 = temp_r0_2;
    if (M2C_FIELD(temp_r0_2, u8 *, 0x9B) != 9) {
        goto block_10;
    }
    var_r5 = gUnk_08478044;
    var_r0 = sub_080008C8();
    if ((u32) (0xF & var_r0) <= 7U) {
        goto block_15;
    }
    goto block_12;
block_10:
    var_r5 = gUnk_08477F3C;
    var_r0 = sub_080008C8();
    temp_r2 = var_r0 & 0xF;
    if (temp_r2 > 2U) {
        goto block_13;
    }
    var_r8 = 1;
    var_sl = 1;
block_12:
    var_r7 = 1;
    goto block_29;
block_13:
    if (temp_r2 > 7U) {
        goto block_19;
    }
    var_r0 = sub_080008C8();
    temp_r2_2 = var_r0 & 0xF;
    if (temp_r2_2 > 4U) {
        goto block_16;
    }
block_15:
    var_r7 = 1;
    var_r8 = 1;
    goto block_29;
block_16:
    if (temp_r2_2 > 0xAU) {
        goto block_18;
    }
    var_r8 = 1;
    var_sl = 1;
    goto block_29;
block_18:
    var_sl = 1;
    goto block_12;
block_19:
    var_r0 = sub_080008C8();
    temp_r2_3 = var_r0 & 0xF;
    if (temp_r2_3 > 4U) {
        goto block_21;
    }
    var_r8 = 1;
    goto block_29;
block_21:
    if (temp_r2_3 <= 9U) {
        goto block_12;
    }
    var_sl = 1;
    goto block_29;
block_23:
    var_r0 = (u32) sub_08007290(M2C_FIELD(arg0, u16 *, 0x2) | 0xE0000);
    sp4 = (s32) var_r0;
    var_r5 = gUnk_08478158;
    if (M2C_FIELD(var_r0, u8 *, 0xA0) == 0) {
        goto block_27;
    }
    var_r5 = gUnk_08478220;
    goto block_27;
block_25:
    var_r0 = (u32) sub_08007290(M2C_FIELD(arg0, u16 *, 0x2) | 0xC0000);
    spC = (s32) var_r0;
    var_r5 = gUnk_08478158;
    var_r8 = 0;
    goto block_29;
block_26:
    var_r0 = (u32) sub_08007290(M2C_FIELD(arg0, u16 *, 0x2) | 0xD0000);
    sp8 = (s32) var_r0;
    var_r5 = gUnk_08478158;
block_27:
    var_r8 = 0;
    goto block_29;
block_28:
    return 1;
block_29:
    temp_r1 = M2C_FIELD(arg0, u16 *, 0x0);
    if ((s32) temp_r1 > 5) {
        goto block_35;
    }
    if ((s32) temp_r1 < 3) {
        goto block_35;
    }
    var_r0 = sub_080008C8();
    if ((u32) (var_r0 & 0xF) > 7U) {
        goto block_34;
    }
    var_r0 = sub_080008C8();
    if ((u32) (var_r0 & 0xF) <= 7U) {
        goto block_36;
    }
    var_sl = 1;
    goto block_35;
block_34:
    var_r7 = 1;
    var_sl = 1;
block_35:
    if (var_r7 == 0) {
        goto block_42;
    }
block_36:
    temp_r7 = M2C_FIELD(var_r5, u16 *, 0x0);
    var_r0 = sub_080008C8() % (u16) M2C_FIELD(var_r5, u16 *, 0x2);
    var_r5_2 = var_r5 + 4;
    var_r4 = 0;
    if ((u32) temp_r7 <= 0U) {
        goto block_42;
    }
    var_r3 = M2C_FIELD(var_r5_2, u16 *, 0x2);
    if (var_r0 >= 0U) {
        goto block_40;
    }
loop_38:
    var_r4 += 1;
    temp_r1_2 = var_r3;
    var_r5_2 += 4;
    if (var_r4 >= (u32) temp_r7) {
        goto block_42;
    }
    var_r3 = M2C_FIELD(var_r5_2, u16 *, 0x2);
    if ((u32) temp_r1_2 > var_r0) {
        goto loop_38;
    }
block_40:
    if ((u32) var_r3 < var_r0) {
        goto loop_38;
    }
    M2C_FIELD(arg0, u16 *, 0x4) = (u16) *(u16 *)var_r5_2;
block_42:
    if (var_r8 == 0) {
        goto block_49;
    }
    temp_r7_2 = M2C_FIELD(gUnk_084782F4, u16 *, 0x0) + 1;
    var_r0 = sub_080008C8() % (u32) (M2C_FIELD(gUnk_084782F4, u16 *, 0x2) + 1);
    var_r5_3 = gUnk_084782F4 + 4;
    var_r4_2 = 0;
    if (temp_r7_2 <= 0U) {
        goto block_49;
    }
    var_r3_2 = M2C_FIELD(var_r5_3, u16 *, 0x2);
    if (var_r0 >= 0U) {
        goto block_47;
    }
loop_45:
    var_r4_2 += 1;
    temp_r1_3 = var_r3_2 + 1;
    var_r5_3 += 4;
    if (var_r4_2 >= temp_r7_2) {
        goto block_49;
    }
    var_r3_2 = M2C_FIELD(var_r5_3, u16 *, 0x2);
    if (temp_r1_3 > var_r0) {
        goto loop_45;
    }
block_47:
    if ((u32) var_r3_2 < var_r0) {
        goto loop_45;
    }
    M2C_FIELD(arg0, u8 *, 0x7) = (s8) *(u16 *)var_r5_3;
block_49:
    if (var_sl == 0) {
        goto block_60;
    }
    if (!(1 & var_r9)) {
        goto block_52;
    }
    var_r5_4 = gUnk_08478378;
    goto block_54;
block_52:
    var_r5_4 = gUnk_08478310;
    if (sub_0800CE30() == 0) {
        goto block_54;
    }
    var_r5_4 = gUnk_08478338;
block_54:
    temp_r7_3 = M2C_FIELD(var_r5_4, u16 *, 0x0) + 1;
    var_r0 = sub_080008C8() % (u32) (M2C_FIELD(var_r5_4, u16 *, 0x2) + 1);
    var_r5_5 = var_r5_4 + 4;
    var_r4_3 = 0;
    if (temp_r7_3 <= 0U) {
        goto block_60;
    }
    var_r3_3 = M2C_FIELD(var_r5_5, u16 *, 0x2);
    if (var_r0 >= 0U) {
        goto block_58;
    }
loop_56:
    var_r4_3 += 1;
    temp_r1_4 = var_r3_3 + 1;
    var_r5_5 += 4;
    if (var_r4_3 >= temp_r7_3) {
        goto block_60;
    }
    var_r3_3 = M2C_FIELD(var_r5_5, u16 *, 0x2);
    if (temp_r1_4 > var_r0) {
        goto loop_56;
    }
block_58:
    if ((u32) var_r3_3 < var_r0) {
        goto loop_56;
    }
    M2C_FIELD(arg0, u8 *, 0x6) = (s8) *(u16 *)var_r5_5;
block_60:
    temp_r1_5 = M2C_FIELD(arg0, u16 *, 0x0);
    if (temp_r1_5 == 3) {
        goto block_71;
    }
    if ((s32) temp_r1_5 > 3) {
        goto block_64;
    }
    if (temp_r1_5 == 2) {
        goto block_67;
    }
    goto block_84;
block_64:
    if (temp_r1_5 == 4) {
        goto block_75;
    }
    if (temp_r1_5 == 5) {
        goto block_81;
    }
    goto block_84;
block_67:
    var_r4_4 = 0;
    var_r2 = sp0 + 0xB0;
loop_68:
    if (*(u16 *)var_r2 != 0) {
        goto block_79;
    }
    var_r2 += 4;
    var_r4_4 += 1;
    if (var_r4_4 <= 2U) {
        goto loop_68;
    }
    goto block_84;
block_71:
    var_r4_5 = 0;
    var_r2_2 = spC + 0xA4;
loop_72:
    if (*(u16 *)var_r2_2 != 0) {
        goto block_80;
    }
    var_r2_2 += 4;
    var_r4_5 += 1;
    if (var_r4_5 <= 2U) {
        goto loop_72;
    }
    goto block_84;
block_75:
    var_r4_6 = 0;
    var_r2_3 = sp8 + 0xA4;
loop_76:
    if (*(u16 *)var_r2_3 != 0) {
        goto block_79;
    }
    var_r2_3 += 4;
    var_r4_6 += 1;
    if (var_r4_6 <= 2U) {
        goto loop_76;
    }
    goto block_84;
block_79:
    M2C_FIELD(arg0, u16 *, 0x4) = 0U;
    M2C_FIELD(arg0, u8 *, 0x6) = 0;
    M2C_FIELD(arg0, u8 *, 0x7) = 0;
    var_r9 = 1;
    goto block_84;
block_80:
    M2C_FIELD(arg0, u16 *, 0x4) = 0U;
    M2C_FIELD(arg0, u8 *, 0x6) = 0;
    M2C_FIELD(arg0, u8 *, 0x7) = 0;
    var_r9 = 1;
    goto block_84;
block_81:
    var_r4_7 = 0;
    var_r2_4 = sp4 + 0xA4;
loop_82:
    if (*(u16 *)var_r2_4 != 0) {
        goto block_80;
    }
    var_r2_4 += 4;
    var_r4_7 += 1;
    if (var_r4_7 <= 2U) {
        goto loop_82;
    }
block_84:
    if (M2C_FIELD(arg0, u32 *, 0x4) == 0) {
        goto block_88;
    }
    var_r1 = 1;
    if (!(var_r9 & 1)) {
        goto block_87;
    }
    var_r1 = 0;
block_87:
    M2C_FIELD(arg0, u8 *, 0x8) = var_r1;
block_88:
    return (s32) var_r0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C208);
#endif
#ifdef NONMATCHING
extern u8 lootTable60[] asm("gUnk_084E6DD8");
u32 sub_0805C4FC(u8 *out, u32 count, u32 category)
{
    u32 zero = 0;
    u16 seed;
    register u32 roll asm("r5");
    register u32 offset asm("r1");
    register u8 *base asm("r2");
    register u32 special asm("r8");
    register u32 scratch asm("r3");
    u16 *group;
    register u32 n asm("r7");
    u16 *entry;
    register u32 low asm("r2");
    register u32 i asm("r1");
    register u32 limit asm("r0");
    register u32 address asm("r0");
    register u16 type asm("r1");
    u32 random;
    u32 span;
    CpuSet(&zero, out, 0x05000004);
    if (count == 0) {
        *(u16 *)out = count;
        *(u16 *)(out + 2) = count;
        return 0;
    }
    count--;
    seed = (u16)sub_080008C8();
    roll = seed % 100U;
    base = lootTable60;
    address = count * 9;
    offset = address << 2;
    address = offset + (u32)base;
    address = *(u16 *)address;
    scratch = 0;
    special = scratch;
    if (address >= roll) special = 1;
    if (category == 8) category = 6;
    address = category << 2;
    address += offset;
    offset = (u32)(base + 4);
    address += offset;
    group = *(u16 **)address;
    n = group[0];
    roll = sub_080008C8();
    roll %= group[1] + 1U;
    entry = group + 4;
    low = 0;
    for (i = 0; i < n; entry += 4) {
        limit = entry[2];
        if (low <= roll && limit >= roll) {
            type = entry[0];
            *(u16 *)out = type;
            *(u16 *)(out + 2) = entry[1];
            if (type == 0xA) {
                *(u32 *)(out + 4) = roll;
                random = sub_080008C8();
                span = entry[1];
                roll = random % ((span * 15) / 10U);
                address = span / 2;
                if (roll < address) roll = address;
                *(u32 *)(out + 4) = roll;
            }
            break;
        }
        i++;
        low = limit + 1;
    }
    scratch = special;
    if (scratch) sub_0805C208(out, 0);
    if (*(u16 *)out == 9) {
        *(u16 *)(out + 4) = sub_080008C8() % 10U + gUnk_03003170.curLevel * 10;
        if (sub_0800CE30()) *(u16 *)(out + 4) += 100;
    }
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C4FC);
#endif
#ifdef NONMATCHING
u32 sub_0805C620(u8 *entity, u16 *out)
{
    u32 zero = 0;
    u8 *extra = entity + 0x204;
    u32 low = 0;
    u32 roll;
    u32 i;
    u32 offset;
    u16 *entry;
    u16 type;
    u32 limit;
    u32 chance;
    u32 mode;
    u16 category;
    u32 result;
    CpuSet(&zero, out, 0x05000004);
    roll = (u16)sub_080008C8();
    entry = (u16 *)(entity + 0x230);
    offset = 0;
    for (i = 0; i <= 2; i++, entry += 4, offset += 8) {
        type = entry[0];
        if (type != 0) {
            limit = *(u32 *)(extra + 0x30 + offset);
            if (low <= roll && limit >= roll) {
                out[0] = type;
                out[1] = entry[1];
                if (type == 9) out[2] = *(u32 *)(entity + 0x214);
                break;
            }
            low = (u16)(limit + 1);
        }
    }
    if (out[0] == 0) {
        roll = (u8)sub_080008C8();
        if (*(u16 *)(entity + 0x58) > 3) *(u16 *)(entity + 0x58) = 0;
        chance = *((u8 *)gUnk_03003CE0 + *(u16 *)(entity + 0x58) * 0x14C + 0x74);
        mode = sub_08002164();
        switch (mode) {
        case 1: chance = (u8)(chance + 0x10); break;
        case 2: chance = (u8)(chance + 0x15); break;
        case 3: chance = (u8)(chance + 0x1A); break;
        case 4: chance = (u8)(chance + 0x20); break;
        }
        if (chance <= roll) return 0;
        if (sub_0800CE30()) {
            category = *(u16 *)(entity + 0x78);
            if (category != 0) result = sub_0805C4FC(out, (u16)(category + 50), 0);
            else result = 0;
        } else result = sub_0805C4FC(out, *(u16 *)(entity + 0x78), 0);
        type = out[0];
        if (type == 9) out[2] = *(u32 *)(entity + 0x214);
        else if (type == 10) {
            if (!(entity[0x227] & 1)) {
                out[0] = 0;
                out[1] = 0;
                return 0;
            }
        } else if (type > 10) {
            out[0] = 0;
            return 0;
        }
        return result;
    }
    if (out[0] == 10 && !(entity[0x227] & 1)) {
        out[0] = 0;
        out[1] = 0;
        return 0;
    }
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C620);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0805A630", sub_0805C7B8);
struct Record60 { u16 type, value, timer; u8 a, b, c, d; u8 tail[6]; };
void sub_0805CB04(s32 index, struct Record60 *out)
{
    register u16 type asm("r1");
    u16 bit;
    register u32 i asm("r8");
    register u32 work asm("r2");
    register u32 offset asm("r0");
    register u8 *base asm("r1");
    u16 *table;
    u8 zero8;
    u32 zero16;
    register u32 sentinel asm("r9");
    offset = index * 0x30;
    base = (u8 *)&gUnk_084EB7E8;
    work = 0;
    i = work;
    zero8 = 0;
    zero16 = work;
    work = 0xFFFF;
    sentinel = work;
    table = (u16 *)(offset + (u32)base);
    do {
        type = table[0];
        out->type = type;
        out->value = table[1];
        if (type == 2) {
            out->c = zero8;
            out->timer = zero16;
            out->a = zero8;
            out->b = zero8;
            out->d = zero8;
        }
        if (out->type == sentinel) {
            bit = sub_080008C8() & 1;
            if (bit != 0)
                sub_0805C4FC(out, 0x14, index);
            else {
                out->type = bit;
                out->value = bit;
            }
        }
        table += 2;
        work = 1;
        i += work;
        out++;
    } while (i <= 0xB);
}






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
u32 sub_0805D064(const struct Entry61 *src,u32 index) {
    register u32 savedIndex asm("r3")=index;
    register struct Entry61 *dst asm("r1");
    register u32 offset asm("r0");
    asm volatile("" : "+r" (savedIndex));
    switch(*(const u16 *)src) { case 2: dst=(void *)gUnk_030034E0; asm volatile("" : "+r" (dst)); offset=savedIndex*16; asm volatile("" : "+r" (offset)); dst=(void *)((u8 *)dst+offset); asm volatile("" : "+r" (dst) : "r" (offset)); dst=(void *)((u8 *)dst+0x70); *dst=*src; return 1; default:return 0; }
}
