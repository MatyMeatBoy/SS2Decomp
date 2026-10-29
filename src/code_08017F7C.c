#include "global.h"

extern u8 gUnk_03005C60[];
extern u32 gUnk_03005CA0[];
void sub_0801A7AC(void);

extern u16 gUnk_03005C94;
extern u16 gUnk_03005C54;
extern u8 gUnk_03005C40[20];
extern u8 gUnk_03005740[];
extern const u8 gUnk_080B9AD0[];

struct T015Rect { u32 x:16; u32 y:16; };
struct T015Pos { u16 x, y; u8 flags:6; u8 rest:2; };
struct T015Player { u8 pad[0x148]; struct T015Pos *pos; };
extern struct T015Player T015Players[] asm("gUnk_03003CE0");
extern s32 T015Test(s32 *, void *, s32 *, u32 *) asm("sub_08021FE0");
s32 sub_08017F7C(void *arg0)
{
    s32 pos[2];
    s32 size;
    u32 rect;
    s32 found;
    struct T015Player *p;
    u32 count, i;
    register u32 temp asm("r0");
    register u32 mask1 asm("r1") = 0xFFFF0000;
    register u32 mask2 asm("r2") = 0xFFFF;
    asm("" : "+r"(mask1), "+r"(mask2));
    size = 0x014001E0;
    temp = (rect & mask1) | 0x20;
    asm("" : "+r"(temp));
    temp = (temp & mask2) | 0x200000;
    asm("" : "+r"(temp));
    rect = temp;
    found = 0;
    count = sub_08002164();
    p = T015Players;
    for (i = 0; i < count; i++, p++) {
        if (!(((u32)(p->pos->flags << 26) >> 26) & 0x20)) {
            pos[0] = (p->pos->x >> 4) << 8;
            pos[1] = ((u32)p->pos->y << 20) >> 12;
            if (T015Test(pos, arg0, &size, &rect)) found = 1;
        }
    }
    return found;
}






struct T015LPollPlayer { u8 pad[0x2C]; u16 field2C; };
extern struct T015LPollPlayer T015L_poll_players[] asm("gUnk_03003CE0");
#ifdef NONMATCHING
struct T015LActor { u16 f0; u16 f2; u16 f4; u16 f6; u16 f8; u8 padA[0x2]; u16 fC; u16 fE; u8 pad10[0x4]; s32 f14; s32 f18; s32 f1C; s32 f20; u8 pad24[0xC]; s32 f30; s32 f34; u8 pad38[0x4]; s32 f3C; u8 pad40[0x2]; s16 f42; s16 f44; u8 pad46[0x4]; s16 f4A; s32 f4C; s32 f50; s32 f54; u8 pad58[0x2]; u16 f5A; s16 f5C; s16 f5E; s16 f60; u16 f62; s16 f64; s16 f66; u16 f68; s16 f6A; s16 f6C; u16 f6E; u16 f70; u16 f72; s16 f74; u8 pad76[0x6]; u16 f7C; u16 f7E; s16 f80; s16 f82; u8 f84; u8 pad85[0x1]; u8 f86; u8 pad87[0x1]; u16 f88; u8 pad8A[0x14A]; s16 f1D4; s16 f1D6; u8 pad1D8[0x4]; s8 f1DC; u8 pad1DD[0x1F]; u8 f1FC; u8 f1FD; u8 f1FE; u8 pad1FF[0x2]; u8 f201; u8 pad202[0x24]; u8 f226; u8 pad227[0x1]; u16 f228; u8 pad22A[0xB6]; };
struct T015LAnim { s32 f0,f4,f8,fC,f10,f14,f18; s8 data[24]; };
struct T015LStack { u32 packet[4]; struct T015LAnim main,auxA,auxB,base; s16 x,y; u16 step; s16 state; u16 phase,phase2; s32 rng; u32 flags; };
#define T015L_FIELD(p,t,o) (*(t)((u8 *)(p)+(o)))
extern void T015L_sub_08007870(s16, s16, u16, u16, u32, void *, u32, u32) asm("sub_08007870");
extern void T015L_sub_0800BC08(s32, s32, s16 *, void *, s32, void *) asm("sub_0800BC08");
extern void T015L_sub_08015DE0(s32 *, s32) asm("sub_08015DE0");
extern u16 T015L_sub_08016E04(u16, u16) asm("sub_08016E04");
extern void T015L_sub_08016F28(void *) asm("sub_08016F28");
extern void T015L_sub_08017C6C(void *) asm("sub_08017C6C");
extern s32 T015L_sub_08017EC8(void *) asm("sub_08017EC8");
extern u16 T015L_sub_08019CE8(void *) asm("sub_08019CE8");
extern void T015L_sub_0801A120(void *, s32, s16) asm("sub_0801A120");
extern void T015L_sub_0801C8F0(void *) asm("sub_0801C8F0");
extern void T015L_sub_08020680(void *) asm("sub_08020680");
extern void T015L_sub_080571A4(u8, u8, s32) asm("sub_080571A4");
extern s32 T015L_sub_0805C620(void *, u32 *) asm("sub_0805C620");
extern void T015L_sub_0806171C(void *, s32) asm("sub_0806171C");
extern void T015L_sub_08065158(s32 *, s32, s32, s32, s32) asm("sub_08065158");
extern s32 T015L_sub_08067CA8(u16) asm("sub_08067CA8");
extern void T015L_sub_08067E60(u16) asm("sub_08067E60");
extern void T015L_sub_0807386C(s32, s32, s16, s32, s32) asm("sub_0807386C");
extern void T015L_sub_08077D04(u16, s16) asm("sub_08077D04");
extern void T015L_sub_0807854C(u16, s16) asm("sub_0807854C");
extern void T015L_sub_08078B24(u16, s16) asm("sub_08078B24");
extern u8 T015L_gUnk_08479140[] asm("gUnk_08479140");
extern u8 T015L_gUnk_0848FA0C[] asm("gUnk_0848FA0C");
void sub_0801801C(struct T015LActor *arg0) {
    struct T015LStack stack;
    s32 local0;
    void * local4;
    u32 local8;
    u32 localC;
    s32 local104;
    s32 local108;
    s32 local10C;
    s32 local110;
    s32 local114;
    s32 local11C;
    s32 local120;
    s32 local124;
    u32 local128;
    s32 shutdown_end;
    s32 local12C;
    u16 * local130;
    s32 local134;
    s32 * local13C;
    u16 * local140;
    u16 * local144;
    u16 * local148;
    u16 * local14C;
    u16 * local150;
    s16 * local154;
    u16 * local158;
    u16 * local15C;
    u16 * local160;
    u16 * local164;
    void *sp118;
    void *sp138;
    s16 *var_r9;
    s16 temp_r0_12;
    s16 temp_r0_5;
    s16 temp_r0_6;
    s16 var_r0_2;
    s16 var_r0_5;
    s16 var_r1;
    s32 *var_r6;
    s32 temp_r0_13;
    s32 temp_r0_14;
    s32 temp_r0_18;
    s32 temp_r0_20;
    s32 temp_r0_21;
    s32 temp_r0_23;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 temp_r0_9;
    s32 temp_r5;
    s32 var_r2;
    s32 var_r2_6;
    s8 temp_r0_19;
    struct Player *temp_r1_9;
    u16 *var_r5;
    u16 temp_r0;
    u16 temp_r0_10;
    u16 temp_r0_11;
    u16 temp_r0_15;
    u16 temp_r0_17;
    u16 temp_r0_22;
    u16 temp_r0_25;
    u16 temp_r0_8;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u16 temp_r1_4;
    u16 temp_r1_5;
    u16 temp_r1_6;
    u16 temp_r1_7;
    u16 temp_r1_8;
    u16 temp_r2;
    u16 temp_r2_2;
    u16 temp_r3;
    u16 var_r0;
    u16 var_r0_3;
    u16 var_r0_4;
    u16 var_r2_2;
    u16 var_r2_4;
    u16 var_r2_5;
    u16 var_r3;
    u32 temp_r0_16;
    u32 temp_r0_26;
    u32 temp_r0_3;
    u32 var_r2_3;
    u8 temp_r0_24;
    u8 temp_r0_2;
    u8 var_r8;

    sp118 = (u8 *)arg0 + 0x204;
    (local10C) = (s32) arg0->fC;
    (local160) = (u8 *)arg0 + 0x2D8;
    (local164) = (u8 *)arg0 + 0x2DA;
    goto loop_5;
retry_resource:
    arg0->fC = 0xBU;
    if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
        gUnk_030056FC &= ~(1 << arg0->f0);
        T015L_sub_080571A4(arg0->f86, arg0->f84, 1);
        return;
    }
    sub_080003F0();
    goto loop_5;
loop_5:
    temp_r0 = T015L_sub_08016E04(T015L_FIELD(sp118, u16 *, 0xD4), T015L_FIELD(sp118, u16 *, 0xD6));
    (local114) = (s32) temp_r0;
    if (temp_r0 == 0xFFFF) goto retry_resource;
    {
        arg0->fC = (u16) (local10C);
        (local10C) = 0xFFFF;
        (local0) = 0;
        T015L_sub_08065158(&stack.base.f0, 0x50010, 0, -1, (local0));
        asm volatile("");
        (local0) = 0;
        T015L_sub_08065158(&stack.auxA.f0, 0x5008C, 0, -1, (local0));
        asm volatile("");
        (local0) = 0;
        T015L_sub_08065158(&stack.auxB.f0, 0x5008B, 0, -1, (local0));
        asm volatile("");
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            sub_08000AF0(0x17U, stack.auxA.fC, 2U);
        }
        stack.auxA.data[0] = 7;
        stack.auxA.data[1] = 8;
        stack.auxB.data[0] = 7;
        stack.auxB.data[1] = 8;
        arg0->f68 = (u16) arg0->f8;
        arg0->f6C = 0;
        arg0->f6A = 0;
        (local108) = 0xFFFF;
        arg0->f64 = 0x1E;
        arg0->f66 = 0;
        temp_r2 = arg0->fC;
        (local14C) = (u8 *)arg0 + 0x68;
        (local154) = (u8 *)arg0 + 0x6C;
        (local150) = (u8 *)arg0 + 0x6A;
        (local144) = (u8 *)arg0 + 0x64;
        (local148) = (u8 *)arg0 + 0x66;
        switch (temp_r2) {                          /* switch 1; irregular */
        case 14:                                    /* switch 1 */
            (local11C) = 1;
            arg0->f1DC = 0;
            break;
        case 15:                                    /* switch 1 */
            (local11C) = 0;
            arg0->f1DC = 0;
            break;
        case 0:                                     /* switch 1 */
            (local11C) = 0;
            arg0->f1DC = 2;
            break;
        }
        temp_r0_2 = arg0->f226;
        if (((s32) temp_r0_2 <= 7) && ((s32) temp_r0_2 >= 4)) {
            arg0->f1DC = 0;
        }
        (local120) = 0xFFFF;
        (local130) = (u8 *)arg0 + 0x74;
        arg0->f74 = 1;
        arg0->f44 = 0;
        arg0->f6 = 0U;
        arg0->f4 = 0U;
        arg0->f42 = 0;
        arg0->f44 = 0;
        sp138 = ((u8 *)&stack.state);
        stack.state = 0;
        stack.step = 0;
        arg0->f60 = 0xFFC4;
        arg0->f4C = 0;
        (local104) = 0;
        arg0->f4A = 0;
        arg0->f54 = (local120);
        (local12C) = 1;
        stack.phase2 = (local104);
        (local13C) = ((u8 *)&stack.phase);
        stack.phase = (u16) (local104);
        stack.rng = (local104);
        temp_r0_3 = sub_08002164();
        temp_r0_4 = temp_r0_3 * 0xC;
        (local134) = temp_r0_4;
        T015L_FIELD(sp118, s16 *, 6) = (s16) ((u32) (T015L_FIELD(sp118, s16 *, 6) * *(u32 *)(temp_r0_4 + (u8 *)T015L_gUnk_0848FA0C)) / 100U);
        (local158) = (local130);
        (local140) = (u8 *)arg0 + 0x60;
        if (temp_r0_3 > 1U) {
            T015L_FIELD(sp118, s16 *, 0) = (s16) ((u32) ((T015L_FIELD(sp118, s16 *, 0) + 2) * *(u32 *)((local134) + ((u8 *)T015L_gUnk_0848FA0C + 4))) / 100U);
        }
        temp_r0_5 = T015L_FIELD(sp118, s16 *, 6) * 3;
        arg0->f1D6 = temp_r0_5;
        arg0->f5C = temp_r0_5;
        temp_r0_6 = T015L_FIELD(sp118, s16 *, 4) * 0xA * 2;
        arg0->f1D4 = temp_r0_6;
        arg0->f5E = temp_r0_6;
        (local124) = 1;
        (local15C) = (u8 *)arg0 + 0x5E + 0x1C;
    goto loop_341;
loop_body:
                *(local158) += 1;
                if ((sub_0800CB9C() != 0) && (sub_08002204() != 0)) {
                    temp_r0_8 = *(local140);
                    *(local140) = temp_r0_8 + 1;
                    if ((s32) (temp_r0_8 << 0x10) > 0x012C0000) {
                        sub_080663A4((u32) arg0->f0);
                        *(local140) = (u16) temp_r0_7;
                    }
                }
                if (arg0->f228 == 0xFFFF) {
                    T015L_sub_08020680(arg0);
                    if ((u32) *(local158) > (u32) T015L_FIELD(sp118, u16 *, 0x20)) {
                        arg0->f50 = (s32) (arg0->f50 + 1);
                    }
                }
                temp_r0_9 = sub_08065AE8();
                if (temp_r0_9 == 0) {
                    T015L_sub_0801C8F0(arg0);
                    T015L_sub_08016F28(arg0);
                    if ((u32) (u16) (arg0->f62 - 9) <= 1U) {
                        arg0->f4 = (u16) temp_r0_9;
                        arg0->f6 = (u16) temp_r0_9;
                    }
                } else {
                    arg0->f4 = 0U;
                    arg0->f6 = 0U;
                }
                temp_r0_10 = arg0->fC;
                var_r5 = (u8 *)arg0 + 0x7C;
                var_r9 = (u8 *)arg0 + 0x6E;
                switch ((u32) temp_r0_10) {         /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    var_r2 = 0;
                    temp_r1 = arg0->f4;
                    if (0x40 & temp_r1) {
                        var_r2 = 5;
                    } else if (0x80 & temp_r1) {
                        var_r2 = 1;
                    }
                    if (0x20 & temp_r1) {
                        if (var_r2 == 5) {
                            var_r2 = 4;
                        } else if (var_r2 == 1) {
                            var_r2 = 2;
                        } else {
                            var_r2 = 3;
                        }
                    } else if (0x10 & temp_r1) {
                        if (var_r2 == 5) {
                            var_r2 = 6;
                        } else if (var_r2 == 1) {
                            var_r2 = 8;
                        } else {
                            var_r2 = 7;
                        }
                    }
                    if ((arg0->f1FD == 0xE) && (arg0->f1FE == 2)) {
                        *(local158) = T015L_FIELD(sp118, u16 *, 0x20) + 1;
                    }
                    temp_r1_2 = arg0->f6;
                    if ((1 & temp_r1_2) && ((u32) *(local158) > (u32) T015L_FIELD(sp118, u16 *, 0x20))) {
                        arg0->fC = 2U;
                        *(local154) = 0;
                        *(local150) = 0;
                        var_r5 = (u8 *)arg0 + 0x7C;
                        var_r9 = (u8 *)arg0 + 0x6E;
                    } else if ((2 & temp_r1_2) && ((u32) *(local158) > (u32) T015L_FIELD(sp118, u16 *, 0x20))) {
                        if (var_r2 != 0) {
                            var_r0 = var_r2 - 1;
                        } else {
                            var_r0 = arg0->f8;
                        }
                        arg0->f8 = var_r0;
                        arg0->fC = 9U;
                        *(local154) = 0;
                        *(local150) = 0;
block_120:
                        var_r5 = (u8 *)arg0 + 0x7C;
                        var_r9 = (u8 *)arg0 + 0x6E;
                    } else if (var_r2 != 0) {
                        arg0->fC = 1U;
                        var_r5 = (u8 *)arg0 + 0x7C;
                        var_r9 = (u8 *)arg0 + 0x6E;
                    } else {
                        sub_08015DC0(&stack.rng);
block_98:
                        var_r5 = (u8 *)arg0 + 0x7C;
                        var_r9 = (u8 *)arg0 + 0x6E;
                    }
                default:                            /* switch 2 */
block_125:
                    if (*var_r5 != 0) {
block_126:
                        (local0) = 0;
                        sub_08013E90((s32) arg0->f80, (u8 *)arg0 + 0x14, arg0->f7E, 0, ((local0)));
                        temp_r0_11 = *var_r5 - 1;
                        *var_r5 = temp_r0_11;
                        temp_r3 = temp_r0_11;
                        if (temp_r3 == 0) {
                            temp_r0_12 = arg0->f82;
                            if (temp_r0_12 != 0) {
                                temp_r0_13 = (s32) (temp_r0_12 + ((u32) temp_r0_12 >> 0x1F)) >> 1;
                                *var_r5 = (u16) temp_r0_13;
                                if ((u32) (u16) temp_r0_13 > 3U) {
                                    *var_r5 = 4;
                                }
                                arg0->f82 = (s16) temp_r3;
                                var_r0_2 = 0x200;
                                goto block_134;
                            }
                            goto block_132;
                        }
                        if (arg0->f82 == 0) {
block_132:
                            temp_r0_14 = (s32) ((u16) arg0->f80 << 0x10) >> 0x11;
                            arg0->f80 = (s16) temp_r0_14;
                            if (temp_r0_14 <= 0x3F) {
                                var_r0_2 = 0x40;
block_134:
                                arg0->f80 = var_r0_2;
                            }
                        }
                    }
                    break;
                case 1:                             /* switch 2 */
                    var_r2_2 = 0;
                    temp_r1_3 = arg0->f4;
                    if (0x40 & temp_r1_3) {
                        var_r2_2 = 5;
                    } else if (0x80 & temp_r1_3) {
                        var_r2_2 = 1;
                    }
                    if (0x20 & temp_r1_3) {
                        if (var_r2_2 == 5) {
                            var_r2_2 = 4;
                        } else if (var_r2_2 == 1) {
                            var_r2_2 = 2;
                        } else {
                            var_r2_2 = 3;
                        }
                    } else if (0x10 & temp_r1_3) {
                        if (var_r2_2 == 5) {
                            var_r2_2 = 6;
                        } else if (var_r2_2 == 1) {
                            var_r2_2 = 8;
                        } else {
                            var_r2_2 = 7;
                        }
                    }
                    temp_r1_4 = arg0->f6;
                    if ((1 & temp_r1_4) && ((u32) *(local158) > (u32) T015L_FIELD(sp118, u16 *, 0x20))) {
                        if (var_r2_2 != 0) {
                            var_r0_3 = var_r2_2 - 1;
                        } else {
                            var_r0_3 = arg0->f8;
                        }
                        arg0->f8 = var_r0_3;
                        arg0->fC = 2U;
                        *(local154) = 0;
                        *(local150) = 0;
                        *(local158) = 0;
                        goto block_120;
                    }
                    if ((2 & temp_r1_4) && ((u32) *(local158) > (u32) T015L_FIELD(sp118, u16 *, 0x20))) {
                        if (var_r2_2 != 0) {
                            var_r0_4 = var_r2_2 - 1;
                        } else {
                            var_r0_4 = arg0->f8;
                        }
                        arg0->f8 = var_r0_4;
                        arg0->fC = 9U;
                        *(local154) = 0;
                        *(local150) = 0;
                        goto block_98;
                    }
                    if (var_r2_2 == 0) {
                        arg0->fC = var_r2_2;
                        var_r5 = (u8 *)arg0 + 0x7C;
                        var_r9 = (u8 *)arg0 + 0x6E;
                        goto block_125;
                    }
                    arg0->f8 = (u16) (var_r2_2 - 1);
                    var_r5 = (u8 *)arg0 + 0x7C;
                    var_r9 = (u8 *)arg0 + 0x6E;
                    if (arg0->f7C != 0) {
                        goto block_126;
                    }
                    T015L_sub_08015DE0(&stack.rng, (s16) T015L_FIELD(sp118, s16 *, 8) >> stack.flags);
                    goto block_125;
                case 2:                             /* switch 2 */
                    sub_08015DC0(&stack.rng);
                    var_r5 = (u8 *)arg0 + 0x7C;
                    var_r9 = (u8 *)arg0 + 0x6E;
                    if ((*(local14C) == (local108)) && (arg0->f6E != 0)) {
                        arg0->f50 = (s32) (arg0->f50 + 1);
                        arg0->fC = 0U;
                        *(local158) = 0;
                    }
                    goto block_125;
                case 9:                             /* switch 2 */
                    sub_08015DC0(&stack.rng);
                    var_r5 = (u8 *)arg0 + 0x7C;
                    var_r9 = (u8 *)arg0 + 0x6E;
                    if ((*(local14C) == (local108)) && (arg0->f6E != 0) && ((local10C) == arg0->fC)) {
                        arg0->fC = 0U;
                        *(local158) = 0;
                    }
                    goto block_125;
                case 10:                            /* switch 2 */
                    sub_08015DC0(&stack.rng);
                    var_r5 = (u8 *)arg0 + 0x7C;
                    var_r9 = (u8 *)arg0 + 0x6E;
                    if ((*(local14C) == (local108)) && (arg0->f6E != 0) && ((local10C) == arg0->fC)) {
                        arg0->f1DC = 2;
                        temp_r0_15 = T015L_sub_08019CE8(arg0);
                        *(local148) = temp_r0_15;
                        if ((temp_r0_15 << 0x10) == 0) {
                            arg0->fC = 0U;
                        } else if (8 & *(local15C)) {
                            *(local144) = 0;
                            *(local148) = 0;
                        } else {
                            *(local144) = 0x1E;
                        }
                    }
                    goto block_125;
                case 11:                            /* switch 2 */
                    sub_08015DC0(&stack.rng);
                    goto block_120;
                case 15:                            /* switch 2 */
                    var_r5 = (u8 *)arg0 + 0x7C;
                    var_r9 = (u8 *)arg0 + 0x6E;
                    if ((*(local14C) == (local108)) && (arg0->f6E != 0) && ((local10C) == arg0->fC)) {
                        arg0->fC = 0U;
                        arg0->f1DC = 2;
                    }
                    goto block_125;
                }
                if (stack.rng != 0) {
                    arg0->f1C = (s32) arg0->f14;
                    arg0->f20 = (s32) arg0->f18;
                    (local0) = 0;
                    sub_08013E90((s16) T015L_FIELD(sp118, s16 *, 8) >> stack.flags, (u8 *)arg0 + 0x14, arg0->f8, 0, ((local0)));
                }
                if (sub_0800CD8C() == 0) {
                    T015L_sub_08017C6C(arg0);
                }
                temp_r2_2 = arg0->fC;
                var_r6 = &stack.main.f0;
                switch (temp_r2_2) {                /* switch 3 */
                case 0:                             /* switch 3 */
                    var_r6 = &stack.main.f0;
                    if (((local10C) != arg0->fC) && ((local10C) != 1) && ((local10C) != 0xA)) {
                        (local0) = 0;
                        T015L_sub_08065158(var_r6, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                        asm volatile("");
                    }
                    (local10C) = (s32) arg0->fC;
                    (local108) = 0xFFFF;
                    *(local14C) = arg0->f8;
                    (local110) = 1;
                    break;
                case 1:                             /* switch 3 */
                    var_r6 = &stack.main.f0;
                    if (((local10C) != arg0->fC) && ((local10C) != 0) && ((local10C) != 0xA)) {
                        (local0) = 0;
                        T015L_sub_08065158(var_r6, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                        asm volatile("");
                    }
                    (local10C) = (s32) arg0->fC;
                    (local108) = 0xFFFF;
                    *(local14C) = arg0->f8 + 8;
                    (local110) = 1;
                    break;
                case 2:                             /* switch 3 */
                    if ((*(local14C) != (local108)) || (var_r6 = &stack.main.f0, ((local10C) != arg0->fC))) {
                        (local0) = 0;
                        T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                        asm volatile("");
                        *(local158) = 0;
                        (local10C) = (s32) arg0->fC;
                        *(local14C) = arg0->f8;
                        var_r6 = &stack.main.f0;
                        (local108) = (s32) *(local14C);
                        arg0->f50 = (s32) (arg0->f50 + 1);
                    }
                    T015L_sub_08020680(arg0);
block_208:
                    (local110) = 0;
                    break;
                case 9:                             /* switch 3 */
                    if ((*(local14C) != (local108)) || (var_r6 = &stack.main.f0, ((local10C) != arg0->fC))) {
                        (local10C) = (s32) temp_r2_2;
                        *(local14C) = arg0->f8 + T015L_FIELD(sp118, u8 *, 0x26);
                        if (2 & arg0->f201) {
                            var_r2_3 = ((u8) arg0->f1FC >> 4) + 4;
                        } else {
                            var_r2_3 = (u8) arg0->f1FC >> 4;
                        }
                        temp_r0_16 = arg0->f1FD - 0x12;
                        var_r6 = &stack.main.f0;
                        switch (temp_r0_16) {       /* switch 4; irregular */
                        case 0x0:                   /* switch 4 */
                            T015L_sub_08077D04(arg0->f0, (s16) var_r2_3);
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
block_179:
                            var_r6 = &stack.main.f0;
                            break;
                        case 0x1:                   /* switch 4 */
                            T015L_sub_0807854C(arg0->f0, (s16) var_r2_3);
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x2:                   /* switch 4 */
                            T015L_sub_08078B24(arg0->f0, (s16) var_r2_3);
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x3:                   /* switch 4 */
                            T015L_sub_08078B24(arg0->f0, (s16) var_r2_3);
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0xD:                   /* switch 4 */
                        case 0xE:                   /* switch 4 */
                        case 0xF:                   /* switch 4 */
                        case 0x10:                  /* switch 4 */
                        case 0x11:                  /* switch 4 */
                        case 0x12:                  /* switch 4 */
                        case 0x13:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFE2);
                            T015L_sub_0807386C(arg0->f0 + 4, 1, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x14:                  /* switch 4 */
                        case 0x15:                  /* switch 4 */
                        case 0x16:                  /* switch 4 */
                        case 0x17:                  /* switch 4 */
                        case 0x18:                  /* switch 4 */
                        case 0x19:                  /* switch 4 */
                        case 0x1A:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFDB);
                            T015L_sub_0807386C(arg0->f0 + 4, 2, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x1B:                  /* switch 4 */
                        case 0x1C:                  /* switch 4 */
                        case 0x1D:                  /* switch 4 */
                        case 0x1E:                  /* switch 4 */
                        case 0x1F:                  /* switch 4 */
                        case 0x20:                  /* switch 4 */
                        case 0x21:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD - 0x2D);
                            T015L_sub_0807386C(arg0->f0 + 4, 3, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x22:                  /* switch 4 */
                        case 0x23:                  /* switch 4 */
                        case 0x24:                  /* switch 4 */
                        case 0x25:                  /* switch 4 */
                        case 0x26:                  /* switch 4 */
                        case 0x27:                  /* switch 4 */
                        case 0x28:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFCD);
                            T015L_sub_0807386C(arg0->f0 + 4, 4, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x29:                  /* switch 4 */
                        case 0x2A:                  /* switch 4 */
                        case 0x2B:                  /* switch 4 */
                        case 0x2C:                  /* switch 4 */
                        case 0x2D:                  /* switch 4 */
                        case 0x2E:                  /* switch 4 */
                        case 0x2F:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFC6);
                            T015L_sub_0807386C(arg0->f0 + 4, 5, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x30:                  /* switch 4 */
                        case 0x31:                  /* switch 4 */
                        case 0x32:                  /* switch 4 */
                        case 0x33:                  /* switch 4 */
                        case 0x34:                  /* switch 4 */
                        case 0x35:                  /* switch 4 */
                        case 0x36:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFBF);
                            T015L_sub_0807386C(arg0->f0 + 4, 8, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x37:                  /* switch 4 */
                        case 0x38:                  /* switch 4 */
                        case 0x39:                  /* switch 4 */
                        case 0x3A:                  /* switch 4 */
                        case 0x3B:                  /* switch 4 */
                        case 0x3C:                  /* switch 4 */
                        case 0x3D:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFB8);
                            T015L_sub_0807386C(arg0->f0 + 4, 0xB, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x3E:                  /* switch 4 */
                        case 0x3F:                  /* switch 4 */
                        case 0x40:                  /* switch 4 */
                        case 0x41:                  /* switch 4 */
                        case 0x42:                  /* switch 4 */
                        case 0x43:                  /* switch 4 */
                        case 0x44:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFB1);
                            T015L_sub_0807386C(arg0->f0 + 4, 0xD, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x45:                  /* switch 4 */
                        case 0x46:                  /* switch 4 */
                        case 0x47:                  /* switch 4 */
                        case 0x48:                  /* switch 4 */
                        case 0x49:                  /* switch 4 */
                        case 0x4A:                  /* switch 4 */
                        case 0x4B:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFAA);
                            T015L_sub_0807386C(arg0->f0 + 4, 0xE, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x4C:                  /* switch 4 */
                        case 0x4D:                  /* switch 4 */
                        case 0x4E:                  /* switch 4 */
                        case 0x4F:                  /* switch 4 */
                        case 0x50:                  /* switch 4 */
                        case 0x51:                  /* switch 4 */
                        case 0x52:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFFA3);
                            T015L_sub_0807386C(arg0->f0 + 4, 0xF, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x53:                  /* switch 4 */
                        case 0x54:                  /* switch 4 */
                        case 0x55:                  /* switch 4 */
                        case 0x56:                  /* switch 4 */
                        case 0x57:                  /* switch 4 */
                        case 0x58:                  /* switch 4 */
                        case 0x59:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFF9C);
                            T015L_sub_0807386C(arg0->f0 + 4, 0x11, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        case 0x5A:                  /* switch 4 */
                        case 0x5B:                  /* switch 4 */
                        case 0x5C:                  /* switch 4 */
                        case 0x5D:                  /* switch 4 */
                        case 0x5E:                  /* switch 4 */
                        case 0x5F:                  /* switch 4 */
                        case 0x60:                  /* switch 4 */
                            (local0) = (s32) (u16) (arg0->f1FD + 0xFF95);
                            T015L_sub_0807386C(arg0->f0 + 4, 0x12, (s16) var_r2_3, (local0), (local0));
                            asm volatile("");
                            (local0) = 0;
                            T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + ((u8 *)T015L_gUnk_08479140 + 0x2C)), (local114), -1, (local0));
                            asm volatile("");
                            goto block_179;
                        }
                        arg0->f50 = (s32) (arg0->f50 + 1);
                        var_r2_4 = *(local14C);
block_207:
                        (local108) = (s32) var_r2_4;
                    }
                    goto block_208;
                case 10:                            /* switch 3 */
                    if ((*(local14C) != (local108)) || (var_r6 = &stack.main.f0, ((local10C) != arg0->fC))) {
                        var_r6 = &stack.main.f0;
                        if (((local10C) != arg0->fC) && ((local10C) != 0) && ((local10C) != 1)) {
                            (local0) = 0;
                            T015L_sub_08065158(var_r6, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                            asm volatile("");
                        }
                        if (((local10C) == 2) || ((local10C) == 9)) {
                            *(local158) = 0;
                        }
                        (local10C) = (s32) arg0->fC;
                        *(local154) = 0;
                        *(local150) = 0;
                        *(local14C) = 0x10;
                        *(local14C) = arg0->f8 + 0x10;
                        (local108) = (s32) *(local14C);
                    }
                    (local110) = 0;
                    break;
                case 11:                            /* switch 3 */
                    if (*(local144) == 0x1E) {
                        var_r6 = &stack.main.f0;
                        if (((local10C) != arg0->fC) && ((local10C) != 0) && ((local10C) != 0xA) && ((local10C) != 1)) {
                            (local0) = 0;
                            T015L_sub_08065158(var_r6, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                            asm volatile("");
                        }
                        if ((sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                            sub_0805865C(0x3F);
                        }
                        if (2 & *(local15C)) {
                            arg0->f88 = (u16) T015L_FIELD(sp118, s8 *, 0x46);
                        }
                    } else if ((*(local14C) != (local108)) || (var_r6 = &stack.main.f0, ((local10C) != arg0->fC))) {
                        var_r6 = &stack.main.f0;
                        if (8 & *(local15C)) {
                            (local0) = 0;
                            T015L_sub_08065158(var_r6, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                            asm volatile("");
                            (local10C) = (s32) arg0->fC;
                            *(local154) = 0;
                            *(local150) = 0;
                            *(local14C) = 0x19;
                            var_r2_4 = 0x19;
                            goto block_207;
                        }
                    }
                    goto block_208;
                case 12:                            /* switch 3 */
                    temp_r0_17 = arg0->fE;
                    if (temp_r0_17 != 6) {
                        if ((s32) temp_r0_17 <= 6) {
                            if (temp_r0_17 != 5) {
                                var_r6 = &stack.main.f0;
                            } else {
                                (local0) = 0;
                                T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                                asm volatile("");
                                *(local14C) = arg0->f8 + arg0->f70;
                                (local108) = (s32) *(local14C);
                                (local10C) = (s32) arg0->fC;
                                (local110) = (s32) arg0->f72;
                                arg0->fE = 6U;
                                var_r6 = &stack.main.f0;
                            }
                        } else {
                            var_r6 = &stack.main.f0;
                            if (temp_r0_17 != 8) {

                            } else {
                                if (arg0->f30 != 0) {
                                    sub_08057328(arg0->f34);
                                } else {
                                    sub_08057390(arg0->f3C, T015L_FIELD(arg0, void (**)(s32), 0x38));
                                }
                                arg0->fC = 0U;
                                var_r6 = &stack.main.f0;
                            }
                        }
                    } else {
                        *(local14C) = arg0->f8 + arg0->f70;
                        var_r6 = &stack.main.f0;
                    }
                    break;
                case 14:                            /* switch 3 */
                    (local0) = 0;
                    T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                    asm volatile("");
                    temp_r1_5 = *(local144);
                    var_r6 = &stack.main.f0;
                    if ((temp_r1_5 == 0) || (0x8000 & temp_r1_5)) {
                        arg0->f1DC = 2;
                        arg0->fC = 0U;
                        (local11C) = 0;
                    }
                    break;
                case 15:                            /* switch 3 */
                    (local0) = 0;
                    T015L_sub_08065158(&stack.main.f0, *(u32 *)((0x58 * (*(local160) + 0xA)) + (u8 *)T015L_gUnk_08479140), (local114), -1, (local0));
                    asm volatile("");
                    var_r6 = &stack.main.f0;
                    if ((*(local14C) != (local108)) || ((local10C) != arg0->fC)) {
                        *(local14C) = 0x18;
                        (local108) = 0x18;
                        (local10C) = (s32) arg0->fC;
                    }
                    (local110) = 0;
                    break;
                }
                if ((arg0->fC == 0xB) && (8 & *(local15C))) {
                    var_r8 = (u8) sub_0800BC44((u32) ((s32) arg0->f14 >> 8), (u32) ((s32) arg0->f18 >> 8), 0U);
                    if (gUnk_03003170.curLevel == 1) {
                        var_r8 = 3;
                    }
                } else {
                    var_r8 = (u8) sub_0800BC44((u32) ((s32) arg0->f14 >> 8), (u32) ((s32) arg0->f18 >> 8), 0U);
                }
                if (sub_0800CC88() != 0) {
                    var_r8 = gUnk_030034A8;
                }
                T015L_FIELD(var_r6, u8 *, 0x1C) = (u8) (local114);
                T015L_FIELD(var_r6, u8 *, 0x1D) = (u8) (local114);
                T015L_FIELD(var_r6, u8 *, 0x1E) = (u8) (local114);
                T015L_FIELD(var_r6, u8 *, 0x1F) = (u8) (local114);
                (local0) = (local110);
                *var_r9 = (s16) sub_08065370(var_r6, *(local14C), (s32) (local150), (s32) (local154), ((local0)));
                (local0) = 0x30;
                (local4) = NULL;
                T015L_sub_0800BC08((s32) (arg0->f14 << 8) >> 0x10, (s32) (arg0->f18 << 8) >> 0x10, &stack.x, ((u8 *)&stack.y), (local0), *(void **)(((u8 *)&stack)+4));
                if ((T015L_sub_08017EC8(arg0) != 0) || (temp_r1_6 = *(local15C), ((8 & temp_r1_6) != 0))) {
                    if (*(local148) != 0) {
                        temp_r1_7 = *(local144);
                        *(local144) = temp_r1_7 + 0xFFFF;
                        if ((2 & temp_r1_7) && (sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                        }
                        if (*(local144) == 0) {
                            goto block_345;
                        }
                        goto block_300;
                    }
                    if ((local11C) != 0) {
                        temp_r1_8 = *(local144);
                        *(local144) = temp_r1_8 + 0xFFFF;
                        if (!(2 & temp_r1_8)) {

                        } else if (sub_0800CC98() != 0) {

                        } else if (sub_0800CCCC() != 0) {

                        } else if (sub_0800CD34() != 0) {

                        } else {
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                        }
                    } else if (sub_0800CC98() != 0) {

                    } else if (sub_0800CCCC() != 0) {

                    } else if (sub_0800CD34() != 0) {

                    } else {
                        if (sub_0800CD8C() != 0) {
                            var_r2_5 = 0;
                        } else {
                            var_r2_5 = arg0->f62;
                        }
                        temp_r0_18 = (s32) ((var_r2_5 << 0x10) + 0xFFFC0000) >> 0x10;
                        switch ((u32) temp_r0_18) { /* switch 5; irregular */
                        case 4:                     /* switch 5 */
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            (local0) = 1;
                            sub_08065370(&stack.auxA.f0, 0U, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                            if ((gUnk_03002344 & 1) != (1 & arg0->f0)) {

                            } else {
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxA.data[0];
                                (local8) = stack.auxA.f8;
                                (localC) = stack.auxA.f0;
                                T015L_sub_08007870(stack.x, stack.y - (s8) T015L_FIELD(sp118, u8 *, 0x44), 0U, stack.step, (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            }
                            break;
                        case 5:                     /* switch 5 */
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            (local0) = 1;
                            sub_08065370(&stack.auxA.f0, 0xAU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                            if ((gUnk_03002344 & 1) != (1 & arg0->f0)) {

                            } else {
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxA.data[0];
                                (local8) = stack.auxA.f8;
                                (localC) = stack.auxA.f0;
                                T015L_sub_08007870(stack.x, stack.y - (s8) T015L_FIELD(sp118, u8 *, 0x44), 0xAU, stack.step, (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            }
                            break;
                        case 3:                     /* switch 5 */
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            (local0) = 1;
                            sub_08065370(&stack.auxA.f0, 0xFU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                            if ((gUnk_03002344 & 1) != (1 & arg0->f0)) {

                            } else {
                                var_r0_5 = stack.x;
                                var_r1 = stack.y - (s8) T015L_FIELD(sp118, u8 *, 0x44);
                                var_r3 = stack.step;
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxA.data[0];
                                (local8) = stack.auxA.f8;
                                var_r2_6 = stack.auxA.f0;
block_286:
                                (localC) = var_r2_6;
                                T015L_sub_08007870(var_r0_5, var_r1, 0xFU, var_r3, (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            }
                            break;
                        case 6:                     /* switch 5 */
                            temp_r0_19 = (s8) T015L_FIELD(sp118, u8 *, 0x45);
                            switch (temp_r0_19) {   /* switch 6; irregular */
                            case 0:                 /* switch 6 */
                                (local0) = 1;
                                sub_08065370(&stack.auxA.f0, 9U, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxA.data[0];
                                (local8) = stack.auxA.f8;
                                (localC) = stack.auxA.f0;
                                T015L_sub_08007870(stack.x, stack.y, 9U, stack.step, (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                                break;
                            case 1:                 /* switch 6 */
                                (local0) = (s32) temp_r0_19;
                                sub_08065370(&stack.auxB.f0, 0xEU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxB.data[0];
                                (local8) = stack.auxB.f8;
                                (localC) = stack.auxB.f0;
                                T015L_sub_08007870(stack.x, stack.y, 0xEU, stack.step, (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                                break;
                            case 2:                 /* switch 6 */
                                (local0) = 1;
                                sub_08065370(&stack.auxB.f0, 0xFU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                                var_r0_5 = stack.x;
                                var_r1 = stack.y;
                                var_r3 = stack.step;
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxB.data[0];
                                (local8) = stack.auxB.f8;
                                var_r2_6 = stack.auxB.f0;
                                goto block_286;
                            }
                            break;
                        case 8:                     /* switch 5 */
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            (local0) = 0;
                            if (sub_08065370(&stack.auxA.f0, 0xCU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0))) != 0) {

                            } else if ((gUnk_03002344 & 1) != (1 & arg0->f0)) {

                            } else {
                                (local0) = (s32) stack.step;
                                sub_08065230(&stack.auxA.f0, (s32) stack.x, (s32) stack.y, 0xCU, ((local0)));
                            }
                            break;
                        case 0:                     /* switch 5 */
                            temp_r0_20 = sub_0800CC98();
                            if (temp_r0_20 != 0) {

                            } else {
                                (local0) = temp_r0_20;
                                if ((sub_08065370(&stack.auxA.f0, 0xBU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0))) == 0) && ((gUnk_03002344 & 1) == (1 & arg0->f0))) {
                                    (local0) = (s32) stack.step;
                                    sub_08065230(&stack.auxA.f0, (s32) stack.x, (s32) stack.y, 0xBU, ((local0)));
                                }
                            }
                            break;
                        case 9:                     /* switch 5 */
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            (local0) = 1;
                            sub_08065370(&stack.auxA.f0, 0xDU, (s32) &stack.step, (s32) (((u8 *)&stack.state)), ((local0)));
                            if ((gUnk_03002344 & 1) == (1 & arg0->f0)) {
                                (local0) = (s32) var_r8;
                                (local4) = &stack.auxA.data[0];
                                (local8) = stack.auxA.f8;
                                (localC) = stack.auxA.f0;
                                T015L_sub_08007870(stack.x, stack.y - (s8) T015L_FIELD(sp118, u8 *, 0x44), 0xDU, stack.step, (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            }
                            break;
                        default:                    /* switch 5 */
                            stack.state = 0;
                            stack.step = 0;
                            (local0) = (s32) var_r8;
                            (local4) = &stack.main.data[0];
                            (local8) = T015L_FIELD(var_r6, s32 *, 8);
                            (localC) = stack.main.f0;
                            T015L_sub_08007870(stack.x, stack.y, *(local14C), *(local150), (local0), *(void **)(((u8 *)&stack)+4), (local8), (localC));
                            break;
                        }
                    }
block_300:
                    temp_r0_21 = arg0->f4C;
                    if ((temp_r0_21 != 0) && ((local104) != temp_r0_21)) {
                        temp_r0_22 = T015L_sub_08019CE8(arg0);
                        *(local148) = temp_r0_22;
                        if ((temp_r0_22 << 0x10) != 0) {
                            if (8 & *(local15C)) {
                                *(local144) = 0;
                                *(local148) = 0;
                            } else {
                                *(local144) = 0x1E;
                            }
                        }
                        (local104) = arg0->f4C;
                        (local120) = 0xA;
                        (local128) = 0;
                    }
                    temp_r0_23 = (local120);
                    (local120) = (s32) (u16) (temp_r0_23 - 1);
                    if (!(0x8000 & temp_r0_23)) {
                        if ((local104) == 0) {
                            (local120) = 0xFFFF;
                        } else {
                            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                if (sub_0800CB9C() != 0) {
                                    if ((gUnk_03002344 & 1) == (1 & arg0->f0)) {
                                        T015L_sub_0801A120(arg0, (local104), (s16) (local128));
                                    }
                                } else {
                                    T015L_sub_0801A120(arg0, (local104), (s16) (local128));
                                }
                            }
                            if (1 & (local120)) {
                                (local128) = (u32) (((local128) << 0x10) + 0xFFFF0000) >> 0x10;
                            }
                        }
                    } else {
                        (local120) = 0xFFFF;
                        (local104) = 0;
                        arg0->f4C = 0;
                    }
                    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
                        temp_r0_24 = arg0->f226;
                        if (((s32) temp_r0_24 <= 7) && ((s32) temp_r0_24 >= 4)) {
                            T015L_FIELD(var_r6, u8 *, 0x1D) = (u8) (local114);
                        }
                        if ((local124) != 0) {
                            sub_08000AF0((local114) + 0x10, T015L_FIELD(var_r6, s32 *, 0xC) + (*(local164) << 5), 1U);
                            (local124) = 0;
                        }
                    } else {
                        (local124) = 1;
                    }
                    if (arg0->f88 != 0) {
                        if ((local12C) != 0) {
                            if ((2 & *(local15C)) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                                sub_0805865C(0x9E);
                            }
                            (local12C) = 0;
                        }
                        (local0) = 0;
                        if (sub_08065370(&stack.base.f0, arg0->f88, (s32) &stack.phase, (s32) (((u8 *)&stack.phase2)), ((local0))) != 0) {
                            arg0->f88 = 0U;
                            stack.phase = 0;
                            stack.phase2 = 0;
                            (local12C) = 1;
                        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
                            (local0) = (s32) stack.phase;
                            sub_08065230(&stack.base.f0, (s32) stack.x, stack.y - 0x20, arg0->f88, ((local0)));
                        }
                    }
                    sub_080003F0();
                    goto loop_341;
                }
                *(local15C) = 1 | temp_r1_6;
                goto block_345;
loop_341:
        if (sub_0800CB78() != 0) goto block_345;
        if (1 & *(local15C)) goto actor_cleanup;
        temp_r0_7 = sub_08056E90();
        if (temp_r0_7 == 0) goto loop_body;
block_345:
        {
            if (1 & *(local15C)) {

            } else if (sub_08056E90() != 0) {

            } else {
                goto poll_351;
loop_351:
                sub_080003F0();
poll_351:
                if ((T015L_sub_08067CA8(arg0->f2) == 0) && (sub_08056E90() == 0)) goto loop_351;
                if (2 & *(local15C)) {
                    sub_08056E24();
                    goto poll_356;
loop_356:
                    sub_080003F0();
poll_356:
                    if (sub_08068558() == 0) goto loop_356;
                }
                if (sub_08002204() != 0) {
                    temp_r0_25 = T015L_FIELD(gUnk_03005CF4, u16 *, 0);
                    if ((temp_r0_25 != 0xB) && (temp_r0_25 != 0xD) && (T015L_sub_0805C620(arg0, &stack.packet[0]) != 0)) {
                        if (sub_0800CCCC() != 0) {
                            goto poll_364;
loop_364:
                            sub_080003F0();
poll_364:
                            if ((sub_08066520((u32) arg0->f14, (u32) arg0->f18, T015L_poll_players[0].field2C, &stack.packet[0]) == 0) && (sub_08056E90() == 0)) goto loop_364;
                        } else {
                            goto poll_368;
loop_368:
                            sub_080003F0();
poll_368:
                            if ((sub_08066490((u32) arg0->f14, (u32) arg0->f18, &stack.packet[0]) == 0) && (sub_08056E90() == 0)) goto loop_368;
                        }
                    }
                    T015L_sub_080571A4(arg0->f86, arg0->f84, 3);
                }
                if ((T015L_FIELD(gUnk_03005CF4, u16 *, 0) != 0xB) && !(*(u32 *)((u8 *)gUnk_03003CE0 + 0x30 + 0x14C * sub_080020F4()) & 0x2000) && (((s32) arg0->f5A >> *(u16 *)((u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4())) & 1)) {
                    temp_r5 = sub_0801E46C((void *) gUnk_030034E0, sp118);
                    (local128) = 0x1E;
                    shutdown_end = local128 - 31;
                    asm volatile("" : "+r" (shutdown_end));
                    goto poll_376;
loop_376:
                    sub_080003F0();
poll_376:
                    temp_r0_26 = ((local128) << 0x10) + 0xFFFF0000;
                    (local128) = temp_r0_26 >> 0x10;
                    if (((s32) temp_r0_26 >> 0x10) != shutdown_end) {
                        arg0->f18 = (s32) (arg0->f18 - 0x20);
                        T015L_sub_0806171C(arg0, temp_r5);
                        if (sub_08056E90() == 0) goto loop_376;
                    }
                    sub_0801E4CC((u8 *) gUnk_030034E0, temp_r5);
                    if (T015L_FIELD(gUnk_030034E0, u8 *, 0x13A) != 0) {
                        temp_r1_9 = &gUnk_03003CE0[sub_080020F4()];
                        T015L_FIELD(temp_r1_9, u16 *, 0xC6) = (u16) (T015L_FIELD(temp_r1_9, u16 *, 0xC6) + 1);
                    }
                }
            }
        }
actor_cleanup:
        if (2 & arg0->f201) {
            T015L_FIELD(gUnk_03005CF4, s16 *, 0xC) = 0;
        }
        if (1 & *(local15C)) {
            T015L_sub_080571A4(arg0->f86, arg0->f84, 1);
        }
        T015L_sub_08067E60(arg0->f2);
        arg0->f1C = (s32) arg0->f14;
        arg0->f20 = (s32) arg0->f18;
        gUnk_030056FC &= ~(1 << arg0->f0);
        sub_08016ECC((local114));
        return;
    }

}

#undef T015L_FIELD

#else
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801801C);
#endif
void *sub_08019BF8(u16 id)
{
    u8 *entry = (u8 *)gUnk_030056F4;
    u32 i = 0;
    u32 *flags = (u32 *)&gUnk_030056FC;
    u32 one = 1;
    u32 mask = *flags;
    for (; i < 5; i++, entry += 0x2E0)
        if ((mask & (one << i)) != 0 && *(u16 *)(entry + 2) == id)
            return entry;
    return 0;
}
u32 sub_08019C3C(void)
{
    if (gUnk_030056FC != 0) {
        u8 *base = gUnk_030056F4;
        u32 i = 0;
        u32 one = 1;
        u32 mask = gUnk_030056FC;
        u32 step = 0x2E0;
        u8 *entry = base + 0x4A;
        do {
            if ((mask & (one << i)) && *(s16 *)(entry + 0x12) - *(u16 *)entry > 0)
                goto yes;
            i++;
            entry += step;
        } while (i <= 4);
    }
    goto no;
yes:
    return 1;
no:
    return 0;
}
s32 sub_08019C8C(void)
{
    s32 i;
    s32 *flags;
    s32 one;
    s32 active;
    if (sub_0800CDC0()) {
        i = 4;
        flags = &gUnk_030056FC;
        one = 1;
        active = *flags;
        for (; i >= 0; i--)
            if (!(active & (one << i))) return i;
    } else {
        i = 0;
        flags = &gUnk_030056FC;
        one = 1;
        active = *flags;
        for (; i <= 4; i++)
            if (!(active & (one << i))) return i;
    }
    return -1;
}
u32 sub_08019CDC(void)
{
    u32 i = 0;
    do {
        i++;
    } while (i <= 4);
    return i;
}
u32 sub_08019CE8(u8 *obj)
{
    struct State { u8 pad[0x4A]; u16 timer; u8 pad2[0x10]; s16 health; };
    struct State *state = (struct State *)obj;
    state->health = state->health - (0x7FFF & state->timer);
    state->timer = 0;
    if ((state->health & 0x8000) || state->health == 0) {
        *(u16 *)(obj + 0xC) = 0xB;
        state->health = 0;
        return 1;
    }
    return 0;
}
u32 sub_08019D34(value)
u16 value;
{
    u8 *entry;
    u32 i;
    u32 *flags;
    u32 one;
    u32 active;
    if (value == 0) return 0;
    entry = gUnk_030056F4;
    i = 0;
    flags = (u32 *)&gUnk_030056FC;
    one = 1;
    active = *flags;
    for (; i <= 4; i++, entry += 0x2E0) {
        if ((active & (one << i)) && *(u16 *)(entry + 2) == value) return 1;
    }
    return 0;
}
s32 sub_08019D7C(u32 arg0, u32 arg1)
{
    extern u32 activeFlags asm("gUnk_030056F8");
    extern u8 records[] asm("gUnk_03005700");
    u16 key = arg1;
    u32 i = 0;
    u32 active = activeFlags;
    u32 result = 0x40000;
    u32 offset = 0;
    for (; i <= 2; result += 0x10000, offset += 12, i++) {
        if ((active & (1 << i)) && *(u32 *)(records + offset) == arg0 &&
            *(u32 *)(records + 4 + offset) == key && *(u32 *)(records + 8 + offset))
            return result >> 16;
    }
    return 0xFFFF;
}
u32 sub_08019DE0(u32 value)
{
    u8 *entry = gUnk_030056F4;
    u32 i = 0;
    u32 *pf = (u32 *)&gUnk_030056FC;
    u32 one = 1;
    s32 flags = *pf;
    for (; i <= 4; i++, entry += 0x2E0) {
        if (((one << i) & flags) && *(u32 *)(entry + 0x2C) == value) return 1;
    }
    return 0;
}
s32 sub_08019E20(s32 arg0) {
    sub_0800CE30();
    return arg0;
}
s32 sub_08019E30(s32 arg0)
{
  s32 temp_r1;
  s32 var_r4;
  u32 var_r2;
  void *var_r3;
  s32 *new_var;
  var_r3 = gUnk_030056F4;
  var_r4 = 0;
  var_r2 = 0;
  new_var = &gUnk_030056FC;
  do
  {
    temp_r1 = 1 << var_r2;
    if (((*new_var) & temp_r1) && ((*((s32 *) (((s8 *) var_r3) + 0x2C))) == arg0))
    {
      var_r4 |= temp_r1;
    }
    var_r2 += 1;
    var_r3 += 0x2E0;
  }
  while (var_r2 <= 4U);
  return var_r4;
}
u32 sub_08019E74(u32 value)
{
    u32 result = 0;
    u32 i = 0;
    s32 active = gUnk_03005724;
    s32 one = 1;
    u8 **table = (u8 **)&gUnk_030042E8;
    for (; i <= 1; i++) {
        if (((active >> i) & one) && *(u32 *)(*table + i * 8) == value)
            result |= one << i;
    }
    return result;
}
void sub_08019EB8(u16 key, u16 value)
{
    register s32 bit asm("r1");
    u32 i;
    register u8 *entry asm("r3");
    register s32 *flags asm("r2");
    entry = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    bit = 1;
    goto test;
loop:
    i++;
    entry += 0x2E0;
    if (i > 4) goto end;
    bit = 1 << i;
test:
    if (!(*flags & bit) || *(u16 *)(entry + 2) != key) goto loop;
    *(u16 *)(entry + 0x88) = value;
    asm("" : : "r"(entry));
end:
    return;
}
void sub_08019F04(void)
{
    u8 *player;
    u32 i;
    s32 *flags;
    u32 one;
    u32 test;
    u32 offset;
    register u32 field asm("r1");
    *(u16 *)((u8 *)gUnk_03005CF4 + 0x5A) = 1;
    player = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    one = 1;
    test = 4;
    offset = 0x201;
loop:
    {
        s32 bit = one << i;
        if (*flags & bit) {
            field = *(u16 *)(player + 0x7A);
            if (test & field) player[offset] = one;
        }
    }
    i++;
    player += 0x2E0;
    if (i <= 4) goto loop;
}
void sub_08019F60(s16 *data)
{
    struct Rate { u32 a, b, c; };
    extern const struct Rate rates[] asm("gUnk_0848FA0C");
    u32 index = sub_08002164();
    data[3] = data[3] * rates[index].a / 100;
    if (index > 1) data[0] = (data[0] + 2) * rates[index].b / 100;
}
u32 sub_08019FA8(void)
{
    u16 i;
    for (i = 0; i <= 1; i++)
        if (!((gUnk_03005724 >> i) & 1)) break;
    if (i > 1) return 0;
    else return 1;
}
u16 sub_08019FD8(const void *table, u32 index, u32 value)
{
    struct Descriptor { u32 resource; u32 value:8; u32 index:8; u32 sequence:16; } descriptor;
    u16 *sequence;
    extern u32 sub_0806603C(void *);
    descriptor.resource = (u32)table + index * 0x38;
    sequence = (u16 *)((u8 *)gUnk_03005CF4 + 8);
    descriptor.sequence = *sequence;
    descriptor.index = index;
    descriptor.value = value;
    *sequence = (u16)(*sequence + 1) + value;
    sub_0806603C(&descriptor);
    return descriptor.sequence + descriptor.value;
}
s32 sub_0801A040(u16 arg0) {
    return sub_08019D34(arg0);
}
void sub_0801A050(u16 key)
{
    u8 *entry;
    u32 i;
    volatile s32 *flags;
    u32 one;
    register u32 zero asm("ip");
    if (key == 0) return;
    entry = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    one = 1;
    { register u32 z asm("r0") = 0;
    asm("" : "+r"(z));
    zero = z; }
    asm("" : : "r"(zero));
    for (; i <= 4; i++, entry += 0x2E0) {
        s32 bit = one << i;
        if ((*flags & bit) && *(u16 *)(entry + 2) == key) {
            *(u16 *)(entry + 0x7A) |= one;
            return;
        }
    }
}
void sub_0801A0A4(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 2;
}
void sub_0801A0B0(void *arg0) {
    M2C_FIELD(arg0, s8 *, 0x1DC) = 0;
}
void sub_0801A0BC(u16 key, u16 value)
{
    u8 *entry;
    u32 i;
    s32 *flags;
    u32 one;
    if (key == 0) return;
    entry = gUnk_030056F4;
    i = 0;
    flags = &gUnk_030056FC;
    one = 1;
    for (; i <= 4; i++, entry += 0x2E0) {
        s32 bit = one << i;
        if ((*flags & bit) && *(u16 *)(entry + 2) == key) {
            entry[0x1DC] = value;
            return;
        }
    }
}
void sub_0801A120(u8 *obj, u32 value, u16 offset)
{
    s16 x, y;
    u32 special;
    if (value & 0x8000) {
        special = 1;
        value &= ~0x8000;
    } else special = 0;
    if (value > 999) value = 999;
    sub_0800BC08((s32)(*(u32 *)(obj + 0x14) << 8) >> 16,
                 (s32)(*(u32 *)(obj + 0x18) << 8) >> 16,
                 &x, &y, 0x30, 0);
    x -= 8;
    if (special)
        sub_08065424(x, y + (s16)offset, value & 0x0FFFFFFF, 3, 4);
    else
        sub_08065424(x, y + (s16)offset, value, 0, 4);
}
u32 sub_0801A1C8(u8 *obj, s32 *distance)
{
    s32 nearest = 0xFFFF;
    s32 selected = -1;
    u32 i = 0;
    u8 **base = (u8 **)&gUnk_030056F4;
    u32 offset = 0;
    s32 *flags = &gUnk_030056FC;
    for (; i <= 4; offset += 0x2E0, i++) {
        s32 bit = 1 << i;
        if (*flags & bit) {
            u8 *other = *base + offset;
            if (other != obj) {
                s32 dx = (*(s32 *)(other + 0x14) - *(s32 *)(obj + 0x14)) >> 8;
                s32 dy = (*(s32 *)(other + 0x18) - *(s32 *)(obj + 0x18)) >> 8;
                u32 length = (u16)Sqrt(dx * dx + dy * dy);
                if (nearest > (s32)length) {
                    nearest = length;
                    selected = i;
                }
            }
        }
    }
    {
        register u32 result asm("r0");
        if (selected != -1) { *distance = nearest; result = (u16)selected; }
        else result = 0xFF;
        return result;
    }
}
s32 sub_0801A270(void)
{
  int new_var;
  int i;
  for (i = 0; i <= 4; i++)
  {
    new_var = gUnk_030056FC & (1 << i);
    if (!new_var)
    {
      return i;
    }
  }

  return -1;
}
void sub_0801A298(u8 *obj, u16 value)
{
    u32 zero;
    if (gUnk_03002344 % 0x19 == *(u16 *)obj * 5) {
        *(u16 *)(obj + 4) = ((s32 (*)(s32, s32, s32, s32, s32))sub_08016C88)(*(s32 *)(obj + 0x14),
                                          *(s32 *)(obj + 0x18),
                                          *(s32 *)(obj + 0x24),
                                          *(s32 *)(obj + 0x28),
                                          (s16)value);
    }
    { u32 next = *(u16 *)(obj + 0x44) + 1;
    zero = 0;
    *(u16 *)(obj + 0x44) = next; }
    if (*(u16 *)(obj + 0x44) > 0xB4) {
        *(u16 *)(obj + 0x44) = zero;
        *(u16 *)(obj + 4) = zero;
    }
}
s32 sub_0801A2F0(u8 *arg0)
{
    register u32 i asm("r3");
    u8 *table;
    register u32 roll asm("r2");
    u8 sum;
    u8 result;
    table = arg0;
    roll = (u8)(sub_080008C8() % 100U);
    result = 0xFF;
    i = 0;
    sum = table[1];
    goto test;
loop:
    i++;
    table += 4;
    if (i > 2) goto end;
    sum += table[1];
test:
    if (roll >= sum) goto loop;
    result = *table;
end:
    return result;
}
void sub_0801A328(u16 x, u16 y, u16 speed, u32 direction, volatile s32 *out)
{
    volatile s32 *output = out;
    register s32 velocity asm("r6") = speed;
    register u32 angleIndex asm("r2") = (u16)direction;
    register s32 posX asm("r4") = (u32)x << 8;
    register s32 posY asm("r5") = (u32)y << 8;
    s32 tempX;
    s32 tempY;
    s16 *sine;
    register u16 *angle asm("r2");
    register u16 *angleBase asm("r0");
    if (0x8000 & velocity) velocity = 0;
    sine = gUnk_080B9704;
    angleBase = gUnk_0847AD0A;
    angle = (u16 *)(angleIndex * 2 + (u32)angleBase);
    tempY = sine[*angle] * velocity + posY;
    output[1] = tempY;
    tempX = gUnk_080B9704[*angle + 0x40] * velocity + posX;
    output[1] = tempY >> 8;
    output[0] = tempX >> 8;
}
void sub_0801A388(u32 index)
{
    struct Entity {
        u8 pad[0x7A];
        u16 flags;
        u8 pad2[0x181];
        u8 state1FD;
        u8 pad3[3];
        u8 state201;
        u8 pad4[0xDE];
    };
    extern struct Entity *entities asm("gUnk_030056F4");
    struct Entity *base = entities;
    struct Entity *entry = (struct Entity *)(index * 0x2E0 + (u32)base);
    entry->flags |= 4;
    entry->state201 = 0;
    entities[index].state1FD = 0xFF;
}
static inline void FlushRows16(u32 index, u32 count)
{
    u32 pending = 0;
    u32 i;
    u32 value;
    void *destination;

    for (i = 0; i < count; i++) {
        value = gUnk_03005C40[index + i];
        if (value == 0) {
            gUnk_03005C40[index + i] = 1;
            pending++;
        } else {
            if (pending != 0) {
                destination = (void *)(0x0600E000 + index * 0x40);
                sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
                index += pending;
                pending = 0;
            }
            index++;
        }
    }
    if (pending != 0) {
        destination = (void *)(0x0600E000 + index * 0x40);
        sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
    }
}
void sub_0801A3D0(const u8 *script, u16 x, u32 row)
{
    register u32 column asm("sl") = x;
    volatile u32 savedRow = (u16)row;
    u16 tile;
    FlushRows16((u16)row, 2);
    tile = (gUnk_03005C54 >> 5) + 0x180;
    while (1) {
        register u32 scratch asm("r1");
        register u32 xOffset asm("r5");
        register u32 rowOffset asm("r3");
        register u32 rowLoad asm("r2");
        register u16 *map asm("r3");
        register u32 mapBaseNext asm("r2");
        register u32 glyph asm("r6");
        u8 *font;
        if (*script == 0xFD) break;
        if (*script > 0xF1) break;
        scratch = (u32)(*script - 1) << 16;
        font = (u8 *)gUnk_03005CA0[0];
        glyph = 0xFF0000;
        glyph &= scratch;
        xOffset = column * 2;
        rowLoad = savedRow;
        rowOffset = rowLoad * 64;
        rowOffset = xOffset + rowOffset;
        scratch = (u32)gUnk_03005740;
        map = (u16 *)(rowOffset + scratch);
        {
            u16 oldTile = tile++;
            scratch = 0xF000;
            *map = oldTile | scratch;
        }
        scratch = savedRow + 1;
        scratch *= 64;
        xOffset += scratch;
        mapBaseNext = (u32)gUnk_03005740;
        xOffset += mapBaseNext;
        {
            u16 oldTile = tile++;
            scratch = 0xF000;
            *(u16 *)xOffset = oldTile | scratch;
        }
        sub_08001348(font + (glyph >> 9), (void *)(0x0600B000 + gUnk_03005C54), 64);
        gUnk_03005C54 += 64;
        column = (u16)(column + 1);
        script++;
    }
}
void sub_0801A500(u32 a, u32 b, u32 c, ...)
{
}
void sub_0801A508(void)
{
    u32 i;
    gUnk_03005C98 = 0;
    gUnk_03005C94 = 0;
    gUnk_03005730 = 0x12;
    sub_0801A558();
    CpuFastSet(gUnk_080B9AD0, (void *)0x0600C000, 0xE0 << 3);
    for (i = 0; i <= 0x13; i++)
        gUnk_03005C40[i] = 1;
}
void sub_0801A558(void)
{
    u8 *flag = gUnk_03005C40;
    u32 i = 0;
    u32 zero;
    for (; i <= 0x13; i++, flag++) {
        if (*flag) {
            zero = 0;
            CpuFastSet(&zero, gUnk_03005740 + i * 0x40, 0x01000010);
            *flag = 0;
        }
    }
    gUnk_03005C54 = 0;
    gUnk_03005C98 = 0;
}
void sub_0801A5A8(const u8 *script, u8 x, u8 row, u8 palette)
{
    u32 offset = row * 64;
    u16 *start = (u16 *)(x * 2 + (u32)gUnk_03005740);
    u16 *dst = (u16 *)(offset + (u32)start);
    u32 bits;
    palette += 0xF;
    if (*script) {
        u16 *base;
        bits = palette << 12;
        base = start;
        do {
            u16 tile = (*script++ + 0x200) | bits;
            if (tile == 0xA) {
                sub_0801A664(row, 1);
                row++;
                tile = *script++ | bits;
                dst = (u16 *)(row * 64 + (u32)base);
            }
            *dst++ = tile;
        } while (*script);
    }
    sub_0801A664(row, 1);
    gUnk_03005C94 = 1;
}
void sub_0801A628(void) {

}
void sub_0801A62C(void) {
    gUnk_03005C98 = 1;
}
s32 sub_0801A638(u8 *p)
{
    s32 n = 0;
    while (1) {
        u8 c = *p;
        if (c == 0xFD) break;
        if (c > 0xF1) break;
        n++;
        p++;
    }
    return n;
}
void sub_0801A650(u32 arg0)
{
  if (((u32) gUnk_03005730) > arg0)
  {
    gUnk_03005730 = (u16) arg0;
  }
}
s32 sub_0801A664(u32 index, u32 count)
{
    u32 pending = 0;
    u32 i;
    u32 value;
    void *destination;

    for (i = 0; i < count; i++) {
        value = gUnk_03005C40[index + i];
        if (value == 0) {
            gUnk_03005C40[index + i] = 1;
            pending++;
        } else {
            if (pending != 0) {
                destination = (void *)(0x0600E000 + index * 0x40);
                sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
                index += pending;
                pending = 0;
            }
            index++;
        }
    }
    if (pending != 0) {
        destination = (void *)(0x0600E000 + index * 0x40);
        sub_08001348(gUnk_03005740 + index * 0x40, destination, pending * 0x40);
    }
}
void sub_0801A6D4(u32 mode)
{
    u8 *base;
    u32 resource;
    switch (mode) {
    case 0: resource = 0x80006; goto load;
    case 1: resource = 0x8004A;
load:
        base = (u8 *)sub_08006EE0(resource, (void *)&gUnk_08518938);
    }
    sub_08000AF0(0x19, base + 0x120, 1);
}
void sub_0801A70C(void)
{
    u32 count, i;
    gUnk_03005C54 = 0;
    count = sub_08007164(4);
    for (i = 0; i < count; i++)
        gUnk_03005CA0[i] = sub_08007290(i | 0x40000);
    sub_08065158(gUnk_03005C60, 0x5004A, 0, -1, 0);
}
void sub_0801A764(const u8 *script, u16 x, u16 y)
{
    u32 count;
    while (1) {
        if (*script == 0xFD) break;
        if (*script > 0xF1) break;
        count = (u16)(*script - 1);
        sub_08065230(gUnk_03005C60, x, y, 0, count);
        x = (u16)(x + 8);
        script++;
    }
}
#ifdef NONMATCHING
void sub_0801A7AC(void)
{
    struct Transition16Display { u8 pad[0x30]; u16 f30, f32, f34, f36, f38, f3A; u8 pad3C[4]; u16 f40, f42, f44; };
    extern struct Transition16Display display16 asm("gUnk_03001250");
    extern s16 flags16 asm("gUnk_03000028");
    extern s16 level16 asm("gUnk_03001294");
    extern s16 displayLevel16 asm("gUnk_03001F40");

    s16 *step;
    struct Transition16Display *screen;
    s16 *savedStep;
    /* These addresses remain live across the yields in both fade loops. */
    u16 *progress, *period;
    s16 *fadeLevel;
    s32 flag2, flag16;
    u32 delta, total;
    s32 signedDelta;
    flags16 = 1;
    step = &gUnk_03000026;
    screen = &display16;
again:
    sub_080003F4(100);
    flag2 = (s16)(flags16 & 2);
    if (flag2 != 0) {
        display16.f40 = 255;
        flag2 = 0;
        if (*step > 0) level16 = flag2;
        else level16 = 16;
        sub_080003F0();
        sub_080009F8(0, 0x2000, 1);
        progress = &gUnk_03000022;
        period = &gUnk_03000020;
        fadeLevel = &level16;
        savedStep = &gUnk_03000026;
fade:
        *fadeLevel = ((s32)(*progress << 4)) / *period;
        delta = *(u16 *)step;
        total = delta + *progress;
        *progress = total;
        signedDelta = (s16)delta;
        if (signedDelta > 0 && *period < (u16)total) goto finished;
        if (signedDelta < 0 && (total & 0x8000)) goto finished;
        sub_080003F0();
        goto fade;
    }
    flag16 = (s16)(flags16 & 16);
    if (flag16 != 0) {
        struct Transition16Display *inner;
        /* Original blend loop retains display+0x44 independently of its base. */
        u16 *blendRegister;
        if (*step > 0) level16 = flag2;
        else level16 = 16;
        inner = &display16;
        blendRegister = &inner->f44;
        progress = &gUnk_03000022;
        period = &gUnk_03000020;
        savedStep = &gUnk_03000026;
blend:
        inner->f40 = 255;
        *blendRegister = ((s32)(*progress << 4)) / *period;
        delta = *(u16 *)step;
        total = delta + *progress;
        *progress = total;
        signedDelta = (s16)delta;
        if (signedDelta > 0 && *period < (u16)total) goto finished;
        if (signedDelta < 0 && (total & 0x8000)) goto finished;
        sub_080003F0();
        goto blend;
finished:
        if (*savedStep < 0) gUnk_03000022 = 0;
    } else {
        gUnk_03000020 = 2;
        if (gUnk_03000026 > 0) {
            screen->f3A = 0x3F3F;
            screen->f38 = flag16;
            screen->f30 = 0xF0;
            screen->f34 = 0xA0;
            sub_080003F0();
            displayLevel16 = flag16;
            sub_08000B38();
            sub_080009C0(0, 0x2000, 1);
            gUnk_03000022 = 1;
            gUnk_03000026 = flag16;
            sub_080003F0();
        } else {
            screen->f3A = flag16;
            screen->f38 = 0x3F3F;
            screen->f30 = flag16;
            screen->f34 = flag16;
            sub_080009F8(0, 0x2000, 1);
            gUnk_03000022 = flag16;
            gUnk_03000026 = -1;
            sub_080003F0();
        }
    }
    { s32 mask = -23; flags16 &= mask; }
    goto again;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08017F7C", sub_0801A7AC);
#endif
void sub_0801A9BC(void)
{
    u8 *base = (u8 *)gUnk_03001250;
    u16 *field = (u16 *)(base + 0x40);
    u32 zero = 0;
    u8 *obj;
    u32 *task;
    *field = 0xBF;
    *(u16 *)(base + 0x44) = 0x10;
    gUnk_03000024 = zero;
    gUnk_03000020 = zero;
    gUnk_03000022 = zero;
    gUnk_03000026 = zero;
    gUnk_03000028 = zero;
    sub_08000B50();
    obj = sub_08001494(0x400);
    task = &gUnk_03000030;
    task[3] = (u32)sub_0801A7AC;
    task[4] = (u32)obj + 0x3FC;
    task[8] = (u32)obj;
    task[2] = 1;
    task[9] = zero;
    sub_08000274(task, 0);
}
void sub_0801AA34(u16 value)
{
    s32 mask;
    if (gUnk_03000026 < 0 && (gUnk_03000022 & 0x8000) != 0)
        return;
    gUnk_03000026 = -1;
    gUnk_03000020 = value;
    gUnk_03000022 = value;
    sub_08000420(100);
    mask = 0x29;
    gUnk_03000028 = (gUnk_03000028 | 2) & -mask;
}
void sub_0801AA8C(u16 value)
{
    s32 mask;
    if (gUnk_03000026 == 1 && gUnk_03000022 > gUnk_03000020)
        return;
    gUnk_03000026 = 1;
    gUnk_03000020 = value;
    gUnk_03000022 = 0;
    sub_08000420(100);
    mask = 0x29;
    gUnk_03000028 = (gUnk_03000028 | 2) & -mask;
}
s32 sub_0801AAE0(void)
{
  s32 var_r2;
  var_r2 = 0;
  if (!(0x16 & gUnk_03000028))
  {
    var_r2 = 1;
  }
  return var_r2;
}
