#include "global.h"
extern u32 gTbl084F0AC0[] asm("gUnk_084F0AC0");
extern void sub_080887D4();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");

void sub_08086860(void);
void sub_08087CC0(void);
void sub_08087A5C(void);
void sub_08087788(void);
void sub_080878AC(void);

extern u32 gUnk_084F26E4[];

extern u32 gUnk_084F4818[];

INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08087CC0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080887D4);
struct Task6450 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task6450 gTask6450 asm("gUnk_03006450");
void sub_08088914(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08086860;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task3480 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task3480 gTask3480 asm("gUnk_03003480");
extern void sub_08087788();
void sub_0808894C(u16 a, u32 b, u16 c, u32 d)
{
    u32 p1 = b << 16 | a;
    u32 p2 = d << 16 | c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_08087788;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_0808899C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08087CC0;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task61B0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task61B0 gTask61B0 asm("gUnk_030061B0");
void sub_080889D4(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1);
}
extern void sub_080878AC();
void sub_08088A18(u16 a, u32 b, u32 c)
{
    u32 p1 = b << 16 | a;
    u32 p2 = c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_080878AC;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_08088A60(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x10000);
}
void sub_08088AA8(u32 arg)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u8 *e;
    u32 i;
    u8 *t;
    u32 r;
    for (e = base + 0x7A4, i = 0, t = base + 0x7EC; i <= 0xE; i++, e += 0x70, t = e + 0x48) {
        r = sub_08000470((u32)t);
        if (r == 0) {
            *(u16 *)(e + 0x40) = i;
            *(u32 *)(e + 0x68) = sub_08001494(0x800);
            *(u32 *)(e + 0x54) = (u32)sub_080887D4;
            *(u32 *)(e + 0x58) = *(u32 *)(e + 0x68) + 0x7FC;
            *(u32 *)(e + 0x50) = 0xA;
            *(u32 *)(e + 0x6C) = r;
            sub_08000274_3((u32)t, (u32)e, arg);
            sub_08057624(2);
            break;
        }
    }
}
void sub_08088B24(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x20000);
}
u32 sub_08088B6C(u8 *tbl, u32 arg1)
{
    u8 *p = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    u32 i;
    u16 *e;
    s32 d;
    u8 *gs;
    u16 zero;
    for (i = 1, zero = 0; i <= 3; i++) {
        e = (u16 *)(tbl + (*(u16 *)((u8 *)gUnk_03005CF4 + 0x36) * 36 + 4) + i * 8);
        d = (*(s32 *)(p + 0x8C) >> 11) - e[0];
        if (d < 0)
            d = -d;
        if (d <= 1 && (*(s32 *)(p + 0x90) >> 11) == e[1]) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            gs = (u8 *)gUnk_03005CF4;
            *(u16 *)(gs + 0x36) = arg1;
            *(u16 *)(gs + 2) = e[2];
            *(u32 *)(gs + 0x71C) = gTbl084F0AC0[e[2]];
            *(u16 *)(gs + 0x10) = zero;
            *(u16 *)(gs + 0x1C) = zero;
            return 1;
        }
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088C24);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088F30);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089204);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089384);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089500);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089784);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080898D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089AE4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089CA0);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089EC4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A008);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A294);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A380);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A4D4);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A744);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A830);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808A984);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AA70);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AC08);
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AD90);
#ifdef NONMATCHING
void sub_0808AFA4(const u16 *pos)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14A;
    *(u32 *)(state + 0x8C) = (u32)pos[0] << 8;
    *(u32 *)(state + 0x90) = (u32)pos[1] << 8;
    *(u32 *)(state + 0x94) = *(u32 *)(state + 0x8C);
    *(u32 *)(state + 0x98) = *(u32 *)(state + 0x90);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFA4);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFE8);
#ifdef NONMATCHING
extern void B978SetTime(u32,u32) asm("sub_0805896C");
extern u8 *gStateB978 asm("gUnk_03005CF4");
extern s16 gUnk_084AA9E0, gUnk_084AAB30, gUnk_084AAC80, gUnk_084AADD0, gUnk_084AAF20, gUnk_084AB070, gUnk_084AB1C0, gUnk_084AB310, gUnk_084AB460, gUnk_084AB5B0;
extern u16 gTimeB978[] asm("gUnk_084F0C00");
extern u8 gUnk_084F0C28[], gUnk_0850CAA8[];
extern void sub_0802F208(void);
void sub_0808B978(void) {
    u8 sp4[0x34];
    volatile u32 sp38;
    volatile u32 sp3C;
    s16 *var_r1_2;
    register s16 *var_r9 asm("r9");
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1;
    s32 var_r1;
    s32 var_r8;
    u16 temp_r1_2;
    s32 var_r6;
    u32 temp_r2;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 var_r1_3;
    register u32 temp_r5 asm("r5");
    register u32 temp_r5_2 asm("r5");
    u8 temp_r5_3;
    u8 temp_r5_4;
    u32 var_r7;
    register u32 entry_r7 asm("r7");
    register u32 saved_reg_r8 asm("r8");
    register s32 divisor asm("r10");

    asm("" : "=r"(var_r9), "=r"(entry_r7), "=r"(saved_reg_r8));

    var_r7 = entry_r7;
    switch (gUnk_03003470) {                        /* switch 1 */
    case 0:                                         /* switch 1 */
        var_r1 = 0x50006;
        goto block_6;
    case 1:                                         /* switch 1 */
        var_r1 = 0x50007;
        goto block_6;
    case 2:                                         /* switch 1 */
        var_r1 = 0x50008;
        goto block_6;
    case 3:                                         /* switch 1 */
        var_r1 = 0x50009;
block_6:
        sub_08065158(&sp4, var_r1, 0, -1, 0);
        break;
    case 4:                                         /* switch 1 */
        sub_08065158(&sp4, 0x5000A, 0, -1, 0);
        break;
    }
    sub_0800CF58();
    sub_08057934();
    sub_08028AAC(0, 0x79, 0x1BE, 0);
    sub_080290E4(0, 4);
    sub_08057328(0, &sub_0802F208);
    (*(u16 *)(gStateB978 + 0x5A)) = 0U;
    sub_080003F4(0x09999000);
    temp_r2 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
    var_r6 = gTimeB978[temp_r2];
    sp38 = 0;
    switch (temp_r2) {                              /* switch 2 */
    case 0:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AA9E0;
        goto block_20;
    case 1:                                         /* switch 2 */
        var_r9 = &gUnk_084AAB30;
        break;
    case 2:                                         /* switch 2 */
        var_r9 = &gUnk_084AAC80;
        break;
    case 3:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AADD0;
        goto block_20;
    case 4:                                         /* switch 2 */
        var_r9 = &gUnk_084AAF20;
        break;
    case 5:                                         /* switch 2 */
        var_r9 = &gUnk_084AB070;
        break;
    case 6:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AB1C0;
        goto block_20;
    case 7:                                         /* switch 2 */
        var_r9 = &gUnk_084AB310;
        break;
    case 8:                                         /* switch 2 */
        var_r9 = &gUnk_084AB460;
        break;
    case 9:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AB5B0;
block_20:
        var_r9 = var_r1_2;
        break;
    }
scripts_test:
    if (*var_r9 == 0) goto block_67;
loop_23:
    sub_08057170();
    (*(u16 *)(gStateB978 + 0xA)) = 0U;
    sub_08058620(var_r9);
    goto scriptwait;
loop_42:
    {
        temp_r4 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
        if ((s32) var_r6 < (s32) (gTimeB978[temp_r4] >> 1)) {
            var_r7 = 1;
        } else if (sub_08058900(temp_r4) <= (u32) var_r6) {
            if (sub_08058900(temp_r4) == var_r6) {
                if (sub_08058934(temp_r4) > (u32) saved_reg_r8) {
                    goto block_29;
                }
                var_r7 = 0;
            } else {
                var_r7 = 0;
            }
        } else {
block_29:
            var_r7 = 2;
        }
        if (sub_0800CC98() == 0) {
            temp_r0 = sub_0800CD8C();
            if (temp_r0 == 0) {
                if (sub_08000440(0x18A92) != 0) {
                    sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0);
                    sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0);
                }
                {
                register s32 numerator asm("r0") = var_r6;
                register s32 denominator asm("r1") = 3600;
                register s32 quotient asm("r2");
                asm("" : "+r"(numerator), "+r"(denominator));
                quotient = numerator / denominator;
                asm("" : "+r"(quotient));
                temp_r5 = (u8)var_r7;
                sub_0805FB7C(1, 4, quotient, temp_r5);
                }
                {
                register s32 numerator asm("r0") = var_r6;
                register s32 denominator asm("r1") = 3600;
                asm("" : "+r"(numerator), "+r"(denominator));
                temp_r0_2 = numerator % denominator;
                }
                sub_0805FB7C(4, 4, temp_r0_2 / 60, temp_r5);
                sub_0805FB7C(7, 4, (s32) (0x64 * (temp_r0_2 % 60)) / 60, temp_r5);
            }
        }
        if ((*(u16 *)(gStateB978 + 0x5A)) != 0) {
            var_r6 -= 1;
            sp38 += 1;
        }
        sub_08057624(1U);
        if ((s32) var_r6 <= 0) {
            var_r6 = 0;
            goto block_44;
        }
        if (gUnk_03003CE0[sub_080020F4()].state == 0xB) {
            goto finish;
        } else {
            goto scriptwait;
        }
scriptwait:
        if (sub_08058420() == 0) goto loop_42;
    }
    {
block_44:
        divisor = 3600;
        asm("" : "+r"(divisor));
        goto second_body;
loop_48:
        if (gUnk_03003CE0[sub_080020F4()].state == 0xB) goto finish;
        if ((*(u16 *)(gStateB978 + 0xA)) != 1) goto block_64;
second_body:
        temp_r4_2 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
        if ((s32) var_r6 < (s32) (gTimeB978[temp_r4_2] >> 1)) {
            var_r7 = 1;
        } else if (sub_08058900(temp_r4_2) <= (u32) var_r6) {
            if (sub_08058900(temp_r4_2) == var_r6) {
                if (sub_08058934(temp_r4_2) > (u32) saved_reg_r8) {
                    goto block_53;
                }
                var_r7 = 0;
            } else {
                var_r7 = 0;
            }
        } else {
block_53:
            var_r7 = 2;
        }
        if (sub_0800CC98() == 0) {
            temp_r0_3 = sub_0800CD8C();
            if (temp_r0_3 == 0) {
                if (sub_08000440(0x18A92) != 0) {
                    sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0_3);
                    sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0_3);
                }
                {
                register s32 quotient asm("r2") = var_r6 / divisor;
                asm("" : "+r"(quotient));
                temp_r5_2 = (u8)var_r7;
                sub_0805FB7C(1, 4, quotient, temp_r5_2);
                }
                temp_r0_4 = (s32) var_r6 % divisor;
                sub_0805FB7C(4, 4, temp_r0_4 / 60, temp_r5_2);
                sub_0805FB7C(7, 4, (s32) (0x64 * (temp_r0_4 % 60)) / 60, temp_r5_2);
            }
        }
        if ((*(u16 *)(gStateB978 + 0x5A)) != 0) {
            var_r6 -= 1;
            sp38 += 1;
        }
        sub_08057624(1U);
        if (var_r6 > 0) goto loop_48;
        goto block_64;
        {
block_64:
            if ((s32) var_r6 > 0) {
                sub_08057624(3U);
                var_r9 = (s16 *)((u8 *)var_r9 + 0x38);
                goto scripts_test;
block_67:
                if ((s32) var_r6 > 0) {
                    sub_0805A4BC(&gUnk_0850CAA8);
                    temp_r0_5 = (s32) (0x64 * ((s32) ((s32) var_r6 % 3600) % 60)) / 60;
                    if (var_r6 == 1) {
                        temp_r1 = temp_r0_5 - (sub_080008C8() % (u32) (3 - temp_r0_5));
                        var_r8 = temp_r1;
                        var_r1_3 = 0x64 - temp_r1;
                    } else {
                        temp_r4_3 = temp_r0_5 - ((s32) (0x64 * ((s32) ((s32) (var_r6 - 1) % 3600) % 60)) / 60);
                        if (temp_r4_3 <= 0x63U) {
                            var_r8 = temp_r0_5 + (sub_080008C8() % temp_r4_3);
                        } else {
                            var_r8 = 0x64;
                        }
                        var_r1_3 = 0x64 - var_r8;
                    }
                    sp3C = var_r1_3;
                    (*(u16 *)(gStateB978 + 0x58)) = 1;
                } else {
                    goto block_75;
                }
                goto block_76;
            }
block_75:
            var_r6 = 0;
            var_r8 = 0;
            (*(u16 *)(gStateB978 + 0x58)) = 2;
            sub_080169C8();
block_76:
            temp_r5_3 = var_r7;
loop_83:
            if (*(s32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x90) > 0x1C1FF) {
                if (sub_0800CC98() == 0) {
                    temp_r0_6 = sub_0800CD8C();
                    if (temp_r0_6 == 0) {
                        if (sub_08000440(0x18A92) != 0) {
                            sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0_6);
                            sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0_6);
                        }
                        sub_0805FB7C(1, 4, (s32) var_r6 / 3600, temp_r5_3);
                        sub_0805FB7C(4, 4, (s32) ((s32) var_r6 % 3600) / 60, temp_r5_3);
                        sub_0805FB7C(7, 4, var_r8, temp_r5_3);
                    }
                }
                sub_08057624(1U);
                goto loop_83;
            }
            sub_080257D4(&gUnk_084F0C28, 0);
            sub_08056E24();
            temp_r5_4 = var_r7;
loop_91:
            if (sub_08056E90() == 0) {
                if (sub_0800CC98() == 0) {
                    temp_r0_7 = sub_0800CD8C();
                    if (temp_r0_7 == 0) {
                        if (sub_08000440(0x18A92) != 0) {
                            sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0_7);
                            sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0_7);
                        }
                        sub_0805FB7C(1, 4, (s32) var_r6 / 3600, temp_r5_4);
                        sub_0805FB7C(4, 4, (s32) ((s32) var_r6 % 3600) / 60, temp_r5_4);
                        sub_0805FB7C(7, 4, var_r8, temp_r5_4);
                    }
                }
                sub_08057624(1U);
                goto loop_91;
            }
            if ((s32) var_r6 > 0) {
                u32 previous, elapsed;
                temp_r4_4 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
                previous = sub_08058900(temp_r4_4);
                elapsed = sp38;
                if (previous > elapsed) {
                    B978SetTime(temp_r4_4, elapsed);
                    sub_080589A0(temp_r4_4, sp3C);
                } else if ((sub_08058900(temp_r4_4) == sp38) && (sub_08058934(temp_r4_4) > sp3C)) {
                    B978SetTime(temp_r4_4, sp38);
                    sub_080589A0(temp_r4_4, sp3C);
                }
                sub_08058A18(temp_r4_4 + 1);
                if (temp_r4_4 <= 9U) {
                    temp_r1_2 = (*(u16 *)(gStateB978 + 0x36));
                    sub_080588C0(0xFF & temp_r1_2, (u32) (0x7FFF & temp_r1_2) >> 8);
                }
            }
        }
    }
finish:
    (*(u32 *)(gStateB978 + 0x40)) = 0;
    (*(u16 *)(gStateB978 + 0x36)) = 1U;
    sub_0801A664(0, 0x14);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808B978);
#endif
#ifdef NONMATCHING
extern u16 gFlagC020 asm("gUnk_03001324");
extern u32 sub_08058260(void);
void sub_0808C020_v(void) asm("sub_0808C020");

extern void C020Launch(s32,s32,s32,s32,void (*)(void),u32) asm("sub_08057DD0");
void sub_0808C020_v(void)
{
    s32 text;
    struct Player *player;
    u16 flag;
    player = &gUnk_03003CE0[sub_080020F4()];
    text = sub_08007290(0x1403D1);
    goto test;
loop:
    if (sub_08058260() <= 0x149U) {
        C020Launch(0x78, 0x14A, 0xF0, 0x50, sub_0808C020_v, flag);
        return;
    }
    sub_08057624(1);
test:
    sub_0801A3D0(text + 2, 9, 0x12);
    flag = gFlagC020;
    if (flag == 0) goto loop;
    sub_08015C5C(sub_08058240(), 0x16C);
    while (sub_08015F20() != 0 && sub_08056E90() == 0) {
        sub_08057624(1);
    }
    player->flags |= 0x403;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C020);
#endif
#ifdef NONMATCHING
struct C0Item {u16 unk0;u8 unk2;u8 unk3;};
struct C0Player {u8 p0[16];u16 unk10;u8 p12[10];s16 unk1C;u8 p1e[2];u16 state;u8 p22[14];u32 flags;u8 p34[48];u16 unk64;u8 p66[2];u8 unk68;u8 p69[35];s32 unk8C;s32 unk90;u8 p94[180];struct C0Item *unk148;};

extern struct C0Player gPlayersC0[] asm("gUnk_03003CE0");
extern u16 gKeysC0[] asm("gUnk_03001250");
extern u16 gFlagC0 asm("gUnk_03001324");
extern u16 gHeldC0 asm("gUnk_03001308");
extern u8 *gStateC0 asm("gUnk_03005CF4");
extern u8 gPortraitC0[] asm("gUnk_08479140");
extern u8 gCoordsC0[] asm("gUnk_084F0C30");
extern void sub_0808C0C4_v(void) asm("sub_0808C0C4");
void sub_0808C0C4_v(void) {
    u32 sp0;
    void *sp4;
    s32 sp8;
    s32 spC;
    u16 sp10[2];
    u16 sp14[2];
    u8 sp18[0x34];
    u8 sp4C[0x34];
    u8 sp80[0xD0];
    u16 sp150[6];

    u32 sp15C;
    u32 sp160;
    u32 sp164;
    s32 sp168;
    s32 sp16C;
    u8 *temp_r4;
    s16 temp_r1_4;
    s16 temp_r1_5;
    s32 *temp_r4_12;
    s32 *temp_r5;
    s32 *temp_r5_3;
    s32 *temp_r5_4;
    s32 *temp_r5_5;
    s32 *temp_r5_6;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r2_6;
    s32 temp_r2_7;
    s32 temp_r4_14;
    s32 temp_r4_17;
    s32 temp_r4_19;
    s32 temp_r4_22;
    s32 temp_r4_25;
    s32 temp_r4_4;
    s32 temp_r5_2;
    s32 temp_r6;
    s32 var_r1;
    s32 var_r2;
    s32 var_r9;
    struct C0Player *temp_r0;
    u16 *temp_r0_10;
    u16 *temp_r0_3;
    u16 *temp_r0_5;
    u16 *temp_r0_6;
    u16 *temp_r0_8;
    u16 *temp_r0_9;
    u16 *temp_r1_3;
    u16 *temp_r1_8;
    u16 *var_r0;
    u16 *var_r0_2;
    u16 *var_r0_3;
    u16 *var_r0_4;
    u16 *var_r0_5;
    u16 *var_r0_6;
    u16 *var_r0_7;
    u16 *var_r1_2;
    u16 temp_r0_4;
    u16 temp_r0_7;
    u16 temp_r1_6;
    u16 temp_r2_2;
    u16 temp_r3;
    u16 temp_r4_9;
    u32 temp_r1_10;
    u32 temp_r1_12;
    u32 temp_r1_14;
    u32 temp_r1_16;
    u32 temp_r1_2;
    u32 temp_r3_2;
    u32 temp_r4_11;
    u32 temp_r4_16;
    u32 temp_r4_18;
    u32 temp_r4_21;
    u32 temp_r4_24;
    u32 temp_r4_3;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r6;
    u32 var_r6_10;
    u32 var_r6_11;
    u32 var_r6_12;
    u32 var_r6_13;
    u32 var_r6_14;
    u32 var_r6_2;
    u32 var_r6_3;
    u32 var_r6_4;
    u32 var_r6_5;
    u32 var_r6_6;
    u32 var_r6_7;
    u32 var_r6_8;
    u32 var_r6_9;
    u8 *temp_r4_10;
    u8 *temp_r4_15;
    u8 *temp_r4_20;
    u8 *temp_r4_23;
    u8 *temp_r4_2;
    struct C0Item **temp_r0_2;
    struct C0Item **temp_r4_13;
    struct C0Item **temp_r7;
    struct C0Item **temp_r7_2;
    struct C0Item **temp_r7_3;
    struct C0Item **temp_r7_4;
    struct C0Item **var_r7;
    struct C0Item *temp_r1;
    struct C0Item *temp_r1_11;
    struct C0Item *temp_r1_13;
    struct C0Item *temp_r1_15;
    struct C0Item *temp_r1_7;
    struct C0Item *temp_r1_9;
    struct C0Player *temp_r4_5;
    struct C0Player *temp_r4_6;
    struct C0Player *temp_r4_7;
    struct C0Player *temp_r4_8;

    gKeysC0[0x2 / 2] = 0;
    gKeysC0[0x0 / 2] = 0;
    gKeysC0[0x6 / 2] = 0;
    gKeysC0[0x4 / 2] = 0;
    gKeysC0[0xA / 2] = 0;
    gKeysC0[0x8 / 2] = 0;
    gKeysC0[0xE / 2] = 0;
    gKeysC0[0xC / 2] = 0;
    sub_0800B974(0x38U, 0x1EU);
    sp0 = 0xF;
    sub_0800B650(0x35, 0x1F, 0x06000000, 0U, sp0);
    sp0 = 0;
    sub_08065158(&sp18, 0x50067, 9, -1, sp0);
    sub_080653CC();
    sub_080009F8(0x200, 0, 1);
    sub_080009C0(0x1D00, 0, 1);
    sp15C = (s32) ((sp15C & 0xFFFF0000) | 0x1E0A);
    sub_08000AA8(2U, &sp15C);
    *(u16 *)&sp15C = 0x1F03;
    sub_08000AA8(3U, &sp15C);
    var_r6 = 0;
loop_2:
    if (var_r6 < sub_08002164()) {
        temp_r4 = sp80 + (0x34 * var_r6);
        temp_r0 = &gPlayersC0[var_r6];
        sp0 = 0;
        sub_08065158(temp_r4, *(u32 *)(gPortraitC0 + temp_r0->unk10 * 4 + temp_r0->unk64 * 0x58), 0, -1, sp0);
        temp_r4[0x1C] = (s8) var_r6;
        var_r6 += 1;
        goto loop_2;
    }
    switch (gUnk_03003470) {
    case 0:
        var_r1 = 0x50002;
block_9:
        sp0 = 0;
        sub_08065158(&sp4C, var_r1, 0, 0x80000000, sp0);
        break;
    case 1:
        var_r1 = 0x5015B;
        goto block_9;
    case 2:
        var_r1 = 0x5015C;
        goto block_9;
    case 3:
        var_r1 = 0x5015D;
        goto block_9;
    case 4:
        sp0 = 0;
        sub_08065158(&sp4C, 0x5015E, 0, 0x80000000, sp0);
        break;
    }
    sp160 = 0;
    sub_080003F0();
    sub_080003F0();
    sub_0800CF90();
    sub_080003F0();
    sub_0801A664(0, 0x13);
    sub_080003F0();
    sub_0801AB50(6);
    gPlayersC0[sub_080020F4()].unk1C = (u16) sp160;
    sp168 = (s32) (u8) sub_08001108(0x88U);
    sp164 = sub_0800115C((u32) sub_0808528C);
    sub_08000D8C();
loop_14:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_14;
    }
loop_15:
    gPlayersC0[sub_080020F4()].unk90 = 0;
    gPlayersC0[sub_080020F4()].unk8C = 0;
    gFlagC0 = 0;
loop_16:
    temp_r4_2 = sub_08007290(0x1401F6) + 2;
    sub_0801A3D0(temp_r4_2, (u16) (0xF - ((u32) sub_0801A638(temp_r4_2) >> 1)), 0x12);
    var_r6_2 = 0;
    var_r0 = &sp150[0];
    do {
        *var_r0 = 0;
        var_r0 += 1;
        var_r6_2 += 1;
    } while (var_r6_2 <= 4U);
    var_r6_3 = 0;
    var_r9 = 0;
loop_24:
    if (var_r6_3 < sub_08002164()) {
        temp_r0_2 = (struct C0Item **)((u8 *)gPlayersC0 + 0x148 + var_r9);
        temp_r1 = *temp_r0_2;
        temp_r4_3 = (u16) temp_r1->unk0 >> 4;
        if (temp_r4_3 == 0) {
            temp_r1_2 = (u8) temp_r1->unk3 >> 4;
            temp_r2 = ((temp_r1_2 * 9) + ((&sp150[0])[temp_r1_2] * 3)) * 2;
            sp0 = temp_r4_3;
            temp_r4_4 = 0x34 * var_r6_3;
            temp_r5 = sp80 + temp_r4_4;
            sp4 = (u8 *)temp_r5 + 0x1C;
            sp8 = *(s32 *)(sp80 + 8 + temp_r4_4);
            spC = *temp_r5;
            sub_08007870(*(u16 *)(gCoordsC0 + temp_r2), *(u16 *)(gCoordsC0 + temp_r2 + 2), *(u16 *)(gCoordsC0 + temp_r2 + 4), 0, sp0, sp4, sp8, spC);
            if (sub_080020F4() == var_r6_3) {
                temp_r1_3 = &(&sp150[0])[((struct C0Player *)((u8 *)gPlayersC0 + var_r9))->unk1C];
                *temp_r1_3 += 1;
            } else {
                temp_r0_3 = &(&sp150[0])[(u8) (*temp_r0_2)->unk3 >> 4];
                *temp_r0_3 += 1;
            }
        }
        var_r9 += 0x14C;
        var_r6_3 += 1;
        goto loop_24;
    }
    temp_r6 = sub_080020F4();
    if (0x20 & gHeldC0) {
        temp_r4_5 = &gPlayersC0[temp_r6];
        temp_r1_4 = (s16) temp_r4_5->unk1C;
        if ((temp_r1_4 != 1) && (temp_r1_4 != 3)) {

        } else {
            temp_r4_5->unk1C = (u16) (temp_r4_5->unk1C - 1);
block_47:
            sub_0805865C(0xE);
        }
block_81:
        sub_080003F0();
        goto loop_16;
    }
    if (0x10 & gHeldC0) {
        temp_r4_6 = &gPlayersC0[temp_r6];
        temp_r1_5 = (s16) temp_r4_6->unk1C;
        if ((temp_r1_5 != 0) && (temp_r1_5 != 2)) {

        } else {
            temp_r4_6->unk1C = (u16) (temp_r4_6->unk1C + 1);
            goto block_47;
        }
        goto block_81;
    }
    temp_r3 = 0x40 & gHeldC0;
    if (temp_r3 != 0) {
        temp_r4_7 = &gPlayersC0[temp_r6];
        temp_r0_4 = temp_r4_7->unk1C;
        if ((u32) temp_r0_4 <= 1U) {
            temp_r4_7->unk1C = 4U;
            goto block_47;
        }
        temp_r1_6 = temp_r0_4 - 2;
        if ((u32) temp_r1_6 > 1U) {

        } else {
            temp_r4_7->unk1C = temp_r1_6;
            goto block_47;
        }
        goto block_81;
    }
    if (0x80 & gHeldC0) {
        temp_r4_8 = &gPlayersC0[temp_r6];
        temp_r2_2 = temp_r4_8->unk1C;
        if ((u32) temp_r2_2 <= 1U) {
            temp_r4_8->unk1C = (u16) (temp_r2_2 + 2);
            goto block_47;
        }
        if ((s16) temp_r2_2 != 4) {

        } else {
            temp_r4_8->unk1C = temp_r3;
            goto block_47;
        }
        goto block_81;
    }
    if (gFlagC0 != 1) {
        goto block_81;
    }
    temp_r4_9 = (&sp150[0])[gPlayersC0[temp_r6].unk1C];
    if ((s32) temp_r4_9 >= (s32) sub_08002164()) {
        sub_0805865C(0x61);
        goto block_81;
    }
    var_r6_4 = 0;
    do {
        temp_r4_10 = sub_08007290(0x1401F6) + 2;
        sub_0801A3D0(temp_r4_10, (u16) (0xF - ((u32) sub_0801A638(temp_r4_10) >> 1)), 0x12);
        var_r5 = 0;
        var_r0_2 = &sp150[0];
loop_54:
        *var_r0_2 = 0;
        var_r0_2 += 1;
        var_r5 += 1;
        if (var_r5 <= 4U) {
            goto loop_54;
        }
        var_r6_5 = 0;
        var_r7 = &gPlayersC0[0].unk148;
loop_59:
        if (var_r6_5 < sub_08002164()) {
            temp_r1_7 = *var_r7;
            temp_r4_11 = (u16) temp_r1_7->unk0 >> 4;
            if (temp_r4_11 == 0) {
                temp_r3_2 = (u8) temp_r1_7->unk3 >> 4;
                temp_r2_3 = ((temp_r3_2 * 9) + ((&sp150[0])[temp_r3_2] * 3)) * 2;
                sp0 = temp_r4_11;
                temp_r5_2 = 0x34 * var_r6_5;
                temp_r4_12 = sp80 + temp_r5_2;
                sp4 = temp_r4_12 + 0x1C;
                sp8 = *(s32 *)(sp80 + 8 + temp_r5_2);
                spC = *temp_r4_12;
                sub_08007870(*(u16 *)(gCoordsC0 + temp_r2_3), *(u16 *)(gCoordsC0 + temp_r2_3 + 2), *(u16 *)(gCoordsC0 + temp_r2_3 + 4), 0, sp0, sp4, sp8, spC);
            }
            var_r7 = (struct C0Item **)((u8 *)var_r7 + 0x14C);
            var_r6_5 += 1;
            goto loop_59;
        }
        var_r6_4 += 1;
        sub_080003F0();
    } while (var_r6_4 <= 7U);
    var_r5_2 = 0;
    var_r0_3 = &sp150[0];
    do {
        *var_r0_3 = 0;
        var_r0_3 += 1;
        var_r5_2 += 1;
    } while (var_r5_2 <= 4U);
    var_r5_3 = 0;
    var_r2 = 0;
loop_69:
    sp16C = var_r2;
    if (var_r5_3 < sub_08002164()) {
        temp_r4_13 = (struct C0Item **)((u8 *)gPlayersC0 + 0x148 + var_r2);
        if (((u16) (*temp_r4_13)->unk0 >> 4) == 0) {
            sp16C = var_r2;
            if (var_r5_3 == sub_080020F4()) {
                temp_r1_8 = &(&sp150[0])[((struct C0Player *)((u8 *)gPlayersC0 + var_r2))->unk1C];
                *temp_r1_8 += 1;
            } else {
                temp_r0_5 = &(&sp150[0])[(u8) (*temp_r4_13)->unk3 >> 4];
                *temp_r0_5 += 1;
            }
        }
        var_r2 += 0x14C;
        var_r5_3 += 1;
        goto loop_69;
    }
    var_r6_6 = 0;
    var_r5_4 = 0;
    var_r1_2 = &sp150[0];
    do {
        if (*var_r1_2 != 0) {
            var_r6_6 += 1;
        }
        var_r1_2 += 1;
        var_r5_4 += 1;
    } while (var_r5_4 <= 3U);
    if (var_r6_6 <= 1U) {
        sub_0805865C(0x61);
        goto block_81;
    }
    gPlayersC0[sub_080020F4()].unk90 = 0x100;
    if (gPlayersC0[sub_080020F4()].unk1C != 4) {
        temp_r4_14 = sub_080020F4();
        gPlayersC0[temp_r4_14].unk68 = (s8) (gPlayersC0[sub_080020F4()].unk1C + 3);
    } else {
        gPlayersC0[sub_080020F4()].unk68 = 0;
    }
    sub_0805865C(0xF);
    gFlagC0 = 0;
loop_82:
    if (0x20 & gFlagC0) {
        if (sp160 == 1) {
            sp160 = 0;
            sub_0805865C(0xC6);
        }
block_94:
        temp_r4_15 = sub_08007290(0x1401F7) + 2;
        sub_0801A3D0(temp_r4_15, (u16) (0xF - ((u32) sub_0801A638(temp_r4_15) >> 1)), 0x12);
        sp0 = 1;
        sub_08065370(&sp4C, 4U, (s32)&sp10[1], (s32)&sp14[1], sp0);
        sp0 = 1;
        sub_08065370(&sp4C, 5U, (s32) &sp10, (s32) &sp14, sp0);
        if (sp160 != 0) {
            sp0 = 0;
            sub_08065230(&sp4C, 0x78, 0x78, 9U, sp0);
            sp0 = (u32) sp10[1];
            sub_08065264(&sp4C, 0x88, 0x78, 5, sp0);
            sp0 = (u32) sp10[0];
            sub_08065230(&sp4C, 0x68, 0x78, 4U, sp0);
        } else {
            sp0 = sp160;
            sub_08065230(&sp4C, 0x78, 0x78, 8U, sp0);
            sp0 = (u32) sp10[1];
            sub_08065230(&sp4C, 0x88, 0x78, 5U, sp0);
            sp0 = (u32) sp10[0];
            sub_08065264(&sp4C, 0x68, 0x78, 4, sp0);
        }
        var_r6_7 = 0;
        var_r0_4 = &sp150[0];
        do {
            *var_r0_4 = 0;
            var_r0_4 += 1;
            var_r6_7 += 1;
        } while (var_r6_7 <= 4U);
        var_r6_8 = 0;
loop_103:
        if (var_r6_8 < sub_08002164()) {
            temp_r7 = &gPlayersC0[var_r6_8].unk148;
            temp_r1_9 = *temp_r7;
            temp_r4_16 = (u16) temp_r1_9->unk0 >> 4;
            if (temp_r4_16 == 0) {
                temp_r1_10 = (u8) temp_r1_9->unk3 >> 4;
                temp_r2_4 = ((temp_r1_10 * 9) + ((&sp150[0])[temp_r1_10] * 3)) * 2;
                sp0 = temp_r4_16;
                temp_r4_17 = 0x34 * var_r6_8;
                temp_r5_3 = sp80 + temp_r4_17;
                sp4 = (u8 *)temp_r5_3 + 0x1C;
                sp8 = *(s32 *)(sp80 + 8 + temp_r4_17);
                spC = *temp_r5_3;
                sub_08007870(*(u16 *)(gCoordsC0 + temp_r2_4), *(u16 *)(gCoordsC0 + temp_r2_4 + 2), *(u16 *)(gCoordsC0 + temp_r2_4 + 4), 0, sp0, sp4, sp8, spC);
                temp_r0_6 = &(&sp150[0])[(u8) (*temp_r7)->unk3 >> 4];
                *temp_r0_6 += 1;
            }
            var_r6_8 += 1;
            goto loop_103;
        }
        sub_080003F0();
        goto loop_82;
    }
    if (0x10 & gFlagC0) {
        if (sp160 == 0) {
            sp160 = 1;
            sub_0805865C(0xC7);
        }
        goto block_94;
    }
    temp_r0_7 = gFlagC0;
    if (temp_r0_7 != 1) {
        if (temp_r0_7 == 2) {
block_10:
            sub_0805865C(0x10);
            goto loop_15;
        }
        goto block_94;
        goto loop_82;
    }
    if (sp160 != 0) {
        goto block_10;
    }
    sub_0805865C(0xF);
loop_113:
    if (sub_08067C18() == 0) {
        var_r6_9 = 0;
        var_r0_5 = &sp150[0];
        do {
            *var_r0_5 = 0;
            var_r0_5 += 1;
            var_r6_9 += 1;
        } while (var_r6_9 <= 4U);
        var_r6_10 = 0;
loop_111:
        if (var_r6_10 < sub_08002164()) {
            temp_r7_2 = &gPlayersC0[var_r6_10].unk148;
            temp_r1_11 = *temp_r7_2;
            temp_r4_18 = (u16) temp_r1_11->unk0 >> 4;
            if (temp_r4_18 == 0) {
                temp_r1_12 = (u8) temp_r1_11->unk3 >> 4;
                temp_r2_5 = ((temp_r1_12 * 9) + ((&sp150[0])[temp_r1_12] * 3)) * 2;
                sp0 = temp_r4_18;
                temp_r4_19 = 0x34 * var_r6_10;
                temp_r5_4 = sp80 + temp_r4_19;
                sp4 = (u8 *)temp_r5_4 + 0x1C;
                sp8 = *(s32 *)(sp80 + 8 + temp_r4_19);
                spC = *temp_r5_4;
                sub_08007870(*(u16 *)(gCoordsC0 + temp_r2_5), *(u16 *)(gCoordsC0 + temp_r2_5 + 2), *(u16 *)(gCoordsC0 + temp_r2_5 + 4), 0, sp0, sp4, sp8, spC);
                temp_r0_8 = &(&sp150[0])[(u8) (*temp_r7_2)->unk3 >> 4];
                *temp_r0_8 += 1;
            }
            var_r6_10 += 1;
            goto loop_111;
        }
        temp_r4_20 = sub_08007290(0x1401F8) + 2;
        sub_0801A3D0(temp_r4_20, (u16) (0xF - ((u32) sub_0801A638(temp_r4_20) >> 1)), 0x12);
        sub_080003F0();
        goto loop_113;
    }
loop_123:
    if (sub_08067C08() == 0) {
        var_r6_11 = 0;
        var_r0_6 = &sp150[0];
        do {
            *var_r0_6 = 0;
            var_r0_6 += 1;
            var_r6_11 += 1;
        } while (var_r6_11 <= 4U);
        var_r6_12 = 0;
loop_121:
        if (var_r6_12 < sub_08002164()) {
            temp_r7_3 = &gPlayersC0[var_r6_12].unk148;
            temp_r1_13 = *temp_r7_3;
            temp_r4_21 = (u16) temp_r1_13->unk0 >> 4;
            if (temp_r4_21 == 0) {
                temp_r1_14 = (u8) temp_r1_13->unk3 >> 4;
                temp_r2_6 = ((temp_r1_14 * 9) + ((&sp150[0])[temp_r1_14] * 3)) * 2;
                sp0 = temp_r4_21;
                temp_r4_22 = 0x34 * var_r6_12;
                temp_r5_5 = sp80 + temp_r4_22;
                sp4 = (u8 *)temp_r5_5 + 0x1C;
                sp8 = *(s32 *)(sp80 + 8 + temp_r4_22);
                spC = *temp_r5_5;
                sub_08007870(*(u16 *)(gCoordsC0 + temp_r2_6), *(u16 *)(gCoordsC0 + temp_r2_6 + 2), *(u16 *)(gCoordsC0 + temp_r2_6 + 4), 0, sp0, sp4, sp8, spC);
                temp_r0_9 = &(&sp150[0])[(u8) (*temp_r7_3)->unk3 >> 4];
                *temp_r0_9 += 1;
            }
            var_r6_12 += 1;
            goto loop_121;
        }
        temp_r4_23 = sub_08007290(0x1401F8) + 2;
        sub_0801A3D0(temp_r4_23, (u16) (0xF - ((u32) sub_0801A638(temp_r4_23) >> 1)), 0x12);
        sub_080003F0();
        goto loop_123;
    }
    sub_08067BF8();
    if (sub_08002204() != 0) {
        gPlayersC0[0].unk90 = 0x200;
    }
    sub_0806617C();
    sub_08066220();
    sub_0801AA8C(0x1E);
loop_135:
    if (sub_0801AAE0() == 0) {
        var_r6_13 = 0;
        var_r0_7 = &sp150[0];
        do {
            *var_r0_7 = 0;
            var_r0_7 += 1;
            var_r6_13 += 1;
        } while (var_r6_13 <= 4U);
        var_r6_14 = 0;
loop_133:
        if (var_r6_14 < sub_08002164()) {
            temp_r7_4 = &gPlayersC0[var_r6_14].unk148;
            temp_r1_15 = *temp_r7_4;
            temp_r4_24 = (u16) temp_r1_15->unk0 >> 4;
            if (temp_r4_24 == 0) {
                temp_r1_16 = (u8) temp_r1_15->unk3 >> 4;
                temp_r2_7 = ((temp_r1_16 * 9) + ((&sp150[0])[temp_r1_16] * 3)) * 2;
                sp0 = temp_r4_24;
                temp_r4_25 = 0x34 * var_r6_14;
                temp_r5_6 = sp80 + temp_r4_25;
                sp4 = (u8 *)temp_r5_6 + 0x1C;
                sp8 = *(s32 *)(sp80 + 8 + temp_r4_25);
                spC = *temp_r5_6;
                sub_08007870(*(u16 *)(gCoordsC0 + temp_r2_7), *(u16 *)(gCoordsC0 + temp_r2_7 + 2), *(u16 *)(gCoordsC0 + temp_r2_7 + 4), 0, sp0, sp4, sp8, spC);
                temp_r0_10 = &(&sp150[0])[(u8) (*temp_r7_4)->unk3 >> 4];
                *temp_r0_10 += 1;
            }
            var_r6_14 += 1;
            goto loop_133;
        }
        sub_080003F0();
        goto loop_135;
    }
    sub_0801A664(0, 0x14);
    sub_0800CFA4();
    (*(u32 *)(gStateC0 + 0x40)) = 1;
    (*(u16 *)(gStateC0 + 0x36)) = 0;
    sub_08000E48();
    sub_0800115C(sp164);
    sub_08001108((u8) sp168);
    sub_08000420(0x02688420);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C0C4);
#endif
#ifdef NONMATCHING
extern u8 gUnk_084F0C28[];
extern u8 gUnk_084F0C8A[];
extern void sub_0802F208(void);
extern void sub_080003F4(s32);
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern void sub_080290E4(s32, s32);
extern void sub_080257D4(void *, s32);
extern void sub_0801A664(s32, s32);
/* The first team-count loop stops at the local player, as in the original.
 * Only indices 0..3 select a winner message; the original skips other indices.
 * Explicit shifts retain subtraction before table scaling; registers still differ. */
void sub_0808CB58(void) {
    u32 anim[13];
    s32 counts[4];
    s32 teams[4];
    u32 textId;
    s32 *sp5C;
    s16 *var_r0_3;
    s32 *temp_r0_2;
    s32 *temp_r2_3;
    s32 *var_r0;
    s32 *var_r1;
    s32 *var_r5_4;
    s32 *var_r6_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    s32 var_r1_2;
    s32 var_r6;
    u16 temp_r0_4;
    u16 temp_r5;
    u32 temp_r0_3;
    u32 var_r2;
    register u32 var_r4 asm("r4");
    u32 var_r5_3;
    u32 var_r6_3;
    register u32 var_sl asm("r10");
    u8 *var_r5;
    u8 *var_r5_2;
    u8 temp_r0;
    u8 *players;
    u32 stride;
    s32 tableIndex;
    s32 tableOffset;
    u16 tableY;
    u8 *current;
    u8 *players2;
    register u8 *table asm("r4");
    register s32 *countBase asm("r8");


    switch ((u32)gUnk_03003470) {
    case 0: sub_08065158(anim, 0x50006, 0, -1, 0); break;
    case 1: sub_08065158(anim, 0x50007, 0, -1, 0); break;
    case 2: sub_08065158(anim, 0x50008, 0, -1, 0); break;
    case 3: sub_08065158(anim, 0x50009, 0, -1, 0); break;
    case 4: sub_08065158(anim, 0x5000A, 0, -1, 0); break;
    }
    sub_0800CF58();
    sub_08028AAC(0, 0x79, 0x1BE, 0);
    sub_080290E4(0, 4);
    sp5C = teams;
    countBase = counts;
    while (sub_08067C18() == 0) sub_080003F0();
    while (sub_08067C08() == 0) sub_080003F0();
    sub_08067BF8();
    var_r6 = 0;
    var_r4 = 0;
    players = (u8 *)gUnk_03003CE0;
    stride = 0x14C;
    var_r5 = players + 0x68;
    while ((var_r4 < sub_08002164()) && (sub_080020F4() != var_r4)) {
        if (*((players + stride * sub_080020F4()) + 0x68) == *var_r5) {
            var_r6 += 1;
        }
        var_r5 += 0x14C;
        var_r4 += 1;
    }
    players2 = (u8 *)gUnk_03003CE0;
    if (*((players2 + 0x14C * sub_080020F4()) + 0x68) != 0) {
        table = gUnk_084F0C8A;
        tableIndex = *((players2 + 0x14C * sub_080020F4()) + 0x68) - 3;
        tableOffset = ((tableIndex << 1) + tableIndex) << 1;
        temp_r5 = *(u16 *)(table + tableOffset);
        tableIndex = *((players2 + 0x14C * sub_080020F4()) + 0x68) - 3;
        tableOffset = ((tableIndex << 1) + tableIndex) << 1;
        table += 2;
        tableY = (var_r6 * 10) + *(u16 *)(tableOffset + table);
        sub_08028AAC(0, temp_r5, tableY, 0);
        tableIndex = *((players2 + 0x14C * sub_080020F4()) + 0x68) - 3;
        tableOffset = ((tableIndex << 1) + tableIndex) << 1;
        table += 2;
        sub_080290E4(0, *(s16 *)(tableOffset + table));
    } else {
        table = gUnk_084F0C8A;
        sub_08028AAC(0, (s32) (u16) ((var_r6 << 5) + *(u16 *)(table + 0x18)), (s32) *(u16 *)(table + 0x1A), 0);
        sub_080290E4(0, *(s16 *)(table + 0x1C));
    }
    var_r4 = 0;
    var_r6_2 = sp5C;
    var_r5_2 = ((u8 *)gUnk_03003CE0 + 0x68);
    while (var_r4 < sub_08002164()) {
        *var_r6_2 = (s32) *var_r5_2;
        var_r6_2 += 1;
        var_r5_2 += 0x14C;
        var_r4 += 1;
    }
    sub_08057328(0, &sub_0802F208);
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = 0U;
    sub_08057934();
    sub_080003F4(0x09999000);
    var_r5_3 = 0;
loop_27:
    if (sp5C[sub_080020F4()] == 0) {
        sub_08015C14();
    }
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = 0U;
    var_r4 = 0;
    var_r0 = countBase;
    do {
        *var_r0 = 0;
        var_r0 += 1;
        var_r4 += 1;
    } while (var_r4 <= 3U);
    var_r4 = 0;
    while (var_r4 < sub_08002164()) {
        temp_r2 = 0x14C * var_r4;
        current = (u8 *)gUnk_03003CE0 + temp_r2;
        if ((((u32) (**(u8 **)(current + 0x148) << 0x1C) >> 0x1C) != 0xB) && !(*(u32 *)(current + 0x30) & 0x2000)) {
            temp_r0 = *(current + 0x68);
            if (temp_r0 != 0) {
                temp_r0_2 = &countBase[temp_r0 - 3];
                *temp_r0_2 += 1;
            }
        }
        var_r4 += 1;
    }
    var_r2 = 0;
    var_r4 = 0;
    var_r1 = countBase;
    do {
        if (*var_r1 != 0) {
            var_r2 += 1;
            (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = var_r4;
        }
        var_r1 += 1;
        var_r4 += 1;
    } while ((u32) var_r4 <= 3U);
    if (var_r2 <= 1U) {
        temp_r0_3 = var_r5_3;
        var_r5_3 += 1;
        if (temp_r0_3 > 2U) goto stable;
    } else {
        var_r5_3 = 0;
    }
    sub_08057624(1U);
    goto loop_27;
stable:
    if (var_r2 != 1) {

    } else {
        var_r6_3 = 0;
        var_r4 = 0;
        var_r5_4 = sp5C;
        while (var_r4 < sub_08002164()) {
            temp_r1 = *var_r5_4;
            if ((temp_r1 != 0) && ((temp_r1 - 3) == (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)))) {
                var_r6_3 += 1;
            }
            var_r5_4 += 1;
            var_r4 += 1;
            }
        while (sub_0805EF90() != 0) sub_080003F0();
        if (var_r6_3 <= 1U) {
            var_r4 = 0;
            goto check_player;
next_player:
            var_r4 += 1;
check_player:
            if (var_r4 >= sub_08002164()) goto found_player;
            temp_r2_2 = 0x14C * var_r4;
            if (*(u32 *)((u8 *)gUnk_03003CE0 + temp_r2_2 + 0x30) & 0x2000) goto next_player;
            if (*((u8 *)gUnk_03003CE0 + temp_r2_2 + 0x68) == 0) goto next_player;
found_player:
            switch (var_r4) {
            case 0: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FB); break;
            case 1: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FC); break;
            case 2: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FD); break;
            case 3: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FE); break;
            }
        } else {
            temp_r0_4 = *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A);
            switch (temp_r0_4) {
            case 0: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FF); break;
            case 1: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140200); break;
            case 2: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140201); break;
            case 3: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140202); break;
            }
        }
        *((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x68) = 0;
        sub_0806617C();
        while (sub_0805EEFC((void *)var_sl) == 0) sub_080003F0();
    }
    sub_080257D4(&gUnk_084F0C28, 0);
    sub_08056E24();
    if (sp5C[sub_080020F4()] == 0) {
        temp_r2_3 = (s32 *)((u8 *)&gUnk_03003CE0[sub_080020F4()] + 0x30);
        *temp_r2_3 |= 0x400;
        sub_08067D74();
    }
    while (sub_08056E90() == 0) sub_08057624(1U);
    if ((sp5C[sub_080020F4()] - 3) == (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A))) {
        (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x58)) = 0;
    } else {
        var_r1_2 = sp5C[sub_080020F4()];
        if (var_r1_2 == 0) {
            var_r0_3 = (s16 *)(*(u8 **)&gUnk_03005CF4 + 0x58);
        } else {
            var_r0_3 = (s16 *)(*(u8 **)&gUnk_03005CF4 + 0x58);
            var_r1_2 = 2;
        }
        *var_r0_3 = (s16) var_r1_2;
    }
    (*(u32 *)(*(u8 **)&gUnk_03005CF4 + 0x40)) = 0;
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x36)) = 1;
    sub_0801A664(0, 0x14);
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808CB58);
#endif
extern void sub_0808D118(void);
void sub_0808D05C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = (u32)sub_0808D118;
    if (sub_0800CB9C())
        gTask6450.fC = (u32)sub_0808C0C4;
    else
        gTask6450.fC = (u32)sub_0808AFE8;
    sub_08000274((u32)&gTask6450, 0);
}
void sub_0808D0B0(void) {
    sub_08057934();
    sub_08057984();
    sub_080587E4();
}
void sub_0808D0C4(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    if ((*(u32 *)(state + 0x30) & 0x4000) == 0) {
        do {
            sub_08057624(1);
        } while ((*(u32 *)(state + 0x30) & 0x4000) == 0);
    }
    sub_08057DD0(0x78, 0x14A, 0x78, 0x50, (u32)sub_0808C020, 0);
}
void sub_0808D118(void) {

}
u32 sub_0808D11C(u32 arg)
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
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D190(u32 arg)
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
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D204(u32 arg)
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
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern void sub_08098108(void);
s32 sub_0808D278(s32 arg)
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
    sub_0801674C((u32)sub_08098108, (u32)sub_08099720);
    sub_0800CD9C();
fail:
    return 0;
}
u32 sub_0808D31C(u32 arg)
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
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D390(u32 arg)
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
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern void sub_08099838(void);
s32 sub_0808D404(s32 arg)
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
    sub_0801674C((u32)sub_08099838, (u32)sub_0809ADE8);
    sub_0800CD9C();
fail:
    return 0;
}
