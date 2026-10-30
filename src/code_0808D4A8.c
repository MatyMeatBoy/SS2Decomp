#include "global.h"

extern s32 gUnk_030031EC;

extern u32 gUnk_084F794C[] __asm__("gUnk_084F794C");

extern u32 gUnk_084FA298[] __asm__("gUnk_084FA298");

extern u32 gUnk_084FD06C[] __asm__("gUnk_084FD06C");
void sub_0808E130(void);

void sub_080AB2F8(void);
void sub_080AC81C(void);

extern u32 gUnk_0850008C[] __asm__("gUnk_0850008C");
extern u32 gUnk_085028BC[] __asm__("gUnk_085028BC");

void sub_080AC844(void);
void sub_080AE080(void);

extern u32 gUnk_085060D4[] __asm__("gUnk_085060D4");
void sub_080A756C(void);

void sub_080AE1B4(void);
void sub_080AF2AC(void);

#include "global.h"
extern u32 gUnk_0850C6E8[] __asm__("gUnk_0850C6E8");

void sub_0808D4A8(void) {

}
extern u32 gUnk_084F794C[];
u32 sub_0808D4AC(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F794C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
u32 sub_0808D520(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F794C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
extern void sub_0809AEE8(void);
extern void sub_0808D654(u8 *);
s32 sub_0808D594(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_0809AEE8, (u32)sub_0809D574);
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0801674C((u32)sub_0808D654, 0);
    sub_0800CD9C();
fail:
    return 0;
}
#ifdef NONMATCHING
extern u8 gUnk_084A1910[];
extern void sub_0801623C(void *, void *, s32);
extern void sub_08019F60(void *);
extern s32 sub_08019CE8(void *);
extern void sub_0801A120(void *, s32, s32);
extern void sub_0801C8F0(void *);
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern void sub_0800BC08(s32, s32, void *, void *, s32, s32);
extern s32 *sub_08007870(s32, s32, u32, u32, u32, void *, u32, u32);
/* The damage timer tests its old value after storing the decremented value.
 * Remaining matching differences are arithmetic selection and registers. */
void sub_0808D654(u8 *arg0) {
    u32 anim[26];
    s16 x, y;
    u32 offset;
    s32 damage, flashing, timer;
    u32 layer;
    u32 drawFlags;
    u8 *animBytes;
    register u32 timerMask asm("r2");
    s32 temp_r0;
    register s32 temp_r0_2 asm("r0");
    s32 scaledStat;
    s32 temp_r0_4;
    s32 temp_r0_5;
    register s32 temp_r0_6 asm("r0");
    u16 temp_r4_2;
    register u32 var_sl asm("r10");
    register u32 temp_r8 asm("r8");
    register u32 temp_r9 asm("r9");
    register u8 *temp_r4 asm("r4");
    u16 *palette;
    register u32 zero asm("r5");
    register u16 *paletteInit asm("r2");

    sub_0801623C(arg0, gUnk_084A1910, 3);
    temp_r0 = (*(u16 *)(arg0 + 0x0)) + (*(u16 *)(arg0 + 0x2));
    zero = 0;
    (*(u16 *)(arg0 + 0x2)) = temp_r0;
    {
        register u32 off asm("r2") = 0x204;
        asm("" : "+r"(off));
        temp_r4 = arg0 + off;
    }
    sub_08019F60(temp_r4);
    (*(u16 *)(arg0 + 0x6C)) = zero;
    paletteInit = (u16 *)(arg0 + 0x6A);
    *paletteInit = zero;
    (*(u16 *)(arg0 + 0x68)) = zero;
    temp_r0 = (*(s16 *)(temp_r4 + 0x6)) * 3;
    (*(s16 *)(arg0 + 0x1D6)) = temp_r0;
    (*(s16 *)(arg0 + 0x5C)) = temp_r0;
    temp_r0_2 = *(s16 *)(temp_r4 + 4);
    scaledStat = temp_r0_2 << 1;
    temp_r0_2 <<= 3;
    temp_r0_2 += scaledStat;
    temp_r0_2 <<= 1;
    (*(s16 *)(arg0 + 0x1D4)) = temp_r0_2;
    (*(s16 *)(arg0 + 0x5E)) = temp_r0_2;
    (*(u16 *)(arg0 + 0xC)) = zero;
    var_sl = zero;
    flashing = 0;
    timer = 0xFFFF;
    damage = 0;
    (*(s32 *)(arg0 + 0x4C)) = 0;
    palette = paletteInit;
    goto loop_check;
loop_60:
    {
        sub_0801C8F0(arg0);
        temp_r4_2 = (*(u16 *)(arg0 + 0xC));
        switch (temp_r4_2) {                        /* irregular */
        case 0:
            sub_08065158(anim, 0x5005D, 5, -1, temp_r4_2);
            (*(u16 *)(arg0 + 0x68)) = temp_r4_2;
            break;
        case 10:
            if (flashing == 0) {
                flashing = 1;
                var_sl = 8;
            }
            break;
        case 11:
            if (flashing == 0) {
                flashing = 1;
                var_sl = 0x14;
                sub_080586D0(2);
            }
            break;
        }
        temp_r8 = (u8) sub_0800BC44((u32) ((s32) (*(s32 *)(arg0 + 0x14)) >> 8), (u32) ((s32) (*(s32 *)(arg0 + 0x18)) >> 8), 0U);
        temp_r9 = temp_r8;
        animBytes = (u8 *)anim;
        drawFlags = 0;
        layer = 5;
        animBytes[28] = layer;
        sub_0800BC08((s32) ((*(s32 *)(arg0 + 0x14)) << 8) >> 0x10, (s32) ((*(s32 *)(arg0 + 0x18)) << 8) >> 0x10, &x, &y, 0x30, drawFlags);
        if (flashing != 0) {
            if ((1 & var_sl) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CD34() == 0)) {
                sub_08007870(x, y, (*(u16 *)(arg0 + 0x68)), *palette, temp_r8, &anim[7], anim[2], anim[0]);
            }
            var_sl = (u16)(var_sl - 1);
            if (var_sl == 0) {
                if ((*(u16 *)(arg0 + 0xC)) == 0xB) {
                    goto done;
                } else {
                    (*(u16 *)(arg0 + 0xC)) = var_sl;
                    sub_08019CE8(arg0);
                    flashing = 0;
                    temp_r0_4 = (s32) ((*(s16 *)(arg0 + 0x5C)) * 0x64) / (s16) (*(s16 *)(arg0 + 0x1D6));
                    if (temp_r0_4 <= 9) {
                        *palette = 7U;
                    } else if (temp_r0_4 <= 0xE) {
                        *palette = 6U;
                    } else if (temp_r0_4 <= 0x13) {
                        *palette = 5U;
                    } else if (temp_r0_4 <= 0x1D) {
                        *palette = 4U;
                    } else if (temp_r0_4 <= 0x31) {
                        *palette = 3U;
                    } else if (temp_r0_4 <= 0x45) {
                        *palette = 2U;
                    } else if (temp_r0_4 <= 0x59) {
                        *palette = 1U;
                    } else {
                        *palette = var_sl;
                    }
                    goto block_41;
                }
            } else {
                goto block_41;
            }
        } else {
            if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CD34() == 0)) {
                sub_08007870(x, y, (*(u16 *)(arg0 + 0x68)), *palette, temp_r9, &anim[7], anim[2], anim[0]);
            }
block_41:
            temp_r0_5 = (*(s32 *)(arg0 + 0x4C));
            if ((temp_r0_5 != 0) && (damage != temp_r0_5)) {
                if ((sub_08019CE8(arg0) << 0x10) != 0) {
                    var_sl = 0xA;
                }
                damage = (*(s32 *)(arg0 + 0x4C));
                timer = 0xA;
                offset = 0;
            }
            temp_r0_6 = timer;
            timer = (s32) (u16) (temp_r0_6 - 1);
            timerMask = 0x8000;
            asm("" : "+r"(timerMask));
            {
                register u32 maskcopy asm("r1") = timerMask;
                asm("" : "+r"(maskcopy));
                if (!(temp_r0_6 & maskcopy)) {
                    register s32 checked asm("r3") = damage;
                    asm("" : "+r"(checked));
                    if (checked == 0) {
                        register u32 limit asm("r4") = 0xFFFF;
                        asm("" : "+r"(limit));
                        timer = limit;
                    } else {
                        if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                            register u32 raw asm("r0") = offset;
                            asm("" : "+r"(raw));
                            sub_0801A120(arg0, damage, (s16)raw);
                        }
                        {
                            register s32 bits asm("r1");
                            register u32 bit asm("r0") = 2;
                            asm("" : "+r"(bit));
                            bits = timer;
                            asm("" : "+r"(bits));
                            if (bit & bits) {
                                register u32 raw asm("r2") = offset;
                                register u32 shifted asm("r0");
                                register u32 mask asm("r3");
                                asm("" : "+r"(raw));
                                shifted = raw << 16;
                                asm("" : "+r"(shifted));
                                mask = 0xFFFF0000;
                                asm("" : "+r"(mask));
                                offset = (u32)(shifted + mask) >> 0x10;
                            }
                        }
                    }
                } else {
                    register u32 limit asm("r4") = 0xFFFF;
                    register s32 z asm("r0");
                    asm("" : "+r"(limit));
                    timer = limit;
                    z = 0;
                    asm("" : "+r"(z));
                    damage = z;
                    (*(s32 *)(arg0 + 0x4C)) = z;
                }
            }
            if ((sub_0800CCCC() == 0) && ((gUnk_03002344 & 1) == (1 & (*(u16 *)(arg0 + 0x0))))) {
                register u32 data asm("r1") = anim[3];
                asm("" : "+r"(data));
                sub_08000AF0(layer + 0x10, (void *)data, 1U);
            }
            sub_080003F0();
            goto loop_check;
        }
    }
loop_check:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) goto loop_60;
done:
    sub_0809D558();
    sub_0805865C(0xE8);
    gUnk_030056FC &= ~(1 << (*(u16 *)(arg0 + 0x0)));
    sub_08016ECC(5);
}

#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808D654);
#endif
u32 sub_0808D9AC(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_d9ac;
    }
    if (sub_08056E90() == 0)
        goto fail_d9ac;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FA298;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d9ac:
    return 0;
}
extern u32 gUnk_084FA298[];
u32 sub_0808DA20(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FA298;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
extern void sub_0809D878(void);
s32 sub_0808DA94(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_0809D878, (u32)sub_0809F8C8);
    sub_0800CD9C();
fail:
    return 0;
}
#ifdef NONMATCHING
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern void sub_0800BC08(s32, s32, void *, void *, s32, s32);
extern s32 *sub_08007870(s32, s32, u32, u32, u32, void *, u32, u32);
extern s32 sub_08021FE0(void *, void *, void *, void *);
extern void sub_08029A7C(s32, s32, s32);
/* The frame/attribute pairs and screen coordinates have distinct stack storage.
 * Register allocation and call scheduling still differ from the original. */
void sub_0808DB38(u32 arg)
{
    u32 anim[13];
    u16 first[2], second[2];
    u16 screen[2];
    s32 pos[2];
    u32 size, box;
    struct Player *player;
    s32 hit, sound;
    s32 height;
    s32 speed;
    u8 priority;
    s32 *sprite;
    s32 *posptr;
    void *texture;
    u16 *attrptr;
    register u16 *firstptr asm("r10");
    sub_08065158(anim, 0x50122, 0, -1, 0);
    sub_08000AF0(0x15, anim[3], 1);
    *(u8 *)&anim[7] = 5;
    switch (arg) {
    case 0: pos[1] = 0x8C00; break;
    case 1: pos[1] = 0x9400; break;
    case 2: pos[1] = 0xA600; break;
    case 3: pos[1] = 0xAA00; break;
    }
    pos[0] = 0x3D400;
    height = 0xA000;
    speed = 0;
    {
        register u32 maskhi asm("r5") = 0xFFFF0000;
        register u32 masklo asm("r6") = 0xFFFF;
        register u32 boxwidth asm("r4") = 0x10;
        size = 0x100010;
        player = &gUnk_03003CE0[sub_080020F4()];
        box = (((box & maskhi) | boxwidth) & masklo) | 0x80000;
    }
    hit = 1;
    sound = 1;
    firstptr = first;
    attrptr = &firstptr[1];
    if ((pos[0] >> 8) > 45) {
        register u16 *screenXptr asm("r9");
        register u16 *screenYptr asm("r6");
        register u16 *secondptr asm("r5");
        posptr = pos;
        screenXptr = &screen[0];
        screenYptr = &screen[1];
        texture = &anim[7];
        do {
            pos[0] += 0xFFFFFE00;
            height += speed;
            speed -= 0x28;
            if (height <= 0) {
                height = 1;
                speed = -(speed >> 1);
            }
            if (speed > 0 && sound) {
                if (sub_0800CCCC() == 0) sub_0805865C(0x2E);
                sound = 0;
            }
            if (hit && (height >> 8) <= 7 && sub_08021FE0(pos, (u8 *)player + 0x8C, &size, &box)) {
                hit = 0;
                sub_08029A7C(0, 0x10, 1);
            }
            sub_08065370(anim, 0, (s32)&firstptr[0], (s32)attrptr, 1);
            secondptr = second;
            sub_08065370(anim, 1, (s32)secondptr, (s32)(secondptr + 1), 1);
            if (!sub_0800CC98() && !sub_0800CCCC() && !sub_0800CD34() && !sub_0800CD8C()) {
                sub_0800BC08((s16)(pos[0] >> 8), (s16)(posptr[1] >> 8), screenXptr, screenYptr, 0x30, 0);
                priority = sub_0800BC44(pos[0] >> 8, posptr[1] >> 8, 0);
                sub_08007870(*screenXptr, *screenYptr - 1, 1, *secondptr, 3, texture, anim[2], anim[0]);
                sprite = sub_08007870(*screenXptr, *screenYptr, 0, firstptr[0], priority, texture, anim[2], anim[0]);
                sprite[3] -= height >> 8;
            }
            sub_080003F0();
        } while ((pos[0] >> 8) > 45);
    }
    if (!sub_0800CCCC()) sub_0805865C(0x29);
    sub_08065158(anim, 0x50053, 0, -1, 0);
    *attrptr = 0;
    firstptr[0] = 0;
    while (!sub_08065370(anim, 6, (s32)&firstptr[0], (s32)attrptr, 0)) {
        if (!sub_0800CC98() && !sub_0800CCCC() && !sub_0800CD34() && !sub_0800CD8C()) {
            sub_0800BC08((s16)(pos[0] >> 8), (s16)(pos[1] >> 8), &screen[0], &screen[1], 0x30, 0);
            sub_08007870(screen[0], screen[1], 6, firstptr[0], (u8)sub_0800BC44(pos[0] >> 8, pos[1] >> 8, 0), &anim[7], anim[2], anim[0]);
        }
        sub_080003F0();
    }
}

#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808DB38);
#endif
extern u32 gUnk_084FD06C[];
extern void sub_0808E130(void);
u32 sub_0808DE08(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_08057328(0, sub_0808E130);
        gUnk_03003170.pad72 = 0x14;
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_d520:
    return 0;
}
u32 sub_0808DE94(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_08057328(0, sub_0808E130);
        goto fail_de94;
    }
    if (sub_08056E90() == 0)
        goto fail_de94;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x24) = one;
    *(u16 *)(base + 0x30) = one;
    return one;
fail_de94:
    return 0;
}
extern void sub_0808DB38(u32);
u32 sub_0808DF14(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_08057328(0, sub_0808DB38);
        sub_0805865C(0xF7);
        goto fail_d520;
    }
    if (sub_08056E90() == 0)
        goto fail_d520;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0805867C(0xF7);
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x24) = one;
    *(u16 *)(base + 0x30) = one;
    return one;
fail_d520:
    if (sub_08002204() && !(gUnk_03002344 & 0x7F)) {
        if ((7 & sub_080008C8()) == 4) {
            sub_08068070((u32)sub_0808DB38, 0);
            sub_08068070((u32)sub_0808DB38, 1);
            sub_08068070((u32)sub_0808DB38, 2);
            sub_08068070((u32)sub_0808DB38, 3);
        } else {
            sub_08068070((u32)sub_0808DB38, 3 & sub_080008C8());
        }
    }
    return 0;
}
u32 sub_0808E000(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AB2F8, (u32)sub_080AC81C);
        sub_0800CD9C();
        goto fail_e000;
    }
    if (sub_08056E90() == 0)
        goto fail_e000;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800CDAC();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084FD06C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x24) = one;
    *(u16 *)(base + 0x30) = one;
    return one;
fail_e000:
    return 0;
}
extern void sub_0809FB6C(void);
s32 sub_0808E090(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_0809FB6C, (u32)sub_080A0F64);
fail:
    return 0;
}
extern u16 gUnk_03003200;
void sub_0808E130(void)
{
    u16 value;
    u16 phase;
    u16 *state = &gUnk_03003200;
    for (;;) {
        phase++;
        if (phase > 255) phase = 0;
        value = (s32)(gUnk_080B9704[phase] << 18) >> 24;
        if (*state == 0)
            ((void (*)(s32, s32))sub_0800BB94)(0, (s16)-value);
        else
            ((void (*)(s32, s32))sub_0800BB80)(0, (s16)-value);
        sub_080003F0();
    }
}
u32 sub_0808E184(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_0850008C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808E1F8(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_0850008C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808E26C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AC844, (u32)sub_080AE080);
        sub_0800CD9C();
        goto fail_e26c;
    }
    if (sub_08056E90() == 0)
        goto fail_e26c;
    sub_0801ABE8(3);
    sub_0800BB40();
    sub_0800CDAC();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_0850008C;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_e26c:
    return 0;
}
extern void sub_080A1208(void);
extern void sub_080A2698(void);
u32 sub_0808E2FC(u32 arg)
{
    u32 zero;
    u32 one;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            gs=(u8 *)gUnk_03005CF4;
            one=1;
            *(u16 *)(gs+0x30)=one;
            *(u16 *)(gs+0x24)=one;
            return one;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A1208,(u32)sub_080A2698);
        sub_0800CD9C();
    }
    return 0;
}
u32 sub_0808E3A0(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_3a0;
    }
    if (sub_08056E90() == 0)
        goto fail_3a0;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085028BC;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_3a0:
    return 0;
}
u32 sub_0808E414(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail_414;
    }
    if (sub_08056E90() == 0)
        goto fail_414;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085028BC;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_414:
    return 0;
}
extern void sub_080A27B8(void);
extern void sub_080A49A8(void);
u32 sub_0808E488(u32 arg)
{
    u32 zero;
    u8 *gs;
    u8 *next;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            next=(u8 *)gUnk_03005CF4;
            *(u16 *)(next+0x10)=zero;
            *(u16 *)(next+0x30)=1;
            *(u16 *)(next+0x24)=1;
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A27B8,(u32)sub_080A49A8);
        sub_0800CD9C();
    }
    return 0;
}
#ifdef NONMATCHING
extern void initE530(void*,u32,u32,s32,u32) asm("sub_08065158");
extern void coordE530(s16,s16,u16*,u16*,s32,s32) asm("sub_0800BC08");
extern void *drawE530(u16,u16,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
extern void spawnE530(s32,s32,s32,s32,s32) asm("sub_08079888");
s32 sub_0808E530(u32 arg)
{
    u8 sprite[0x34];
    u16 outX,outY;
    u32 frame;
    u32 mode;
    s32 x,y,height,velocity;
    s32 fixedX;
    s32 narrowX;
    u32 type;
    u16 *px,*py;
    if (sub_0800CCCC()!=0) return;
    initE530(sprite,0x500F1,0,-1,0);
    mode=arg>>16;
    type=mode&0xFF;
    switch (type) { case 0: frame=14; break; case 1: frame=15; break; }
    x=(arg&0xFFFF)<<8;
    y=0x5000;
    height=0x5000;
    velocity=0;
    sub_080020F4();
    fixedX=x>>8;
    px=&outX;
    narrowX=fixedX<<16;
    py=&outY;
    do {
        height+=velocity;
        velocity-=32;
        if (sub_0800CC98()==0 && sub_0800CCCC()==0 && sub_0800CD34()==0 && sub_0800CD8C()==0) {
            u8 visible;
            u8 *object;
            coordE530(narrowX>>16,80,px,py,48,0);
            visible=sub_0800BC44(fixedX,80,0);
            object=drawE530(*px,*py,0,frame,visible,sprite+0x1C,M2C_FIELD(sprite,u32*,8),M2C_FIELD(sprite,u32*,0));
            M2C_FIELD(object,s32*,0xC)-=height>>8;
        }
        sub_080003F0();
        if (sub_08056E90()!=0) break;
    } while (height>0);
    if (sub_08056E90()==0) {
        if ((mode&0xFF)!=0) spawnE530(4,x,y,5,0);
        else spawnE530(4,x,y,4,0);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808E530);
#endif
extern u32 tableE66C[] asm("gUnk_085060D4");
extern void taskE94C(void) asm("sub_0808E94C");
extern void taskE970(void) asm("sub_0808E970");
u32 sub_0808E66C(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0802704C(arg);
        switch (gUnk_03003170.f90) {
        case 2: case 12:
            gUnk_03003170.width0=30;
            goto common;
        case 4:
            sub_080573A0(0,(u32)taskE970,0x80000000);
        case 6: case 8: case 10: case 14:
common:
            sub_08057328(0,(u32)taskE94C);
            break;
        case 17:
            sub_0802996C();
            break;
        }
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableE66C;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
u32 sub_0808E774(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A756C, 0);
        sub_08015ED4();
        sub_08015D74();
        goto fail_e774;
    }
    if (sub_08056E90() == 0)
        goto fail_e774;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085060D4;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_e774:
    return 0;
}
u32 sub_0808E7FC(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AE1B4, (u32)sub_080AF2AC);
        sub_0800CD9C();
        goto fail_e7fc;
    }
    if (sub_08056E90() == 0)
        goto fail_e7fc;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_085060D4;
    *(u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail_e7fc:
    return 0;
}
extern void sub_080A4D08(void);
extern void sub_080A7DEC(void);
u32 sub_0808E88C(u32 arg)
{
    u32 zero;
    u32 one;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            gs=(u8 *)gUnk_03005CF4;
            one=1;
            *(u16 *)(gs+0x30)=one;
            *(u16 *)(gs+0x24)=one;
            sub_0800BBD8(one,0,0);
            sub_0800BBD8(3,0,0);
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A4D08,(u32)sub_080A7DEC);
        gUnk_03003170.width0=30;
    }
    return 0;
}
void sub_0808E94C(void)
{
    s32 value = 0;
    s32 step = 0x2A;
    sub_0800BD48(3, 0);
    for (;;) {
        value += step;
        ((void (*)(s32, s32, s32))sub_0800BBA8)(3, (value << 8) >> 16, 0);
        sub_080003F0();
    }
}
void sub_0808E970(void)
{
    while (sub_08056E90() == 0) {
        if (sub_08058DB0() == 0 && (gUnk_03002344 & 0x7F) == 0) {
            u32 value = sub_080008C8() % 0x140;
            sub_08068070((u32)sub_0808E530, value + 0x50);
        }
        sub_080003F0();
    }
}
extern void scrollE9B8(u32,s32,u32) asm("sub_0800BBD8");
void sub_0808E9B8(void)
{
    s32 x = 0;
    s32 dx = 0x2AA;
    s32 y = 0;
    s32 dy = 0x88;
    for (;;) {
        x += dx;
        y += dy;
        sub_0800903C(2,0x1C,1,4,0xC,0);
        scrollE9B8(1,x>>8,0);
        scrollE9B8(3,y>>8,0);
        sub_080003F0();
    }
}
extern u32 tableE9FC[] asm("gUnk_08508B54");
extern void sub_0808ECA0(void);
extern void sub_0808ECD0(void);
u32 sub_0808E9FC(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0802704C(arg);
        switch (gUnk_03003170.f90) {
        case 0: case 2: case 6: case 13:
            sub_08057328(0,(u32)sub_0808ECA0);
            break;
        case 10:
            sub_08057328(0,(u32)sub_0808ECD0);
            break;
        }
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableE9FC;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern u32 tableEAD8[] asm("gUnk_08508B54");
extern void sub_080B0288(void);
extern void sub_080B0F9C(void);
u32 sub_0808EAD8(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080B0288,(u32)sub_080B0F9C);
        sub_0800CD9C();
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableEAD8;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern u32 tableEB68[] asm("gUnk_08508B54");
extern void sub_080AF3F4(void);
extern void sub_080B0F70(void);
u32 sub_0808EB68(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080AF3F4,(u32)sub_080B0F70);
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableEB68;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern void sub_080A8164(void);
extern void sub_0808ECD0(void);
extern void sub_080A97E0(void);
u32 sub_0808EBF4(u32 arg)
{
    u32 zero;
    u32 one;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            gs=(u8 *)gUnk_03005CF4;
            one=1;
            *(u16 *)(gs+0x30)=one;
            *(u16 *)(gs+0x24)=one;
            return one;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_08057328(0,(u32)sub_0808ECD0);
        sub_0801674C((u32)sub_080A8164,(u32)sub_080A97E0);
    }
    return 0;
}
extern s16 scrollPosECA0 asm("gUnk_030031EC");
extern void scrollECA0(u32,s32,u32) asm("sub_0800BBA8");
void sub_0808ECA0(void)
{
    s16 *pos = &scrollPosECA0;
    for (;;) {
        if (sub_0800CC98() == 0) {
            sub_0800BD48(3,0);
            scrollECA0(3,*pos/2,0);
        }
        sub_080003F0();
    }
}
void sub_0808ECD0(void)
{
    s32 value;
    s32 step;
    sub_0800BD48(3,0);
    step=0x2A;
    for (;;) {
        if (sub_0800CC98() == 0) {
            u32 mask;
            value -= step;
            mask=(value>>8)&0xF;
            sub_0800BBD8(3,mask,mask);
        }
        sub_080003F0();
    }
}
extern void scrollECFC(s32,s32,s16) asm("sub_0800BBA8");
void sub_0808ECFC(void)
{
    u8 *base;
    s16 *pos;
    s32 width;
    gUnk_03003170.layers[1].y=30;
    gUnk_03003170.layers[2].y=30;
    base=(u8 *)&gUnk_03003170;
    pos=(s16 *)(base+0x7E);
    width=320;
    for (;;) {
        if (sub_0800CC98()==0) {
            sub_0800BD48(1,0);
            sub_0800BD48(2,0);
            scrollECFC(1,0,(*pos*2)%width);
            scrollECFC(2,0,(*pos*15/10)%width);
        } else {
            *(u16 *)(base+0x1A)=21;
            *(u16 *)(base+0x32)=40;
        }
        sub_080003F0();
    }
}
u32 sub_0808ED7C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_0850C6E8;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern u32 tableEDF0[] asm("gUnk_0850C6E8");
extern void sub_0808ECFC(void);
u32 sub_0808EDF0(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0802704C(arg);
        if (gUnk_03003170.f90==1 || gUnk_03003170.f90==16)
            gUnk_03003170.pad72=60;
        if (gUnk_03003170.f90==3 || gUnk_03003170.f90==13)
            sub_08057328(0,(u32)sub_0808ECFC);
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableEDF0;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern u32 tableEE98[] asm("gUnk_0850C6E8");
extern void sub_080B0FC4(void);
extern void sub_080B22E8(void);
u32 sub_0808EE98(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    u32 zero;
    struct Player *player;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080B0FC4,(u32)sub_080B22E8);
        sub_0800CD9C();
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    gUnk_03003CE0[sub_080020F4()].flags &= ~2;
    player=&gUnk_03003CE0[sub_080020F4()];
    zero=0;
    player->state=zero;
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableEE98;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    *(u16 *)(base+0x10)=zero;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
extern void sub_080A9950(void);
extern void sub_080AB2D8(void);
u32 sub_0808EF54(u32 arg)
{
    u32 zero;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080A9950,(u32)sub_080AB2D8);
        sub_0800CD9C();
    }
    return 0;
}
extern void sub_080B4C34(void);
extern void sub_080B6324(void);
u32 sub_0808EFEC(u32 arg)
{
    u32 zero;
    u8 *gs;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)!=0) {
        if (sub_08056E90()!=0) {
            sub_08056FB8(0,2);
            sub_08056E78();
            sub_0800CDAC();
            gs=(u8 *)gUnk_03005CF4;
            zero=0;
            *(u16 *)(gs+0x36)=3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            return 1;
        }
    } else {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_080B4C34,(u32)sub_080B6324);
        sub_0800CD9C();
    }
    return 0;
}
extern u32 tableF088[] asm("gUnk_0850C6E8");
extern void sub_080B24B8(void);
extern void sub_080B2780(void);
u32 sub_0808F088(u32 arg)
{
    u8 *base;
    u8 *next;
    u8 *dest;
    u32 *table;
    u32 one;
    u32 zero;
    struct Player *player;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0800CE08();
        sub_0802704C(arg);
        if (sub_08057AE8(0x1B)==0)
            sub_0801674C((u32)sub_080B24B8,(u32)sub_080B2780);
        else sub_08056E24();
        sub_0800CD9C();
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableF088;
    *(u32 *)dest=table[*(u32 *)(base+0x40)];
    gUnk_03003CE0[sub_080020F4()].flags &= ~2;
    player=&gUnk_03003CE0[sub_080020F4()];
    zero=0;
    player->state=zero;
    next=(u8 *)gUnk_03005CF4;
    *(u16 *)(next+0x10)=zero;
    one=1;
    *(u16 *)(next+0x30)=one;
    *(u16 *)(next+0x24)=one;
    return 1;
fail:
    return 0;
}
extern u32 tableF15C[] asm("gUnk_0850C6E8");
extern void sub_0808F1E4(void);
u32 sub_0808F15C(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
    if (*(u16 *)((u8 *)gUnk_03005CF4+0x10)==0) {
        sub_0800CD9C();
        sub_0802704C(arg);
        sub_0801674C((u32)sub_0808F1E4,0);
        sub_0800CD9C();
        goto fail;
    }
    if (sub_08056E90()==0) goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0()==0) sub_080003F0();
    sub_0800BB40();
    sub_0800CDAC();
    base=(u8 *)gUnk_03005CF4;
    dest=base+0x71C;
    table=tableF15C;
    *(u32 *)dest=table[0x13];
    *(u16 *)(base+0x10)=0;
    one=1;
    *(u16 *)(base+0x30)=one;
    *(u16 *)(base+0x24)=one;
    return one;
fail:
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_0808D4A8", sub_0808F1E4);
extern s16 scrollPosF6A8 asm("gUnk_030031EE");
void sub_0808F6A8(void)
{
    s16 *pos = &scrollPosF6A8;
    const u32 mask=0x1FF;
    for (;;) {
        if (sub_0800CC98() == 0) {
            sub_0800BD48(1,0);
            sub_0800BD48(2,0);
            sub_0800BBA8(1,0,(*pos * 2)&mask);
            sub_0800BBA8(2,0,(*pos * 15 / 10)&mask);
        }
        sub_080003F0();
    }
}
/* Player (0x14C bytes) view with the fields used by the map warp handlers below */
struct F9E0Vec { s32 x, y; };
struct F9E0P {
    u8 pad0[0x1C];
    u16 w1C;
    u16 pad1E;
    u16 state;
    u8 pad22[0xE];
    u32 flags;
    u8 pad34[0x2C];
    u16 a60[2];
    u8 pad64[4];
    u8 b68;
    u8 pad69[0x23];
    struct F9E0Vec pos;
    struct F9E0Vec pos2;
    u8 pad9C[0x26];
    u16 aC2[2];
    u8 padC6[0x14C - 0xC6];
};
extern struct F9E0P F9E0pl[] asm("gUnk_03003CE0");
extern u8 F9E0pos[] asm("gUnk_03003D6C");
extern u32 gUnk_0850D4EC[];
extern u32 gUnk_0850D500[];
extern void sub_0802EA50(void);
extern void F700_AD04(void *, void *, s32) asm("sub_0800AD04");
extern void F700_9930(u16, u32) asm("sub_08009930");
extern s32 F700_A4A0(s32) asm("sub_0805A4A0");
extern void F700_7328(u32, void (*)()) asm("sub_08057328");
u32 sub_0808F700(u16 *arg)
{
    s32 idx;
    u16 *rec;
    u32 i;
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_08056E78();
        sub_0800CF6C();
        sub_0800CCEC();
        idx = sub_080020F4();
        rec = &arg[F700_A4A0(*arg) * 18 + 2];
        if (F9E0pl[idx].flags & 0x2000) {
            F9E0pl[idx].flags &= 0xFFFFDFFD;
            F9E0pl[idx].state = 0;
            if (sub_0800CB9C() == 0)
                *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x58) = 2;
            sub_0802996C();
        }
        F9E0pl[idx].aC2[1] = F9E0pl[idx].a60[1];
        F9E0pl[idx].aC2[0] = F9E0pl[idx].a60[0];
        F9E0pl[idx].b68 = 1;
        F9E0pl[idx].pos.x = rec[0] << 8;
        F9E0pl[idx].pos.y = rec[1] << 8;
        F9E0pl[idx].pos2 = F9E0pl[idx].pos;
        F9E0pl[idx].flags &= 0xFFFFFBFF;
        F9E0pl[idx].w1C = rec[2];
        sub_0801A664(2, 5);
        F700_9930(**(u16 **)&gUnk_03005CF4, *(u32 *)(*(u8 **)&gUnk_03005CF4 + 0x40));
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        sub_0805D518();
        gUnk_03003170.pad76 = 0x20;
        { struct F9E0Vec *q = (struct F9E0Vec *)(F9E0pos + idx * 0x14C); F700_AD04(&q->x, &q->y, sub_0800CCCC()); }
        *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) = 1;
        sub_0805A66C();
        i = 0;
        do {
            sub_080003F0();
            i++;
        } while (i < 20);
        sub_080169C8();
        sub_080003F0();
        sub_0805A4BC(arg);
        sub_080257D4(gUnk_0850D500, 0);
        sub_08056E24();
        F700_7328(*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x58), sub_0802EA50);
        F700_7328(0, sub_0808D0B0);
        *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x58) = 0;
        sub_080003F0();
        sub_080003F0();
    } else if (sub_08056E90() != 0) {
        u8 *base;
        sub_080570DC(1);
        sub_08056FB8(0, 0);
        F9E0pl[sub_080020F4()].b68 = 1;
        sub_08056E78();
        *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x36) = 0;
        F9E0pl[sub_080020F4()].flags &= ~2;
        F9E0pl[sub_080020F4()].state = 0;
        F9E0pl[sub_080020F4()].w1C = 4;
        base = *(u8 **)&gUnk_03005CF4;
        *(u16 *)(base + 0x30) = 1;
        *(u16 *)(base + 0x24) = 1;
        return 1;
    }
    if ((F9E0pl[sub_080020F4()].pos.y >> 11) <= 12) {
        u8 *base;
        F9E0pl[sub_080020F4()].flags |= 3;
        sub_08067D74();
        sub_0800BB40();
        sub_08056E64();
        sub_0801ABE8(3);
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800CCA8();
        sub_0808D05C();
        sub_08056E64();
        sub_080570DC(1);
        sub_080003F4(0x02688420);
        sub_0800CCB8();
        base = *(u8 **)&gUnk_03005CF4;
        *(u32 *)(base + 0x71C) = gUnk_0850D4EC[*(u32 *)(base + 0x40)];
        *(u16 *)(base + 0x10) = 0;
        *(u16 *)(base + 0x58) = 0;
        sub_080587F0();
        return 1;
    }
    return 0;
}
extern u32 gUnk_0850D4EC[];
extern void sub_0808B978(void);
extern void sub_0808CB58(void);
extern void F9E0_AD04(void *, void *, s32) asm("sub_0800AD04");
extern void F9E0_9930(u16, u32) asm("sub_08009930");
extern s32 F9E0_A4A0(s32) asm("sub_0805A4A0");
extern void F9E0_7328(u32, void (*)(void)) asm("sub_08057328");
u32 sub_0808F9E0(u16 *arg)
{
    s32 idx;
    u16 *rec;
    struct F9E0P *p;
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_08056E78();
        sub_0800CCEC();
        idx = sub_080020F4();
        rec = &arg[F9E0_A4A0(*arg) * 18 + 2];
        if (F9E0pl[idx].flags & 0x2000) {
            F9E0pl[idx].flags &= 0xFFFFDFFD;
            p = &F9E0pl[idx];
            p->aC2[1] = p->a60[1];
            p->aC2[0] = p->a60[0];
        }
        F9E0pl[idx].pos.x = rec[0] << 8;
        F9E0pl[idx].pos.y = 0x1BE00;
        F9E0pl[idx].pos2 = F9E0pl[idx].pos;
        F9E0_9930(**(u16 **)&gUnk_03005CF4, *(u32 *)(*(u8 **)&gUnk_03005CF4 + 0x40));
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        gUnk_03003170.pad76 = 0x20;
        { struct F9E0Vec *q = (struct F9E0Vec *)(F9E0pos + idx * 0x14C); F9E0_AD04(&q->x, &q->y, sub_0800CCCC()); }
        *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) = 1;
        sub_08056E38();
        if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x36) & 0x8000)
            F9E0_7328(0, sub_0808B978);
        else
            F9E0_7328(0, sub_0808CB58);
    } else if (sub_08056E90() != 0) {
        u8 *base;
        sub_0800BB40();
        sub_08056E64();
        sub_0801A664(2, 5);
        sub_080576C4();
        sub_0800BB40();
        sub_080570DC(1);
        base = *(u8 **)&gUnk_03005CF4;
        *(u32 *)(base + 0x71C) = gUnk_0850D4EC[*(u32 *)(base + 0x40)];
        *(u16 *)(base + 0x10) = 0;
        return 1;
    }
    return 0;
}
