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

/* [EmptySceneControllerHook] Empty callable hook; returns without reading or modifying state. */
void sub_0808D4A8(void) {

}
extern u32 gUnk_084F794C[];
/* [HandleScene3Controller] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns zero.
 * Otherwise returns zero until area change is requested; then hides screen window, waits for transition idle,
 * stops map updates, installs gUnk_084F794C[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and
 * +0x24 to one and returns one. */
u32 sub_0808D4AC(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene3AlternateController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_084F794C[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. */
u32 sub_0808D520(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleDelayedSecondaryEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_0809AEE8; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. Initialization additionally
 * waits four frames then starts sub_0808D654 with null secondary entry; completion deactivates non-retained
 * field items. The return-one branch sets scene halfwords +0x30 and +0x24 to one; it does not clear +0x10. */
s32 sub_0808D594(s32 arg)
{
    u32 zero;
    u8 *base;
    u32 one;
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
extern u8 gUnk_084A1910[];
extern void sub_0801623C(void *, void *, s32);
extern void sub_08019F60(void *);
extern s32 sub_08019CE8(void *);
extern void sub_0801A120(void *, s32, s32);
extern void sub_0801C8F0(void *);
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern u32 sub_0800BC08(s32, s32, void *, void *, s32, s32);
extern s32 *sub_08007870(s32, s32, u32, u32, u32, void *, u32, u32);
static inline void d654InitAnimation(u32 *a, u32 b, u32 c, s32 d, s32 e) { sub_08065158(a, b, c, d, e); }
/* [TaskDestructibleActorWithHealthPaletteSteps] r0 actor pointer. Initializes from0x084A1910 with argument3,
 * adds actor id halfword+0 to halfword+2, reads signed-halfword stat data at+0x204, sets health/current max to
 * data+6*3 and second stat to data+4*20, initializes animation/palette/damage state. Loop runs actor update
 * while scene shutdown/terminal predicates remain0. Actor state0 initializes resource0x5005D slot5; state10
 * starts8-tick flashing, state11 starts20-tick flashing and audio command(2). Applies pending damage when
 * flashing ends, maps signed health-percent to palette indices0..7 with thresholds89/69/49/29/19/14/9, draws
 * with scene guards and staggered palette uploads, shows temporary damage numbers. */
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
    u32 var_sl;
    register u32 temp_r8 asm("r8");
    register u32 temp_r9 asm("r9");
    u8 *temp_r4;
    u16 *palette;
    register u32 zero asm("r5");
    u16 *paletteInit;

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
    {
        u8 *hold = arg0 + 0x68;
        s32 val;
        *(u16 *)hold = zero;
        val = *(s16 *)(temp_r4 + 6);
        asm volatile("" : : "r"(hold) : "memory");
        temp_r0 = val * 3;
    }
    (*(s16 *)(arg0 + 0x1D6)) = temp_r0;
    (*(s16 *)(arg0 + 0x5C)) = temp_r0;
    temp_r0_2 = *(s16 *)(temp_r4 + 4);
    scaledStat = temp_r0_2 * 2;
    temp_r0_2 *= 8;
    temp_r0_2 += scaledStat;
    temp_r0_2 *= 2;
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
            d654InitAnimation(anim, 0x5005D, 5, -1, temp_r4_2);
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
        sub_0800BC08((s32) ((u32)(*(s32 *)(arg0 + 0x14)) << 8) >> 0x10, (s32) ((u32)(*(s32 *)(arg0 + 0x18)) << 8) >> 0x10, &x, &y, 0x30, drawFlags);
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
                if (((u32)sub_08019CE8(arg0) << 0x10) != 0) {
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
                            u32 bit = 2;
                            
                            bits = timer;
                            
                            if (bit & bits) {
                                u32 raw = offset;
                                u32 shifted;
                                register u32 mask asm("r3");
                                
                                shifted = raw << 16;
                                
                                mask = 0xFFFF0000;
                                
                                offset = (u32)(shifted + mask) >> 0x10;
                            }
                        }
                    }
                } else {
                    u32 limit = 0xFFFF;
                    s32 z;
                    
                    timer = limit;
                    z = 0;
                    asm("" : "+r"(z));
                    damage = z;
                    (*(s32 *)(arg0 + 0x4C)) = z;
                }
            }
            if ((sub_0800CCCC() == 0) && ((gUnk_03002344 & 1) == (1 & (*(u16 *)(arg0 + 0x0))))) {
                u32 data = anim[3];
                
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

/* [HandleScene4Controller] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns zero.
 * Otherwise returns zero until area change is requested; then hides screen window, waits for transition idle,
 * stops map updates, installs gUnk_084FA298[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and
 * +0x24 to one and returns one. */
u32 sub_0808D9AC(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene4AlternateController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_084FA298[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. */
u32 sub_0808DA20(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleWaypointEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_0809D878; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. The return-one branch sets
 * scene halfwords +0x30 and +0x24 to one; it does not clear +0x10. */
s32 sub_0808DA94(s32 arg)
{
    u32 zero;
    u8 *base;
    u32 one;
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
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern u32 sub_0800BC08(s32, s32, void *, void *, s32, s32);
extern s32 *sub_08007870(s32, s32, u32, u32, u32, void *, u32, u32);
extern s32 sub_08021FE0(void *, void *, void *, void *);
extern void sub_08029A7C(s32, s32, s32);
/* The frame/attribute pairs and screen coordinates have distinct stack storage.
 * Register allocation and call scheduling still differ from the original. */
/* [TaskAnimateBouncingLeftwardSceneHazard] r0 lane selector 0..3 chooses unsigned Q8 y=140/148/166/170; other
 * inputs leave y stack slot undefined. Starts x=980 Q8, height=160 Q8, velocity0; moves x left2 pixels each
 * iteration, adds velocity to height, subtracts40 from velocity, bounces at height<=0 using height1 and
 * negative arithmetic-half velocity. One-time overlap check when height>>8<=7 invokes local-player hit
 * handler0x08029A7C(0,16,1); one-time first-positive-velocity sound46. Animates resource0x50122, draws
 * ground-shadow and elevated sprite only when four scene predicates permit, but physics/hit checks continue
 * while drawing suppressed. */
void sub_0808DB38(u32 arg)
{
    u32 anim[13];
    u16 a0, a1, b0, b1, scrX, scrY;
    s32 pos[2];
    u32 size, box;
    struct Player *player;
    s32 hit, sound;
    s32 height, speed;
    register u32 priority asm("r4");
    u32 pr;
    s32 *sprite;

    sub_08065158(anim, 0x50122, 0, -1, 0);
    sub_08000AF0(0x15, (void *)anim[3], 1);
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
        u32 maskhi = 0xFFFF0000;
        u32 masklo = 0xFFFF;
        u32 boxwidth = 0x10;
        size = 0x100010;
        player = &gUnk_03003CE0[sub_080020F4()];
        {
            u32 b = ((box & maskhi) | boxwidth) & masklo;
            u32 upper = 0x80000;
            
            b |= upper;
            box = b;
        }
    }
    hit = 1;
    sound = 1;
    while ((pos[0] >> 8) > 45) {
        { register s32 d asm("r2") = -0x200; register s32 n asm("r0"); asm("" : "+r"(d)); n = d + pos[0]; pos[0] = n; }
        height += speed;
        speed -= 0x28;
        { s32 hc = height; asm("" : "+r"(hc));
        if (hc <= 0) {
            height = 1;
            speed = -(speed >> 1);
        }
        }
        if (speed > 0 && sound) {
            if (sub_0800CCCC() == 0) sub_0805865C(0x2E);
            sound = 0;
        }
        if (hit && (height >> 8) <= 7 && sub_08021FE0(pos, (u8 *)player + 0x8C, &size, &box)) {
            hit = 0;
            sub_08029A7C(0, 0x10, 1);
        }
        sub_08065370(anim, 0, (s32)&a0, (s32)&a1, 1);
        sub_08065370(anim, 1, (s32)&b0, (s32)&b1, 1);
        if (!sub_0800CC98() && !sub_0800CCCC() && !sub_0800CD34() && !sub_0800CD8C()) {
            sub_0800BC08((s16)(pos[0] >> 8), (s16)(pos[1] >> 8), &scrX, &scrY, 0x30, 0);
            priority = (u8)sub_0800BC44(pos[0] >> 8, pos[1] >> 8, 0);
            sub_08007870(scrX, scrY - 1, 1, b0, 3, &anim[7], anim[2], anim[0]);
            sprite = sub_08007870(scrX, scrY, 0, a0, priority, &anim[7], anim[2], anim[0]);
            sprite[3] -= height >> 8;
        }
        sub_080003F0();
    }
    if (!sub_0800CCCC()) sub_0805865C(0x29);
    sub_08065158(anim, 0x50053, 0, -1, 0);
    a1 = 0;
    a0 = 0;
    while (!sub_08065370(anim, 6, (s32)&a0, (s32)&a1, 0)) {
        if (!sub_0800CC98() && !sub_0800CCCC() && !sub_0800CD34() && !sub_0800CD8C()) {
            sub_0800BC08((s16)(pos[0] >> 8), (s16)(pos[1] >> 8), &scrX, &scrY, 0x30, 0);
            pr = sub_0800BC44(pos[0] >> 8, pos[1] >> 8, 0);
            sub_08007870(scrX, scrY, 6, a0, (u8)pr, &anim[7], anim[2], anim[0]);
        }
        sub_080003F0();
    }
}

extern u32 gUnk_084FD06C[];
extern void sub_0808E130(void);
/* [HandleScene5TimedShakeController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_084FD06C[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. Initialization starts sub_0808E130 through scene-hook registration
 * and writes map halfword pad72=20. */
u32 sub_0808DE08(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene5ShakeController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns zero.
 * Otherwise returns zero until area change is requested; then hides screen window, waits for transition idle,
 * stops map updates, installs gUnk_084FD06C[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and
 * +0x24 to one and returns one. Initialization additionally starts scene hook sub_0808E130 via
 * sub_08057328(0,...); that hook repeatedly applies a sine-derived camera offset. */
u32 sub_0808DE94(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [UpdateBouncingHazardSceneAndQueueLanes] r0 scene input. If scene halfword+0x10=0, initializes
 * via0x0802704C, starts local bouncing-hazard callback with argument0, and requests sound247 through5865C
 * (global27D0 mask20 may suppress the audio call). Otherwise terminal flag+4 bit4 triggers transition request
 * mode3 and wait, calls5867C with incomingr0=247 to stop that sound, next resource from0x084FD06C[scene
 * word+0x40] into+0x71C, clears+0x10, sets+0x24/+0x30=1, returns1. Every other path, including initialization,
 * continues to parent-or-loopback and tick&127 gating: RNG&7==4 enqueues four hazard lanes0..3, otherwise a
 * second RNG&3 selects one. Returns0 without verifying enqueues. */
u32 sub_0808DF14(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene5EncounterController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts
 * actor sub_080AB2F8 and returns zero. Otherwise returns zero until area change is requested; then hides
 * screen window, waits for transition idle, stops map updates, installs gUnk_084FD06C[scene word +0x40] into
 * scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization calls sub_0800CD9C
 * before scene setup and again after actor-task startup. */
u32 sub_0808E000(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleOrbitingStrikeEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_0809FB6C; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. The return-one branch sets
 * scene halfwords +0x30 and +0x24 to one; it does not clear +0x10. */
s32 sub_0808E090(s32 arg)
{
    u32 zero;
    u8 *base;
    u32 one;
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
/* [TaskOscillateVerticalSceneOrCameraOffset] Nonstandard machine entry: preserved r4 supplies initial phase;
 * body never initializes it from r0 or zero. Each infinite iteration updates phase=u16(r4+1), resets phase0
 * when above255, reads signed16 lookup0x080B9704[phase], takes machine (sample<<18) arithmetic-shift24,
 * negates/truncates signed16. If global halfword0x03003200 is0 writes scene draw offset(0,value)
 * via0x0800BB94, otherwise camera-tracking offset via0x0800BB80. Yields forever, with no menu/suspend checks
 * or restoration. Descriptive role does not establish a conventional C initial-phase ABI or deterministic
 * first offset. */
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
/* [HandleScene6Controller] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns zero.
 * Otherwise returns zero until area change is requested; then hides screen window, waits for transition idle,
 * stops map updates, installs gUnk_0850008C[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and
 * +0x24 to one and returns one. */
u32 sub_0808E184(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene6AlternateController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_0850008C[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. */
u32 sub_0808E1F8(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene6EncounterController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts
 * actor sub_080AC844 and returns zero. Otherwise returns zero until area change is requested; then hides
 * screen window, waits for transition idle, stops map updates, installs gUnk_0850008C[scene word +0x40] into
 * scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization calls sub_0800CD9C
 * before scene setup and again after actor-task startup. */
u32 sub_0808E26C(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleEightProjectileEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_080A1208; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. The return-one branch sets
 * scene halfwords +0x30 and +0x24 to one; it does not clear +0x10. */
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
/* [HandleScene7Controller] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns zero.
 * Otherwise returns zero until area change is requested; then hides screen window, waits for transition idle,
 * stops map updates, installs gUnk_085028BC[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and
 * +0x24 to one and returns one. */
u32 sub_0808E3A0(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene7AlternateController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_085028BC[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. */
u32 sub_0808E414(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleCompanionPatternEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_080A27B8; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. Completion also clears scene
 * +0x10 and sets +0x30/+0x24 to one. */
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
extern s32 initE530(void*,u32,u32,s32,u32) asm("sub_08065158");
extern u32 coordE530(s16,s16,u16*,u16*,s32,s32) asm("sub_0800BC08");
extern s32 visE530(s32,s32,s32) asm("sub_0800BC44");
extern void *drawE530(u16,u16,u32,u32,u8,void*,u32,u32) asm("sub_08007870");
extern void spawnE530(s32,s32,s32,s32,s32) asm("sub_08079888");
void sub_0808E530_v(u32 arg) asm("sub_0808E530");
/* [TaskAnimateFallingAreaDamageIndicator] Packed full-word r0: low16 x in pixels; bits16..23 variant.
 * If0x0800CCCC predicate nonzero returns immediately. Otherwise initializes sprite resource0x500F1; variant0
 * chooses frame14, variant1 frame15, other variants leave frame stack slot undefined. World point
 * is(x<<8,80<<8), height80<<8 and velocity0; every iteration adds velocity to height, subtracts32 from
 * velocity, conditionally draws sprite at world screen position and adjusts the returned object with
 * object.wordC -= arithmetic_shift_right(height,8), then yields. Draw suppressed by four scene predicates, but
 * physics continues. Stops when scene flag+4 bit4 set or signed height<=0. */
void sub_0808E530_v(u32 arg)
{
    u8 sprite[0x34];
    u16 outX, outY;
    u32 frame;
    struct { s32 x, y; } pos; /* 8-byte struct kept in r4:r5 */
    s32 height, velocity;
    u8 *object;
    s32 vis;

    if (sub_0800CCCC() == 0) {
        initE530(sprite, 0x500F1, 0, -1, 0);
        switch ((arg >> 16) & 0xFF) {
        case 0:
            frame = 14;
            break;
        case 1:
            frame = 15;
            break;
        }
        pos.x = (arg & 0xFFFF) << 8;
        pos.y = 0x5000;
        height = 0x5000;
        velocity = 0;
        sub_080020F4();
        while (1) {
            height += velocity;
            velocity -= 32;
            if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0 && sub_0800CD8C() == 0) {
                coordE530(pos.x >> 8, pos.y >> 8, &outX, &outY, 48, 0);
                vis = visE530(pos.x >> 8, pos.y >> 8, 0);
                object = drawE530(outX, outY, 0, frame, vis, sprite + 0x1C, *(u32 *)(sprite + 8), *(u32 *)sprite);
                *(s32 *)(object + 0xC) -= height >> 8;
            }
            sub_080003F0();
            if (sub_08056E90() != 0 || height <= 0)
                break;
        }
        if (sub_08056E90() == 0) {
            if (((arg >> 16) & 0xFF) != 0)
                spawnE530(4, pos.x, pos.y, 5, 0);
            else
                spawnE530(4, pos.x, pos.y, 4, 0);
        }
    }
}
extern u32 tableE66C[] asm("gUnk_085060D4");
extern void taskE94C(void) asm("sub_0808E94C");
extern void taskE970(void) asm("sub_0808E970");
/* [UpdateAutoscrollAndFallingAreaDamageScene] r0 scene input. On initial scene halfword+0x10=0 calls0x0802704C
 * then dispatches by map halfword+0x90: cases2/12 write scene-global halfword0x03003170+0x70=30 (the C alias
 * width0 does not prove a map-dimension change) then start layer3 autoscroll; case4 requests linked guarded
 * falling-area-damage callback0x0808E970 with full-word guard-index argument0x80000000, not a preformed bit
 * mask and also starts autoscroll; cases6/8/10/14 start only autoscroll; case17 calls0x0802996C; other values
 * do neither. Returns0 on initialization. */
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
/* [HandleScene8MenuBlockingController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts
 * actor sub_080A756C and returns zero. Otherwise returns zero until area change is requested; then hides
 * screen window, waits for transition idle, stops map updates, installs gUnk_085060D4[scene word +0x40] into
 * scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization additionally calls
 * sub_08015ED4 to block local game-menu requests and sub_08015D74 to set local player flag bit12. */
u32 sub_0808E774(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene8EncounterController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts
 * actor sub_080AE1B4 and returns zero. Otherwise returns zero until area change is requested; then hides
 * screen window, waits for transition idle, stops map updates, installs gUnk_085060D4[scene word +0x40] into
 * scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization calls sub_0800CD9C
 * before scene setup and again after actor-task startup. */
u32 sub_0808E7FC(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleLayerResetEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_080A4D08; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. Initialization writes map
 * width0=30; completion sets layers1 and3 scroll offsets to zero. The return-one branch sets scene halfwords
 * +0x30 and +0x24 to one; it does not clear +0x10. */
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
/* [TaskAutoScrollLayerThreeSourceHorizontally] No arguments or return path. Sets layer3 camera-relative mode
 * to0 once, then adds42 to a32-bit accumulator initially0 each iteration. Passes signed result of
 * (accumulator<<8) arithmetic-shift16 as layer3 source x, y0, then yields forever. This has machine-width
 * wrap/truncation behavior, not an unbounded real-valued position. Source-scroll setter may suppress writes
 * under its own scene guard; task does not check full-screen-menu state. Complete original configured body
 * audited against ROM; copied verified-main ELF static equality, no local build or runtime test. */
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
/* [TaskPeriodicallyQueueFallingAreaDamageIndicator] No arguments or meaningful return. While scene
 * flags-halfword+4 bit4 is0, checks helper0x08058DB0 then global32-bit tick&127. Only when both zero does it
 * enqueue link-scene-callback0x0808E530 with RNG%320+80 as full argument (80..399, variant bits0). Yields once
 * every loop regardless; checks terminal flag before first loop and after each yield. Does not verify enqueue
 * success, execute the animation inline or wait for animation completion. Predicate0x08058DB0 is retained
 * without assigning an unproved gameplay meaning; dispatch frequency is tick-gated, not guaranteed one
 * animation per128 real frames. */
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
/* [TaskBlendAndAutoScrollLayerDisplayOffsets] No arguments or return path. Two32-bit accumulators start0 and
 * increase682 and136 per iteration. Sets blend-register shadow arguments(2,0x1C,1,4,12,0), then layer1 and
 * layer3 horizontal DISPLAY offsets to arithmetic-shift8 accumulators with vertical offsets0, then yields
 * forever. Does not modify source-cell positions or camera-relative mode. No menu pause check in this body;
 * callee setters retain their own scene guard. Complete original configured body audited against ROM; copied
 * verified-main ELF static equality, no local build or runtime test. Independent original setters truncate
 * source/display x/y to low16 before storing layer halfwords; accumulator arithmetic remains32-bit. */
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
/* [HandleScene9ParallaxController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_08508B54[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. Initialization starts sub_0808ECA0 for map f90 values0/2/6/13 or
 * sub_0808ECD0 for value10. The former applies layer3 horizontal parallax; the latter repeatedly changes
 * layer3 offsets. */
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
/* [HandleScene9EncounterController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts
 * actor sub_080B0288 and returns zero. Otherwise returns zero until area change is requested; then hides
 * screen window, waits for transition idle, stops map updates, installs gUnk_08508B54[scene word +0x40] into
 * scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization calls sub_0800CD9C
 * before scene setup and again after actor-task startup. */
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
/* [HandleScene9AlternateEncounterController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and
 * starts actor sub_080AF3F4 and returns zero. Otherwise returns zero until area change is requested; then
 * hides screen window, waits for transition idle, stops map updates, installs gUnk_08508B54[scene word +0x40]
 * into scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization calls
 * sub_0800CD9C before scene setup. The return-one path calls sub_0800CDAC to clear encounter activity. */
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
/* [HandlePathAttackEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_080A8164; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. The return-one branch sets
 * scene halfwords +0x30 and +0x24 to one; it does not clear +0x10. Initialization additionally starts
 * sub_0808ECD0 through scene-hook registration. */
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
/* [TaskTrackHalfCameraXOnLayerThree] No arguments or return path. Each iteration skips updates while
 * full-screen-menu flag is active; otherwise sets layer3 camera-relative mode0 and source x to signed-halfword
 * global0x030031EC divided by2 with truncation toward zero, source y0. Always yields. Identity is
 * camera-linked half-rate horizontal parallax from shared camera-position field, not autonomous scrolling;
 * source setter has its own guard. Complete original configured body audited against ROM; copied verified-main
 * ELF static equality, no local build or runtime test. Independent original setters truncate source/display
 * x/y to low16 before storing layer halfwords; accumulator arithmetic remains32-bit. */
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
/* [TaskScrollLayerThreeDisplayDiagonally] Nonstandard machine entry: preserved r4 is initial32-bit
 * accumulator, not initialized in body or loaded from r0. Sets layer3 camera-relative mode0 once. Each
 * iteration when full-screen-menu predicate is0 subtracts42 from r4, computes
 * (arithmetic_shift_right(r4,8)&15), passes same value as horizontal/vertical DISPLAY offset for layer3;
 * always yields. Menu pauses accumulation, unlike drawing-only suppression elsewhere. No return, reset,
 * source-cell movement or guaranteed initial zero; setter retains its own scene guard. Complete original
 * configured body audited against ROM; copied verified-main ELF static equality, no local build or runtime
 * test. */
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
/* [TaskVerticalParallaxModulo320] No arguments or return path. Initially writes halfwords30 at cached tile-row
 * halfwords for layer1/2 at0x03003170+0x1A/+0x32. Reads signed-halfword camera position at+0x7E. While no
 * full-screen menu: sets layer1/2 camera-relative mode0, source x0 and source y respectively (position*2)%320
 * and ((position*15)/10)%320, signed division/remainder truncating toward zero then signed-halfword
 * truncation. While menu active: instead writes21 and40 to+0x1A/+0x32, without scroll update. This task does
 * not explicitly restore30 when the menu closes; renderer09594 can subsequently overwrite these cached
 * tile-row values. The stores do not establish a menu layout or map-dimension change. */
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
/* [HandleScene10Controller] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns zero.
 * Otherwise returns zero until area change is requested; then hides screen window, waits for transition idle,
 * stops map updates, installs gUnk_0850C6E8[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and
 * +0x24 to one and returns one. */
u32 sub_0808ED7C(u32 arg)
{
    u8 *base;
    u8 *dest;
    u32 *table;
    u32 one;
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
/* [HandleScene10ParallaxController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and returns
 * zero. Otherwise returns zero until area change is requested; then hides screen window, waits for transition
 * idle, stops map updates, installs gUnk_0850C6E8[scene word +0x40] into scene +0x71C, clears +0x10, sets
 * +0x30 and +0x24 to one and returns one. Initialization writes pad72=60 for map f90 values1/16 and starts
 * sub_0808ECFC for values3/13; that hook vertically scrolls layers1/2 at different rates. */
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
/* [HandleScene10EncounterController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts
 * actor sub_080B0FC4 and returns zero. Otherwise returns zero until area change is requested; then hides
 * screen window, waits for transition idle, stops map updates, installs gUnk_0850C6E8[scene word +0x40] into
 * scene +0x71C, clears +0x10, sets +0x30 and +0x24 to one and returns one. Initialization brackets actor-task
 * startup with sub_0800CD9C. Completion calls sub_0800CDAC, clears local player flag bit1 and sets local
 * player state zero. */
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
/* [HandleAreaTwoEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_080A9950; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. Does not set scene +0x30/+0x24
 * on the return-one branch. */
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
/* [HandleFieldClearingEncounterExit] On zero scene +0x10, marks encounter active, initializes scene through
 * sub_0802704C and starts sub_080B4C34; returns zero. With nonzero +0x10, waits for area-change request;
 * selects destination (0,2), clears request and encounter activity, writes scene +0x36=3, marks current level
 * encounter cleared, clears local player flag bit 1 and state, and returns one. Does not set scene +0x30/+0x24
 * on the return-one branch. The return-one branch also deactivates non-retained field items through
 * sub_0805D518. */
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
/* [HandleScene10Flag1BController] When scene halfword +0x10 is zero, calls sub_0802704C(arg) and starts actor
 * sub_080B24B8 only if progression flag0x1B is clear, otherwise calls sub_08056E24 and returns zero. Otherwise
 * returns zero until area change is requested; then hides screen window, waits for transition idle, stops map
 * updates, installs gUnk_0850C6E8[scene word +0x40] into scene +0x71C, clears +0x10, sets +0x30 and +0x24 to
 * one and returns one. Initialization also calls sub_0800CE08; completion clears encounter activity and local
 * player flag bit1/state. */
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
/* [HandleThreeSubtypeRewardActorScene] r0 scene descriptor. Initialization when scene halfword+0x10=0
 * calls0x0800CD9C, standard scene initialization, registers actor callback0x0808F1E4 through0x0801674C with
 * null finalizer, calls0x0800CD9C again and returns0. Initialized state returns0 until terminal flag+4 bit4,
 * then hides/waits, flushes, calls0x0800CDAC, installs constant resource0x0850C6E8[19] at scene+0x71C,
 * clears+0x10 and sets halfwords+0x30/+0x24=1, returns1. Does not infer actor creation success or completion
 * merely from registration. Complete pinned matching source body and original configured range preserved for
 * static audit; original range equals copied verified-main ELF, no local build or runtime test. */
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
struct AnimF1E4 { s32 w0, w4, w8; u8 *graphics; u8 p10[12]; u8 data[24]; };
struct DataF1E4 { u8 p0[4]; s16 f4, f6; };
struct EntF1E4 {
    u16 f0; u8 p2[0xA]; u16 fC; u8 pE[6]; s32 x, y; u8 p1C[0x30]; s32 f4C; u8 p50[0xC];
    s16 f5C, f5E; u8 p60[8]; u16 f68, f6A, f6C; u8 p6E[0x166];
    s16 f1D4, f1D6; u8 p1D8[4]; u8 f1DC; u8 p1DD[0x27]; struct DataF1E4 data;
};
extern u8 tableF1E4[] asm("gUnk_084AA740");
extern u32 activeF1E4 asm("gUnk_030056FC");
extern u32 frameF1E4 asm("gUnk_03002344");
extern void setupF1E4(struct EntF1E4 *, void *, s32) asm("sub_0801623C");
extern void resetF1E4(void) asm("sub_08019F60");
extern u16 allocF1E4(s32, u32) asm("sub_08016E04");
extern void freeF1E4(s32) asm("sub_08016ECC");
extern s32 flagF1E4(s32, s32) asm("sub_0805853C");
extern void thinkF1E4(struct EntF1E4 *) asm("sub_0801C8F0");
extern s32 hpF1E4(struct EntF1E4 *) asm("sub_08019CE8");
extern void setFlagF1E4(s32, s32) asm("sub_08057A20");
extern void clrFlagF1E4(s32, s32) asm("sub_08057AA4");
extern void sfxF1E4(s32) asm("sub_0805865C");
extern s32 initF1E4(struct AnimF1E4 *, u32, u32, s32, u32) asm("sub_08065158");
extern u32 prioF1E4(s32, s32, s32) asm("sub_0800BC44");
extern u32 coordF1E4(s16, s16, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern s32 drawF1E4(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
extern void hitNumF1E4(struct EntF1E4 *, s32, s16) asm("sub_0801A120");
extern u32 dropF1E4(s32, s32, u16 *) asm("sub_08066490");
extern void palF1E4(u32, const void *, u32) asm("sub_08000AF0");

/* Boss-like map object task: draw, blink on hits, show damage numbers,
 * drop items when defeated (state 11). */
void sub_0808F1E4_v(struct EntF1E4 *e) asm("sub_0808F1E4");
void sub_0808F1E4_v(struct EntF1E4 *e)
{
    struct AnimF1E4 anim;
    struct AnimF1E4 anim2;
    u16 pkt[8];
    s16 sx, sy;
    struct DataF1E4 *data;
    u32 slot;
    u32 hitOff;
    u32 prio2;
    s32 lastHit;
    u32 blinking;
    u32 blinkTimer;
    u32 hitTimer;
    u32 prio;
    s32 pct;
    u32 limit;

    setupF1E4(e, tableF1E4, 0);
    data = &e->data;
    resetF1E4();
    limit = 0xFFFF;
    while ((slot = allocF1E4(0x5012F, 0)) == limit) {
        e->fC = 11;
        if (sub_0800CB78() != 0 || sub_08056E90() != 0) {
            activeF1E4 &= ~(1 << e->f0);
            return;
        }
        sub_080003F0();
    }
    { u32 z;
    { u16 *p = &e->f6C; z = 0; asm("" : "+r"(z)); *p = z; }
    e->f6A = z;
    e->f68 = z;
    e->f5C = e->f1D6 = data->f6 * 3;
    { s32 v = data->f4 * 2; e->f5E = e->f1D4 = (v * 4 + v) * 2; }
    e->fC = z;
    blinkTimer = 0;
    { register int or1 asm("r1"); register int or3 asm("r3"); asm("":"=r"(or1),"=r"(or3)); blinking = blinkTimer; asm(""::"r"(or1),"r"(or3)); }
    hitTimer = 0xFFFF;
    lastHit = z;
    e->f4C = z;
    }
    if (flagF1E4(0x1B, 1) != 0 || flagF1E4(0x1B, 0) != 0) {
        activeF1E4 &= ~(1 << e->f0);
        freeF1E4(slot);
        return;
    }
    while (sub_0800CB78() == 0 && sub_08056E90() == 0) {
        thinkF1E4(e);
        switch (e->fC) {
        case 0:
            initF1E4(&anim, 0x5012F, slot, -1, 0);
            e->f68 = 0;
            break;
        case 10:
            if (!blinking) {
                blinking = 1;
                blinkTimer = 8;
            }
            break;
        case 11:
            e->f1DC = 0;
            sfxF1E4(0x3F);
            goto finish;
        }
        prio = (u8)prioF1E4(e->x >> 8, e->y >> 8, 0);
        prio2 = prio;
        anim.data[0] = slot;
        coordF1E4(e->x >> 8, e->y >> 8, &sx, &sy, 0x30, 0);
        if (blinking) {
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
                if (blinkTimer & 1)
                    drawF1E4(sx, sy, e->f68, e->f6A, prio, anim.data, anim.w8, anim.w0);
                drawF1E4(sx, sy, 5, 0, prio, anim.data, anim.w8, anim.w0);
            }
            blinkTimer = (u16)(blinkTimer - 1);
            if (blinkTimer == 0) {
                if (e->fC == 11) {
                    { register int or2 asm("r2");  e->f1DC = blinkTimer; asm(""::"r"(or2)); }
                    goto finish;
                }
                e->fC = blinkTimer;
                hpF1E4(e);
                blinking = 0;
                pct = e->f5C * 100 / e->f1D6;
                if (pct <= 9) {
                    setFlagF1E4(0x1B, 1);
                    setFlagF1E4(0x1B, 0);
                    e->f6A = 4;
                } else if (pct <= 19) {
                    e->f6A = 3;
                } else if (pct <= 29) {
                    e->f6A = 2;
                } else if (pct <= 49) {
                    e->f6A = 1;
                } else {
                    e->f6A = blinkTimer;
                }
            }
        } else {
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && sub_0800CD34() == 0) {
                if (e->fC != 11)
                    drawF1E4(sx, sy, e->f68, e->f6A, prio, anim.data, anim.w8, anim.w0);
                drawF1E4(sx, sy, 5, 0, prio2, anim.data, anim.w8, anim.w0);
            }
        }
        if (e->f4C != 0 && lastHit != e->f4C) {
            if ((s16)hpF1E4(e))
                blinkTimer = 10;
            lastHit = e->f4C;
            hitTimer = 10;
            hitOff = 0;
        }
        {
            u32 old = hitTimer;
            hitTimer = (u16)(old - 1);
            if (!((u16)old & 0x8000)) {
                if (lastHit == 0) {
                    hitTimer = 0xFFFF;
                } else {
                    if (sub_0800CC98() == 0 && sub_0800CCCC() == 0 && sub_0800CD34() == 0)
                        hitNumF1E4(e, lastHit, hitOff);
                    if (hitTimer & 2)
                        hitOff = (u16)((hitOff << 16) - 0x10000 >> 16);
                }
            } else {
                hitTimer = 0xFFFF;
                lastHit = 0;
                e->f4C = 0;
            }
        }
        if (sub_0800CCCC() == 0 && (frameF1E4 & 1) == (e->f0 & 1))
            palF1E4(slot + 0x10, anim.graphics, 1);
        sub_080003F0();
    }
finish:
    if (sub_08002204() != 0) {
        if (e->fC == 11) {
            setFlagF1E4(0x1B, 1);
            setFlagF1E4(0x1B, 0);
            pkt[0] = 9;
            pkt[2] = 100;
            pkt[1] = 0;
            while (dropF1E4(e->x, e->y, pkt) == 0 && sub_08056E90() == 0)
                sub_080003F0();
            pkt[1] = 1;
            while (dropF1E4(e->x, e->y, pkt) == 0 && sub_08056E90() == 0)
                sub_080003F0();
            pkt[1] = 2;
            while (dropF1E4(e->x, e->y, pkt) == 0 && sub_08056E90() == 0)
                sub_080003F0();
        } else {
            clrFlagF1E4(0x1B, 1);
            clrFlagF1E4(0x1B, 0);
        }
    }
    activeF1E4 &= ~(1 << e->f0);
    freeF1E4(slot);
}
extern s16 scrollPosF6A8 asm("gUnk_030031EE");
/* [TaskVerticalParallaxWrapped512] No arguments or return path. When full-screen menu is inactive sets
 * layer1/2 camera-relative mode0, source x0, source y respectively (signed-halfword global0x030031EE*2)&511
 * and ((signed position*15)/10)&511. Division truncates toward zero before bitmask; negative positions
 * therefore wrap through mask rather than signed remainder320 used by0x0808ECFC. Always yields, skipping
 * updates under menu. No exit or layout halfword writes; source setters retain own scene guard. Complete
 * original configured body audited against ROM; copied verified-main ELF static equality, no local build or
 * runtime test. */
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
extern u32 F700_AD04(void *, void *, s32) asm("sub_0800AD04");
extern s32 F700_9930(u16, u32) asm("sub_08009930");
extern s32 F700_A4A0(s32) asm("sub_0805A4A0");
extern s32 F700_7328(u32, void (*)()) asm("sub_08057328");
/* [HandleChallengeStageEntryAndSelectionGate] r0 route descriptor. On uninitialized scene waits screen
 * transition, clears terminal flag, initializes scene flags/player entry from route mapping0x0805A4A0, with
 * position u16 x/y shifted8 and copied backup pair, camera/map setup and20 one-tick waits. Applies route
 * state, starts script, starts local-player/event callbacks and marks initialized. If already initialized and
 * terminal flag set, configures retry/return fields, local player state0/animation4 and halfword+0x36=0,
 * sets+0x30/+0x24=1, returns1. */
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
extern u32 F9E0_AD04(void *, void *, s32) asm("sub_0800AD04");
extern s32 F9E0_9930(u16, u32) asm("sub_08009930");
extern s32 F9E0_A4A0(s32) asm("sub_0805A4A0");
extern s32 F9E0_7328(u32, void (*)(void)) asm("sub_08057328");
/* [HandleTimedOrBattleChallengeScene] r0 route descriptor. Initial scene state waits transition, resets scene
 * flags, maps route and local-player x from unsigned16 record shifted8, forces y446 Q8 and copies position
 * backup. If player flag0x2000 set clears0x2002 and copies halfword fields+0x60/+0x62 to+0xC2/+0xC4. Loads
 * current area/map, waits readiness, sets width halfword+0x76=32 and camera, marks initialized. Selects
 * callback0x0808B978 when scene-entry halfword+0x36 has0x8000, otherwise confirmed battle winner/results
 * task0x0808CB58. Initialized terminal-flag path performs flush/reset calls, installs0x0850D4EC[scene
 * word+0x40], clears+0x10, returns1; other paths return0. */
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
