#include "global.h"
extern u8 *gA03000370[] asm("gUnk_03000370");
extern u8 gA030003F4[] asm("gUnk_030003F4");
extern u8 gA030003F8[] asm("gUnk_030003F8");
extern void sub_080A47A0();
extern struct TaskP *gTP03000360 asm("gUnk_03000360");
extern void sub_080A4AD0();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern struct TaskP *gTP03000358 asm("gUnk_03000358");
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void scrollA74E8(u32, s32, u32) asm("sub_0800BBD8");
extern void waveA74E8(s32,s32,s32,u16,u16,s32) asm("sub_0800903C");
extern void sub_080A6BE8(void);
void sub_080A47A0(void);
void sub_080A74E8(void);

extern s32 gUnk_0300035C;
extern s32 *gUnk_03000370[];
extern u8 gUnk_030003F4[];
extern u8 gUnk_030003F8[];
extern s32 gUnk_030003E8;
extern s32 gUnk_03000400;
extern s32 gUnk_03000404;
extern s32 gUnk_03000414;

extern s32 gUnk_03000408;
void sub_080A68B0(void);
extern s32 gUnk_0300040C;

#ifdef NONMATCHING
extern u8 *object1083D asm("gUnk_03000364");
extern u8 *slots1083D[] asm("gUnk_03000370");
extern u8 sprites1083D[] asm("gUnk_03000380");
extern u8 spriteData1083D[] asm("gUnk_03000388");
extern u8 styles1083D[] asm("gUnk_0300039C");
extern u16 palette1083D asm("gUnk_030003E8");
extern u8 flags1083D[] asm("gUnk_030003EC");
extern u8 directions1083D[] asm("gUnk_030003F4");
extern u8 frames1083D[] asm("gUnk_030003F8");
extern u8 config1083D[] asm("gUnk_084A6DB8");
extern u8 offsets1083D[] asm("gUnk_08518754");
extern u8 players1083D[] asm("gUnk_03003CE0");
extern u8 *stage1083D asm("gUnk_030034E0");
extern void init1083D(void*,void*,u16) asm("sub_0801623C");
extern u16 status1083D(void*) asm("sub_08019CE8");
extern void prepare1083D(void*) asm("sub_08019F60");
extern void impact1083D(void*,s32,s16) asm("sub_0801A120");
extern void state1083D(void*) asm("sub_0801C8F0");
extern void shift1083D(void*,s32) asm("sub_0806171C");
extern void cleanup1083D(u16) asm("sub_08067CA8");
extern u32 animate1083D(void*,u16,u16*,u16*,s32) asm("sub_08065370");
extern void coords1083D(s32,s32,s16*,s16*,s32,void*) asm("sub_0800BC08");
extern u8 *draw1083D(s32,s32,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
#define F_1083D(p,t,o) (*(t*)((u8*)(p)+(o)))
extern void actor1083D(u16) asm("sub_080A3D2C");
void actor1083D(u16 arg0) {
    s32 sp0;
    s32 sp4;                                        /* compiler-managed */
    s32 sp8;
    s32 spC;
    s16 sp10;
    s16 sp12;
    u8 *sp14;
    s32 sp18;
    s32 sp1C;
    s32 sp20;
    u32 sp24;
    s32 sp28;
    u8 *sp2C;
    u16 *sp30;
    s32 sp34;
    s16 *temp_r7;
    s16 temp_r0_3;
    s16 temp_r0_4;
    u8 **temp_r4;
    u8 **temp_r5_3;
    u8 *temp_r0_2;
    u8 *temp_r0_5;
    u8 *temp_r1;
    u8 *temp_r1_10;
    u8 *temp_r1_2;
    u8 *temp_r1_5;
    u8 *temp_r1_8;
    u8 *temp_r1_9;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;
    u8 *temp_r3_2;
    u8 *temp_r6;
    s32 temp_r0_10;
    s32 temp_r0_11;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_6;
    s32 temp_r0_8;
    s32 temp_r0_9;
    s32 temp_r1_6;
    s32 temp_r1_7;
    s32 temp_r5_4;
    s32 var_r0_3;
    s32 var_r1_2;
    s8 *var_r0;
    s8 var_r1;
    u16 temp_r0;
    u16 temp_r4_5;
    u16 temp_r5;
    u32 temp_r0_14;
    u8 *temp_r1_11;
    u8 *temp_r3;
    u8 *temp_r4_3;
    u8 temp_r0_7;
    u8 temp_r4_4;
    u8 var_r0_2;
    u8 var_r0_4;
    void **temp_r4_2;
    void **temp_r4_6;
    void **temp_r4_8;
    void **temp_r6_2;
    void *temp_r0_15;
    void *temp_r1_12;
    void *temp_r1_13;
    void *temp_r1_3;
    void *temp_r1_4;
    void *temp_r3_3;
    void *temp_r4_7;
    void *temp_r5_2;
    void *var_r4;

    temp_r0 = arg0;
    temp_r5 = temp_r0 + 2;
    gUnk_030056FC |= 1 << temp_r5;
    temp_r4 = &slots1083D[temp_r0];
    temp_r0_2 = gUnk_030056F4 + ((temp_r0 * 0x2E0) + 0x5C0);
    *temp_r4 = temp_r0_2;
    sub_0801A0A4(temp_r0_2);
    init1083D(*temp_r4, config1083D, temp_r5);
    temp_r6 = *temp_r4 + 0x204;
    sp14 = temp_r6;
    prepare1083D(temp_r6);
    temp_r2 = *temp_r4;
    temp_r0_3 = F_1083D(temp_r6,s16,0x6) * 3;
    F_1083D(temp_r2,u16,0x1D6) = temp_r0_3;
    F_1083D(temp_r2,u16,0x5C) = temp_r0_3;
    temp_r2_2 = *temp_r4;
    temp_r0_4 = F_1083D(sp14,s16,0x4) * 0xA * 2;
    F_1083D(temp_r2_2,u16,0x1D4) = temp_r0_4;
    F_1083D(temp_r2_2,u16,0x5E) = temp_r0_4;
    F_1083D(*temp_r4,u16,0x48) = (u16) gUnk_03003170.f90;
    F_1083D(*temp_r4,u16,0xC) = 0;
    temp_r1 = *temp_r4;
    F_1083D(temp_r1,u32,0x50) = (s32) F_1083D(object1083D,u32,0x50);
    F_1083D(temp_r1,u16,0x0) = temp_r5;
    temp_r1_2 = *temp_r4;
    F_1083D(temp_r1_2,u16,0x2) = (u16) (F_1083D(temp_r1_2,u16,0x0) + 4);
    temp_r2_3 = *temp_r4;
    F_1083D(temp_r2_3,u8,0x1FC) = (u8) ((-0x10 & F_1083D(temp_r2_3,u8,0x1FC)) | (0xF & (u8) F_1083D(temp_r2_3,u16,0x0)));
    temp_r0_5 = *temp_r4;
    F_1083D(temp_r0_5,u16,0x202) = (u16) F_1083D(temp_r0_5,u16,0x2);
    F_1083D(*temp_r4,u8,0x200) = 0xFF;
    F_1083D(*temp_r4,u8,0x1FD) = 3;
    F_1083D(*temp_r4,u8,0x1FE) = 3;
    F_1083D(*temp_r4,u16,0xC) = 0;
    sp1C = 0;
    sp20 = 0;
    sp34 = temp_r0 * 4;
    sp2C = spriteData1083D;
loop_48:
    if ((F_1083D(slots1083D[temp_r0],u16,0xC) == 0xA) && (sp1C == 0)) {
        sp1C = 8;
    }
    temp_r0_6 = sub_08058DB0();
    if (temp_r0_6 == 0) {
        temp_r4_2 = (u8**)((u8*)slots1083D+sp34);
        state1083D(*temp_r4_2);
        temp_r1_3 = *temp_r4_2;
        temp_r0_7 = F_1083D(temp_r1_3,u8,0x1FD);
        switch (temp_r0_7) {                        /* irregular */
        case 1:
            F_1083D(temp_r1_3,u16,0xC) = (s16) temp_r0_6;
            if (sub_080682B8((s32) F_1083D(*temp_r4_2,u16,0x0)) != 0) {
                temp_r1_4 = *temp_r4_2;
                F_1083D(temp_r1_4,u8,0x1FD) = (u8) F_1083D(temp_r1_4,u8,0x1FE);
                sub_08065E38((s32) F_1083D(*temp_r4_2,u16,0x0));
            }
            break;
        case 3:
            if (sub_08056F78() != 0) {
                F_1083D(*temp_r4_2,u8,0x1FE) = 8U;
                F_1083D(*temp_r4_2,u8,0x1FD) = 1U;
                sub_08068330((s32) F_1083D(*temp_r4_2,u16,0x0));
            }
            break;
        case 8:
            F_1083D(temp_r1_3,u16,0xC) = (s16) temp_r0_6;
            break;
        }
    }
    temp_r4_3 = temp_r0 + frames1083D;
    if (*temp_r4_3 != 0) {
        temp_r1_5 = *temp_r4;
        if (F_1083D(temp_r1_5,u16,0x5C) != 0) {
            sub_0801A0A4(temp_r1_5);
        }
        if ((u8) gUnk_030003F0 == 1) {
            sp28 = (s32) (u8) (*temp_r4_3 + 5);
        } else {
            sp28 = (s32) *temp_r4_3;
        }
        temp_r6_2 = (u8**)((u8*)slots1083D+sp34);
        temp_r5_2 = *temp_r6_2;
        temp_r1_6 = F_1083D(object1083D,s32,0x14);
        F_1083D(temp_r5_2,s32,0x14) = temp_r1_6;
        temp_r0_8 = F_1083D(object1083D,s32,0x18);
        F_1083D(temp_r5_2,s32,0x18) = temp_r0_8;
        temp_r3 = directions1083D + temp_r0;
        F_1083D(temp_r5_2,s32,0x14) = (s32) (temp_r1_6 + F_1083D(offsets1083D+*temp_r3*4,s16,0));
        F_1083D(temp_r5_2,s32,0x18) = (s32) (temp_r0_8 + F_1083D(offsets1083D+*temp_r3*4,s16,2));
        if (*temp_r3 == 0) {
            F_1083D(temp_r5_2,u8,0x22E) = 0x20;
            var_r0 = *temp_r6_2 + 0x22F;
            var_r1 = 0x28;
        } else {
            F_1083D(temp_r5_2,u8,0x22E) = 0x20;
            var_r0 = *temp_r6_2 + 0x22F;
            var_r1 = 0x10;
        }
        *var_r0 = var_r1;
        F_1083D(sprites1083D+0x34*(u8)gUnk_030003F0,u8,0x1C) = (s8) palette1083D;
        sub_08000AF0(palette1083D + 0x10, F_1083D(sprites1083D+0x34*(u8)gUnk_030003F0,u8*,0xC) + (F_1083D(sp14,u16,0xD6) << 5), 1U);
        temp_r1_7 = sub_0800CD8C();
        sp30 = (u16*)(sp14 + 0xD6);
        if (temp_r1_7 == 0) {
            temp_r3_2 = *temp_r4;
            sp0 = temp_r1_7;
            F_1083D(*temp_r4,u16,0x6E) = (s16) animate1083D((0x34 * (u8) gUnk_030003F0) + sprites1083D, (u16) sp28, (u16*)(temp_r3_2 + 0x6A), (u16*)(temp_r3_2 + 0x6C), sp0);
        }
        if (1 & sub_08098004()) {
            var_r0_2 = sub_08097FF8();
        } else {
            temp_r1_8 = *temp_r4;
            var_r0_2 = (u8) sub_0800BC44((u32) ((s32) F_1083D(temp_r1_8,s32,0x14) >> 8), (u32) ((s32) F_1083D(temp_r1_8,s32,0x18) >> 8), 0U);
        }
        temp_r4_4 = var_r0_2;
        if (sp1C != 0) {
            temp_r0_9 = sp1C;
            sp1C = (s32) (u16) (temp_r0_9 - 1);
            if (!(1 & temp_r0_9)) {

            } else if (sub_0800CCCC() != 0) {

            } else if (sub_0800CC98() != 0) {

            } else {
                temp_r0_10 = sub_0800CD34();
                if (temp_r0_10 != 0) {

                } else {
                    sp0 = temp_r0_10;
                    sp4 = temp_r0_10;
                    coords1083D((s32) (F_1083D(object1083D,s32,0x14) << 8) >> 0x10, (s32) (F_1083D(object1083D,s32,0x18) << 8) >> 0x10, &sp10, &sp12, sp0, (void*)sp4);
                    sp0 = (s32) temp_r4_4;
                    sp4 = (0x34 * (u8) gUnk_030003F0) + styles1083D;
                    sp8 = F_1083D(sp2C+0x34*(u8)gUnk_030003F0,u32,0);
                    spC = F_1083D(styles1083D+0x34*(u8)gUnk_030003F0,u32,-0x1C);
                    var_r4 = draw1083D(sp10, sp12 + 1, sp28, F_1083D(*temp_r4,u16,0x6A), sp0, (void*)sp4, sp8, spC);
                    temp_r1_9 = *temp_r4;
                    var_r0_3 = (s32) (F_1083D(temp_r1_9,s32,0x14) << 8) >> 0x10;
                    var_r1_2 = (s32) (F_1083D(temp_r1_9,s32,0x18) << 8) >> 0x10;
                    sp0 = temp_r0_10;
                    sp4 = temp_r0_10;
                    goto block_29;
                }
            }
        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            sp0 = sp1C;
            sp4 = sp1C;
            coords1083D((s32) (F_1083D(object1083D,s32,0x14) << 8) >> 0x10, (s32) (F_1083D(object1083D,s32,0x18) << 8) >> 0x10, &sp10, &sp12, sp0, (void*)sp4);
            sp0 = (s32) temp_r4_4;
            sp4 = (0x34 * (u8) gUnk_030003F0) + styles1083D;
            sp8 = F_1083D(spriteData1083D+0x34*(u8)gUnk_030003F0,u32,0);
            spC = F_1083D(styles1083D+0x34*(u8)gUnk_030003F0,u32,-0x1C);
            var_r4 = draw1083D(sp10, sp12 + 1, sp28, F_1083D(*temp_r4,u16,0x6A), sp0, (void*)sp4, sp8, spC);
            temp_r1_10 = *temp_r4;
            var_r0_3 = (s32) (F_1083D(temp_r1_10,s32,0x14) << 8) >> 0x10;
            var_r1_2 = (s32) (F_1083D(temp_r1_10,s32,0x18) << 8) >> 0x10;
            sp0 = sp1C;
            sp4 = sp1C;
block_29:
            coords1083D(var_r0_3, var_r1_2, &sp10, &sp12, sp0, (void*)sp4);
            F_1083D(var_r4,s32,0x8) = (s32) sp10;
            F_1083D(var_r4,s32,0xC) = (s32) sp12;
        }
        temp_r0_11 = F_1083D(*temp_r4,u32,0x4C);
        if ((temp_r0_11 != 0) && (sp18 != temp_r0_11)) {
            sp18 = temp_r0_11;
            sp20 = 0xA;
            sp24 = 0;
        }
        if (sp20 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                impact1083D(*temp_r4, sp18, (s16) sp24);
            }
            if (2 & sp20) {
                sp24 = (u32) ((sp24 << 0x10) + 0xFFFF0000) >> 0x10;
            }
            sp20 = (s32) (u16) (sp20 - 1);
        } else {
            sp18 = 0;
            F_1083D(*(u8**)((u8*)slots1083D+sp34),u32,0x4C) = 0;
        }
        temp_r1_11 = temp_r0 + flags1083D;
        if ((*temp_r1_11 == 1) && (F_1083D(*(u8**)((u8*)slots1083D+sp34),u16,0x6E) != 0)) {
            *temp_r1_11 = 0;
        }
        if ((status1083D(*temp_r4) << 0x10) != 0) {
            sub_080003F0();
        } else {
            sub_080003F0();
            goto loop_48;
        }
    } else {
        temp_r5_3 = (u8**)((u8*)slots1083D+sp34);
        temp_r4_5 = status1083D(*temp_r5_3);
        sp30 = (u16*)(sp14 + 0xD6);
        if (temp_r4_5 == 0) {
            *(flags1083D + temp_r0) = (s8) temp_r4_5;
            sub_0801A0B0(*temp_r5_3);
            F_1083D(*temp_r5_3,u8,0x22E) = (s8) temp_r4_5;
            F_1083D(*temp_r5_3,u8,0x22F) = (s8) temp_r4_5;
            sub_080003F0();
            goto loop_48;
        }
    }
    temp_r4_6 = (u8**)((u8*)slots1083D+sp34);
    cleanup1083D(F_1083D(*temp_r4_6,u16,0x2));
    *(flags1083D + temp_r0) = 0;
    sp1C = 0x14;
    temp_r7 = &sp12;
loop_68:
    F_1083D(sprites1083D+0x34*(u8)gUnk_030003F0,u8,0x1C) = (s8) palette1083D;
    sub_08000AF0(palette1083D + 0x10, F_1083D(sprites1083D+0x34*(u8)gUnk_030003F0,u8*,0xC) + (*sp30 << 5), 1U);
    temp_r0_12 = sub_0800CD8C();
    if (temp_r0_12 == 0) {
        temp_r3_3 = *temp_r4_6;
        sp0 = temp_r0_12;
        F_1083D(*temp_r4_6,u16,0x6E) = (s16) animate1083D(((u8) gUnk_030003F0 * 0x34) + sprites1083D, (u16) sp28, (u16*)(temp_r3_3 + 0x6A), (u16*)(temp_r3_3 + 0x6C), sp0);
    }
    if (1 & sub_08098004()) {
        var_r0_4 = sub_08097FF8();
    } else {
        temp_r1_12 = *temp_r4_6;
        var_r0_4 = (u8) sub_0800BC44((u32) ((s32) F_1083D(temp_r1_12,s32,0x14) >> 8), (u32) ((s32) F_1083D(temp_r1_12,s32,0x18) >> 8), 0U);
    }
    if ((1 & sp1C) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_13 = sub_0800CD34();
        if (temp_r0_13 == 0) {
            sp0 = temp_r0_13;
            sp4 = temp_r0_13;
            coords1083D((s32) (F_1083D(object1083D,s32,0x14) << 8) >> 0x10, (s32) (F_1083D(object1083D,s32,0x18) << 8) >> 0x10, &sp10, temp_r7, sp0, (void*)sp4);
            sp0 = (s32) var_r0_4;
            sp4 = ((u8) gUnk_030003F0 * 0x34) + styles1083D;
            sp8 = *(((u8) gUnk_030003F0 * 0x34) + (styles1083D - 0x14));
            spC = *(((u8) gUnk_030003F0 * 0x34) + sprites1083D);
            temp_r4_7 = draw1083D(sp10, sp12 + 1, sp28, F_1083D(*temp_r4_6,u16,0x6A), sp0, (void*)sp4, sp8, spC);
            temp_r1_13 = *temp_r4_6;
            sp0 = temp_r0_13;
            sp4 = temp_r0_13;
            coords1083D((s32) (F_1083D(temp_r1_13,s32,0x14) << 8) >> 0x10, (s32) (F_1083D(temp_r1_13,s32,0x18) << 8) >> 0x10, &sp10, temp_r7, sp0, (void*)sp4);
            F_1083D(temp_r4_7,s32,0x8) = (s32) sp10;
            F_1083D(temp_r4_7,s32,0xC) = (s32) sp12;
        }
    }
    sub_080003F0();
    sp1C = (s32) (u16) (sp1C - 1);
    if (sp1C != 0xFFFF) {
        goto loop_68;
    }
    if (!(F_1083D(players1083D+0x14C*sub_080020F4(),u32,0x30) & 0x2000)) {
        temp_r4_8 = (u8**)((u8*)slots1083D+sp34);
        if (F_1083D(*temp_r4_8,u16,0x5A) != 0) {
            temp_r5_4 = sub_0801E46C((void *) stage1083D, sp14);
            sp24 = 0x1D;
            do {
                temp_r0_15 = *temp_r4_8;
                F_1083D(temp_r0_15,s32,0x18) = (s32) (F_1083D(temp_r0_15,s32,0x18) - 0x20);
                shift1083D(temp_r0_15, temp_r5_4);
                sub_080003F0();
                temp_r0_14 = (sp24 << 0x10) + 0xFFFF0000;
                sp24 = temp_r0_14 >> 0x10;
            } while (((s32) temp_r0_14 >> 0x10) != -1);
            sub_0801E4CC((u8 *) stage1083D, temp_r5_4);
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A3D2C);
#endif
struct Player1084520 {u8 pad0[0x20];u16 state;u8 pad22[14];u32 flags;u8 pad34[52];u8 active;u8 pad69[31];u16 timer;u8 pad8A[2];s32 x,y;u8 pad94[28];u16 fB0;u8 padB2[22];u16 fC8,fCA,fCC;u8 padCE[22];u32 history[5];u8 padF8[84];};
extern struct Player1084520 players1084520[] asm("gUnk_03003CE0");
extern u8 x1084520[] asm("gUnk_03003D6C");
extern u8 *object1084520 asm("gUnk_03000364");
extern s32 angle1084520(s16,s16) asm("ArcTan2");
extern s32 damage1084520(void*,void*) asm("sub_0801ED8C");
void sub_080A4520(void) {
    register s16 *var_r0 asm("r0");
    register s32 dir asm("r1");
    s16 temp_r1;
    s16 temp_r4_2;
    s32 var_r1;
    s32 temp_r5;
    s32 new_var;
    u16 temp_r4;
    u16 temp_r4_4;
    register u32 temp_r0 asm("r0");
    register u32 var_r4 asm("r4");
    void *temp_r1_2;
    void *temp_r4_3;

    {
        u32 i = sub_080020F4();
        s32 x = (s32)(*(s32 *)((u8 *)(object1084520) + (0x14))) >> 8;
        asm("" : "+r"(x) : "r"(players1084520));
        temp_r4 = x - ((s32)(*(s32 *)((u8 *)(x1084520 + 0x14C * i) + (0))) >> 8);
    }
    temp_r4_2 = (s16) temp_r4;
    temp_r1 = ((s32) (*(s32 *)((u8 *)(object1084520) + (0x18))) >> 8) - ((s32) players1084520[sub_080020F4()].y >> 8);
    if ((u32) Sqrt((temp_r4_2 * temp_r4_2) + (temp_r1 * temp_r1)) > 0x27U) {

    } else if (sub_0800CDF8() != 0) {

    } else if (sub_0800CD8C() != 0) {

    } else if (sub_0800CCCC() != 0) {

    } else if ((*(u16 *)((u8 *)(object1084520) + (0xC))) == 0xB) {

    } else if (players1084520[sub_080020F4()].flags & 0x2000) {

    } else if (players1084520[sub_080020F4()].active == 0) {

    } else if (players1084520[sub_080020F4()].state == 0xE) {

    } else if (players1084520[sub_080020F4()].state == 0xB) {

    } else if (players1084520[sub_080020F4()].state == 0xC) {

    } else if (players1084520[sub_080020F4()].history[(*(u16 *)((u8 *)(object1084520) + (0)))] == (*(u32 *)((u8 *)(object1084520) + (0x50)))) {

    } else {
        players1084520[sub_080020F4()].state = 0xA;
        players1084520[sub_080020F4()].fB0 = 0xFFFE;
        temp_r5 = sub_080020F4();
        temp_r4_3 = object1084520;
        {
            register s32 d asm("r0") = damage1084520(temp_r4_3, &players1084520[sub_080020F4()]);
            register u32 i asm("r1") = temp_r5;
            register u8 *base asm("r7") = (u8 *)players1084520;
            register u32 t asm("r2");
            asm("" : "+r"(d), "+r"(i), "+r"(base));
            i *= 0x14c;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            i += 0x88;
            t = *(u16 *)i;
            asm("" : "+r"(d), "+r"(i), "+r"(t));
            *(u16 *)i = d + t;
        }
        players1084520[sub_080020F4()].history[(*(u16 *)((u8 *)(object1084520) + (0)))] = (*(u32 *)((u8 *)(object1084520) + (0x50)));
        temp_r4_4 = ((s32) (*(s32 *)((u8 *)(x1084520+0x14C*sub_080020F4()) + (0))) >> 8) - ((s32) (*(s32 *)((u8 *)(object1084520) + (0x14))) >> 8);
        new_var = (((s32) players1084520[sub_080020F4()].y >> 8) - ((s32) (*(s32 *)((u8 *)(object1084520) + (0x18))) >> 8));
        temp_r0 = (u32)angle1084520((s16) temp_r4_4, (s16) new_var) << 0x10;
        {
            register u32 r asm("r1") = temp_r0 * 8;
            var_r4 = temp_r0 >> 0x1D;
            asm("" : "+r"(r), "+r"(var_r4));
            if (r > 0x80000000U) {
                if (var_r4 <= 6U) {
                    var_r4 += 1;
                } else {
                    var_r4 = 0;
                }
            }
        }
        if (var_r4 == 0) goto zero;
        if (var_r4 == 1) goto one;
        {
            register u32 i asm("r0") = sub_080020F4();
            register u8 *base asm("r2") = (u8 *)players1084520;
            u8 *p;
            asm("" : "+r"(i), "+r"(base));
            i *= 0x14C;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            p = (u8 *)i;
            dir = var_r4 - 2;
            var_r0 = (s16 *)(p + 0xCA);
        }
        goto store;
zero:
        {
            register u32 i asm("r0") = sub_080020F4();
            register u8 *base asm("r2") = (u8 *)players1084520;
            u8 *p;
            asm("" : "+r"(i), "+r"(base));
            i *= 0x14C;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            p = (u8 *)i;
            var_r0 = (s16 *)(p + 0xCA);
        }
        dir = 6;
        goto store;
one:
        {
            register u32 i asm("r0") = sub_080020F4();
            register u8 *base asm("r2") = (u8 *)players1084520;
            u8 *p;
            asm("" : "+r"(i), "+r"(base));
            i *= 0x14C;
            asm("" : "+r"(i));
            i += (u32)base;
            asm("" : "+r"(i));
            p = (u8 *)i;
            var_r0 = (s16 *)(p + 0xCA);
        }
        dir = 7;
store:
        *var_r0 = dir;
        players1084520[sub_080020F4()].fCC = 0x400;
        players1084520[sub_080020F4()].fC8 = 0x10;
    }
    if (players1084520[sub_080020F4()].fC8 == 0) {
        (*(u32 *)((u8 *)(object1084520) + (0x50))) = (s32) ((*(u32 *)((u8 *)(object1084520) + (0x50))) + 1);
    }
}


#ifdef NONMATCHING
struct Sprite10847 {u32 f0,f4,f8;u8 *palette;u8 pad10[12];u8 style,paletteId;u8 pad1E[22];};
struct Oam10847 {u32 f0,f4;s32 x,y;};
struct Frame10847 {u16 tile,rotation;s16 sx,sy;u8 *metadata;s32 x,y;};
extern u8 *object10847 asm("gUnk_03000364");
extern struct Sprite10847 sprites10847[] asm("gUnk_03000380");
extern u8 styles10847[] asm("gUnk_0300039C");
extern u8 frame10847 asm("gUnk_030003FC");
extern u8 side10847 asm("gUnk_030003F0");
extern u8 direction10847 asm("gUnk_030003FB");
extern u16 palette10847 asm("gUnk_030003E8");
extern s16 offsetX10847[] asm("gUnk_08518754");
extern s16 offsetY10847[] asm("gUnk_08518756");
extern void animate10847(void*,u16,u16*,u16*,s32) asm("sub_08065370");
extern void coords10847(s32,s32,s16*,s16*,s32,void*) asm("sub_0800BC08");
extern struct Oam10847 *draw10847(s32,s32,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
#define F_10847(p,t,o) (*(t*)((u8*)(p)+(o)))
void sub_080A47A0(void)
{
 struct Frame10847 frame;u8 animation,mode;s32 paused;struct Oam10847 *output;
 register s16 *sx asm("r10"); register s16 *sy asm("r9");
 frame.metadata=object10847+0x204;frame.rotation=0;frame.tile=0;sx=&frame.sx;sy=&frame.sy;
 for(;;){
  {u8 current=frame10847;while(current==0){sub_080003F0();current=frame10847;}
  if(side10847==1)animation=current+5;else animation=current;}
  frame.x=F_10847(object10847,s32,0x14);frame.y=F_10847(object10847,s32,0x18);
  frame.x+=offsetX10847[direction10847*2];frame.y+=offsetY10847[direction10847*2];
  sprites10847[side10847].style=palette10847;
  sub_08000AF0(palette10847+16,sprites10847[side10847].palette+(F_10847(frame.metadata,u16,0xD6)<<5),1);
  paused=sub_0800CD8C();if(paused==0)animate10847(&sprites10847[side10847],animation,&frame.tile,&frame.rotation,paused);
  if(sub_08098004()&1)mode=sub_08097FF8();else mode=sub_0800BC44(frame.x>>8,frame.y>>8,0);
  if(sub_0800CCCC()==0 && sub_0800CC98()==0){
   paused=sub_0800CD34();if(paused==0){
    coords10847((s32)(F_10847(object10847,s32,0x14)<<8)>>16,(s32)(F_10847(object10847,s32,0x18)<<8)>>16,sx,sy,paused,(void*)paused);
    output=draw10847(frame.sx,frame.sy+1,animation,frame.tile,mode,styles10847+side10847*0x34,F_10847(styles10847+side10847*0x34,u32,-0x14),F_10847(styles10847+side10847*0x34,u32,-0x1C));
    coords10847((s32)(frame.x<<8)>>16,(s32)(frame.y<<8)>>16,sx,sy,paused,(void*)paused);
    output->x=frame.sx;output->y=frame.sy;
   }
  }
  sub_080003F0();if(sub_0800CED8()!=0 || sub_0800CB78()!=0 || sub_0800CD00()!=0)break;
 }
}

#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A47A0);
#endif
void sub_080A49A8(void)
{
    sub_0805867C(0xDF);
    if (*(s16 *)((u8 *)gUnk_03000368 + 0x5C) != 0) {
        sub_080A4BFC();
        sub_080A4B10();
        sub_080A4A54();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030003E8);
}
struct Task10849EC {u32 f0,f4,f8;};
extern u8 byte108EA asm("gUnk_030003EA");
extern u8 byte108F0 asm("gUnk_030003F0");
extern u8 byte108EF asm("gUnk_030003EF");
extern u8 byte108F2 asm("gUnk_030003F2");
extern u8 byte108F1 asm("gUnk_030003F1");
extern u8 array108EC[] asm("gUnk_030003EC");
extern u8 array108F8[] asm("gUnk_030003F8");
extern struct Task10849EC *task108 asm("gUnk_03000358");
void sub_080A49EC(void)
{
 u8 i;
 byte108F1=byte108F2=byte108EF=byte108F0=byte108EA=0;
 for(i=0;i<=2;i++)array108F8[i]=array108EC[i]=0;
 task108=(struct Task10849EC*)sub_08001494(0x28);
 task108->f8=0;
}
void sub_080A4A54(void) {
    if (sub_08000470(gUnk_03000358) != 0) {
        sub_080003A8(gUnk_03000358);
    }
    sub_08001538(gUnk_03000358);
    gUnk_03000358 = 0;
}
void sub_080A4A7C(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000358) == 0 && gTP03000358->f8 != 0)
        return;
    gTP03000358->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000358;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A35D0;
    t->f24 = (u32)sub_080A4AD0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A4AD0(void) {
    gUnk_030056FC &= ~2;
}
void sub_080A4AE4(void)
{
  int i;
  gUnk_0300035C = sub_08001494(0x78);
  for (i = 0; i < 3; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_0300035C) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A4B10(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_0300035C;
  for (i = 0, entry = new_var2; i < 3; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_0300035C);
  gUnk_0300035C = i;
}
void sub_080A4B48(s32 arg0)
{
  u16 argIndex = arg0;
  u8 i;
  u8 *entry = (u8 *) gUnk_0300035C;
  for (i = 0; i <= 2; i++, entry += 0x28)
  {
    u32 mem;
    if (sub_08000470((u32) entry) != 0)
    {
      continue;
    }
    if ((*((s32 *) (((s8 *) entry) + 8))) != 0)
    {
      continue;
    }
    *((s32 *) (((s8 *) entry) + 8)) = argIndex + 0x46;
    mem = sub_08001494(0x400);
    *((s32 *) (((s8 *) entry) + 0x20)) = mem;
    *((s32 *) (((s8 *) entry) + 0x10)) = mem + 0x3FC;
    *((s32 *) (((s8 *) entry) + 0xC)) = (s32) sub_080A3D2C;
    *((s32 *) (((s8 *) entry) + 0x24)) = (s32) sub_080A4BB0;
    sub_08000274((s32 *) entry, argIndex);
    break;
  }

}
void sub_080A4BB0(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000370[obj[2]]);
}
void sub_080A4BE0(void)
{
  s8 *new_var;
  s32 temp_r0;
  temp_r0 = (gUnk_03000360 = (s32) sub_08001494(0x28U));
  new_var = (s8 *) temp_r0;
  *((s32 *) (new_var + 8)) = 0;
}
void sub_080A4BFC(void) {
    if (sub_08000470(gUnk_03000360) != 0) {
        sub_080003A8(gUnk_03000360);
    }
    sub_08001538(gUnk_03000360);
    gUnk_03000360 = 0;
}
void sub_080A4C24(void)
{
    u32 mem;
    struct TaskP *t;
    if (sub_08000470((u32)gTP03000360) == 0 && gTP03000360->f8 != 0)
        return;
    gTP03000360->f8 = 0x44;
    mem = sub_08001494(0x400);
    t = gTP03000360;
    t->f20 = mem;
    t->f10 = mem + 0x3FC;
    t->fC = (u32)sub_080A47A0;
    t->f24 = 0;
    sub_08000274_3((u32)t, 0, 0);
}
void sub_080A4C74(u8 arg0, u8 arg1) {
    if (gUnk_030003F1 != 0xFF) {
        gUnk_030003F2 = gUnk_030003F1;
    }
    gUnk_030003F1 = arg0;
    M2C_FIELD(gUnk_03000368, s16 *, 8) = (s16) arg1;
}
void sub_080A4CA8(u8 index, u32 a, u32 b, u8 value)
{
    gA030003F8[index] = a;
    gA030003F4[index] = b;
    *(u16 *)(gA03000370[index] + 8) = value;
}
void sub_080A4CDC(s8 arg0, s8 arg1) {
    gUnk_030003FB = arg1;
    gUnk_030003FC = arg0;
}
void sub_080A4CF0(s8 arg0) {
    gUnk_030003EF = arg0;
}
void sub_080A4CFC(s8 arg0) {
    gUnk_030003F0 = arg0;
}
#ifdef NONMATCHING
struct Sprite1084D {u32 f0,f4,f8;u8 *palette;u8 pad10[12];u8 f1C,f1D;u8 pad1E[22];};
extern u8 *object1084D asm("gUnk_03000400");
extern u16 palette1084D asm("gUnk_03000404");
extern u8 select1084D asm("gUnk_03000406");
extern u8 selectSecond1084D asm("gUnk_03000407");
extern u8 *game1084D asm("gUnk_03005CF4");
extern u8 players1084D[] asm("gUnk_03003CE0");
extern u8 history1084D[] asm("gUnk_03003DC4");
extern u8 config1084D[] asm("gUnk_084A8088");
#define F_1084D(p,t,o) (*(t*)((u8*)(p)+(o)))
extern void h1084D00BC08(s32,s32,s16*,s16*,s32,void*) asm("sub_0800BC08");
extern void h1084D015C8C() asm("sub_08015C8C");
extern void h1084D015CE0() asm("sub_08015CE0");
extern void h1084D01623C() asm("sub_0801623C");
extern u16 h1084D016E04() asm("sub_08016E04");
extern s32 h1084D019CE8() asm("sub_08019CE8");
extern void h1084D019F60() asm("sub_08019F60");
extern void h1084D01A120() asm("sub_0801A120");
extern void h1084D01C8F0() asm("sub_0801C8F0");
extern void h1084D029A7C() asm("sub_08029A7C");
extern void h1084D058688() asm("sub_08058688");
extern void h1084D0586B4() asm("sub_080586B4");
extern void h1084D06171C() asm("sub_0806171C");
extern void h1084D065158(void*,s32,u16,s32,s32) asm("sub_08065158");
extern void h1084D067CA8() asm("sub_08067CA8");
extern void h1084D0970CC() asm("sub_080970CC");
extern u8 h1084D0A6258() asm("sub_080A6258");
extern void h1084D0A6510() asm("sub_080A6510");
extern s32 h1084D0A66E0() asm("sub_080A66E0");
extern void h1084D0A7ECC() asm("sub_080A7ECC");
extern void h1084D0A7F94() asm("sub_080A7F94");
extern void h1084D0A803C() asm("sub_080A803C");
extern s32 h1084D0A8090() asm("sub_080A8090");
extern void h1084D0A8114() asm("sub_080A8114");
extern u8* h1084D007870(s32,s32,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
extern u32 h1084D065370(void*,u16,u16*,u16*,s32) asm("sub_08065370");
extern u32 h1084D05DF38(u32,u32,u32,u32,u32,u32) asm("sub_0805DF38");
void sub_080A4D08(u8 *arg0) {
    s32 sp0;
    void *sp4;                                         /* compiler-managed */
    s32 sp8;
    s32 spC;
    struct Sprite1084D sp10;
    s8 sp44;
    s16 sp46;
    s16 sp48;
    void *sp4C;
    s32 sp50;
    s32 sp54;
    s32 sp58;
    s32 sp5C;
    s32 sp60;
    s32 sp64;
    u32 sp68;
    u32 sp6C;
    s32 sp70;
    s32 sp74;
    s32 sp78;
    s32 sp7C;
    s32 sp80;
    s32 sp84;
    s32 sp88;
    s32 sp8C;
    u16 *sp90;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r1_2;
    s16 var_r1;
    s16 var_r2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 *temp_r2_5;
    s32 *temp_r3;
    s32 *temp_r3_2;
    s32 *temp_r3_3;
    s32 *temp_r3_4;
    s32 *var_r1_4;
    s32 *var_r2_2;
    s32 temp_r0_10;
    s32 temp_r0_12;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_17;
    s32 temp_r0_18;
    s32 temp_r0_19;
    s32 temp_r0_20;
    s32 temp_r0_21;
    s32 temp_r0_7;
    s32 temp_r0_8;
    s32 temp_r1_11;
    s32 temp_r1_12;
    s32 temp_r1_7;
    s32 temp_r1_9;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 temp_r4;
    s32 temp_r4_10;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_6;
    s32 temp_r4_7;
    s32 temp_r4_9;
    s32 temp_r5;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r3;
    s32 var_r4;
    s8 *var_r0_4;
    s8 *var_r1_2;
    s8 *var_r1_3;
    s8 var_r0;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_10;
    u16 temp_r1_14;
    u16 temp_r1_15;
    u16 temp_r1_3;
    u16 temp_r1_4;
    u16 temp_r1_5;
    u16 temp_r1_6;
    u16 temp_r1_8;
    u16 var_sl;
    u32 temp_r0_22;
    u32 temp_r0_23;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r1_13;
    u8 temp_r0_11;
    u8 temp_r0_14;
    u8 temp_r0_9;
    u8 temp_r8;
    u8 temp_r8_2;
    u8 temp_r8_3;
    u8 temp_r8_4;
    u8 temp_r8_5;
    u8 var_r0_5;
    u8 var_r0_6;
    void *temp_r0;
    void *temp_r4_8;

    object1084D = arg0;
    temp_r0 = arg0 + 0x204;
    sp4C = temp_r0;
    h1084D01623C(arg0, &config1084D, 0);
    h1084D019F60(temp_r0);
    sub_0801A0A4((void *) arg0);
    temp_r0_2 = h1084D016E04(F_1084D(arg0,u16,0x2D8), F_1084D(arg0,u16,0x2DA));
    palette1084D = temp_r0_2;
    temp_r1 = temp_r0_2;
    if (temp_r1 == 0xFFFF) {
loop_2:
        F_1084D(arg0,u16,0xC) = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            gUnk_030056FC &= ~(1 << F_1084D(arg0,u16,0x0));
            return;
        }
        sub_080003F0();
        if (palette1084D != temp_r1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    sp0 = 1;
    h1084D065158(&sp10, 0x5000F, palette1084D, -1, sp0);
    sp10.f1C = (s8) palette1084D;
    F_1084D(object1084D,u16,0x68) = 0x10U;
    F_1084D(object1084D,u16,0x6A) = 0U;
    F_1084D(object1084D,u16,0x6C) = 0;
    sp70 = 1;
    temp_r0_3 = F_1084D(sp4C,s16,0x6) * 3;
    F_1084D(arg0,u16,0x1D6) = temp_r0_3;
    F_1084D(arg0,u16,0x5C) = temp_r0_3;
    temp_r0_4 = F_1084D(sp4C,s16,0x4) * 0xA * 2;
    F_1084D(arg0,u16,0x1D4) = temp_r0_4;
    F_1084D(arg0,u16,0x5E) = temp_r0_4;
    F_1084D(arg0,u16,0xC) = 0U;
    sp5C = 0xFFFF;
    sp60 = 0;
    sp64 = 0;
    F_1084D(arg0,u8,0x1FD) = 2U;
    F_1084D(arg0,u8,0x1FE) = 2U;
    sp7C = 0;
    sp68 = 0;
    var_sl = 0;
    var_r1 = 0;
    sp74 = 0;
    sp78 = 0;
    sp80 = 0;
    sp44 = 0;
    sp88 = 0;
    sp84 = 1;
    F_1084D(arg0,u32,0x50) = sp70;
    sp90=(u16*)((u8*)sp4C+0xD6);
    do {
        var_r2 = 0;
loop_8:
        temp_r1_2 = var_r2;
        F_1084D(history1084D+temp_r1_2*4+var_r1*0x14C,u32,0) = 0;
        temp_r1_3 = temp_r1_2 + 1;
        var_r2 = (s16) temp_r1_3;
        if ((s32) (s16) temp_r1_3 <= 4) {
            goto loop_8;
        }
        temp_r0_5 = (var_r1 << 0x10) + 0x10000;
        var_r1 = (s16) (temp_r0_5 >> 0x10);
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
    select1084D = 0xFF;
    selectSecond1084D = 0xFF;
    sub_08097FE4();
    sub_08097A4C();
    sub_080A7E68();
    sub_080A7FF8();
    sub_080A7F30();
    sub_080A80BC();
    h1084D0A8114();
    F_1084D(arg0,s32,0x18) = 0xE00;
    sp50 = F_1084D(arg0,s32,0x14);
    sp54 = 0x6800;
    F_1084D(arg0,u8,0x1FC) = (u8) ((-0x10 & F_1084D(arg0,u8,0x1FC)) | (0xF & (u8) F_1084D(arg0,u16,0x0)));
    F_1084D(arg0,u16,0x202) = (u16) F_1084D(arg0,u16,0x2);
    F_1084D(arg0,u8,0x200) = (u8) (F_1084D(arg0,u8,0x200) | 0xFF);
    sp8C = 0;
    sub_08067C18();
loop_12:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_12;
    }
    sub_08067BF8();
    sub_0805865C(0x1A1);
loop_206:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) {
        if ((F_1084D(arg0,u16,0xC) == 0xA) && (sp60 == 0)) {
            sp60 = 8;
        }
        if (sub_08058DB0() == 0) {
            h1084D01C8F0(arg0);
            temp_r0_6 = F_1084D(arg0,u8,0x1FD) - 1;
            switch (temp_r0_6) {                    /* switch 1 */
            case 0:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                if (sub_08067C08() != 0) {
                    F_1084D(arg0,u8,0x1FD) = (u8) F_1084D(arg0,u8,0x1FE);
                    sub_08067BF8();
                }
                break;
            case 1:                                 /* switch 1 */
                sub_0801A0B0((void *) arg0);
                switch (sp74) {                     /* switch 2; irregular */
                case 0:                             /* switch 2 */
                    temp_r1_4 = var_sl;
                    var_sl = temp_r1_4 + 1;
                    if ((u32) temp_r1_4 <= 0x78U) {
block_60:
                        F_1084D(arg0,s32,0x18) = (s32) (F_1084D(arg0,s32,0x18) + 0xC0);
                    } else {
                        sp74 = 1;
                        var_sl = 0;
                        F_1084D(object1084D,u16,0x68) = 0xEU;
                        sp70 = 0;
                    }
                    break;
                case 1:                             /* switch 2 */
                    if (F_1084D(arg0,u16,0x6E) != 0) {
                        F_1084D(object1084D,u16,0x68) = 0x11U;
                        sp70 = 0;
                        sub_0805867C(0x1A1);
                        sub_0801A0A4((void *) arg0);
                        sp74 = 0;
                        var_sl = 0;
                        var_r1_2 = arg0 + 0x1FE;
                        var_r0 = 3;
block_155:
                        *var_r1_2 = var_r0;
                        var_r1_3 = arg0 + 0x1FD;
block_156:
                        *var_r1_3 = 1;
                        sub_08067C18();
                    }
                    break;
                }
                break;
            case 2:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                sub_0801A0A4((void *) arg0);
                F_1084D(arg0,u16,0x68) = 0x11U;
                F_1084D(arg0,u32,0x8) = 0;
                temp_r1_5 = var_sl;
                var_sl = temp_r1_5 + 1;
                if ((u32) temp_r1_5 > 0xB4U) {
                    F_1084D(arg0,u8,0x1FE) = 9U;
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_156;
                }
                break;
            case 3:                                 /* switch 1 */
                sub_0801A0B0((void *) arg0);
                switch (sp74) {                     /* switch 3; irregular */
                case 0:                             /* switch 3 */
                    F_1084D(arg0,u16,0xC) = 1U;
                    F_1084D(arg0,u16,0x68) = 0x10U;
                    sp70 = 1;
                    temp_r1_6 = var_sl;
                    var_sl = temp_r1_6 + 1;
                    if ((u32) temp_r1_6 > 0x50U) {
                        sp74 = 1;
                    } else {
                        F_1084D(arg0,s32,0x18) = (s32) (F_1084D(arg0,s32,0x18) - 0xC0);
                    }
                    if (select1084D != 0xFF) {
                        h1084D015CE0();
                        F_1084D(players1084D+0x14C*sub_080020F4(),u16,0xB0) = 0x21;
                        var_r4 = sub_080020F4();
                        var_r0_2 = sub_080020F4();
block_115:
                        temp_r0_7 = F_1084D(arg0,s32,0x14);
                        F_1084D(players1084D+0x14C*var_r0_2,s32,0x94) = temp_r0_7;
                        F_1084D(players1084D+0x14C*var_r4,s32,0x8C) = temp_r0_7;
                        temp_r4 = sub_080020F4();
                        var_r2_2 = (0x14C * temp_r4) + (players1084D+0x90);
                        var_r1_4 = (0x14C * sub_080020F4()) + (players1084D+0x98);
                        var_r0_3 = F_1084D(arg0,s32,0x18) + 0x1000;
block_116:
                        *var_r1_4 = var_r0_3;
                        *var_r2_2 = var_r0_3;
                    }
                    break;
                case 1:                             /* switch 3 */
                    F_1084D(arg0,u16,0xC) = (u16) sp74;
                    F_1084D(arg0,u16,0x68) = 0U;
                    sp70 = 1;
                    temp_r1_7 = F_1084D(arg0,s32,0x14);
                    if (temp_r1_7 < 0xFFFFE000) {
                        if (select1084D != 0xFF) {
                            h1084D015C8C();
                        }
                        sub_0805865C(0x1AB);
                        var_sl = 0;
                        sp68 = 0;
                        F_1084D(arg0,u8,0x1FE) = 0xDU;
                        F_1084D(arg0,u8,0x1FF) = 0xAU;
                        F_1084D(arg0,u8,0x1FD) = 1U;
                        sub_08067C18();
                        sub_0805867C(0x1A1);
                    } else {
                        F_1084D(arg0,s32,0x14) = (s32) (temp_r1_7 + 0xFFFFFD80);
                    }
                    if (select1084D != 0xFF) {
                        F_1084D(players1084D+0x14C*sub_080020F4(),u16,0xB0) = 0x21;
                        temp_r4_2 = sub_080020F4();
                        temp_r0_8 = F_1084D(arg0,s32,0x14) + 0xFFFFF000;
                        F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x94) = temp_r0_8;
                        F_1084D(players1084D+0x14C*temp_r4_2,s32,0x8C) = temp_r0_8;
                        temp_r4_3 = sub_080020F4();
                        var_r2_2 = (0x14C * temp_r4_3) + (players1084D+0x90);
                        var_r1_4 = (0x14C * sub_080020F4()) + (players1084D+0x98);
                        var_r0_3 = F_1084D(arg0,s32,0x18) + 0x2000;
                        goto block_116;
                    }
                    break;
                }
                break;
            case 5:                                 /* switch 1 */
                sub_0801A0B0((void *) arg0);
                switch (sp74) {                     /* switch 4; irregular */
                case 0:                             /* switch 4 */
                    F_1084D(arg0,u16,0xC) = 1U;
                    if (F_1084D(arg0,u16,0x68) != 0) {
                        sub_0805865C(0x1A1);
                    }
                    F_1084D(arg0,u16,0x68) = (u16) sp74;
                    sp70 = 1;
                    temp_r2 = F_1084D(arg0,s32,0x14);
                    if ((s32) (gUnk_03003170.width0 * 4) >= (s32) (temp_r2 >> 8)) {
                        sp74 = 1;
                        var_sl = 0;
                    } else {
                        F_1084D(arg0,s32,0x14) = (s32) (temp_r2 + 0xFFFFFD80);
                    }
                    break;
                case 1:                             /* switch 4 */
                    F_1084D(arg0,u16,0xC) = (u16) sp74;
                    F_1084D(arg0,u16,0x68) = 0x10U;
                    sp70 = 1;
                    temp_r1_8 = var_sl;
                    var_sl = temp_r1_8 + 1;
                    if ((u32) temp_r1_8 > 0x50U) {
                        sp74 = 2;
                        var_sl = 0;
                        F_1084D(object1084D,u16,0x68) = 0xEU;
                    } else {
                        goto block_60;
                    }
                    break;
                case 2:                             /* switch 4 */
                    F_1084D(arg0,u16,0xC) = 1U;
                    sp70 = 0;
                    if (F_1084D(object1084D,u16,0x6E) == 0) {

                    } else {
                        sub_0805867C(0x1A1);
                        var_sl = 0;
                        F_1084D(arg0,u8,0x1FE) = 3U;
                        var_r0_4 = arg0 + 0x1FD;
block_119:
                        *var_r0_4 = 1;
                        sub_08067C18();
                    }
                    break;
                }
                break;
            case 6:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0A4((void *) arg0);
                if (F_1084D(arg0,u16,0x68) != 0) {
                    h1084D0A7ECC(0);
                    h1084D0A7ECC(1);
                    h1084D0A7ECC(2);
                    h1084D0A7ECC(3);
                    h1084D0A7ECC(4);
                    h1084D0A7ECC(5);
                    h1084D0A7ECC(6);
                    h1084D0A7ECC(7);
                }
                F_1084D(arg0,u16,0x68) = 0U;
                sp70 = 1;
                F_1084D(arg0,u32,0x8) = 2;
                temp_r1_9 = F_1084D(arg0,s32,0x14);
                if (temp_r1_9 < 0xFFFFE000) {
                    sub_0801A0B0((void *) arg0);
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xDU;
                    F_1084D(arg0,u8,0x1FF) = 5U;
                    F_1084D(arg0,u8,0x1FD) = (u8) sp70;
                    sub_08067C18();
                    if (select1084D != 0xFF) {
                        h1084D015C8C();
                    }
                } else {
                    F_1084D(arg0,s32,0x14) = (s32) (temp_r1_9 + 0xFFFFFD00);
                }
                h1084D0A6258(0);
                break;
            case 7:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                F_1084D(arg0,u32,0x8) = 0;
                switch (sp74) {                     /* switch 5; irregular */
                case 0:                             /* switch 5 */
                    sub_0801A0B0((void *) arg0);
                    if (F_1084D(arg0,u16,0x68) != 0) {
                        sub_0805865C(0x1A1);
                    }
                    F_1084D(arg0,u16,0x68) = (u16) sp74;
                    if ((s32) (gUnk_03003170.width0 * 4) >= (s32) ((s32) F_1084D(arg0,s32,0x14) >> 8)) {
                        sp74 = 1;
                        var_sl = 0;
                        h1084D0A7F94(0);
                        h1084D0A7F94(1);
                    } else {
                        var_r3 = 0xFFFFFD80;
block_121:
                        F_1084D(arg0,s32,0x14) = (s32) (F_1084D(arg0,s32,0x14) + var_r3);
                    }
                    break;
                case 1:                             /* switch 5 */
                    F_1084D(arg0,u16,0x68) = 0x10U;
                    sp70 = 1;
                    sub_0801A0A4((void *) arg0);
                    temp_r0_9 = sp7C + 2;
                    sp7C = (s32) temp_r0_9;
                    F_1084D(arg0,s32,0x18) = (s32) (F_1084D(arg0,s32,0x18) + ((s16) gUnk_080B9704[temp_r0_9] >> 1));
                    temp_r1_10 = var_sl;
                    var_sl = temp_r1_10 + 1;
                    if ((u32) temp_r1_10 <= 0x12CU) {

                    } else {
                        sp74 = 2;
                    }
                    break;
                case 2:                             /* switch 5 */
                    F_1084D(arg0,u16,0x68) = 0U;
                    sp70 = 1;
                    sub_0801A0B0((void *) arg0);
                    temp_r1_11 = F_1084D(arg0,s32,0x14);
                    if (temp_r1_11 < 0xFFFFE000) {
                        var_sl = 0;
                        F_1084D(arg0,u8,0x1FE) = 0xDU;
                        F_1084D(arg0,u8,0x1FF) = 5U;
                        F_1084D(arg0,u8,0x1FD) = (u8) sp70;
                        sub_08067C18();
                        sub_0805867C(0x1A1);
                    } else {
                        F_1084D(arg0,s32,0x14) = (s32) (temp_r1_11 + 0xFFFFFD80);
                    }
                    break;
                }
                break;
            case 8:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0A4((void *) arg0);
                if (F_1084D(arg0,u16,0x68) != 0xF) {
                    sub_0805865C(0x1A3);
                    F_1084D(arg0,u16,0x6E) = 0U;
                }
                F_1084D(arg0,u16,0x68) = 0xFU;
                sp70 = 0;
                F_1084D(arg0,u32,0x8) = 0;
                if (F_1084D(arg0,u16,0x6E) != 0) {
                    sub_0801A0B0((void *) arg0);
                    sp74 = 0;
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 4U;
                    F_1084D(arg0,u8,0x1FD) = 1U;
                    sub_08067C18();
                    sub_0805865C(0x1A1);
                } else {
                    h1084D0A6510();
                }
                if (select1084D == 0xFF) {

                } else {
                    temp_r4_4 = sub_080020F4();
                    temp_r0_10 = F_1084D(arg0,s32,0x14);
                    F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x94) = temp_r0_10;
                    F_1084D(players1084D+0x14C*temp_r4_4,s32,0x8C) = temp_r0_10;
                    temp_r4_5 = sub_080020F4();
                    var_r2_2 = (0x14C * temp_r4_5) + (players1084D+0x90);
                    var_r1_4 = (0x14C * sub_080020F4()) + (players1084D+0x98);
                    var_r0_3 = F_1084D(arg0,s32,0x18) + 0x1000;
                    goto block_116;
                }
                break;
            case 10:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0B0((void *) arg0);
                if ((h1084D0A8090(arg0 + 0x14) << 0x18) == 0) {

                } else {
                    sp88 = 0;
                    selectSecond1084D = 0xFF;
                    if ((sub_0800CE68() == 0) && (sub_0800CC98() == 0)) {
                        sub_08015C38();
                    }
                    F_1084D(arg0,u8,0x1FE) = 0xCU;
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_156;
                }
                break;
            case 11:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0B0((void *) arg0);
                if (F_1084D(arg0,u16,0x68) != 0) {
                    sub_0805865C(0x1A1);
                }
                F_1084D(arg0,u16,0x68) = 0U;
                sp70 = 1;
                if (sp88 == 0) {
                    temp_r0_11 = h1084D0A6258(1);
                    sp88 = (s32) temp_r0_11;
                    if (temp_r0_11 != 0) {
                        sub_0805865C(0x1AB);
                    }
                }
                temp_r1_12 = F_1084D(arg0,s32,0x14);
                if (temp_r1_12 < 0xFFFFE000) {
                    var_sl = 0;
                    sp68 = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xDU;
                    F_1084D(arg0,u8,0x1FF) = 0xAU;
                    F_1084D(arg0,u8,0x1FD) = 1U;
                    sub_08067C18();
                    sub_0805867C(0x1A1);
                    if (select1084D == 0xFF) {

                    } else {
                        h1084D015C8C();
                        goto block_112;
                    }
                } else {
                    F_1084D(arg0,s32,0x14) = (s32) (temp_r1_12 + 0xFFFFFD00);
block_112:
                    if (select1084D == 0xFF) {

                    } else {
                        var_r4 = sub_080020F4();
                        var_r0_2 = sub_080020F4();
                        goto block_115;
                    }
                }
                break;
            case 4:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 1U;
                F_1084D(arg0,u16,0x68) = 1U;
                sp70 = 1;
                sub_0801A0B0((void *) arg0);
                if ((s32) ((gUnk_03003170.width0 * 8) + 0x32) <= (s32) ((s32) F_1084D(arg0,s32,0x14) >> 8)) {
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xEU;
                    var_r0_4 = arg0 + 0x1FD;
                    goto block_119;
                }
                var_r3 = 0x120;
                goto block_121;
            case 9:                                 /* switch 1 */
                F_1084D(arg0,u16,0xC) = 2U;
                sub_0801A0B0((void *) arg0);
                if (select1084D != 0xFF) {
                    temp_r4_6 = sub_080020F4();
                    temp_r0_12 = F_1084D(arg0,s32,0x14);
                    F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x94) = temp_r0_12;
                    F_1084D(players1084D+0x14C*temp_r4_6,s32,0x8C) = temp_r0_12;
                    temp_r4_7 = sub_080020F4();
                    temp_r0_13 = F_1084D(arg0,s32,0x18);
                    F_1084D(players1084D+0x14C*sub_080020F4(),s32,0x98) = temp_r0_13;
                    F_1084D(players1084D+0x14C*temp_r4_7,s32,0x90) = temp_r0_13;
                }
                temp_r1_13 = sp68;
                sp68 = (u32) (u16) (temp_r1_13 + 1);
                if (temp_r1_13 > 0x1EU) {
                    sp68 = 0;
                    if (select1084D != 0xFF) {
                        F_1084D(players1084D+0x14C*sub_080020F4(),u16,0xB0) = 0xFFFE;
                        if (sub_0800CE30() == 1) {
                            h1084D029A7C(5, 0x32, 3);
                        } else {
                            h1084D029A7C(5, 0x1E, 3);
                        }
                    }
                }
                F_1084D(arg0,u16,0x68) = 4U;
                sp70 = 1;
                temp_r2_2 = F_1084D(arg0,s32,0x14);
                if ((s32) ((gUnk_03003170.width0 * 8) + 0x32) <= (s32) (temp_r2_2 >> 8)) {
                    var_sl = 0;
                    F_1084D(arg0,u8,0x1FE) = 0xEU;
                    F_1084D(arg0,u8,0x1FD) = 1U;
                    sub_08067C18();
                } else {
                    F_1084D(arg0,s32,0x14) = (s32) (temp_r2_2 + 0x120);
                }
                break;
            case 12:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                sp84 = 0;
                sub_0801A0B0((void *) arg0);
                temp_r1_14 = var_sl;
                var_sl = temp_r1_14 + 1;
                if ((u32) temp_r1_14 <= 0x5AU) {

                } else {
                    F_1084D(arg0,s32,0x18) = 0x2B00;
                    F_1084D(arg0,u8,0x1FE) = (u8) F_1084D(arg0,u8,0x1FF);
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_156;
                }
                break;
            case 13:                                /* switch 1 */
                F_1084D(arg0,u16,0xC) = 0U;
                sp84 = 1;
                sub_0801A0B0((void *) arg0);
                temp_r1_15 = var_sl;
                var_sl = temp_r1_15 + 1;
                if ((u32) temp_r1_15 > 0x5AU) {
                    if (select1084D != 0xFF) {
                        sp80 = 1;
                    }
                    if (sub_0800CE30() == 1) {
                        if (sp78 != 3) {
                            goto block_143;
                        }
                        goto block_144;
                    }
                    if (sp78 != 2) {
block_143:
                        var_r0_5 = sp78 + 1;
                    } else {
block_144:
                        var_r0_5 = 0;
                    }
                    sp78 = (s32) var_r0_5;
                    switch (sp78) {                 /* switch 6; irregular */
                    case 0:                         /* switch 6 */
                        sp74 = 0;
                        var_sl = 0;
                        F_1084D(arg0,s32,0x18) = 0x2B00;
                        F_1084D(arg0,u8,0x1FE) = 8U;
                        var_r1_3 = arg0 + 0x1FD;
                        goto block_156;
                    case 1:                         /* switch 6 */
                        F_1084D(arg0,s32,0x18) = 0x4800;
                        F_1084D(arg0,u8,0x1FE) = 7U;
                        F_1084D(arg0,u8,0x1FD) = (u8) sp78;
                        sub_08067C18();
                        break;
                    case 2:                         /* switch 6 */
                        sp74 = 0;
                        var_sl = 0;
                        F_1084D(arg0,s32,0x18) = 0x2B00;
                        var_r1_2 = arg0 + 0x1FE;
                        var_r0 = 6;
                        goto block_155;
                    case 3:                         /* switch 6 */
                        sp74 = 0;
                        var_sl = 0;
                        F_1084D(arg0,s32,0x18) = 0x2800;
                        h1084D0A803C();
                        F_1084D(arg0,u8,0x1FE) = 0xBU;
                        F_1084D(arg0,u8,0x1FD) = 1U;
                        sub_08067C18();
                        break;
                    }
                }
                break;
            }
            if ((sp80 != 0) && ((h1084D0A66E0(&sp44) << 0x18) != 0)) {
                sp80 = 0;
            }
        }
        if ((select1084D != 0xFF) || (selectSecond1084D != 0xFF)) {
            sub_08015C14();
        }
        if (sp5C != F_1084D(object1084D,u16,0x68)) {
            sp5C = (s32) F_1084D(object1084D,u16,0x68);
            F_1084D(object1084D,u16,0x6C) = 0;
            F_1084D(object1084D,u16,0x6A) = 0;
        }
        sp50 = F_1084D(object1084D,s32,0x14);
        if ((u32) (u8) (F_1084D(arg0,u8,0x1FD) - 0xD) <= 1U) {

        } else {
            if (sub_0800CD8C() == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
            }
            if (1 & sub_08098004()) {
                var_r0_6 = sub_08097FF8();
            } else {
                var_r0_6 = (u8) sub_0800BC44((u32) ((s32) F_1084D(arg0,s32,0x14) >> 8), (u32) ((s32) F_1084D(arg0,s32,0x18) >> 8), 0U);
            }
            temp_r0_14 = var_r0_6;
            sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
            temp_r4_8 = &sp46;
            sp0 = 0;
            sp4 = NULL;
            h1084D00BC08((s32) (F_1084D(arg0,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(arg0,s32,0x18) << 8) >> 0x10, temp_r4_8, &sp48, sp0, sp4);
            if (sp60 != 0) {
                temp_r0_15 = sp60;
                sp60 = (s32) (u16) (temp_r0_15 - 1);
                if ((1 & temp_r0_15) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                    sp0 = (s32) temp_r0_14;
                    sp4 = &sp10.f1C;
                    sp8 = sp10.f8;
                    spC = sp10.f0;
                    h1084D007870(sp46, sp48, F_1084D(arg0,u16,0x68), F_1084D(arg0,u16,0x6A), sp0, sp4, sp8, spC);
                }
            } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                sp0 = (s32) temp_r0_14;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(arg0,u16,0x68), F_1084D(arg0,u16,0x6A), sp0, sp4, sp8, spC);
            }
            if (((u32) (F_1084D(arg0,s32,0x14) + 0xFFFFD600) <= 0x9200U) && (sp84 == 1) && (gUnk_03002344 & sp84) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
                temp_r0_16 = sub_0800CD34();
                if (temp_r0_16 == 0) {
                    temp_r4_9 = sp50 >> 8;
                    temp_r5 = sp54 >> 8;
                    temp_r8 = (u8) sub_0800BC44((u32) temp_r4_9, (u32) temp_r5, 0U);
                    sp0 = temp_r0_16;
                    sp4 = temp_r0_16;
                    h1084D00BC08((s32) (s16) temp_r4_9, (s32) (s16) temp_r5, temp_r4_8, &sp48, sp0, sp4);
                    sp0 = (s32) temp_r8;
                    sp4 = &sp10.f1C;
                    sp8 = sp10.f8;
                    spC = sp10.f0;
                    F_1084D(h1084D007870(sp46,1,0x12U,0U, sp0, sp4, sp8, spC),s32,0xC) = (s32) sp48;
                }
            }
        }
        temp_r0_17 = F_1084D(arg0,u32,0x4C);
        if ((temp_r0_17 != 0) && (sp58 != temp_r0_17)) {
            sp58 = temp_r0_17;
            sp64 = 0xA;
            sp6C = 0;
        }
        if (sp64 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                h1084D01A120(arg0, sp58, (s16) sp6C);
            }
            if (2 & sp64) {
                sp6C = (u32) ((sp6C << 0x10) + 0xFFFF0000) >> 0x10;
            }
            sp64 = (s32) (u16) (sp64 - 1);
        } else {
            sp58 = 0;
            F_1084D(arg0,u32,0x4C) = sp64;
        }
        if ((h1084D019CE8(arg0) << 0x10) != 0) {
            sp8C = 1;
        }
        sub_080003F0();
        if (sp8C == 0) {
            goto loop_206;
        }
    }
    gUnk_030056FC = 0;
    temp_r2_3 = (sub_080020F4() * 0x14C) + (players1084D+0x30);
    *temp_r2_3 |= 1;
    sub_080A7E94();
    sub_080A7F5C();
    sub_080A8014();
    if (F_1084D(object1084D,u16,0x68) != 0x10) {
        F_1084D(object1084D,u16,0x68) = 0x11U;
    }
    F_1084D(object1084D,u16,0x6A) = 0U;
    F_1084D(object1084D,u16,0x6C) = 0;
    sp70 = 1;
    sp6C = 0;
    sp64 = 0xA;
loop_211:
    temp_r3 = (0x14C * sub_080020F4()) + (players1084D+0x30);
    *temp_r3 |= 1;
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_18 = sub_0800CD34();
        if (temp_r0_18 == 0) {
            sp0 = sp70;
            F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
            sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
            temp_r8_2 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
            sp0 = temp_r0_18;
            sp4 = temp_r0_18;
            h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
            sp0 = (s32) temp_r8_2;
            sp4 = &sp10.f1C;
            sp8 = sp10.f8;
            spC = sp10.f0;
            h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            h1084D01A120(arg0, sp58, (s16) sp6C);
        }
    }
    if (2 & sp64) {
        sp6C = (u32) ((sp6C << 0x10) + 0xFFFF0000) >> 0x10;
    }
    sub_080003F0();
    sp64 = (s32) (u16) (sp64 - 1);
    if (sp64 != 0xFFFF) {
        goto loop_211;
    }
    sub_080683CC();
    h1084D067CA8(F_1084D(object1084D,u16,0x2));
    sub_08068330(-0x21520532);
loop_226:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r3_2 = (0x14C * sub_080020F4()) + (players1084D+0x30);
        *temp_r3_2 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_19 = sub_0800CD34();
            if (temp_r0_19 == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
                sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
                temp_r8_3 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
                sp0 = temp_r0_19;
                sp4 = temp_r0_19;
                h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
                sp0 = (s32) temp_r8_3;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_226;
    }
    sub_08065E38(-0x21520532);
loop_234:
    if (sub_08058DB0() != 0) {
        temp_r3_3 = (0x14C * sub_080020F4()) + (players1084D+0x30);
        *temp_r3_3 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_20 = sub_0800CD34();
            if (temp_r0_20 == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
                sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
                temp_r8_4 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
                sp0 = temp_r0_20;
                sp4 = temp_r0_20;
                h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
                sp0 = (s32) temp_r8_4;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_234;
    }
    h1084D0586B4(0);
    temp_r2_4 = (sub_080020F4() * 0x14C) + (players1084D+0x30);
    *temp_r2_4 |= 1;
    sp0 = 0x3C;
    sp4 = (void*)0x14006A;
    F_1084D(game1084D,u32,0x720) = h1084D05DF38(1U, 0xEU, 0x19U, 2U, sp0, (u32)sp4);
loop_242:
    if (sub_0805EEFC((void *) F_1084D(game1084D,u32,0x720)) == 0) {
        temp_r3_4 = (0x14C * sub_080020F4()) + (players1084D+0x30);
        *temp_r3_4 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_21 = sub_0800CD34();
            if (temp_r0_21 == 0) {
                sp0 = sp70;
                F_1084D(arg0,u16,0x6E) = (u16) h1084D065370(&sp10, F_1084D(arg0,u16,0x68), arg0 + 0x6A, arg0 + 0x6C, sp0);
                sub_08000AF0(palette1084D + 0x10, sp10.palette + (*sp90 << 5), 1U);
                temp_r8_5 = (u8) sub_0800BC44((u32) ((s32) F_1084D(object1084D,s32,0x14) >> 8), (u32) ((s32) F_1084D(object1084D,s32,0x18) >> 8), 0U);
                sp0 = temp_r0_21;
                sp4 = temp_r0_21;
                h1084D00BC08((s32) (F_1084D(object1084D,s32,0x14) << 8) >> 0x10, (s32) (F_1084D(object1084D,s32,0x18) << 8) >> 0x10, &sp46, &sp48, sp0, sp4);
                sp0 = (s32) temp_r8_5;
                sp4 = &sp10.f1C;
                sp8 = sp10.f8;
                spC = sp10.f0;
                h1084D007870(sp46, sp48, F_1084D(object1084D,u16,0x68), F_1084D(object1084D,u16,0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_242;
    }
    temp_r2_5 = (0x14C * sub_080020F4()) + (players1084D+0x30);
    *temp_r2_5 &= ~1;
    sub_0805867C(0x1A1);
    h1084D058688(0xD);
    h1084D0970CC(object1084D, &sp10, *sp90, palette1084D);
    if (!(F_1084D(players1084D+0x14C*sub_080020F4(),u32,0x30) & 0x2000) && (F_1084D(object1084D,u16,0x5A) != 0)) {
        temp_r4_10 = sub_0801E46C((void *) gUnk_030034E0, sp4C);
        sp6C = 0x1D;
        do {
            F_1084D(object1084D,s32,0x18) = (s32) (F_1084D(object1084D,s32,0x18) - 0x20);
            h1084D06171C(object1084D, temp_r4_10);
            sub_080003F0();
            temp_r0_22 = (sp6C << 0x10) + 0xFFFF0000;
            sp6C = temp_r0_22 >> 0x10;
        } while (((s32) temp_r0_22 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4_10);
    }
    sp6C = 0x6F;
    do {
        sub_080003F0();
        temp_r0_23 = (sp6C << 0x10) + 0xFFFF0000;
        sp6C = temp_r0_23 >> 0x10;
    } while (((s32) temp_r0_23 >> 0x10) != -1);
    sub_08067C18();
loop_252:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_252;
    }
    sub_08067BF8();
    sub_08056E24();
loop_255:
    if (sub_08056E90() == 0) {
        sub_080003F0();
        goto loop_255;
    }
    sub_080A80D8();
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A4D08);
#endif
struct T109P6258 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x, y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[2]; u16 fC8, fCA, fCC; u8 pCE[0x16]; u32 fE4[26]; };
struct T109Obj6258 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x,y; u8 p1C[0x34]; u32 serial; };
extern struct T109P6258 t109P6258[] asm("gUnk_03003CE0");
extern struct T109Obj6258 *t109O6258 asm("gUnk_03000400");
extern u8 gUnk_03000406;
extern s32 t109Calc6258(struct T109Obj6258 *,struct T109P6258 *) asm("sub_0801ED8C");
extern s32 t109X6258[] asm("gUnk_03003D6C");
extern s32 t109Angle6258(s16,s16) asm("ArcTan2");
s32 sub_080A6258(u8 arg0) {
    s32 result = 0;
    u16 dx;
    s16 x,y,hp;
    s32 i,j;
    u32 angle, angle3;
    s32 objx;
    u32 direction;
    s32 amount, value88;
    s32 first, second, yy;
    struct T109P6258 *base;
    struct T109P6258 *dst;
    s32 value;
    struct T109Obj6258 *obj;
    first = sub_080020F4();
    objx = t109O6258->x >> 8;
    base = t109P6258;
    dx = objx - (t109X6258[first*0x53] >> 8);
    second = sub_080020F4();
    yy = (t109O6258->y >> 8) + 12;
    y = yy - (t109P6258[second].y >> 8);
    x = dx;
    if ((u16)Sqrt(x*x+y*y) > 23) goto end;
    if (sub_0800CDF8() != 0) goto end;
    if (sub_0800CCCC() != 0) goto end;
    if (sub_0800CD8C() != 0) goto end;
    if (t109O6258->fC == 11) goto end;
    if (t109P6258[sub_080020F4()].flags & 0x2000) goto end;
    if (t109P6258[sub_080020F4()].f68 == 0) goto end;
    if (t109P6258[sub_080020F4()].state == 14) goto end;
    if (t109P6258[sub_080020F4()].state == 11) goto end;
    if (t109P6258[sub_080020F4()].state == 12) goto end;
    if (t109P6258[sub_080020F4()].fE4[t109O6258->id] == t109O6258->serial) goto end;
    base[sub_080020F4()].state = 10;
    t109P6258[sub_080020F4()].fB0 = 0xFFFE;
    i = sub_080020F4();
    obj = t109O6258;
    amount = t109Calc6258(obj, &t109P6258[sub_080020F4()]);
    value88 = t109P6258[i].f88;
    t109P6258[i].f88 = amount + value88;
    t109P6258[sub_080020F4()].fE4[t109O6258->id] = t109O6258->serial++;
    dx = (t109X6258[sub_080020F4()*0x53] >> 8) - (t109O6258->x >> 8);
    x = dx;
    y = (t109P6258[sub_080020F4()].y >> 8) - (t109O6258->y >> 8);
    angle = (u16)t109Angle6258(x,y);
    angle3 = (u16)(angle << 3);
    direction = angle >> 13;
    if (angle3 > 0x8000) {
        if (direction <= 6) direction++;
        else direction = 0;
    }
    switch (direction) {
    case 0:
        t109P6258[sub_080020F4()].fCA = 6;
        break;
    case 1:
        t109P6258[sub_080020F4()].fCA = 7;
        break;
    default:
        t109P6258[sub_080020F4()].fCA = direction - 2;
        break;
    }
    t109P6258[sub_080020F4()].fCC = 0x400;
    t109P6258[sub_080020F4()].fC8 = 8;
    if (arg0 != 0) {
        hp = t109P6258[sub_080020F4()].fC4;
        if (hp > t109P6258[sub_080020F4()].f88) {
            gUnk_03000406 = 0;
            sub_08015C14();
            if (sub_0800CE68() != 0 || sub_0800CC98() != 0) sub_0800D038();
        }
    }
    result = 1;
end:
    return result;
}
struct T109P6510 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x; s32 y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[0x1E]; u32 fE4[26]; };
struct T109Obj6510 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x; s32 y; u8 p1C[0x34]; u32 serial; };
extern struct T109P6510 t109P6510[] asm("gUnk_03003CE0");
extern struct T109Obj6510 *t109O6510 asm("gUnk_03000400");
extern u8 gUnk_03000406;
extern s32 t109Calc6510(struct T109Obj6510 *, struct T109P6510 *) asm("sub_0801ED8C");
s32 sub_080A6510(void)
{
  s32 result = 0;
  u16 dx;
  s16 x;
  s16 y;
  s16 hp;
  s32 i;
  s32 j;
  s32 amount;
  s32 value;
  struct T109P6510 *dst;
  struct T109Obj6510 *obj;
  dx = (t109O6510->x >> 8) - (t109P6510[sub_080020F4()].x >> 8);
  y = (t109O6510->y >> 8) - (t109P6510[sub_080020F4()].y >> 8);
  x = dx;
  if (((u16) Sqrt((x * x) + (y * y))) > 47)
  {
    goto end;
  }
  if (gUnk_03000406 != 255)
  {
    goto end;
  }
  if (sub_0800CDF8() != 0)
  {
    goto end;
  }
  if (sub_0800CD8C() != 0)
  {
    goto end;
  }
  if (sub_0800CCCC() != 0)
  {
    goto end;
  }
  if (t109O6510->fC == 11)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].flags & 0x2000)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].f68 == 0)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].state == 14)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].state == 11)
  {
    goto end;
  }
  if (t109P6510[sub_080020F4()].state == 12)
  {

    goto end;
  }
  if (t109P6510[sub_080020F4()].fE4[t109O6510->id] == t109O6510->serial)
  {
    goto end;
  }
  t109P6510[sub_080020F4()].state = 10;
  t109P6510[sub_080020F4()].fB0 = 0xFFFE;
  i = sub_080020F4();
  obj = t109O6510;
  amount = t109Calc6510(obj, &t109P6510[sub_080020F4()]);
  dst = &t109P6510[i];
  value = dst->f88;
  dst->f88 = amount + value;
  t109P6510[sub_080020F4()].fE4[t109O6510->id] = t109O6510->serial++;
  hp = t109P6510[sub_080020F4()].fC4;
  if (hp > t109P6510[sub_080020F4()].f88)
  {
    gUnk_03000406 = 0;
    sub_08015C14();
    if ((sub_0800CE68() != 0) || (sub_0800CC98() != 0))
    {
      sub_0800D038();
    }
  }
  result = 1;
  end:
  return result;

}
struct T109Player { u8 pad0[0x1C]; s16 f1C; u8 pad1E[0x6E]; s32 x, y, x2, y2; u8 pad9C[0x14]; u16 fB0; u8 padB2[0x9A]; };
extern struct T109Player t109Players[] asm("gUnk_03003CE0");
extern s32 t109X[] asm("gUnk_03003D6C");
extern s32 t109Origin[2] asm("gUnk_085187B4");
extern s32 t109Targets[][4][2] asm("gUnk_085187BC");
extern void sub_08015CB4(void);
extern void sub_08015D04(void);
extern void sub_08029A7C(s32,s32,s32);
s32 sub_080A66E0(u8 *arg0) {
    s32 result = 0;
    s32 i0;
    s32 i1;
    s32 i2;
    s32 i3;
    s32 i4;
    s32 i5;
    s32 i6;
    s32 i7;
    s32 mode;
    struct T109Player *base;
    s32 j;
    if (gUnk_03000406 != 0xFF) {
        if (*arg0 == 0) {
            i0 = sub_080020F4();
            t109Players[i0].x = t109Players[sub_080020F4()].x2 = t109Origin[0];
            i1 = sub_080020F4();
            t109Players[i1].y = t109Players[sub_080020F4()].y2 = t109Origin[1];
            sub_08015CB4();
        } else {
            mode = sub_08002164() - 1;
            i2 = sub_080020F4();
            j = sub_080020F4();
            base = t109Players;
            t109X[i2 * 0x53] += (t109Targets[mode][j][0] - t109Origin[0]) / 20;
            i3 = sub_080020F4();
            t109Players[i3].y += (t109Targets[mode][sub_080020F4()][1] - t109Origin[1]) / 20;
            i4 = sub_080020F4();
            t109Players[i4].x2 = t109X[sub_080020F4() * 0x53];
            i5 = sub_080020F4();
            t109Players[i5].y2 = t109Players[sub_080020F4()].y;
            base[sub_080020F4()].f1C = 5;
        }
        if (++*arg0 > 19) {
            *arg0 = 0;
            result = 1;
            gUnk_03000406 = 0xFF;
            sub_08015D04();
            sub_08015C38();
            t109Players[sub_080020F4()].fB0 = 0xFFFE;
            if (sub_0800CE30() == 1) sub_08029A7C(0, 100, 3);
            else sub_08029A7C(0, 70, 3);
        }
    }
    return result;
}
struct T109P68B0 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x; s32 y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[0x1E]; u32 fE4[26]; };
struct T109Obj68B0 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x; s32 y; u8 p1C[0x34]; u32 serial; };
extern struct T109P68B0 t109P68B0[] asm("gUnk_03003CE0");
extern struct T109Obj68B0 *t109O68B0 asm("gUnk_03000400");
extern s32 t109Calc68B0(struct T109Obj68B0 *, struct T109P68B0 *) asm("sub_0801ED8C");
extern u16 t109Index68B0 asm("gUnk_03000404");
extern void t109Init68B0(void *,s32,u16,s32,s32) asm("sub_08065158");
extern void t109Screen68B0(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void t109Draw68B0(s16,s16,s32,u16,s32,void *,s32,s32) asm("sub_08007870");
extern void t109Anim68B0(void *,s32,u16 *,u16 *,s32) asm("sub_08065370");
extern u32 t109Serial68B0[][83] asm("gUnk_03003DC4");
extern void t109Run68B0(u16) asm("sub_080A68B0");
void t109Run68B0(u16 arg0) {
    u8 sprite[0x34];
    s16 outX, outY;
    u16 frame, tick;
    u8 *resource;
    s32 speed, remaining;
    u8 wait;
    s32 delay;
    s32 pos[2];
    u16 dx;
    s16 x,y;
    s32 i, amount, value;
    struct T109P68B0 *dst;
    struct T109Obj68B0 *obj;
    s32 zero;
    s32 second, yy;
    s32 *task;
    resource = (u8 *)t109O68B0 + 0x204;
    t109Init68B0(sprite,0x5000F,t109Index68B0,-1,1);
    sprite[0x1C] = t109Index68B0;
    speed = 0x80;
    remaining = 240;
    wait = 0;
    tick = 0;
    frame = wait;
    sub_0805865C(0x1A4);
    delay = arg0 * 17;
    do {
        if (delay > wait) {
            wait++;
            pos[0] = t109O68B0->x;
            pos[1] = t109O68B0->y;
            if (delay <= wait) sub_0805865C(0x1A4);
        } else {
            if (arg0 & 1) pos[0] += 0xC0;
            pos[1] += speed;
            speed += 18;
            dx = (pos[0] >> 8) - (t109P68B0[sub_080020F4()].x >> 8);
            x = dx;
            second = sub_080020F4();
            yy = (pos[1] >> 8) + 12;
            y = yy - (t109P68B0[second].y >> 8);
            if ((u16)Sqrt(x*x+y*y) > 15) goto contactDone;
            if (sub_0800CDF8() != 0) goto contactDone;
            if (sub_0800CD8C() != 0) goto contactDone;
            if (sub_0800CCCC() != 0) goto contactDone;
            if (t109O68B0->fC == 11) goto contactDone;
            if (t109P68B0[sub_080020F4()].flags & 0x2000) goto contactDone;
            if (t109P68B0[sub_080020F4()].f68 == 0) goto contactDone;
            if (t109P68B0[sub_080020F4()].state == 14) goto contactDone;
            if (t109P68B0[sub_080020F4()].state == 11) goto contactDone;
            if (t109P68B0[sub_080020F4()].state == 12) goto contactDone;
            if (t109Serial68B0[sub_080020F4()][t109O68B0->id] == t109O68B0->serial) goto contactDone;
            t109P68B0[sub_080020F4()].state = 10;
            t109P68B0[sub_080020F4()].fB0 = 0xFFFE;
            i = sub_080020F4();
            obj = t109O68B0;
            amount = t109Calc68B0(obj, &t109P68B0[sub_080020F4()]);
            dst = &t109P68B0[i];
            value = dst->f88;
            dst->f88 = amount + value;
            { s32 player=sub_080020F4(); register struct T109Obj68B0 *p asm("r2"); register struct T109Obj68B0 **a asm("r3")=&t109O68B0; asm("" : "+r"(a)); p=*a; t109Serial68B0[player][p->id]=p->serial; }
contactDone:
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
                zero = sub_0800CD34();
                if (zero == 0) {
                    t109Screen68B0((s32)(pos[0]<<8)>>16,(s32)(pos[1]<<8)>>16,&outX,&outY,zero,zero);
                    sub_08000AF0(t109Index68B0+16,*(u8 **)(sprite+0xC)+(*(u16 *)(resource+0xD6)<<5),1);
                    t109Anim68B0(sprite,2,&frame,&tick,1);
                    t109Draw68B0(outX,outY,2,frame,zero,sprite+0x1C,*(s32 *)(sprite+8),*(s32 *)sprite);
                }
            }
        }
        sub_080003F0();
        if (sub_0800CED8() != 0 || sub_0800CB78() != 0 || (zero = sub_0800CD00()) != 0) {
            task = (s32 *)sub_0800048C();
            task[2] = 0;
            return;
        }
        remaining = (u16)(remaining-1);
    } while (remaining != 0xFFFF);
    sub_080003F0();
    t109O68B0->serial++;
    task = (s32 *)sub_0800048C();
    task[2] = zero;
}
#ifdef NONMATCHING
struct T109P6BE8 { u8 p0[0x20]; u16 state; u8 p22[0xE]; u32 flags; u8 p34[0x34]; u8 f68; u8 p69[0x1F]; u16 f88; u8 p8A[2]; s32 x; s32 y; u8 p94[0x1C]; u16 fB0; u8 pB2[0x12]; s16 fC4; u8 pC6[0x1E]; u32 fE4[26]; };
struct T109Obj6BE8 { u16 id; u8 p2[10]; u16 fC; u8 pE[6]; s32 x; s32 y; u8 p1C[0x34]; u32 serial; };
extern struct T109P6BE8 t109P6BE8[] asm("gUnk_03003CE0");
extern struct T109Obj6BE8 *t109O6BE8 asm("gUnk_03000400");
extern u8 gUnk_03000406;
extern s32 t109Calc6BE8(struct T109Obj6BE8 *, struct T109P6BE8 *) asm("sub_0801ED8C");
extern u16 t109Index6BE8 asm("gUnk_03000404");
extern void t109Init6BE8(void *,s32,u16,s32,s32) asm("sub_08065158");
extern void t109Screen6BE8(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void t109Draw6BE8(s16,s16,s32,u16,s32,void *,s32,s32) asm("sub_08007870");
extern void t109Anim6BE8(void *,s32,u16 *,u16 *,s32) asm("sub_08065370");
extern u32 t109Serial6BE8[] asm("gUnk_03003DC4");
extern void t109Run6BE8(u16) asm("sub_080A6BE8");
struct T109Particle6BE8 { s32 x,y,speed; u16 frame,tick; u8 direction,timer,hit,delay; };
void t109Run6BE8(u16 arg0) {
    u8 sprite[0x34];
    struct T109Particle6BE8 particles[4];
    s16 outX,outY;
    u8 *resource;
    struct T109Particle6BE8 *pHit;
    u8 *ybase, *sbase;
    s32 nextRemaining;
    u8 *xbase;
    s32 spacing;
    u8 index;
    s32 initOffset;
    u16 remaining;
    struct T109Particle6BE8 *pInit, *pDraw;
    s32 modeResult;
    struct T109Particle6BE8 *pDelay, *pDirection, *pX;
    s32 *destY, *destY2, *speedPtr;
    s32 productY, productX, xOffset;
    s32 initDelay;
    struct T109Particle6BE8 *pBranch;
    s32 zero;
    u16 dx;
    s16 x,y;
    s32 i, amount, value;
    struct T109P6BE8 *dst;
    struct T109Obj6BE8 *obj;
    s32 second, yy;
    s32 direction;
    s32 offset;
    s32 drawOffset, hitOffset;
    s32 index4;
    u8 *initBase;
    resource = (u8 *)t109O6BE8 + 0x204;
    t109Init6BE8(sprite,0x5000F,t109Index6BE8,-1,1);
    sprite[0x1C] = t109Index6BE8;
    modeResult = sub_0800CE30();
    spacing = 16;
    if (modeResult == 1) spacing = 8;
    index = 0;
    initBase = (u8 *)&particles[0].x;
    xbase = initBase;
    sbase = (u8 *)&particles[0].speed;
    ybase = (u8 *)&particles[0].y;
    do {
        if (arg0 != 0) {
            pBranch = (struct T109Particle6BE8 *)(initBase+index*20);
            pBranch->direction = index+4;
            pBranch->x = t109O6BE8->x + 0x800;
            initDelay = (3-index)*spacing;
        } else {
            pBranch = (struct T109Particle6BE8 *)(initBase+index*20);
            pBranch->direction = index+1;
            pBranch->x = t109O6BE8->x - 0x800;
            initDelay = index*spacing;
        }
        pBranch->delay = initDelay;
        initOffset = index * 20;
        pInit = (struct T109Particle6BE8 *)(initBase + initOffset);
        pInit->timer = 0;
        *(s32 *)(sbase+initOffset) = 128;
        *(s32 *)(ybase+initOffset) = t109O6BE8->y;
        pInit->tick = 0;
        pInit->frame = 0;
        pInit->hit = 0;
        index++;
    } while (index <= 3);
    remaining = 240;
outer:
        index = 0;
        nextRemaining = remaining - 1;
inner:
            index4 = index*4;
            pDelay = (struct T109Particle6BE8 *)(xbase+index*20);
            if (pDelay->delay != 0) {
                if (--pDelay->delay == 0) sub_0805865C(0x1A2);
            } else {
                if (pDelay->timer++ > 8) {
                    pDelay->timer = 0;
                    if (arg0 != 0) {
                        if (pDelay->direction != 7) {
                            direction = pDelay->direction+1;
                            pDelay->direction = direction;
                        } else direction = 0;
                    } else {
                        if (pDelay->direction != 0) {
                            direction = pDelay->direction-1;
                            pDelay->direction = direction;
                        } else direction = 7;
                    }
                    pDelay->direction = direction;
                }
                offset = index*20;
                pDirection = (struct T109Particle6BE8 *)(xbase+offset);
                if (pDirection->direction == 0 || pDirection->direction == 4) {
                    destY = (s32 *)(ybase+offset);
                    *destY += gUnk_080B9704[gUnk_085186DC[pDirection->direction]] * *(s32 *)(sbase+offset) / 304;
                } else {
                    destY2 = (s32 *)(ybase+offset);
                    productY = gUnk_080B9704[gUnk_085186DC[pDirection->direction]] * *(s32 *)(sbase+offset);
                    if (productY < 0) productY += 255;
                    *destY2 += productY >> 8;
                }
                xOffset = index*20;
                pX = (struct T109Particle6BE8 *)(xbase+xOffset);
                speedPtr = (s32 *)(sbase+xOffset);
                productX = *speedPtr * gUnk_080B9704[gUnk_085186DC[pX->direction]+64];
                if (productX < 0) productX += 255;
                pX->x += productX >> 8;
                *speedPtr = (*speedPtr+32)-index;
            }
            drawOffset = (index4+index)*4;
            pDraw = (struct T109Particle6BE8 *)(xbase + drawOffset);
            if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
                zero = sub_0800CD34();
                if (zero == 0) {
                    sub_08000AF0(t109Index6BE8+16,*(u8 **)(sprite+0xC)+(*(u16 *)(resource+0xD6)<<5),1);
                    t109Screen6BE8((s32)(pDraw->x<<8)>>16,(s32)(*(s32 *)(ybase+drawOffset)<<8)>>16,&outX,&outY,zero,zero);
                    t109Anim6BE8(sprite,pDraw->direction+5,&pDraw->frame,&pDraw->tick,1);
                    t109Draw6BE8(outX,outY,pDraw->direction+5,pDraw->frame,zero,sprite+0x1C,*(s32 *)(sprite+8),*(s32 *)sprite);
                }
            }
            hitOffset = (index4+index)*4;
            pHit = (struct T109Particle6BE8 *)(xbase + hitOffset);
            if (pHit->hit != 0) goto nextParticle;
            dx = (pHit->x >> 8) - (t109P6BE8[sub_080020F4()].x >> 8);
            x = dx;
            second = sub_080020F4();
            yy = (*(s32 *)(ybase+hitOffset) >> 8) + 12;
            y = yy - (t109P6BE8[second].y >> 8);
            if ((u16)Sqrt(x*x+y*y) > 15) goto nextParticle;
            if (sub_0800CDF8() != 0) goto nextParticle;
            if (sub_0800CD8C() != 0) goto nextParticle;
            if (sub_0800CCCC() != 0) goto nextParticle;
            if (t109O6BE8->fC == 11) goto nextParticle;
            if (t109P6BE8[sub_080020F4()].flags & 0x2000) goto nextParticle;
            if (t109P6BE8[sub_080020F4()].f68 == 0) goto nextParticle;
            if (t109P6BE8[sub_080020F4()].state == 14) goto nextParticle;
            if (t109P6BE8[sub_080020F4()].state == 11) goto nextParticle;
            if (t109P6BE8[sub_080020F4()].state == 12) goto nextParticle;
            if (t109P6BE8[sub_080020F4()].fE4[t109O6BE8->id] == t109O6BE8->serial) goto nextParticle;
            t109P6BE8[sub_080020F4()].state = 10;
            t109P6BE8[sub_080020F4()].fB0 = 0xFFFE;
            i = sub_080020F4();
            obj = t109O6BE8;
            amount = t109Calc6BE8(obj, &t109P6BE8[sub_080020F4()]);
            dst = &t109P6BE8[i];
            value = dst->f88;
            dst->f88 = amount + value;
            t109P6BE8[sub_080020F4()].fE4[t109O6BE8->id] = t109O6BE8->serial++;

            pHit->hit = 1;
nextParticle:
            index++;
        if (index <= 3) goto inner;
        sub_080003F0();
        remaining = (u16)nextRemaining;
        if (remaining != 0xFFFF) goto outer;
    *(s32 *)((u8 *)sub_0800048C()+8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A6BE8);
#endif
#ifdef NONMATCHING
extern u16 taskIndexA705C asm("gUnk_03000404");
extern s32 gUnk_03000414;
extern void callA705C_0800BC08(s32,s32,s16*,s16*,s32,s32) asm("sub_0800BC08");
extern void callA705C_08007870(s16,s16,s32,u16,s32,void*,s32,s32) asm("sub_08007870");
extern u32 callA705C_08065158(void*,s32,u16,s32,s32) asm("sub_08065158");
extern s32 callA705C_0801ED8C(s32,void*) asm("sub_0801ED8C");
extern s32 callA705C_08096594(s32) asm("sub_08096594");
extern s8 taskFlagA705C asm("gUnk_03000407");
s32 sub_080A705C(void) {
    u8 sprite[0x34];
    struct { s32 x; s32 y; s32 timer; s16 frame; s16 tick; u8 animation; u8 active; u8 pad[2]; } particles[12];
    s32 targets[12][2];
    s32 origins[12][2];
    u8 done[12];
    u8 countdown[12];
    s16 outX;
    s16 outY;
    u8 *resource;
    u8 *particleBase;
    u8 *originY;
    s32 offset;
    u8 *particleX;
    u8 *particleY;
    u8 *particleTimer;
    s16 temp_r1_3;
    s16 temp_r4_6;
    s16 temp_r4_8;
    register s32 *temp_r4_2 asm("r4");
    s32 *temp_r5;
    s32 *temp_r5_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r1;
    s32 temp_r1_5;
    s32 temp_r3;
    s32 temp_r3_2;
    s32 temp_r4_3;
    s32 temp_r4_7;
    s32 temp_r5_3;
    s32 temp_r6;
    s32 var_r4;
    struct Player *temp_r1_2;
    u16 temp_r4_5;
    u8 *temp_r2;
    u8 *temp_r3_3;
    register u8 temp_r0 asm("r0");
    u8 temp_r0_5;
    u8 temp_r0_8;
    u8 temp_r0_9;
    u8 var_r0;
    u8 var_r9;
    u8 var_r9_2;
    register u8 var_r9_3 asm("r9");
    void *temp_r1_4;
    void *temp_r4;
    void *temp_r4_4;
    void *temp_r6_2;

    (resource) = gUnk_03000400 + 0x204;
    callA705C_08065158(&(M2C_FIELD(sprite,s32*,0)), 0x5000F, taskIndexA705C, -1, 1);
    M2C_FIELD(&(M2C_FIELD(sprite,s32*,0)), s8 *, 0x1C) = (s8) taskIndexA705C;
    var_r9 = 0;
    (particleX) = &(((u8 *)particles)[0]);
    (originY) = &(((u8 *)origins)[4]);
    (particleY) = &(((u8 *)particles)[4]);
    (particleTimer) = &(((u8 *)particles)[0]) + 8;
    do {
        temp_r1 = var_r9 * 0x14;
        temp_r4 = &(((u8 *)particles)[0]) + temp_r1;
        M2C_FIELD(temp_r4, s8 *, 0x10) = 1;
        temp_r3 = var_r9 * 8;
        temp_r0_2 = M2C_FIELD(gUnk_03000400, s32 *, 0x14);
        M2C_FIELD(temp_r4, s32 *, 0) = temp_r0_2;
        *(s32 *)((u8 *)&(origins[0][0]) + temp_r3) = temp_r0_2;
        temp_r0_3 = M2C_FIELD(gUnk_03000400, s32 *, 0x18);
        *(s32 *)((particleY) + temp_r1) = temp_r0_3;
        *(s32 *)((originY) + temp_r3) = temp_r0_3;
        *(s32 *)((particleTimer) + temp_r1) = temp_r1 + 0x1E;
        M2C_FIELD(temp_r4, s8 *, 0x11) = 1;
        *(&(done[0]) + var_r9) = 0;
        M2C_FIELD(temp_r4, s16 *, 0xE) = 0;
        M2C_FIELD(temp_r4, s16 *, 0xC) = 0;
        *(&(countdown[0]) + var_r9) = 0x18;
        temp_r0 = var_r9 + 1;
        var_r9 = temp_r0;
    } while ((u32) temp_r0 <= 0xBU);
    sub_0805865C(0x1A2);
    gUnk_03000414 = 0;
    (particleBase) = (particleX);
loop_3:
    var_r9_2 = 0;
loop_4:
    temp_r6 = var_r9_2 * 0x14;
    temp_r4_2 = (particleTimer) + temp_r6;
    temp_r0_4 = *temp_r4_2;
    (offset) = var_r9_2 * 4;
    if (temp_r0_4 != 0) {
        *temp_r4_2 = temp_r0_4 - 1;
        temp_r1_2 = &gUnk_03003CE0[callA705C_08096594(0)];
        temp_r3_2 = var_r9_2 * 8;
        *(s32 *)((u8 *)&(targets[0][0]) + temp_r3_2) = ((u16) M2C_FIELD(M2C_FIELD(temp_r1_2, void **, 0x148), u16 *, 0) >> 4) << 8;
        *(s32 *)((u8 *)&(targets[0][1]) + temp_r3_2) = (u32) (M2C_FIELD(M2C_FIELD(temp_r1_2, void **, 0x148), u16 *, 2) << 0x14) >> 0xC;
        if (*temp_r4_2 != 0) {

        } else {
            sub_0805865C(0x1A2);
        }
    } else {
        temp_r3_3 = &(done[0]) + var_r9_2;
        if (*temp_r3_3 != 0) {

        } else {
            temp_r2 = &(countdown[0]) + var_r9_2;
            temp_r0_5 = *temp_r2;
            if (temp_r0_5 != 0) {
                *temp_r2 = temp_r0_5 - 1;
                temp_r5 = (particleBase) + temp_r6;
                temp_r4_3 = var_r9_2 * 8;
                *temp_r5 += (s32) (*(s32 *)((u8 *)&(targets[0][0]) + temp_r4_3) - *(s32 *)((u8 *)&(origins[0][0]) + temp_r4_3)) / 24;
                temp_r5_2 = (particleY) + temp_r6;
                *temp_r5_2 += (s32) (*(s32 *)((u8 *)&(targets[0][1]) + temp_r4_3) - *(s32 *)((originY) + temp_r4_3)) / 24;
            } else {
                *temp_r3_3 = 1;
                temp_r4_4 = (particleBase) + temp_r6;
                M2C_FIELD(temp_r4_4, u8 *, 0x11) = temp_r0_5;
                temp_r4_5 = ((s32) M2C_FIELD(temp_r4_4, s32 *, 0) >> 8) - ((s32) *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x8C) >> 8);
                temp_r4_6 = (s16) temp_r4_5;
                temp_r1_3 = (((s32) *(s32 *)((particleY) + temp_r6) >> 8) + 8) - ((s32) *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x90) >> 8);
                if ((u32) Sqrt((temp_r4_6 * temp_r4_6) + (temp_r1_3 * temp_r1_3)) > 0xBU) {

                } else if (sub_0800CDF8() != 0) {

                } else if (sub_0800CD8C() != 0) {

                } else if (sub_0800CCCC() != 0) {

                } else if (M2C_FIELD(gUnk_03000400, u16 *, 0xC) == 0xB) {

                } else if (*(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30) & 0x2000) {

                } else if ((M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u8 *, 0x68) != 0) && (M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x20) != 0xE) && (M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x20) != 0xB) && (M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x20) != 0xC) && (*(s32 *)((M2C_FIELD(gUnk_03000400, u16 *, 0) * 4) + (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0xE4) != M2C_FIELD(gUnk_03000400, s32 *, 0x50))) {
                    M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), s16 *, 0x20) = 0xA;
                    M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), s16 *, 0xB0) = 0xFFFE;
                    temp_r5_3 = sub_080020F4();
                    temp_r4_7 = gUnk_03000400;
                    temp_r1_4 = (0x14C * temp_r5_3) + (u8 *)gUnk_03003CE0;
                    M2C_FIELD(temp_r1_4, u16 *, 0x88) = (u16) (callA705C_0801ED8C(temp_r4_7, (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0) + M2C_FIELD(temp_r1_4, u16 *, 0x88));
                    temp_r0_6 = M2C_FIELD(gUnk_03000400, s32 *, 0x50);
                    *(s32 *)((M2C_FIELD(gUnk_03000400, u16 *, 0) * 4) + (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0xE4) = temp_r0_6;
                    M2C_FIELD(gUnk_03000400, s32 *, 0x50) = (s32) (temp_r0_6 + 1);
                    temp_r4_8 = M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), s16 *, 0xC4);
                    if (((s32) temp_r4_8 > (s32) M2C_FIELD(((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0), u16 *, 0x88)) && ((sub_08015C14(), taskFlagA705C = 0, (sub_0800CE68() != 0)) || (sub_0800CC98() != 0))) {
                        sub_0800D038();
                    }
                    gUnk_03000414 = *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x90) + 0xFFFFF800;
                }
            }
        }
    }
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
        temp_r0_7 = sub_0800CD34();
        if (temp_r0_7 == 0) {
            sub_08000AF0(taskIndexA705C + 0x10, (M2C_FIELD(sprite,s32*,0xC)) + (M2C_FIELD((resource), u16 *, 0xD6) << 5), 1U);
            temp_r1_5 = ((offset) + var_r9_2) * 4;
            temp_r6_2 = (particleX) + temp_r1_5;
            callA705C_0800BC08((s32) (M2C_FIELD(temp_r6_2, s32 *, 0) << 8) >> 0x10, (s32) (*(s32 *)((particleY) + temp_r1_5) << 8) >> 0x10, &(outX), &(outY), temp_r0_7, temp_r0_7);
            sub_08065370(&(M2C_FIELD(sprite,s32*,0)), M2C_FIELD(temp_r6_2, u8 *, 0x10) + 5, (s32) (temp_r6_2 + 0xC), (s32) (temp_r6_2 + 0xE), 1);
            callA705C_08007870((outX), (outY), M2C_FIELD(temp_r6_2, u8 *, 0x10) + 5, M2C_FIELD(temp_r6_2, u16 *, 0xC), temp_r0_7, &(sprite[0x1C]), (M2C_FIELD(sprite,s32*,8)), (M2C_FIELD(sprite,s32*,0)));
        }
    }
    temp_r0_8 = var_r9_2 + 1;
    var_r9_2 = temp_r0_8;
    if ((u32) temp_r0_8 <= 0xBU) {
        goto loop_4;
    }
    var_r4 = 0;
    var_r9_3 = 0;
    var_r0 = M2C_FIELD((particleX), u8 *, 0x11);
loop_44:
    if (var_r0 != 0) {
        var_r4 = 1;
    } else {
        temp_r0_9 = var_r9_3 + 1;
        var_r9_3 = temp_r0_9;
        if ((u32) temp_r0_9 <= 0xBU) {
            var_r0 = M2C_FIELD(((particleX) + (((temp_r0_9 * 4) + var_r9_3) * 4)), u8 *, 0x11);
            goto loop_44;
        }
    }
    sub_080003F0();
    if (var_r4 != 0) {
        goto loop_3;
    }
    sub_08097A38(0U);
    M2C_FIELD((void *) sub_0800048C(), s32 *, 8) = var_r4;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A705C);
#endif
void sub_080A74E8(void)
{
    s32 x = 0;
    s32 y = 0;
    s32 dx = 0x2AA;
    s32 dy = 0x88;
    u8 index = 0;
loop:
    {
        s32 angle;
        u32 angleOffset;
        u16 inverseOffset;
        x += dx;
        y += dy;
        angle = gUnk_080B9704[index] >> 6;
        angleOffset = (u16)(angle + 7);
        inverseOffset = 15 - angle;
        index++;
        if (sub_0800CC98() == 0 && sub_0800CD8C() == 0) {
            waveA74E8(2, 0x3C, 1, angleOffset, inverseOffset, 0);
            scrollA74E8(1, x >> 8, 0);
            scrollA74E8(3, y >> 8, 0);
        }
        sub_080003F0();
        goto loop;
    }
}
#ifdef NONMATCHING
void *callA756C_08007870(s16, s16, s32, u16, s32, M2C_UNK *, s32, s32) asm("sub_08007870");
M2C_UNK callA756C_0800BC08(s16, s16, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
M2C_UNK callA756C_08065158(s32 *, s32, s32, s32, s32) asm("sub_08065158");
M2C_UNK callA756C_08067DC8() asm("sub_08067DC8");
M2C_UNK callA756C_080979D8(s32, s32, s32, s32, s32 *) asm("sub_080979D8");
s32 callA756C_08097B6C(s32, s32, s32, s32, s32) asm("sub_08097B6C");
extern u16 taskIndexA756C asm("gUnk_03000404");
extern M2C_UNK gUnk_03003D78;
extern M2C_UNK gUnk_03003E28;
void sub_080A756C(void) {
    register s32 minus asm("r8") = -1;
    u8 ctx1[0x34];
    u8 ctx2[0x34];
    u16 sp78;
    u16 sp7A;
    s16 sp7C;
    s16 sp7E;
    u16 sp80;
    s16 sp82;
    s32 motion[2];
    s32 sp8C;
    s32 sp90;
    s32 sp94;
    s32 sp98;
    s32 sp9C;
    s32 spA0;
    s32 spA4;
    s32 spA8;
    u32 spAC;
    s32 spB0;
    s32 spB4;
    s32 spB8;
    s32 spBC;
    u32 spC0;
    s32 spC4;
    s32 spC8;
    s32 spCC;
    u32 spD0;
    s32 spD4;
    s32 spD8;
    s32 spDC;
    s16 *spE0;
    s32 spE4;
    s32 spE8;
    s32 spEC;
    register s16 *var_r4 asm("r4");
    s16 temp_r3_3;
    s32 *temp_r1_4;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 *temp_r2_5;
    s32 *temp_r2_6;
    s32 *temp_r2_7;
    s32 *temp_r2_8;
    s32 *temp_r2_9;
    s32 *temp_r3;
    s32 *temp_r3_2;
    s32 temp_r0_3;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 var_r0;
    s8 var_r2;
    s8 var_r2_2;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r1_3;
    u8 temp_r0_4;
    u8 temp_sl;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r7;

    taskIndexA756C = 4; asm("" : "+r"(minus));
    callA756C_08065158(ctx1, 0x5000F, 0, minus, 1);
    M2C_FIELD(ctx1, s8 *, 0x1C) = (s8) taskIndexA756C;
    sub_08000AF0(taskIndexA756C + 0x10, M2C_FIELD(ctx1,s32*,0xC), 1U);
    callA756C_08065158(ctx2, 0x50010, 0, minus, 0);
    spBC = 0;
    sp82 = 0;
    sp80 = spBC;
    sp8C = 0x14000;
    sp90 = 0x2000;
    spA4 = 0x14000;
    spA8 = 0x6000;
    spC4 = 0;
    spC8 = 0;
    spCC = 0;
    sp7A = spBC;
    sp78 = spBC;
    spB4 = 0;
    spB8 = 1;
    sp94 = 0;
    sp98 = 0;
    sub_0800BBA8(1U, 0U, 0U);
    sub_0800BBA8(3U, 0U, 0U);
    sub_0800BBA8(2U, 0U, 0U);
    spAC = sub_08002164();
    temp_r2 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r2 |= spB8;
    gUnk_030056FC = 0;
    spD0 = 0;
    spD8 = 1;
loop_1:
    switch (spD0) {                                 /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        sp9C = 0;
        spA0 = 0xFFFFB000;
        if ((callA756C_08097B6C(sp94, sp98, 0, 0xFFFFB000, 1) << 0x18) != 0) {
            spD4 = 0;
            spD0 = 1;
            sub_0805865C(0x1A1);
        } else {
            callA756C_080979D8(sp94, sp98, sp9C, spA0, motion);
            sp94 += motion[0];
            sp98 += motion[1];
        }
        var_r0 = sp94 << 8;
block_28:
        sub_0800BB80((u16) (var_r0 >> 0x10), (u16) ((s32) (sp98 << 8) >> 0x10));
        break;
    case 1:                                         /* switch 1 */
        switch (spD4) {                             /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            sp9C = 0x7800;
            spA0 = 0x2000;
            if ((callA756C_08097B6C(sp8C, sp90, sp9C, spA0, 1) << 0x18) != 0) {
                spB4 = 0x10;
                sp7A = spD4;
                sp78 = spD4;
                spD4 = 1;
            } else {
                callA756C_080979D8(sp8C, sp90, sp9C, spA0, motion);
                sp8C += motion[0];
block_20:
                sp90 += motion[1];
                spA4 += motion[0];
            }
            break;
        case 1:                                     /* switch 2 */
            sp9C = 0x7800;
            spA0 = 0x6000;
            if ((callA756C_08097B6C(sp8C, sp90, sp9C, spA0, spD4) << 0x18) != 0) {
                spB4 = 0xE;
                spB8 = 0;
                sp7A = 0;
                sp78 = spB8;
                spD4 = 2;
            } else {
                callA756C_080979D8(sp8C, sp90, sp9C, spA0, motion);
                sp8C += motion[0];
                goto block_20;
            }
            break;
        case 2:                                     /* switch 2 */
            if (spB0 == 0) {

            } else {
                spB4 = 0x11;
                spD4 = 0;
                sp7A = 0;
                sp78 = spD4;
                sub_0805867C(0x1A1);
                spD0 = 2;
            }
            break;
        }
        break;
    case 2:                                         /* switch 1 */
        sp9C = 0;
        spA0 = 0;
        if ((callA756C_08097B6C(sp94, sp98, 0, spA0, 1) << 0x18) != 0) {
            spD0 = 3;
        } else {
            callA756C_080979D8(sp94, sp98, sp9C, spA0, motion);
            sp94 += motion[0] * 2;
            sp98 += motion[1] * 2;
        }
        var_r0 = sp94 << 8;
        goto block_28;
    case 3:                                         /* switch 1 */
        switch (spD4) {                             /* switch 3; irregular */
        case 0:                                     /* switch 3 */
            var_r2 = 0;
            if (spAC > 0U) {
                do {
                    temp_r1 = *(void **)((var_r2 * 0x14C) + (u8 *)&gUnk_03003E28);
                    if (((s32) ((u32) (M2C_FIELD(temp_r1, u16 *, 2) << 0x14) >> 0x14) <= 0x7B) && (((u32) (M2C_FIELD(temp_r1, u8 *, 4) << 0x1A) >> 0x1A) == 0x11)) {
                        spCC = 1;
                        spB4 = 0x10;
                        sp7A = 0;
                        sp78 = 0;
                        spB8 = 1;
                        spD4 = 1;
                        sub_0805865C(0x1A1);
                        spBC = 3;
                    }
                    temp_r0 = (var_r2 << 0x18) + 0x01000000;
                    var_r2 = (s8) (temp_r0 >> 0x18);
                } while ((u32) ((s32) temp_r0 >> 0x18) < spAC);
            }
            break;
        case 1:                                     /* switch 3 */
            sp9C = 0x7800;
            spA0 = 0x4600;
            if ((callA756C_08097B6C(sp8C, sp90, sp9C, spA0, spD4) << 0x18) != 0) {
                spC8 = 1;
                spD0 = 4;
            } else {
                callA756C_080979D8(sp8C, sp90, sp9C, spA0, motion);
                sp8C += motion[0];
                sp90 += motion[1];
            }
            break;
        }
        temp_r3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r3 &= ~1;
        break;
    case 4:                                         /* switch 1 */
        spD0 = 5;
        var_r2_2 = 0;
        if (spAC > 0U) {
            do {
                temp_r1_2 = *(void **)((var_r2_2 * 0x14C) + (u8 *)&gUnk_03003E28);
                if (((s32) ((u32) (M2C_FIELD(temp_r1_2, u16 *, 2) << 0x14) >> 0x14) > 0x7C) && (((u32) (M2C_FIELD(temp_r1_2, u8 *, 4) << 0x1A) >> 0x1A) == 0x11)) {
                    spD0 = 4;
                }
                temp_r0_2 = (var_r2_2 << 0x18) + 0x01000000;
                var_r2_2 = (s8) (temp_r0_2 >> 0x18);
            } while ((u32) ((s32) temp_r0_2 >> 0x18) < spAC);
        }
        if (spD0 != 5) {

        } else {
            temp_r3_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
            *temp_r3_2 |= 1;
            M2C_FIELD(gUnk_03005CF4, u32 *, 0x720) = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x14008BU);
        }
        break;
    case 5:                                         /* switch 1 */
        if (sub_0805EEFC((void *) M2C_FIELD(gUnk_03005CF4, u32 *, 0x720)) == 0) {

        } else {
            temp_r2_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
            *temp_r2_2 |= 1;
            temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
            *temp_r2_3 |= 0x20;
            spD0 = 6;
            sub_0805865C(0x1AB);
        }
        break;
    case 6:                                         /* switch 1 */
        sp9C = 0;
        spA0 = 0xA000;
        if ((callA756C_08097B6C(sp94, sp98, sp9C, spA0, 1) << 0x18) != 0) {
            spC0 = 0;
            spD0 = 7;
        } else {
            callA756C_080979D8(sp94, sp98, sp9C, spA0, motion);
            temp_r0_3 = motion[1];
            sp98 += temp_r0_3;
            sp90 -= temp_r0_3;
            spA8 -= temp_r0_3;
            temp_r2_4 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x90;
            *temp_r2_4 -= motion[1];
            temp_r4 = sub_080020F4();
            *(s32 *)((0x14C * temp_r4) + (u8 *)&gUnk_03003D78) = *(s32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x90);
        }
        sub_0800BBA8(2U, (u16) ((s32) (sp94 << 8) >> 0x10), (u16) ((s32) (sp98 << 8) >> 0x10));
        temp_r2_5 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r2_5 |= 1;
        temp_r2_6 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r2_6 |= 0x20;
        break;
    case 7:                                         /* switch 1 */
        temp_r2_7 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r2_7 |= 1;
        temp_r2_8 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r2_8 |= 0x20;
        temp_r1_3 = spC0;
        spC0 = (u32) (u16) (temp_r1_3 + 1);
        if (temp_r1_3 > 0x78U) {
            spD8 = 0;
        }
        break;
    }
    if (spC8 != 0) {
        temp_r0_4 = spC4 + 2;
        spC4 = (s32) temp_r0_4;
        sp90 += (s16) gUnk_080B9704[temp_r0_4] >> 1;
    }
    spB0 = sub_08065370(ctx1, (u16) spB4, (s32) &sp78, (s32) &sp7A, spB8);
    temp_r4_2 = sp8C >> 8;
    spDC = sp90 >> 8;
    temp_sl = (u8) sub_0800BC44((u32) temp_r4_2, (u32) spDC, 0U);
    temp_r0_5 = sub_0800CCCC();
    spE8 = temp_r4_2;
    spEC = spDC;
    if (temp_r0_5 != 0) {

    } else if (sub_0800CC98() != 0) {

    } else {
        temp_r0_6 = sub_0800CD34();
        if (temp_r0_6 != 0) {

        } else {
            if (spCC == 0) {
                spE0 = &sp7E;
                callA756C_0800BC08((s16) temp_r4_2, (s16) spEC, &sp7C, spE0, temp_r0_6, temp_r0_6);
                callA756C_08007870(sp7C, *spE0, spB4, sp78, (s32) temp_sl, (ctx1 + 0x1C), M2C_FIELD(ctx1,s32*,8), M2C_FIELD(ctx1,s32*,0));
                var_r4 = spE0;
            } else {
                spE4 = spE8 << 0x10;
                temp_r3_3 = (s16) spE8;
                var_r4 = &sp7E;
                callA756C_0800BC08(temp_r3_3, (s16) ((s32) (spA8 << 8) >> 0x10), &sp7C, var_r4, temp_r0_6, temp_r0_6);
                temp_r7 = callA756C_08007870(sp7C, *var_r4, spB4, sp78, (s32) temp_sl, (ctx1 + 0x1C), M2C_FIELD(ctx1,s32*,8), M2C_FIELD(ctx1,s32*,0));
                callA756C_0800BC08(temp_r3_3, (s16) spEC, &sp7C, var_r4, temp_r0_6, temp_r0_6);
                M2C_FIELD(temp_r7, s32 *, 0xC) = (s32) *var_r4;
            }
            if ((spA4 <= 0xBD00) && (gUnk_03002344 & 1)) {
                callA756C_0800BC08((s16) ((s32) (spA4 << 8) >> 0x10), (s16) ((s32) (spA8 << 8) >> 0x10), &sp7C, var_r4, 0, 0);
                M2C_FIELD(callA756C_08007870(sp7C, 1, 0x12, 0U, (s32) temp_sl, (ctx1 + 0x1C), M2C_FIELD(ctx1,s32*,8), M2C_FIELD(ctx1,s32*,0)), s32 *, 0xC) = (s32) *var_r4;
            }
        }
    }
    if (spBC != 0) {
        callA756C_0800BC08((s16) spE8, (s16) spEC, &sp7C, &sp7E, 0, 0);
        if (sub_08065370(ctx2, (u16) spBC, (s32) &sp80, (s32) &sp82, 0) != 0) {
            spBC = 0;
        } else {
            sub_08065230(ctx2, (s32) sp7C, sp7E - 0x20, (u16) spBC, (s32) sp80);
        }
    }
    sub_080003F0();
    if (spD8 != 0) {
        goto loop_1;
    }
    sub_0805867C(0x1A1);
    sub_080683CC();
    sub_080003F0();
    sub_08068330(-0x21520532);
loop_83:
    if (sub_080682B8(-0x21520532) == 0) {
        sub_080003F0();
        goto loop_83;
    }
    sub_08065E38(-0x21520532);
    sub_080003F0();
    sub_08068384();
    sub_080003F0();
    if (sub_08002204() == 1) {
        M2C_FIELD(gUnk_03005CF4, s32 *, 0x40) = (s32) (gUnk_03003170.f90 + 1);
        callA756C_08067DC8();
    }
    temp_r2_9 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r2_9 &= ~0x20;
    temp_r1_4 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r1_4 &= ~1;
    gUnk_030056FC = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A756C);
#endif
void sub_080A7DEC(void)
{
    if (*(s16 *)((u8 *)gUnk_03000400 + 0x5C) != 0) {
        sub_080A7E94();
        sub_080A7F5C();
        sub_080A8014();
        sub_080A80D8();
        sub_0805867C(0x1A1);
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_03000404);
}
void sub_080A7E38(void) {

    gUnk_03003CE0[sub_080020F4()].flags &= ~1;
    gUnk_030056FC = 0;
}
void sub_080A7E68(void)
{
  int new_var;
  gUnk_03000408 = sub_08001494(0x140);
  new_var = 0;
  for (new_var = new_var; new_var < 8; new_var++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_03000408) + (0x28 * new_var))) + 8)) = 0;
  }

}
void sub_080A7E94(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_03000408;
  for (i = 0, entry = new_var2; i < 8; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_03000408);
  gUnk_03000408 = i;
}
void sub_080A7ECC(u16 arg0)
{
    u8 *entry = (u8 *)gUnk_03000408;
    u8 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 7) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A68B0;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274((M2C_UNK *)entry,arg0);
}
void sub_080A7F30(void)
{
  int i;
  gUnk_0300040C = sub_08001494(0x50);
  for (i = 0; i < 2; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_0300040C) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_080A7F5C(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_0300040C;
  for (i = 0, entry = new_var2; i < 2; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_0300040C);
  gUnk_0300040C = i;
}
void sub_080A7F94(u16 arg0)
{
    u8 *entry = (u8 *)gUnk_0300040C;
    u8 i = 0;
    u32 memory;
    goto check;
    do {
next:
        i++;
        entry += 0x28;
check:
        if (i > 1) return;
        if (sub_08000470((u32)entry) != 0 || *(u32 *)(entry + 8) != 0)
            goto next;
        memory = sub_08001494(0x400);
        *(u32 *)(entry + 0x20) = memory;
    } while (0);
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A6BE8;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274_(entry,arg0,0);
}
void sub_080A7FF8(void)
{
  s32 temp_r0;
  gUnk_03000410 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A8014(void) {
    if (sub_08000470(gUnk_03000410) != 0) {
        sub_080003A8(gUnk_03000410);
    }
    sub_08001538(gUnk_03000410);
    gUnk_03000410 = 0;
}
void sub_080A803C(void)
{
    u32 memory;
    u8 *entry;
    if (sub_08000470(gUnk_03000410) == 0 && *(u32 *)(gUnk_03000410 + 8) != 0)
        return;
    memory = sub_08001494(0x400);
    entry = (u8 *)gUnk_03000410;
    *(u32 *)(entry + 0x20) = memory;
    if (memory == 0) return;
    *(u32 *)(entry + 0x10) = memory + 0x3FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A705C;
    *(u32 *)(entry + 0x24) = 0;
    *(u32 *)(entry + 8) = 0x40;
    sub_08000274_(entry, 0, 0);
}
s32 sub_080A8090(void *arg0)
{
    u32 value = gUnk_03000414;
    if (value == 0)
        value = 0x4800;
    *(u32 *)((u8 *)arg0 + 4) = value;
    if (*(u32 *)((u8 *)gUnk_03000410 + 8) != 0) return 0;
    else return 1;
}
void sub_080A80BC(void)
{
  s32 temp_r0;
  gUnk_03000418 = (temp_r0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_080A80D8(void) {
    sub_0800903C(0, 0, 0, 0, 0, 0);
    if (sub_08000470(gUnk_03000418) != 0) {
        sub_080003A8(gUnk_03000418);
    }
    sub_08001538(gUnk_03000418);
    gUnk_03000418 = 0;
}
void sub_080A8114(void)
{
    u32 memory;
    u8 *entry;
    if (sub_08000470(gUnk_03000418) == 0 && *(u32 *)(gUnk_03000418 + 8) != 0)
        return;
    *(u32 *)(gUnk_03000418 + 8) = 0x44;
    memory = sub_08001494(0x200);
    entry = (u8 *)gUnk_03000418;
    *(u32 *)(entry + 0x20) = memory;
    *(u32 *)(entry + 0x10) = memory + 0x1FC;
    *(u32 *)(entry + 0xC) = (u32)sub_080A74E8;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274_(entry, 0, 0);
}
#ifdef NONMATCHING
s16 callA8164_0800086C() asm("sub_0800086C");
void *callA8164_08007870(s16, s16, u16, u16, s32, void *, s32, s32) asm("sub_08007870");
M2C_UNK callA8164_0800BC08(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
M2C_UNK callA8164_0801623C(void *, M2C_UNK *, s32) asm("sub_0801623C");
u16 callA8164_08016E04(u16, u16) asm("sub_08016E04");
s32 callA8164_08019CE8(void *) asm("sub_08019CE8");
M2C_UNK callA8164_08019F60(void *) asm("sub_08019F60");
M2C_UNK callA8164_0801A120(void *, s32, s16) asm("sub_0801A120");
M2C_UNK callA8164_0801C8F0(void *) asm("sub_0801C8F0");
M2C_UNK callA8164_08058688(s32) asm("sub_08058688");
M2C_UNK callA8164_080586B4(s32) asm("sub_080586B4");
M2C_UNK callA8164_0806171C(void *, s32) asm("sub_0806171C");
M2C_UNK callA8164_08065158(M2C_UNK *, s32, u16, s32, s32) asm("sub_08065158");
M2C_UNK callA8164_08067CA8(u16) asm("sub_08067CA8");
M2C_UNK callA8164_080970CC(void *, M2C_UNK *, u16, u16) asm("sub_080970CC");
M2C_UNK callA8164_080979D8(s32, s32, s32, s32, M2C_UNK *) asm("sub_080979D8");
s32 callA8164_08097B6C(s32, s32, s32, s32, s32) asm("sub_08097B6C");
s32 callA8164_08097EF0(s32, M2C_UNK *) asm("sub_08097EF0");
M2C_UNK callA8164_080A8F90() asm("sub_080A8F90");
M2C_UNK callA8164_080A9100() asm("sub_080A9100");
M2C_UNK callA8164_080A9680() asm("sub_080A9680");
M2C_UNK callA8164_080A987C(u8) asm("sub_080A987C");
extern M2C_UNK gUnk_03003DC4;
extern M2C_UNK gUnk_084A8EC0;
extern M2C_UNK gUnk_0851883C;
void callA8164_0806849C(void) asm("sub_0806849C");
void sub_080A8164(void *arg0) {
    u8 stack[0x10C];
    s16 *temp_r0_18;
    s16 temp_r0_3;
    s16 temp_r0_4;
    s16 temp_r0_9;
    s16 temp_r1_2;
    s16 temp_r1_4;
    s16 var_r1;
    s16 var_r1_4;
    s16 var_r2;
    s32 *temp_r1_5;
    s32 *temp_r1_6;
    s32 *temp_r1_7;
    s32 *temp_r1_8;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_17;
    s32 temp_r0_19;
    s32 temp_r0_20;
    s32 temp_r0_21;
    s32 temp_r0_22;
    s32 temp_r4;
    s8 *var_r0_2;
    s8 *var_r1_2;
    s8 *var_r1_3;
    s8 var_r0;
    u16 temp_r0_12;
    u16 temp_r0_2;
    u16 temp_r1;
    u16 temp_r1_3;
    u32 temp_r0_10;
    u32 temp_r0_23;
    u32 temp_r0_24;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u8 temp_r0_11;
    u8 temp_r0_13;
    u8 temp_r0_7;
    u8 temp_r0_8;
    u8 temp_r9;
    u8 temp_r9_2;
    u8 temp_r9_3;
    u8 temp_r9_4;
    u8 var_r0_3;
    void *temp_r0;
    void *temp_r0_16;
    void *temp_r6;

    gUnk_0300041C = arg0;
    temp_r0 = arg0 + 0x204;
    (M2C_FIELD(stack, void * *, 0xB8)) = temp_r0;
    callA8164_0801623C(arg0, &gUnk_084A8EC0, 0);
    callA8164_08019F60(temp_r0);
    sub_0801A0A4(arg0);
    M2C_FIELD(arg0, s32 *, 0x14) = 0x16B00;
    M2C_FIELD(arg0, s32 *, 0x18) = 0x7300;
    temp_r0_2 = callA8164_08016E04(M2C_FIELD(arg0, u16 *, 0x2D8), M2C_FIELD(arg0, u16 *, 0x2DA));
    gUnk_03000420 = temp_r0_2;
    temp_r1 = temp_r0_2;
    if (temp_r1 == 0xFFFF) {
loop_2:
        M2C_FIELD(arg0, u16 *, 0xC) = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            gUnk_030056FC &= ~(1 << M2C_FIELD(arg0, u16 *, 0));
            return;
        }
        sub_080003F0();
        if (gUnk_03000420 != temp_r1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    callA8164_08065158(&(M2C_FIELD(stack, u8 *, 0x10)), 0x50010, gUnk_03000420, -1, 1);
    callA8164_08065158(&(M2C_FIELD(stack, u8 *, 0x44)), 0x50011, gUnk_03000420, -1, 1);
    callA8164_08065158(&(M2C_FIELD(stack, u8 *, 0x78)), 0x50012, gUnk_03000420, -1, 1);
    M2C_FIELD(arg0, s16 *, 0x6C) = 0;
    M2C_FIELD(arg0, s16 *, 0x6A) = 0;
    M2C_FIELD(arg0, u16 *, 0x68) = 0U;
    temp_r0_3 = M2C_FIELD((M2C_FIELD(stack, void * *, 0xB8)), s16 *, 6) * 3;
    M2C_FIELD(arg0, s16 *, 0x1D6) = temp_r0_3;
    M2C_FIELD(arg0, s16 *, 0x5C) = temp_r0_3;
    temp_r0_4 = M2C_FIELD((M2C_FIELD(stack, void * *, 0xB8)), s16 *, 4) * 0xA * 2;
    M2C_FIELD(arg0, s16 *, 0x1D4) = temp_r0_4;
    M2C_FIELD(arg0, s16 *, 0x5E) = temp_r0_4;
    M2C_FIELD(arg0, u16 *, 0xC) = 0U;
    (M2C_FIELD(stack, s32 *, 0xC8)) = 0;
    (M2C_FIELD(stack, s32 *, 0xCC)) = 0xFFFF;
    (M2C_FIELD(stack, s32 *, 0xD0)) = 0xFFFF;
    (M2C_FIELD(stack, s32 *, 0xD8)) = 0;
    (M2C_FIELD(stack, s32 *, 0xDC)) = 0;
    M2C_FIELD(arg0, u8 *, 0x1FD) = 3U;
    M2C_FIELD(arg0, u8 *, 0x1FE) = 3U;
    sub_0800BB80(0x30U, -0x20U);
    M2C_FIELD(arg0, s8 *, 0x22E) = 0x20;
    M2C_FIELD(arg0, s8 *, 0x22F) = 0x18;
    M2C_FIELD(arg0, s32 *, 0x50) = 1;
    var_r1 = 0;
    (M2C_FIELD(stack, u16 * *, 0x104)) = arg0 + 0x6C;
    (M2C_FIELD(stack, u16 * *, 0x100)) = arg0 + 0x6A;
    (M2C_FIELD(stack, u16 * *, 0x108)) = (M2C_FIELD(stack, void * *, 0xB8)) + 0xD6;
    do {
        var_r2 = 0;
loop_8:
        temp_r1_2 = var_r2;
        *((temp_r1_2 * 4) + (var_r1 * 0x14C) + &gUnk_03003DC4) = 0;
        temp_r1_3 = temp_r1_2 + 1;
        var_r2 = (s16) temp_r1_3;
        if ((s32) (s16) temp_r1_3 <= 4) {
            goto loop_8;
        }
        temp_r0_5 = (var_r1 << 0x10) + 0x10000;
        var_r1 = (s16) (temp_r0_5 >> 0x10);
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
    sub_08097FE4();
    sub_08097A4C();
    sub_080A9818();
    (M2C_FIELD(stack, s32 *, 0xF8)) = 0;
    (M2C_FIELD(stack, s32 *, 0xEC)) = 0;
    (M2C_FIELD(stack, s32 *, 0xE0)) = 0;
    (M2C_FIELD(stack, s32 *, 0xF4)) = 0;
    (M2C_FIELD(stack, s32 *, 0xF0)) = 0;
    M2C_FIELD(arg0, u8 *, 0x1FC) = (u8) ((-0x10 & M2C_FIELD(arg0, u8 *, 0x1FC)) | (0xF & (u8) M2C_FIELD(arg0, u16 *, 0)));
    M2C_FIELD(arg0, u16 *, 0x202) = (u16) M2C_FIELD(arg0, u16 *, 2);
    M2C_FIELD(arg0, u8 *, 0x200) = 0xFFU;
    (M2C_FIELD(stack, s32 *, 0xFC)) = 0;
    sub_08067C18();
loop_12:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_12;
    }
    sub_08067BF8();
    callA8164_0806849C();
loop_119:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) {
        if ((M2C_FIELD(arg0, u16 *, 0xC) == 0xA) && ((M2C_FIELD(stack, s32 *, 0xD8)) == 0)) {
            (M2C_FIELD(stack, s32 *, 0xD8)) = 8;
        }
        if (sub_08058DB0() != 0) {

        } else {
            callA8164_0801C8F0(arg0);
            temp_r0_6 = M2C_FIELD(arg0, u8 *, 0x1FD) - 1;
            switch (temp_r0_6) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                if (sub_08067C08() == 0) {

                } else {
                    M2C_FIELD(arg0, u8 *, 0x1FD) = (u8) M2C_FIELD(arg0, u8 *, 0x1FE);
                    sub_08067BF8();
                }
                break;
            case 1:                                 /* switch 1 */
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                temp_r0_7 = sub_08068490();
                M2C_FIELD(arg0, u8 *, 0x200) = temp_r0_7;
                if (temp_r0_7 == 0xFF) {

                } else {
                    var_r1_2 = arg0 + 0x1FE;
                    var_r0 = 9;
block_63:
                    *var_r1_2 = var_r0;
                    var_r1_3 = arg0 + 0x1FD;
block_64:
                    *var_r1_3 = 1;
                    sub_08067C18();
                }
                break;
            case 2:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 0;
                if (sub_08056F78() == 0) {

                } else {
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 4U;
                    var_r1_3 = arg0 + 0x1FD;
                    goto block_64;
                }
                break;
            case 3:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 1;
                M2C_FIELD(arg0, u16 *, 0xC) = 1U;
                (M2C_FIELD(stack, s32 *, 0xBC)) = 0x4600;
                (M2C_FIELD(stack, s32 *, 0xC0)) = 0x10500;
                callA8164_080979D8(M2C_FIELD(arg0, s32 *, 0x14), M2C_FIELD(arg0, s32 *, 0x18), (M2C_FIELD(stack, s32 *, 0xBC)), (M2C_FIELD(stack, s32 *, 0xC0)), &(M2C_FIELD(stack, u8 *, 0xB0)));
                M2C_FIELD(arg0, s32 *, 0x14) = (s32) (M2C_FIELD(arg0, s32 *, 0x14) + ((s32) M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0xB0)), s32 *, 0) >> 2));
                M2C_FIELD(arg0, s32 *, 0x18) = (s32) (M2C_FIELD(arg0, s32 *, 0x18) + ((s32) M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0xB0)), s32 *, 4) >> 2));
                if ((callA8164_08097B6C(M2C_FIELD(arg0, s32 *, 0x14), M2C_FIELD(arg0, s32 *, 0x18), (M2C_FIELD(stack, s32 *, 0xBC)), (M2C_FIELD(stack, s32 *, 0xC0)), 0x10) << 0x18) != 0) {
                    (M2C_FIELD(stack, s32 *, 0xF0)) = 0;
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 6U;
                    goto block_38;
                }
                if ((M2C_FIELD(stack, s32 *, 0xF8)) & (M2C_FIELD(stack, s32 *, 0xC8))) {
                    (M2C_FIELD(stack, s32 *, 0xF8)) = (s32) (u8) ((M2C_FIELD(stack, s32 *, 0xF8)) + 1);
                    (M2C_FIELD(stack, s32 *, 0xF0)) = 0;
                    M2C_FIELD(gUnk_0300041C, s16 *, 0x6C) = 0;
                    M2C_FIELD(gUnk_0300041C, u16 *, 0x6A) = (u16) (M2C_FIELD(stack, s32 *, 0xF0));
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 0xAU;
                    var_r0_2 = arg0 + 0x1FD;
                    goto block_39;
                }
                temp_r0_8 = (M2C_FIELD(stack, s32 *, 0xF0)) + 1;
                (M2C_FIELD(stack, s32 *, 0xF0)) = (s32) temp_r0_8;
                if (temp_r0_8 != 0x1F) {

                } else {
                    (M2C_FIELD(stack, s32 *, 0xF8)) = (s32) (u8) ((M2C_FIELD(stack, s32 *, 0xF8)) + 1);
                    (M2C_FIELD(stack, s32 *, 0xF0)) = 0;
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 8U;
block_38:
                    var_r0_2 = arg0 + 0x1FD;
block_39:
                    *var_r0_2 = 1;
                    sub_08067C18();
                }
                break;
            case 5:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                sub_08097EB0((s32) &gUnk_0851883C, 0xA, 4, 0xE);
                var_r1_2 = arg0 + 0x1FE;
                var_r0 = 7;
                goto block_63;
            case 6:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                if (callA8164_08097EF0(0, &(M2C_FIELD(stack, u8 *, 0xB0))) != 0) {
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 4U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                }
                M2C_FIELD(arg0, s32 *, 0x14) = (s32) M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0xB0)), s32 *, 0);
                M2C_FIELD(arg0, s32 *, 0x18) = (s32) M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0xB0)), s32 *, 4);
                break;
            case 7:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                if (sub_08002204() == 1) {
                    temp_r0_9 = callA8164_0800086C();
                    temp_r1_4 = temp_r0_9;
                    var_r1_4 = temp_r1_4 - (((s32) (temp_r1_4 + ((u32) (temp_r0_9 << 0x10) >> 0x1F)) >> 1) * 2);
                    if ((s32) var_r1_4 < 0) {
                        var_r1_4 = 0 - var_r1_4;
                    }
                    M2C_FIELD(arg0, u8 *, 0x200) = (u8) var_r1_4;
                    temp_r0_10 = sub_08068450(M2C_FIELD(arg0, u8 *, 0x200));
                    if (temp_r0_10 == 1) {
                        M2C_FIELD(arg0, u8 *, 0x1FE) = 2U;
                        M2C_FIELD(arg0, u8 *, 0x1FD) = (u8) temp_r0_10;
                        sub_08067C18();
                    }
                } else {
                    M2C_FIELD(arg0, u8 *, 0x200) = 0xFFU;
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 2U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                }
                sub_0805865C(0xE3);
                break;
            case 8:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 2;
                M2C_FIELD(arg0, u16 *, 0xC) = 2U;
                temp_r0_11 = M2C_FIELD(arg0, u8 *, 0x200);
                if (temp_r0_11 != 0) {
                    M2C_FIELD(arg0, u16 *, 0x68) = 1U;
                    (M2C_FIELD(stack, s32 *, 0xF4)) = 1;
                    (M2C_FIELD(stack, s32 *, 0xE4)) = 6;
                } else {
                    M2C_FIELD(arg0, u16 *, 0x68) = (u16) temp_r0_11;
                    (M2C_FIELD(stack, s32 *, 0xF4)) = 2;
                    (M2C_FIELD(stack, s32 *, 0xE4)) = 1;
                }
                if (M2C_FIELD(arg0, u16 *, 0x6E) != 0) {
                    callA8164_080A987C(M2C_FIELD(gUnk_0300041C, u8 *, 0x200));
                    M2C_FIELD(gUnk_0300041C, u8 *, 0x200) = 0xFFU;
                    var_r1_2 = arg0 + 0x1FE;
                    var_r0 = 4;
                    goto block_63;
                }
                break;
            case 9:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 2;
                M2C_FIELD(arg0, u16 *, 0xC) = 2U;
                M2C_FIELD(arg0, u16 *, 0x68) = 0U;
                (M2C_FIELD(stack, s32 *, 0xF4)) = 1;
                if ((*(M2C_FIELD(stack, u16 * *, 0x100)) == 1) && (*(M2C_FIELD(stack, u16 * *, 0x104)) == 0)) {
                    sub_0805865C(0xE5);
                }
                if (*(M2C_FIELD(stack, u16 * *, 0x100)) != 0) {
                    callA8164_080A9100();
                }
                if (M2C_FIELD(arg0, u16 *, 0x6E) != 0) {
                    var_r1_2 = arg0 + 0x1FE;
                    var_r0 = 5;
                    goto block_63;
                }
                break;
            case 4:                                 /* switch 1 */
                (M2C_FIELD(stack, s32 *, 0xC8)) = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                temp_r0_12 = (M2C_FIELD(stack, s32 *, 0xE0)) + 1;
                (M2C_FIELD(stack, s32 *, 0xE0)) = (s32) temp_r0_12;
                if (temp_r0_12 == 0x3D) {
                    (M2C_FIELD(stack, s32 *, 0xE0)) = 0;
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 4U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                }
                break;
            }
        }
        M2C_FIELD(arg0, s16 *, 8) = 1;
        if ((M2C_FIELD(gUnk_0300041C, s16 *, 0x5C) != 0) && (M2C_FIELD(arg0, u8 *, 0x1FD) != 7)) {
            callA8164_080A8F90();
            callA8164_080A9680();
            sub_0801A0A4(arg0);
        } else {
            sub_0801A0B0(arg0);
        }
        switch ((M2C_FIELD(stack, s32 *, 0xC8))) {                             /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            (M2C_FIELD(stack, s32 *, 0xF4)) = 0;
            M2C_FIELD(arg0, u16 *, 0x68) = (u16) (M2C_FIELD(stack, s32 *, 0xC8));
            (M2C_FIELD(stack, s32 *, 0xD4)) = 1;
            (M2C_FIELD(stack, s32 *, 0xE4)) = 2;
            break;
        case 1:                                     /* switch 2 */
            (M2C_FIELD(stack, s32 *, 0xF4)) = 0;
            M2C_FIELD(arg0, u16 *, 0x68) = (u16) (M2C_FIELD(stack, s32 *, 0xC8));
            (M2C_FIELD(stack, s32 *, 0xD4)) = 1;
            (M2C_FIELD(stack, s32 *, 0xE4)) = 2;
            break;
        case 2:                                     /* switch 2 */
            (M2C_FIELD(stack, s32 *, 0xD4)) = 0;
            break;
        }
        temp_r6 = &(M2C_FIELD(stack, u8 *, 0x10)) + ((M2C_FIELD(stack, s32 *, 0xF4)) * 0x34);
        if (((M2C_FIELD(stack, s32 *, 0xD0)) != M2C_FIELD(gUnk_0300041C, u16 *, 0x68)) || ((M2C_FIELD(stack, s32 *, 0xCC)) != (M2C_FIELD(stack, s32 *, 0xC8)))) {
            (M2C_FIELD(stack, s32 *, 0xD0)) = (s32) M2C_FIELD(gUnk_0300041C, u16 *, 0x68);
            (M2C_FIELD(stack, s32 *, 0xCC)) = (M2C_FIELD(stack, s32 *, 0xC8));
            M2C_FIELD(gUnk_0300041C, s16 *, 0x6C) = 0;
            M2C_FIELD(gUnk_0300041C, u16 *, 0x6A) = 0;
        }
        M2C_FIELD(temp_r6, s8 *, 0x1C) = (s8) gUnk_03000420;
        sub_08000AF0(gUnk_03000420 + 0x10, M2C_FIELD(temp_r6, s32 *, 0xC) + (*(M2C_FIELD(stack, u16 * *, 0x108)) << 5), 1U);
        if (1 & sub_08098004()) {
            var_r0_3 = sub_08097FF8();
        } else {
            var_r0_3 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(arg0, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(arg0, s32 *, 0x18) >> 8), 0U);
        }
        temp_r0_13 = var_r0_3;
        if (sub_0800CD8C() == 0) {
            M2C_FIELD(arg0, u16 *, 0x6E) = (u16) sub_08065370(temp_r6, M2C_FIELD(arg0, u16 *, 0x68), (s32) (M2C_FIELD(stack, u16 * *, 0x100)), (s32) (M2C_FIELD(stack, u16 * *, 0x104)), (M2C_FIELD(stack, s32 *, 0xD4)));
        }
        callA8164_0800BC08((s32) (M2C_FIELD(arg0, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(arg0, s32 *, 0x18) << 8) >> 0x10, &(M2C_FIELD(stack, s16 *, 0xAC)), &(M2C_FIELD(stack, s16 *, 0xAE)), 0, 0);
        if ((M2C_FIELD(stack, s32 *, 0xD8)) != 0) {
            temp_r0_14 = (M2C_FIELD(stack, s32 *, 0xD8));
            (M2C_FIELD(stack, s32 *, 0xD8)) = (s32) (u16) (temp_r0_14 - 1);
            if ((1 & temp_r0_14) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), (M2C_FIELD(stack, s16 *, 0xAE)), M2C_FIELD(arg0, u16 *, 0x68), *(M2C_FIELD(stack, u16 * *, 0x100)), (s32) temp_r0_13, temp_r6 + 0x1C, M2C_FIELD(temp_r6, s32 *, 8), M2C_FIELD(temp_r6, s32 *, 0));
            }
        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), (M2C_FIELD(stack, s16 *, 0xAE)), M2C_FIELD(arg0, u16 *, 0x68), *(M2C_FIELD(stack, u16 * *, 0x100)), (s32) temp_r0_13, temp_r6 + 0x1C, M2C_FIELD(temp_r6, s32 *, 8), M2C_FIELD(temp_r6, s32 *, 0));
        }
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0) && (M2C_FIELD(arg0, u8 *, 0x1FD) != 7)) {
            temp_r0_15 = (M2C_FIELD(stack, s32 *, 0xEC));
            (M2C_FIELD(stack, s32 *, 0xEC)) = (s32) (u8) (temp_r0_15 - 1);
            if (1 & temp_r0_15) {
                temp_r0_16 = callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), 8, (u16) (M2C_FIELD(stack, s32 *, 0xE4)), 0U, (s32) temp_r0_13, temp_r6 + 0x1C, M2C_FIELD(temp_r6, s32 *, 8), M2C_FIELD(temp_r6, s32 *, 0));
                M2C_FIELD(temp_r0_16, s32 *, 8) = (s32) ((M2C_FIELD(stack, s16 *, 0xAC)) - 4);
                M2C_FIELD(temp_r0_16, s32 *, 0xC) = (s32) ((M2C_FIELD(stack, s16 *, 0xAE)) + 6);
            }
        }
        temp_r0_17 = M2C_FIELD(arg0, s32 *, 0x4C);
        if ((temp_r0_17 != 0) && ((M2C_FIELD(stack, s32 *, 0xC4)) != temp_r0_17)) {
            (M2C_FIELD(stack, s32 *, 0xC4)) = temp_r0_17;
            (M2C_FIELD(stack, s32 *, 0xDC)) = 0xA;
            (M2C_FIELD(stack, u32 *, 0xE8)) = 0;
        }
        if ((M2C_FIELD(stack, s32 *, 0xDC)) != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                callA8164_0801A120(arg0, (M2C_FIELD(stack, s32 *, 0xC4)), (s16) (M2C_FIELD(stack, u32 *, 0xE8)));
            }
            if (2 & (M2C_FIELD(stack, s32 *, 0xDC))) {
                (M2C_FIELD(stack, u32 *, 0xE8)) = (u32) (((M2C_FIELD(stack, u32 *, 0xE8)) << 0x10) + 0xFFFF0000) >> 0x10;
            }
            (M2C_FIELD(stack, s32 *, 0xDC)) = (s32) (u16) ((M2C_FIELD(stack, s32 *, 0xDC)) - 1);
        } else {
            (M2C_FIELD(stack, s32 *, 0xC4)) = 0;
            M2C_FIELD(arg0, s32 *, 0x4C) = (M2C_FIELD(stack, s32 *, 0xDC));
        }
        if ((callA8164_08019CE8(arg0) << 0x10) != 0) {
            (M2C_FIELD(stack, s32 *, 0xFC)) = 1;
        }
        sub_080003F0();
        if ((M2C_FIELD(stack, s32 *, 0xFC)) == 0) {
            goto loop_119;
        }
    }
    gUnk_030056FC = 0;
    temp_r2 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r2 |= 1;
    sub_080A9844();
    M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s8 *, 0x1C) = (s8) gUnk_03000420;
    M2C_FIELD(gUnk_0300041C, s16 *, 0x6C) = 0;
    temp_r0_18 = (gUnk_0300041C + 0x6C) - 2;
    *temp_r0_18 = 0;
    *(temp_r0_18 - 2) = 0;
    (M2C_FIELD(stack, u32 *, 0xE8)) = 0;
    (M2C_FIELD(stack, s32 *, 0xDC)) = 0xA;
loop_123:
    temp_r1_5 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r1_5 |= 1;
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_19 = sub_0800CD34();
        if (temp_r0_19 == 0) {
            sub_08000AF0(gUnk_03000420 + 0x10, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0xC) + (*(M2C_FIELD(stack, u16 * *, 0x108)) << 5), 1U);
            temp_r9 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x18) >> 8), 0U);
            M2C_FIELD(gUnk_0300041C, s16 *, 0x6E) = (s16) sub_08065370(&(M2C_FIELD(stack, u8 *, 0x10)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), (s32) (gUnk_0300041C + 0x6A), (s32) (gUnk_0300041C + 0x6C), 1);
            callA8164_0800BC08((s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x18) << 8) >> 0x10, &(M2C_FIELD(stack, s16 *, 0xAC)), &(M2C_FIELD(stack, s16 *, 0xAE)), temp_r0_19, temp_r0_19);
            callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), (M2C_FIELD(stack, s16 *, 0xAE)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), M2C_FIELD(gUnk_0300041C, u16 *, 0x6A), (s32) temp_r9, &(M2C_FIELD(stack, u8 *, 0x10)) + 0x1C, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 8), M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0));
            callA8164_0801A120(arg0, (M2C_FIELD(stack, s32 *, 0xC4)), (s16) (M2C_FIELD(stack, u32 *, 0xE8)));
        }
    }
    if (2 & (M2C_FIELD(stack, s32 *, 0xDC))) {
        (M2C_FIELD(stack, u32 *, 0xE8)) = (u32) (((M2C_FIELD(stack, u32 *, 0xE8)) << 0x10) + 0xFFFF0000) >> 0x10;
    }
    sub_080003F0();
    (M2C_FIELD(stack, s32 *, 0xDC)) = (s32) (u16) ((M2C_FIELD(stack, s32 *, 0xDC)) - 1);
    if ((M2C_FIELD(stack, s32 *, 0xDC)) != 0xFFFF) {
        goto loop_123;
    }
    sub_080683CC();
    callA8164_08067CA8(M2C_FIELD(gUnk_0300041C, u16 *, 2));
    sub_08068330(-0x21520532);
loop_138:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r1_6 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r1_6 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_20 = sub_0800CD34();
            if (temp_r0_20 == 0) {
                sub_08000AF0(gUnk_03000420 + 0x10, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0xC) + (*(M2C_FIELD(stack, u16 * *, 0x108)) << 5), 1U);
                temp_r9_2 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x18) >> 8), 0U);
                M2C_FIELD(gUnk_0300041C, s16 *, 0x6E) = (s16) sub_08065370(&(M2C_FIELD(stack, u8 *, 0x10)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), (s32) (gUnk_0300041C + 0x6A), (s32) (gUnk_0300041C + 0x6C), 1);
                callA8164_0800BC08((s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x18) << 8) >> 0x10, &(M2C_FIELD(stack, s16 *, 0xAC)), &(M2C_FIELD(stack, s16 *, 0xAE)), temp_r0_20, temp_r0_20);
                callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), (M2C_FIELD(stack, s16 *, 0xAE)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), M2C_FIELD(gUnk_0300041C, u16 *, 0x6A), (s32) temp_r9_2, &(M2C_FIELD(stack, u8 *, 0x10)) + 0x1C, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 8), M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0));
            }
        }
        sub_080003F0();
        goto loop_138;
    }
    sub_08065E38(-0x21520532);
loop_146:
    if (sub_08058DB0() != 0) {
        temp_r1_7 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r1_7 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_21 = sub_0800CD34();
            if (temp_r0_21 == 0) {
                sub_08000AF0(gUnk_03000420 + 0x10, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0xC) + (*(M2C_FIELD(stack, u16 * *, 0x108)) << 5), 1U);
                temp_r9_3 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x18) >> 8), 0U);
                M2C_FIELD(gUnk_0300041C, s16 *, 0x6E) = (s16) sub_08065370(&(M2C_FIELD(stack, u8 *, 0x10)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), (s32) (gUnk_0300041C + 0x6A), (s32) (gUnk_0300041C + 0x6C), 1);
                callA8164_0800BC08((s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x18) << 8) >> 0x10, &(M2C_FIELD(stack, s16 *, 0xAC)), &(M2C_FIELD(stack, s16 *, 0xAE)), temp_r0_21, temp_r0_21);
                callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), (M2C_FIELD(stack, s16 *, 0xAE)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), M2C_FIELD(gUnk_0300041C, u16 *, 0x6A), (s32) temp_r9_3, &(M2C_FIELD(stack, u8 *, 0x10)) + 0x1C, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 8), M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0));
            }
        }
        sub_080003F0();
        goto loop_146;
    }
    callA8164_080586B4(0);
    temp_r2_2 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r2_2 |= 1;
    M2C_FIELD(gUnk_03005CF4, u32 *, 0x720) = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x140090U);
loop_154:
    if (sub_0805EEFC((void *) M2C_FIELD(gUnk_03005CF4, u32 *, 0x720)) == 0) {
        temp_r1_8 = (sub_080020F4() * 0x14C) + (u8 *)gUnk_03003CE0 + 0x30;
        *temp_r1_8 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0)) {
            temp_r0_22 = sub_0800CD34();
            if (temp_r0_22 == 0) {
                sub_08000AF0(gUnk_03000420 + 0x10, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0xC) + (*(M2C_FIELD(stack, u16 * *, 0x108)) << 5), 1U);
                temp_r9_4 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_0300041C, s32 *, 0x18) >> 8), 0U);
                M2C_FIELD(gUnk_0300041C, s16 *, 0x6E) = (s16) sub_08065370(&(M2C_FIELD(stack, u8 *, 0x10)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), (s32) (gUnk_0300041C + 0x6A), (s32) (gUnk_0300041C + 0x6C), 1);
                callA8164_0800BC08((s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x18) << 8) >> 0x10, &(M2C_FIELD(stack, s16 *, 0xAC)), &(M2C_FIELD(stack, s16 *, 0xAE)), temp_r0_22, temp_r0_22);
                callA8164_08007870((M2C_FIELD(stack, s16 *, 0xAC)), (M2C_FIELD(stack, s16 *, 0xAE)), M2C_FIELD(gUnk_0300041C, u16 *, 0x68), M2C_FIELD(gUnk_0300041C, u16 *, 0x6A), (s32) temp_r9_4, &(M2C_FIELD(stack, u8 *, 0x10)) + 0x1C, M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 8), M2C_FIELD(&(M2C_FIELD(stack, u8 *, 0x10)), s32 *, 0));
            }
        }
        sub_080003F0();
        goto loop_154;
    }
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30;
    *temp_r2_3 &= ~1;
    callA8164_08058688(0xD);
    callA8164_080970CC(gUnk_0300041C, &(M2C_FIELD(stack, u8 *, 0x10)), *(M2C_FIELD(stack, u16 * *, 0x108)), gUnk_03000420);
    if (!(*(u32 *)((0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0 + 0x30) & 0x2000) && (M2C_FIELD(gUnk_0300041C, u16 *, 0x5A) != 0)) {
        temp_r4 = sub_0801E46C((void *) gUnk_030034E0, (M2C_FIELD(stack, void * *, 0xB8)));
        (M2C_FIELD(stack, u32 *, 0xE8)) = 0x1D;
        do {
            M2C_FIELD(gUnk_0300041C, s32 *, 0x18) = (s32) (M2C_FIELD(gUnk_0300041C, s32 *, 0x18) - 0x20);
            callA8164_0806171C(gUnk_0300041C, temp_r4);
            sub_080003F0();
            temp_r0_23 = ((M2C_FIELD(stack, u32 *, 0xE8)) << 0x10) + 0xFFFF0000;
            (M2C_FIELD(stack, u32 *, 0xE8)) = temp_r0_23 >> 0x10;
        } while (((s32) temp_r0_23 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4);
    }
    (M2C_FIELD(stack, u32 *, 0xE8)) = 0x6F;
    do {
        sub_080003F0();
        temp_r0_24 = ((M2C_FIELD(stack, u32 *, 0xE8)) << 0x10) + 0xFFFF0000;
        (M2C_FIELD(stack, u32 *, 0xE8)) = temp_r0_24 >> 0x10;
    } while (((s32) temp_r0_24 >> 0x10) != -1);
    sub_08067C18();
loop_164:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_164;
    }
    sub_08067BF8();
    sub_08056E24();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A8164);
#endif
struct PlayerHit111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x34]; u16 lock, direction, power; u8 padCE[0x16]; s32 previous[0x1A]; };
extern struct PlayerHit111 hitPlayers111[] asm("gUnk_03003CE0");
extern u8 *hitObject111 asm("gUnk_0300041C");
void sub_080A8F90(void)
{
    s32 ix, iy, iflags, itable, icmp, offset;
    u8 *objX, *objY, *objTable;
    s32 *px, *py, *table;
    u32 *flags;
    struct PlayerHit111 *base;
    u32 dx;
    s32 dy;
    s16 *target;
    s16 direction;
    ix = sub_080020F4();
    objX = hitObject111;
    base = hitPlayers111;
    ix *= 0x14C;
    px = &base->x;
    dx = (u32)((*(s32 *)(objX + 0x14) - *(s32 *)((u8 *)px + ix)) << 8) >> 16;
    iy = sub_080020F4();
    objY = hitObject111;
    iy *= 0x14C;
    py = &base->y;
    dy = (*(s32 *)(objY + 0x18) - *(s32 *)((u8 *)py + iy)) << 8;
    if (Sqrt((s16)dx * (s16)dx + (dy >> 16) * (dy >> 16)) > 19) return;
    if (*(s16 *)(hitObject111 + 0x5C) == 0) return;
    if (base[sub_080020F4()].lock != 0) return;
    if (sub_0800CDF8() != 0) return;
    if (sub_0800CD8C() != 0) return;
    if (sub_0800CCCC() != 0) return;
    if (*(u16 *)(hitObject111 + 0xC) == 11) return;
    iflags = 0x14C * sub_080020F4();
    flags = &base->flags;
    if (*(u32 *)((u8 *)flags + iflags) & 0x2000) return;
    if (base[sub_080020F4()].active == 0) return;
    if (base[sub_080020F4()].state == 14) return;
    if (base[sub_080020F4()].state == 11) return;
    if (base[sub_080020F4()].state == 12) return;
    itable = sub_080020F4();
    objTable = hitObject111;
    offset = *(u16 *)objTable * 4;
    itable *= 0x14C;
    offset += itable;
    table = base->previous;
    if (*(s32 *)((u8 *)table + offset) == *(s32 *)(objTable + 0x50)) return;
    icmp = 0x14C * sub_080020F4();
    if (*(s32 *)((u8 *)px + icmp) <= *(s32 *)(hitObject111 + 0x14)) {
        target = (s16 *)&base[sub_080020F4()].direction;
        direction = 1;
    } else {
        target = (s16 *)&base[sub_080020F4()].direction;
        direction = 5;
    }
    *target = direction;
    hitPlayers111[sub_080020F4()].power = 0x400;
    hitPlayers111[sub_080020F4()].lock = 8;
}
struct PlayerHit2111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x1C]; u16 hit; u8 padB2[0x16]; u16 lock, direction, power; u8 padCE[0x16]; s32 previous[0x1A]; };
extern struct PlayerHit2111 hitPlayers2111[] asm("gUnk_03003CE0");
extern u8 *hitObject2111 asm("gUnk_0300041C");
extern s16 hitOffsets111[] asm("gUnk_080B9704");
void sub_080A9100(void)
{
    s32 ix, iy, iflags, itable, offset;
    u8 *objTable;
    s32 *px, *py, *table;
    u32 *flags;
    struct PlayerHit2111 *base;
    u32 dx;
    s32 dy;
    s32 x, y;
    s32 saveIndex, saveOffset;
    u8 *saveObj;
    s32 *saveTable;
    s32 serial;
    s32 *saveDst;
    x = *(s32 *)(hitObject2111 + 0x14);
    y = *(s32 *)(hitObject2111 + 0x18);
    x += hitOffsets111[0xB0] << 5;
    y += hitOffsets111[0x70] << 5;
    ix = sub_080020F4();
    base = hitPlayers2111;
    ix *= 0x14C;
    px = &base->x;
    dx = (u32)((x - *(s32 *)((u8 *)px + ix)) << 8) >> 16;
    iy = 0x14C * sub_080020F4();
    py = &base->y;
    dy = (y - *(s32 *)((u8 *)py + iy)) << 8;
    if (Sqrt((s16)dx * (s16)dx + (dy >> 16) * (dy >> 16)) > 19) return;
    if (base[sub_080020F4()].lock != 0) return;
    if (sub_0800CDF8() != 0) return;
    if (sub_0800CD8C() != 0) return;
    if (sub_0800CCCC() != 0) return;
    if (*(u16 *)(hitObject2111 + 0xC) == 11) return;
    iflags = 0x14C * sub_080020F4();
    flags = &base->flags;
    if (*(u32 *)((u8 *)flags + iflags) & 0x2000) return;
    if (base[sub_080020F4()].active == 0) return;
    if (base[sub_080020F4()].state == 14) return;
    if (base[sub_080020F4()].state == 11) return;
    if (base[sub_080020F4()].state == 12) return;
    itable = sub_080020F4();
    objTable = hitObject2111;
    offset = *(u16 *)objTable * 4;
    itable *= 0x14C;
    offset += itable;
    table = base->previous;
    if (*(s32 *)((u8 *)table + offset) == *(s32 *)(objTable + 0x50)) return;
    if (sub_0800CE30() == 1)
        sub_08029A7C(1, 0xC8, 4);
    else
        sub_08029A7C(1, 0x50, 4);
    hitPlayers2111[sub_080020F4()].hit = 0xFFFE;
    saveIndex = sub_080020F4();
    saveObj = hitObject2111;
    saveOffset = *(u16 *)saveObj * 4;
    saveIndex *= 0x14C;
    saveOffset += saveIndex;
    saveTable = hitPlayers2111->previous;
    saveDst = (s32 *)((u8 *)saveTable + saveOffset);
    serial = *(s32 *)(saveObj + 0x50);
    *saveDst = serial;
    *(s32 *)(saveObj + 0x50) = serial + 1;
    hitPlayers2111[sub_080020F4()].direction = 1;
    hitPlayers2111[sub_080020F4()].power = 0x400;
    hitPlayers2111[sub_080020F4()].lock = 0x50;
}
#ifdef NONMATCHING
struct PlayerEffect111 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 active; u8 pad69[0x23]; s32 x,y; u8 pad94[0x1C]; u16 hit; u8 padB2[0x16]; u16 lock, direction, power; u8 padCE[0x16]; s32 previous[0x1A]; };
extern struct PlayerEffect111 effectPlayers111[] asm("gUnk_03003CE0");
extern u8 *effectObject111 asm("gUnk_0300041C");
struct SpriteEffect111 { s32 f0, f4, f8, fC, f10, f14, f18; u8 bytes[0x18]; };
extern void initEffect111(void *, u32, u32, s32, s32) asm("sub_08065158");
extern void moveEffect111(s32, s32, s32, s32, s32 *) asm("sub_080979D8");
extern u8 testEffect111(s32, s32, s32, s32, s32) asm("sub_08097B6C");
extern void screenEffect111(s32, s32, s16 *, s16 *, s32, s32) asm("sub_0800BC08");
extern void animateEffect111(void *, u32, u16 *, u16 *, s32) asm("sub_08065370");
extern u8 *drawEffect111(s32, s32, u32, u32, u32, void *, s32, s32) asm("sub_08007870");
s32 sub_080A92C0(u32 argument)
{
    register u32 kind asm("r9") = (u16)argument;
    register u16 *frame asm("r8");
    register s32 *velocity asm("r10");
    struct { struct SpriteEffect111 sprite; s16 screenX, screenY; u16 frame, tick; s32 velocity[2]; s32 x, y, range, end, hit; } local;
    s32 ix, iy, iflags, itable, offset, saveIndex, saveOffset;
    u32 dx;
    s32 dy;
    register u32 distance asm("r0");
    struct PlayerEffect111 *base;
    s32 *px, *py, *table, *saveTable, *saveDst;
    u32 *flags;
    u8 *objTable, *saveObj;
    s32 serial;
    s32 zero;
    u8 layer;
    initEffect111(&local.sprite, 0x50011, gUnk_03000420, -1, 1);
    local.sprite.bytes[0] = gUnk_03000420;
    local.x = *(s32 *)(effectObject111 + 0x14);
    local.y = *(s32 *)(effectObject111 + 0x18);
    if (kind != 0) {
        local.x -= 0x800;
        local.y -= 0x800;
    } else {
        local.x += 0x400;
    }
    { register u16 *tick asm("r4");
      register u16 *initialFrame asm("r5");
      register s32 z asm("r0");
      tick = &local.tick; asm("" : "+r"(tick));
      z = 0; asm("" : "+r"(z)); *tick = z;
      initialFrame = &local.frame; asm("" : "+r"(initialFrame));
      *initialFrame = z;
      { register s32 hit asm("r2") = 0; asm("" : "+r"(hit)); local.hit = hit; }
      sub_0805865C(0xE4); frame = initialFrame; }
    velocity = local.velocity;
    for (;;) {
        if (kind != 0) {
            local.range = 0x2000;
            local.end = 0x10000;
        } else {
            local.range = 0x3000;
            local.end = 0x11000;
        }
        moveEffect111(local.x, local.y, local.range, local.end, velocity);
        local.x += velocity[0] * 4;
        local.y += velocity[1] * 4;
        if (testEffect111(local.x, local.y, local.range, local.end, 0x18) != 0) break;
        ix = sub_080020F4();
        base = effectPlayers111;
        ix *= 0x14C;
        px = &base->x;
        { register s32 playerX asm("r4") = *(s32 *)((u8 *)px + ix);
          register s32 effectX asm("r1") = local.x;
          asm("" : "+r"(playerX), "+r"(effectX));
          playerX = effectX - playerX; asm("" : "+r"(playerX));
          dx = (u32)(playerX << 8) >> 16; }
        { register s32 player asm("r0") = sub_080020F4();
          asm("" : "+r"(player)); iy = 0x14C * player; }
        py = &base->y;
        { register s32 playerY asm("r1") = *(s32 *)((u8 *)py + iy);
          register s32 effectY asm("r2") = local.y;
          asm("" : "+r"(playerY), "+r"(effectY));
          playerY = effectY - playerY; asm("" : "+r"(playerY));
          dy = playerY << 8; }
        distance = (u16)Sqrt((s16)dx * (s16)dx + (dy >> 16) * (dy >> 16));
        asm("" : "+r"(distance));
        if (local.hit == 0 && distance <= 11 && sub_0800CDF8() == 0 && sub_0800CD8C() == 0 && sub_0800CCCC() == 0 && *(u16 *)(effectObject111 + 0xC) != 11) {
            iflags = 0x14C * sub_080020F4();
            flags = &base->flags;
            if ((*(u32 *)((u8 *)flags + iflags) & 0x2000) == 0 && base[sub_080020F4()].active != 0 && base[sub_080020F4()].state != 14 && base[sub_080020F4()].state != 11 && base[sub_080020F4()].state != 12) {
                itable = sub_080020F4();
                objTable = effectObject111;
                offset = *(u16 *)objTable * 4;
                itable *= 0x14C;
                offset += itable;
                table = base->previous;
                if (*(s32 *)((u8 *)table + offset) != *(s32 *)(objTable + 0x50)) {
                    if (sub_0800CE30() == 1) sub_08029CEC(1, 0x28, 3);
                    else sub_08029CEC(1, 0xF, 3);
                    effectPlayers111[sub_080020F4()].hit = 0xFFFE;
                    saveIndex = sub_080020F4();
                    saveObj = effectObject111;
                    saveOffset = *(u16 *)saveObj * 4;
                    saveIndex *= 0x14C;
                    saveOffset += saveIndex;
                    saveTable = effectPlayers111->previous;
                    saveDst = (s32 *)((u8 *)saveTable + saveOffset);
                    serial = *(s32 *)(saveObj + 0x50);
                    *saveDst = serial;
                    *(s32 *)(saveObj + 0x50) = serial + 1;
                    local.hit = 1;
                }
            }
        }
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && sub_0800CD8C() == 0 && (zero = sub_0800CD34()) == 0) {
            register s16 *screenX asm("r5") = &local.screenX;
            register s16 *screenY asm("r6") = &local.screenY;
            asm("" : "+r"(screenX), "+r"(screenY));
            { register s32 x asm("r1") = local.x;
              register s32 y asm("r2"), xCoord asm("r0");
              asm("" : "+r"(x)); xCoord = (x << 8) >> 16;
              asm("" : "+r"(xCoord)); y = local.y; asm("" : "+r"(y));
              screenEffect111(xCoord, (y << 8) >> 16, screenX, screenY, zero, zero); }
            sub_08000AF0(gUnk_03000420 + 0x10, (u8 *)local.sprite.fC + (*(u16 *)(effectObject111 + 0x2DA) << 5), 1);
            animateEffect111(&local.sprite, 3, frame, &local.tick, zero);
            { register u32 l asm("r1") = (u8)sub_0800BC44(*(s32 *)(effectObject111 + 0x14) >> 8, *(s32 *)(effectObject111 + 0x18) >> 8, 0);
              asm("" : "+r"(l)); layer = l; }
            if (kind != 0)
                *(s32 *)(drawEffect111(*screenX, 0x10, 3, *frame, layer, local.sprite.bytes, local.sprite.f8, local.sprite.f0) + 0xC) = *screenY;
            else
                *(s32 *)(drawEffect111(*screenX, 0xA0, 3, *frame, layer, local.sprite.bytes, local.sprite.f8, local.sprite.f0) + 0xC) = *screenY;
            if (kind != 0)
                *(s32 *)(drawEffect111(*screenX + 0x20, 0x10, 4, *frame, layer, local.sprite.bytes, local.sprite.f8, local.sprite.f0) + 0xC) = *screenY - 0x10;
            else
                *(s32 *)(drawEffect111(*screenX + 0x20, 0xA0, 4, *frame, layer, local.sprite.bytes, local.sprite.f8, local.sprite.f0) + 0xC) = *screenY - 0x10;
            if (kind != 0)
                *(s32 *)(drawEffect111(*screenX + 0x40, 0x10, 5, *frame, layer, local.sprite.bytes, local.sprite.f8, local.sprite.f0) + 0xC) = *screenY - 0x20;
            else
                *(s32 *)(drawEffect111(*screenX + 0x40, 0xA0, 5, *frame, layer, local.sprite.bytes, local.sprite.f8, local.sprite.f0) + 0xC) = *screenY - 0x20;
        }
        sub_080003F0();
    }
    *(s32 *)((u8 *)sub_0800048C() + 8) = 0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080A3D2C", sub_080A92C0);
#endif
