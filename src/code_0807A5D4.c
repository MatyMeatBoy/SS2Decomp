#include "global.h"

void sub_080852AC(void);
void sub_0808381C(u32 index);
void sub_08083AE8(u32 index);
void sub_08085534(void);
extern u8 gUnk_03005740[];
extern u32 gUnk_084ECBDC[];
extern u32 gUnk_084ECC04[];
void sub_0801A664(u32 index, u32 value);
u32 sub_08065158(void *arg0, u32 arg1, u32 arg2, s32 arg3, s32 arg4);
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4);
void sub_0801A3D0(u8 *arg0, u32 arg1, u32 arg2);
void sub_0805FB7C(u32 arg0, u32 arg1, u32 arg2, u32 arg3);

void sub_08083AE8(u32 index);
void sub_0808381C(u32 index);

extern const u32 gUnk_084EBD4C[];

INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807A5D4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807B7B4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807BD78);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807BEA0);
#ifdef NONMATCHING
void sub_0807C014(u32 amount)
{
    u8 *inventory = (u8 *)gUnk_030034E0;
    u8 *manager = (u8 *)gUnk_03006440;

    while (1) {
        u32 i;
        u32 minimum = 0xFFFFFFFF;
        u32 selected = 0x19;

        for (i = 0; i < 0x19; i++) {
            u8 *item = inventory + 0x150 + i * 0x10;
            u32 count = *(u32 *)(item + 4);
            if (*(u16 *)item == 0xA && count < minimum) {
                minimum = count;
                selected = i;
            }
        }
        if (selected != 0x19) {
            u8 *item = inventory + 0x150 + selected * 0x10;
            if (minimum < amount) {
                amount -= minimum;
                sub_0805D580(selected);
                continue;
            }
            *(u32 *)(item + 4) = minimum - amount;
            if (*(u32 *)(item + 4) == 0)
                sub_0805D580(selected);
            return;
        }
        {
            u8 *items;
            u8 *selectedItem = 0;
            if (*(u32 *)manager == 4)
                items = manager + 0x104;
            else
                items = inventory + 0x2E0;
            minimum = 0xFFFFFFFF;
            selected = 0x4B;
            for (i = 0; i < 0x4B; i++) {
                u8 *item = items + i * 0x10;
                u32 count = *(u32 *)(item + 4);
                if (*(u16 *)item == 0xA && count < minimum) {
                    minimum = count;
                    selected = i;
                    selectedItem = item;
                }
            }
            if (selected == 0x4B)
                return;
            if (minimum < amount) {
                amount -= minimum;
                *(u32 *)(selectedItem + 4) = 0;
                *(u16 *)selectedItem = 0;
                continue;
            }
            *(u32 *)(selectedItem + 4) = minimum - amount;
            if (*(u32 *)(selectedItem + 4) == 0)
                *(u16 *)selectedItem = 0;
            return;
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C014);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C114);
#ifdef NONMATCHING
void sub_0807C1D8(void) {
    register u8 *manager asm("r1");
    register u32 saved asm("r5");
    manager = (u8 *)gUnk_03006440;
    saved = *(u32 *)(manager + 4);
    if (saved != 0) {
        sub_08065370(manager + 0xA4, 4, manager + 0x4E, manager + 0x52, 1);
        sub_08065230(manager + 0xA4, 0x78, 0x78, 9, 0);
        sub_08065264(manager + 0xA4, 0x88, 0x78, 5, *(u16 *)(manager + 0x4E));
        sub_08065230(manager + 0xA4, 0x68, 0x78, 4, *(u16 *)(manager + 0x4C));
        return;
    }
    sub_08065370(manager + 0xA4, 5, manager + 0x4C, manager + 0x50, 1);
    sub_08065230(manager + 0xA4, 0x78, 0x78, 8, saved);
    sub_08065230(manager + 0xA4, 0x88, 0x78, 5, *(u16 *)(manager + 0x4E));
    sub_08065264(manager + 0xA4, 0x68, 0x78, 4, *(u16 *)(manager + 0x4C));
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C1D8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0807C29C);
#ifdef NONMATCHING
// Inventory drawing pass. The assembly remains the default until this draft
// has been matched against the original ARM7 code.
extern void sub_0805FC80(s32 x, s32 y, void *item, s32 mode);
extern void sub_0805FAC0(s32 x, s32 y, s32 count, s32 mode);
extern u32 sub_0805AE34(const u8 *item);
extern s16 gUnk_084ECBB0[];
extern s16 gUnk_084ECBB2[];
extern s16 gUnk_084ECBBC[];

#define SET_ITEM_DRAW_MODE(item, normalMode, outMode) \
    do { \
        u32 _ready = 1; \
        switch (*(u16 *)(item)) { \
        case 2: _ready = sub_0805AE34(item); break; \
        case 3: _ready = sub_0805D278(item); break; \
        case 4: _ready = sub_0805D210(item); break; \
        case 5: _ready = sub_0805D2E0(item); break; \
        } \
        (outMode) = _ready == 0 ? (normalMode) + 2 : (normalMode); \
    } while (0)

void sub_08080A78(void)
{
    u8 *inventory = (u8 *)gUnk_030034E0;
    u8 *manager = (u8 *)gUnk_03006440;
    u16 fallbackItem[2];
    u32 i;

    for (i = 0; i <= 0x18; i++) {
        u8 *item = inventory + 0x150 + i * 0x10;
        u32 mode;
        u32 selected = *(u32 *)(manager + 0x1C) == 0 &&
                       *(u32 *)(manager + 0x20) == i;

        SET_ITEM_DRAW_MODE(item, 8, mode);
        if (!selected || (gUnk_03002344 & 1))
            sub_0805FC80((i % 5) * 0x10 + 0x58,
                         (i / 5) * 0x10 + 0x20, item, mode);
    }

    i = *(u16 *)(inventory + 0x68) / 3;
    {
        u32 first = i * 3;
        u8 *item = inventory + 0x70 + first * 0x10;
        u32 slot;

        for (slot = 0; slot < 3; slot++, item += 0x10) {
            u32 index = first + slot;
            u32 mode;
            s16 x = gUnk_084ECBBC[slot * 2];
            s16 y = gUnk_084ECBBC[slot * 2 + 1];

            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 1 &&
                *(u32 *)(manager + 0x20) == index) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80(x + 0x38, y + 0x10, item, mode);
            } else if (*(u16 *)(inventory + 0x68) == index) {
                sub_0805FC80(x + 0x38,
                             y - (*(s32 *)(manager + 0x74) - 0x10), item, mode);
            } else {
                sub_0805FC80(x + 0x38, y + 0x10, item, mode);
            }
        }
    }

    if (*(u32 *)manager != 5) {
        u8 *item = inventory + 0x100;
        u32 mode;
        s32 y = 0x30 - *(s32 *)(manager + 0x7C);

        SET_ITEM_DRAW_MODE(item, 0, mode);
        if (*(u32 *)(manager + 0x1C) != 2 || (gUnk_03002344 & 1))
            sub_0805FC80(0x40, *(u32 *)(manager + 0x1C) == 2 ? 0x30 : y,
                         item, mode);

        item = inventory + 0x120;
        SET_ITEM_DRAW_MODE(item, 0, mode);
        y = 0x60 - *(s32 *)(manager + 0x8C);
        if (*(u32 *)(manager + 0x1C) != 3 || (gUnk_03002344 & 1))
            sub_0805FC80(0x3C, *(u32 *)(manager + 0x1C) == 3 ? 0x60 : y,
                         item, mode);

        item = inventory + 0x110;
        SET_ITEM_DRAW_MODE(item, 0, mode);
        y = 0x48 - *(s32 *)(manager + 0x84);
        sub_0805FC80(0x40, y, item, mode);

        if (*(u32 *)(manager + 0x1C) != 5 || (gUnk_03002344 & 1))
            sub_0805FC80(0x0C, 0x40 - *(s32 *)(manager + 0x9C), inventory + 0x130, 8);
        if (*(u32 *)(manager + 0x1C) != 6 || (gUnk_03002344 & 1))
            sub_0805FC80(0x10, 0x60 - *(s32 *)(manager + 0x94), inventory + 0x140, 8);
    }

    if (*(u32 *)manager == 2) {
        u32 first = (*(u16 *)(inventory + 0x54) / 3) * 3;
        for (i = first; i < first + 3; i++) {
            u16 itemId = *(u16 *)(inventory + 0x56 + i * 2);
            s32 found;
            u8 *item;
            u32 count = 0;

            if (itemId == 0)
                continue;
            found = sub_0805D548(itemId - 1);
            if (found >= 0) {
                u8 *candidate = inventory + 0x150;
                u32 j;
                item = inventory + 0x150 + found * 0x10;
                for (j = 0; j <= 0x18; j++, candidate += 0x10) {
                    if (*(u16 *)candidate == 1 &&
                        *(u16 *)(candidate + 2) == *(u16 *)(item + 2))
                        count++;
                }
            } else {
                fallbackItem[0] = 1;
                fallbackItem[1] = itemId - 1;
                item = (u8 *)fallbackItem;
            }
            sub_0805FAC0(gUnk_084ECBB0[(2 - (i - first)) * 2] + 0xB8,
                         gUnk_084ECBB2[(2 - (i - first)) * 2] + 0x18,
                         count, 0);
            sub_0805FC80(gUnk_084ECBB0[(2 - (i - first)) * 2] + 0xB8,
                         gUnk_084ECBB2[(2 - (i - first)) * 2] + 0x10,
                         item, 0);
        }
    }

    switch (*(u32 *)manager) {
    case 3:
        for (i = 0; i <= 0xB; i++) {
            u8 *item = manager + 0x104 + i * 0x10;
            u32 mode;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 0xB &&
                *(u32 *)(manager + 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8,
                                 (i / 3) * 0x10 + 0xB8, item, mode);
            } else {
                sub_0805FC80((i % 3) * 0x10 + 0xB8,
                             (i / 3) * 0x10 + 0x20, item, mode);
            }
        }
        return;
    case 4: {
        u8 *item = manager + (*(u32 *)(manager + 0x44) * 0xF0) + 0x104;
        for (i = 0; i <= 0xE; i++, item += 0x10) {
            u32 mode;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 0xD &&
                *(u32 *)(manager + 0x20) == i) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80((i % 3) * 0x10 + 0xB8,
                                 (i / 3) * 0x10 + 0x20, item, mode);
            } else {
                sub_0805FC80((i % 3) * 0x10 + 0xB8,
                             (i / 3) * 0x10 + 0x20, item, mode);
            }
        }
        return;
    }
    case 6: {
        u8 *item = manager + 0x104;
        for (i = 0; i <= 2; i++, item += 0x10) {
            u32 mode;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) != 0x10 ||
                *(u32 *)(manager + 0x20) != i ||
                (gUnk_03002344 & 1))
                sub_0805FC80((i % 3) * 0x10 + 0xB8, 0x30, item, mode);
        }
        item = manager + 0x134;
        {
            u32 mode;
            s32 y = *(s32 *)(manager + 0x54) + 0x60;
            SET_ITEM_DRAW_MODE(item, 8, mode);
            if (*(u32 *)(manager + 0x1C) == 0x11) {
                if (gUnk_03002344 & 1)
                    sub_0805FC80(0xC8, y, item, mode);
            } else {
                y += gUnk_080B9704[manager[0x5C]] >> 5;
                sub_0805FC80(0xC8, y, item, mode);
            }
        }
        return;
    }
    }
}
#undef SET_ITEM_DRAW_MODE
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08080A78);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080811E0);
#ifdef NONMATCHING
void sub_08081518(u16 arg0, u16 arg1, u8 *arg2, u16 arg3, s32 arg4)
{
    u8 text[0x20];
    u32 number;
    u16 length = 0;
    u8 *source = arg2 + 2;

    goto checkToken;
processToken:
    if (*source == 0xF7) {
        u32 started = 0;
        u8 *out = text + length;
        s32 *divisor = gUnk_084EBD5C;
        u16 digit = 0;

        number = arg3;
        source++;
        do {
            u8 character = sub_08000498((s32 *)&number, *divisor) + 0x41;
            *out = character;
            if (started || character != 0x41 || digit == 5) {
                out++;
                started = 1;
                length++;
            }
            digit++;
            divisor++;
        } while (digit <= 5);
    } else {
        text[length] = *source;
        length++;
        source++;
    }
checkToken:
    if (*source != 0xFD)
        goto processToken;

    text[length] = 0xFD;
    if (arg4 & 1)
        arg0 -= sub_0801A638(text) >> 1;
    sub_0801A3D0(text, arg0, arg1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08081518);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080815F4);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082960);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08082BB0);
#ifdef NONMATCHING
void sub_0808381C(u32 index)
{
    u32 frameWords[0x1F];
    u8 *frame = (u8 *)frameWords;
    u8 *descriptor = frame + 4;
    u8 *text = frame + 0x38;
    u8 *liveText = frame + 0x58;
    u8 *source;
    u8 *dictionary = (u8 *)gUnk_030034E0;
    u8 *manager;
    u32 sourceOffset;
    u32 textLength;
    u32 dictionaryOffset;
    u32 i;
    s32 countdown;
    s32 amount;
    s32 x;

    sub_08065158(descriptor, gUnk_084ECBDC[index], 0, -1, 0);
    if (index == 9 || index == 3 || index == 4) {
        sub_08000AF0(0x1E, (const void *)*(u32 *)(descriptor + 0x0C), 1);
        descriptor[0x1C] = 0x0E;
    } else {
        sub_08000AF0(0x1E, (u8 *)*(u32 *)(descriptor + 0x0C) + 0x1C0, 1);
    }

    source = (u8 *)sub_08007290(gUnk_084ECC04[index] | 0x140000);
    manager = (u8 *)gUnk_03006440;
    *(u32 *)(manager + 0x28) |= 2;

    sourceOffset = 0;
    textLength = 0;
    dictionaryOffset = 0;
    while (source[sourceOffset + 2] != 0xFD) {
        if (source[sourceOffset + 2] == 0xFC) {
            text[textLength++] = dictionary[dictionaryOffset++];
            if (dictionary[dictionaryOffset] != 0xFD)
                continue;
        } else {
            text[textLength++] = source[sourceOffset + 3];
        }
        sourceOffset++;
    }
    text[textLength] = 0xFD;

    countdown = 0x40;
    while (countdown > 0) {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 1)
            countdown = 0;
        amount = countdown - ((s32)((u32)countdown << 16) >> 17);
        sub_08065230(descriptor, amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
        if (amount <= 0)
            break;
        countdown = amount;
    }

    for (i = 0; i <= textLength; i++) {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        liveText[i] = text[i];
        liveText[i + 1] = 0xFD;
        sub_08065230(descriptor, 0xF0, 0x88, 0, 0);
        x = 0x0F - (sub_0801A638(text) >> 1);
        sub_0801A3D0(liveText, x, 0x12);
        sub_080003F0();
    }

    i = textLength;
    if ((gUnk_03001324 & 1) == 0) {
        u32 blink = 0;
        u8 *cursor = liveText + i;
        u8 *cursorEnd = cursor + 1;
        u32 visible = 0;

        for (;;) {
            if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
                goto done;
            if (blink <= 0x1D)
                visible = 1;
            else if (blink + 1 > 0x1D)
                visible = 0;
            blink++;
            if (blink > 0x28)
                blink = 0;
            if (visible) {
                *cursor = 0xA0;
                *cursorEnd = 0xFD;
            } else {
                *cursor = 0xFD;
            }
            sub_08065230(descriptor, 0xF0, 0x88, 0, 0);
            x = 0x0F - (sub_0801A638(text) >> 1);
            sub_0801A3D0(liveText, x, 0x12);
            sub_080003F0();
            if (gUnk_03001324 & 1)
                break;
        }
    }

    countdown = 0;
    sub_0805865C(0x0F);
    for (;;) {
        if (sub_0800CDF8() != 0 || sub_080021A8() != 0)
            goto done;
        if (countdown == 0x9F)
            countdown = 0xA0;
        amount = countdown - ((countdown - 0xA0) >> 1);
        sub_08065230(descriptor, amount + 0xF0, 0x88, 0, 0);
        sub_080003F0();
        if (amount > 0x9F)
            break;
        countdown = amount;
    }
    sub_080003F0();
    sub_080003F0();

done:
    manager = (u8 *)gUnk_03006440;
    *(u32 *)(manager + 0x28) &= ~3u;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808381C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08083AE8);
#ifdef NONMATCHING
u32 sub_08084200(const u8 *arg0)
{
    u16 a;
    u16 b;
    u16 c;

    if (*(const u16 *)(arg0 + 0x00) != 9 ||
        *(const u16 *)(arg0 + 0x10) != 9 ||
        *(const u16 *)(arg0 + 0x20) != 9)
        return 0;

    a = *(const u16 *)(arg0 + 0x02);
    b = *(const u16 *)(arg0 + 0x12);
    c = *(const u16 *)(arg0 + 0x22);

    if (a == 0 && b == 0 && c == 0) return 1;
    if (a == 2 && b == 2 && c == 2) return 2;
    if (a == 1 && b == 1 && c == 1) return 3;
    if (a <= 2 && b <= 2 && c <= 2 && a != b && a != c && b != c) return 4;
    if (a == 0 && b == 2 && c == 0) return 5;
    if (a == 1 && b == 0 && c == 1) return 6;
    if (a == 0 && b == 1 && c == 0) return 7;
    if (a == 1 && b == 2 && c == 1) return 8;
    if (a == 2 && b == 1 && c == 2) return 9;
    if (a == 2 && b == 0 && c == 2) return 10;
    if (a == 0 && b == 0 && c == 2) return 11;
    if (a == 1 && b == 1 && c == 0) return 12;
    if (a == 0 && b == 0 && c == 1) return 13;
    if (a == 1 && b == 1 && c == 2) return 14;
    if (a == 2 && b == 2 && c == 1) return 15;
    if (a == 2 && b == 2 && c == 0) return 16;
    if (a == 2 && b == 0 && c == 0) return 17;
    if (a == 0 && b == 1 && c == 1) return 18;
    if (a == 1 && b == 0 && c == 0) return 19;
    if (a == 2 && b == 1 && c == 1) return 20;
    if (a == 1 && b == 2 && c == 2) return 21;
    if (a == 0 && b == 2 && c == 2) return 22;
    if (a == 3 && b == 3 && c == 3) return 23;
    if (a == 4 && b == 4 && c == 4) return 24;
    return 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084200);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808441C);
#ifdef NONMATCHING
void sub_08084EAC(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem;

    do {
        gUnk_03006440 = sub_08001494(0x624);
        if (gUnk_03006440 == 0)
            sub_080003F0();
    } while (gUnk_03006440 == 0);
    *(u32 *)gUnk_03006440 = 0;

    do {
        mem = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x10) = mem + 0x3FC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_08085484;
    *(u32 *)(task + 0xC) = (u32)sub_0807A5D4;
    sub_08000274((M2C_UNK *)task, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084EAC);
#endif
#ifdef NONMATCHING
void sub_08084F24(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem;

    do {
        gUnk_03006440 = sub_08001494(0x624);
        if (gUnk_03006440 == 0)
            sub_080003F0();
    } while (gUnk_03006440 == 0);
    *(u32 *)gUnk_03006440 = 0;

    do {
        mem = sub_08001494(0x900);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x10) = mem + 0x8FC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_080854A0;
    *(u32 *)(task + 0xC) = (u32)sub_0807B7B4;
    sub_08000274((M2C_UNK *)task, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084F24);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08084F9C);
#ifdef NONMATCHING
void sub_08085014(u32 index, u32 count, u32 value)
{
    u16 encoded = (u16)(value + 0x16B) | 0xE000;
    u8 *dst;
    u32 i;
    if (count > 7)
        count = 7;
    dst = (u8 *)gUnk_03005740 + 0x2C + (index + 5) * 0x40;
    for (i = 0; i < count; i++) {
        *(u16 *)dst = encoded;
        dst += 2;
    }
    if (count != 0)
        sub_0801A664(index + 5, 1);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085014);
#endif
#ifdef NONMATCHING
void sub_08085064(u32 count)
{
    u32 i;

    if (count <= 9) {
        for (i = 0; i < count; i++)
            *(u16 *)(gUnk_03005740 + 0xE8 + i * 2) = 0xE16B;
        if (count != 0)
            sub_0801A664(3, 1);
    } else {
        *(u16 *)(gUnk_03005740 + 0xE8) = 0xE16B;
        *(u16 *)(gUnk_03005740 + 0xEA) = 0xE16A;
        sub_0805FB7C(0x18, 3, count, 0);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085064);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080850C0);
#ifdef NONMATCHING
void sub_0808516C(void)
{
    u32 i;
    u8 *base = *(u8 **)0x03006440;
    u32 mem;
    do {
        mem = sub_08001494(0xC8);
        *(u32 *)(base + 0x620) = mem;
        if (mem == 0) sub_080003F0();
    } while (mem == 0);
    for (i = 0; i <= 4; i++)
        *(u32 *)(*(u32 *)(base + 0x620) + i * 0x28 + 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808516C);
#endif
#ifdef NONMATCHING
void sub_080851B8(void)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *entries = *(u8 **)(base + 0x620);
    u32 i;

    for (i = 0; i <= 4; i++) {
        while (sub_08000470((u32)(entries + i * 0x28)) != 0)
            sub_080003F0();
    }

    base = *(u8 **)0x03006440;
    sub_08001538(*(s32 *)(base + 0x620));
    *(u32 *)(base + 0x620) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080851B8);
#endif
#ifdef NONMATCHING
void sub_08085218(u32 arg0, u32 arg1)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *entry = *(u8 **)(base + 0x620);
    u32 i;
    u32 memory;

    for (i = 0; i <= 4; i++, entry += 0x28) {
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            continue;

        *(u32 *)(entry + 8) = 0x3C;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
        if (memory == 0)
            return;

        *(u32 *)(entry + 0xC) = (u32)sub_08085534;
        *(u32 *)(entry + 0x10) = memory + 0x3FC;
        *(u32 *)(entry + 0x24) = 0;
        sub_08000274_(entry, arg0, arg1);
        return;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085218);
#endif
void sub_0808528C(void) {
    *(s16 *)0x04000012 = 4;
    sub_08001108(0x9F);
    sub_0800115C((s32) &sub_080852AC);
}
void sub_080852AC(void)
{
    *(u16 *)0x04000012 = 0;
    sub_08001108(0x88);
    sub_0800115C((s32)sub_0808528C);
}
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080852CC);
#ifdef NONMATCHING
u32 sub_08085330(void)
{
    u8 *base = (u8 *)gUnk_03006440;
    u32 total = 0;
    if (*(u32 *)base == 4) {
        u8 *entry = base + 0x104;
        u32 i;
        for (i = 0; i <= 0x4A; i++, entry += 0x10) {
            if (*(u16 *)entry == 0xA)
                total += *(u32 *)(entry + 4);
        }
    } else {
        total = sub_0805D404();
    }
    return total;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085330);
#endif
#ifdef NONMATCHING
void sub_0808536C(void)
{
    s32 p;
    do {
        p = sub_08001494(0x28);
        M2C_FIELD(gUnk_03006440, s32 *, 0x620) = p;
        if (p == 0)
            sub_080003F0();
    } while (p == 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808536C);
#endif
#ifdef NONMATCHING
void sub_08085398(void)
{
    u8 *base = *(u8 **)0x03006440;
    u32 *slot = (u32 *)(base + 0x620);
    u32 value = *slot;
    while (sub_08000470(value) != 0)
        sub_080003F0();
    sub_08001538(value);
    *slot = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085398);
#endif
void sub_080853DC(u32 arg)
{
    u8 *base = *(u8 **)0x03006440;
    u8 *task = *(u8 **)(base + 0x620);
    u32 memory;
    memory = sub_08001494(0x400);
    *(u32 *)(task + 0x20) = memory;
    while (memory == 0) {
        sub_080003F0();
        memory = sub_08001494(0x400);
        *(u32 *)(task + 0x20) = memory;
    }
    *(u32 *)(task + 8) = 0x50;
    if (arg == 1) *(u32 *)(task + 0xC) = (u32)sub_08083AE8;
    else *(u32 *)(task + 0xC) = (u32)sub_0808381C;
    *(u32 *)(task + 0x10) = *(u32 *)(task + 0x20) + 0x3FC;
    *(u32 *)(task + 0x24) = 0;
    sub_08000274((M2C_UNK *)task, (s32)arg);
}
#ifdef NONMATCHING
u32 sub_0808543C(void)
{
    u8 *base = *(u8 **)0x03006440;
    u32 total;
    if (*(u32 *)base == 4) {
        u8 *entry;
        u32 i;
        total = 0;
        entry = base + 0x104;
        for (i = 0; i <= 0x4A; i++, entry += 0x10)
            if (*(u16 *)entry == 0xA)
                total += *(u32 *)(entry + 4);
        total += sub_0805D3D4();
    } else {
        total = sub_0805D404();
    }
    return total;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_0808543C);
#endif
#ifdef NONMATCHING
void sub_08085484(void)
{
    s32 p = gUnk_03006440;
    if (p) *(s32 *)p = 0;
    sub_08001538(p);
    gUnk_03006440 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085484);
#endif
void sub_080854A0(void) {
    sub_08001538(gUnk_03006440);
    gUnk_03006440 = 0;
}
#ifdef NONMATCHING
void sub_080854B8(void)
{
    u32 zero = 0;
    CpuSet(&zero, (void *)(gUnk_03006440 + 0xF4), 0x05000004);
    *(u32 *)(gUnk_03006440 + 0x1C) = 0x16;
    *(u32 *)(gUnk_03006440 + 0x20) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080854B8);
#endif
#ifdef NONMATCHING
s32 sub_080854E8(u32 value)
{
    s32 result = 6;
    u32 i;
    for (i = 0; i < 6; i++) {
        if (gUnk_084EBD4C[4 + i] <= value)
            return result;
        result--;
    }
    return result;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080854E8);
#endif
#ifdef NONMATCHING
void sub_08085518(void)
{
    s32 p = gUnk_03006440;
    if (p) *(s32 *)p = 0;
    sub_08001538(p);
    gUnk_03006440 = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085518);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08085534);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080855D4);
void sub_080867E0(void) {
    sub_08001538(gUnk_03006478);
    gUnk_03006478 = 0;
}
#ifdef NONMATCHING
void sub_080867F8(void)
{
    u8 *task = (u8 *)0x03006450;
    u32 mem;

    do {
        gUnk_03006478 = sub_08001494(0x60);
        if (gUnk_03006478 == 0)
            sub_080003F0();
    } while (gUnk_03006478 == 0);

    do {
        mem = sub_08001494(0xC00);
        *(u32 *)(task + 0x20) = mem;
        if (mem == 0)
            sub_080003F0();
    } while (mem == 0);

    *(u32 *)(task + 0x10) = mem + 0xBFC;
    *(u32 *)(task + 8) = 0x64;
    *(u32 *)(task + 0x24) = (u32)sub_080867E0;
    *(u32 *)(task + 0xC) = (u32)sub_080855D4;
    sub_08000274((M2C_UNK *)task, 0);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080867F8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08086860);
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087788);
#ifdef NONMATCHING
void sub_080878AC(u32 arg0, s32 *state)
{
    u16 entry = (u16)arg0;
    u16 width = (u16)(arg0 >> 16);
    u16 *buffer = (u16 *)sub_08001494(width << 5);
    u16 *source = (u16 *)((u8 *)&gUnk_03001F40 + (entry << 5));
    u32 i;
    u32 count = width << 4;
    u16 factor = 0x64;
    u16 angle = 0;
    s32 timer = 10;
    u32 phase = 0;
    s32 base = 0x3D0;

    CpuSet(source, buffer, (width << 3) | 0x04000000);
    while (*state != 0) {
        u16 *dst = (u16 *)((u8 *)&gUnk_03001F40 + (entry << 5));
        for (i = 0; i < count; i++) {
            u16 color = buffer[i];
            u16 red = (((color & 0x1F) * factor) >> 10) & 0x1F;
            u16 green = ((((color >> 5) & 0x1F) * factor) >> 10) & 0x1F;
            u16 blue = ((((color >> 10) & 0x1F) * factor) >> 10) & 0x1F;

            dst[i] = (color & 0x8000) | red | (green << 5) | (blue << 10);
        }
        sub_08000B38();
        sub_080003F0();
        factor = (u16)(base +
                       ((u32)((s32)gUnk_080B9704[angle] * (0x400 - base)) >> 8));
        switch (phase) {
        case 0:
            angle += 0x30;
            base = 0x3D0;
            break;
        case 1:
            angle += 0x10;
            base = 0x3C8;
            break;
        case 2:
            angle += 4;
            base = 0x380;
            break;
        }
        if (angle > 0x100)
            angle = 0;
        timer--;
        if (timer < 0) {
            phase = gUnk_03002344 % 3;
            timer = sub_080008C8() % (phase == 2 ? 0x1E : 0xA);
        }
    }
    sub_08001538((s32)buffer);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_080878AC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0807A5D4", sub_08087A5C);
