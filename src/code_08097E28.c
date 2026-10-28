#include "global.h"

void sub_0809A834(void);
void sub_08096FA0(void);

extern s32 gUnk_030002EC;
extern s32 gUnk_030002F0;

extern s32 gUnk_030002D8;

extern s32 gUnk_030002E4;

extern s32 gUnk_030002F4;
extern s32 gUnk_03000308;

extern s32 *gUnk_03000300[];
extern s32 gUnk_030056FC;

void sub_08097E28(void *arg0, u16 arg1) {
    s32 temp_r1;
    s32 temp_r2;


    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CD34() == 0)) {
        temp_r1 = (s32) ((gUnk_080B9704[gUnk_030002A0.b0D] * (s16) arg1) << 8) >> 0x10;
        temp_r2 = 0x7000 - temp_r1;
        if (temp_r2 > (s32) M2C_FIELD(arg0, s32 *, 4)) {
            M2C_FIELD(arg0, s32 *, 4) = temp_r2;
        }
        temp_r2 = 0xA000 - temp_r1;
        if (temp_r2 < (s32) M2C_FIELD(arg0, s32 *, 4)) {
            M2C_FIELD(arg0, s32 *, 4) = temp_r2;
        }
        if ((s32) M2C_FIELD(arg0, s32 *, 0) <= 0x8FF) {
            M2C_FIELD(arg0, s32 *, 0) = 0x900;
        }
        if ((s32) M2C_FIELD(arg0, s32 *, 0) > 0xE000) {
            M2C_FIELD(arg0, s32 *, 0) = 0xE000;
        }
    }
}


void sub_08097EB0(s32 arg0, s16 arg1, s16 arg2, s16 arg3) {
    gUnk_030002B8 = arg3;
    gUnk_030002B6 = arg2;
    gUnk_030002BA = 0;
    gUnk_030002B0 = arg0;
    gUnk_030002B4 = arg1;
}
s16 sub_08097EE4(void) {
    return gUnk_030002BA;
}
extern s32 sub_08096BA8(s32, s32, s32, s32);
s32 sub_08097EF0(s32 arg0, s32 arg1) {
    register u32 temp_r4 asm("r4");
    register s32 mask asm("r2");
    register u32 phase asm("r1");
    s32 temp_r0;
    register s32 var_r2 asm("r2");
    register s32 fraction asm("r3");
    s32 var_r7;
    register s32 current asm("r0");

    var_r7 = 0;
    phase = (u16)gUnk_030002BA;
    current = gUnk_030002BA;
    mask=0xFFF;
    if (current > mask) {
        var_r7 = 2;
    }
    temp_r4 = mask & phase;
    gUnk_030002BA = temp_r4;
    temp_r0 = (((s32) ((u16) gUnk_030002B4 << 0x10) >> 0x11) << 0xC) * gUnk_030002BA;
    fraction = (temp_r0 >> 0xC) & mask;
    var_r2 = (temp_r0 >> 0x18) * 2;
    if (arg0 == 1) {
        register s32 len asm("r1") = gUnk_030002B4;
        register s32 next asm("r0") = var_r2 + 1;
        asm volatile("" : "+r" (next));
        var_r2 = len - next;
    }
    current = (u16)gUnk_030002B8;

    current = temp_r4 + current;

    gUnk_030002BA = current;
    if (sub_08096BA8(var_r2, fraction, arg0, arg1) == 1) {
        var_r7 = 1;
    }
    return var_r7;
}
struct Color100 { u32 r:5; u32 g:5; u32 b:5; u32 flag:1; };
void sub_08097F70(s32 dst, s32 src)
{
    u8 i = 0;
    s32 out = dst;
    do {
        struct Color100 *p = (struct Color100 *)src;
        struct Color100 color;
        struct Color100 *d = (struct Color100 *)out;
        src += 2;
        out += 2;
        color = *p;
        d->r = color.r;
        d->g = color.g;
        d->b = color.b;
        i++;
    } while (i<=15);
}
void sub_08097FE4(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD = 0;
}
u8 sub_08097FF8(void) {
    return gUnk_030002BC;
}
u8 sub_08098004(void) {
    return gUnk_030002BD;
}
void sub_08098010(u8 arg0) {
    gUnk_030002BC = arg0;
    gUnk_030002BD |= 1;
}
void sub_08098028(void) {
    gUnk_030002BC = 0;
    gUnk_030002BD &= 0xFE;
}
void sub_08098044(void)
{
  s32 temp_r0;
  temp_r0 = (gUnk_030002C0 = (s32) sub_08001494(0x28U));
  *((s32 *) (((s8 *) temp_r0) + 8)) = 0;
}
void sub_08098060(void) {
    if (sub_08000470(gUnk_030002C0) != 0) {
        sub_080003A8(gUnk_030002C0);
    }
    sub_08001538(gUnk_030002C0);
    gUnk_030002C0 = 0;
}
extern u32 gTaskArgs100[2] asm("gUnk_030002C8");
void sub_08096FA0(void);
void sub_08098088(u32 arg0,u32 arg1,u32 mode)
{
    register u32 b asm("r5")=arg1;
    register u32 a asm("r4")=arg0;
    u32 m;
    register s32 *taskp asm("r6");
    void *buffer;
    register u8 *task asm("r1");
    asm volatile("" : "+r" (b), "+r" (a), "+r" (mode));
    m=(u8)mode;
    taskp=&gUnk_030002C0;
    asm volatile("" : "+r" (taskp));
    if(sub_08000470(*taskp)==0 && M2C_FIELD((void *)*taskp,u32 *,8)!=0) return;
    gTaskArgs100[0]=a;
    gTaskArgs100[1]=b;
    buffer=sub_08001494(0x400);
    task=(u8 *)*taskp;
    asm volatile("" : "+r" (task));
    M2C_FIELD(task,void **,0x20)=buffer;
    if(buffer==0) { M2C_FIELD(task,u32 *,8)=0; return; }
    M2C_FIELD(task,void **,0x10)=(u8 *)buffer+0x3FC;
    M2C_FIELD(task,u32 *,0xC)=(u32)sub_08096FA0;
    M2C_FIELD(task,u32 *,0x24)=0;
    M2C_FIELD(task,u32 *,8)=0x44;
    sub_08000274(task,m);
}
s32 sub_080980F0(void)
{
    if (M2C_FIELD((void *)gUnk_030002C0, u32 *, 8))
        return 0;
    else
        return 1;
}
#ifdef NONMATCHING
extern u8 gStateClear100 asm("gUnk_03003DC4");
extern u8 gPlayerPtr100 asm("gUnk_03003E28");
extern u8 gImageData100 asm("gUnk_0849F878");
extern void sub_08007870(s16,s16,u16,u16,u32,void *,s32,s32);
extern void sub_0800BC08(s32,s32,s16 *,s16 *,u32,u32);
extern void sub_0801623C(void *,void *,s32);
extern u16 sub_08016E04(u16,u16);
extern s32 sub_08019CE8(void *);
extern void sub_08019F60(void *);
extern void sub_0801A120(void *,s32,s16);
extern void sub_0801C8F0(void *);
extern void sub_08058688(s32);
extern void sub_080586B4(s32);
extern void sub_0806171C(void *,s32);
extern void sub_08065158(void *,s32,u16,s32,s32);
extern void sub_080656B8(s32);
extern void sub_08067CA8(u16);
extern u8 sub_08096594(s32);
extern void sub_080970CC(void *,void *,u16,u16);
extern u8 sub_08098F2C(void);
extern void sub_0809975C(void);
extern void sub_080997C0(u16,u16);
#endif
#ifdef NONMATCHING
void sub_08098108(void *arg0) {
    s32 sp0;
    void *sp4;                                      /* compiler-managed */
    s32 sp8;
    s32 spC;
    u32 sp10[13];
    u32 sp44[13];
    s16 sp78;
    s16 screenY;
    void *sp7C;
    s32 sp80;
    s32 sp84;
    s32 sp88;
    s32 sp8C;
    s32 sp90;
    s32 sp94;
    s32 sp98;
    s32 sp9C;
    s32 spA0;
    u32 spA4;
    u32 spA8;
    u32 spAC;
    s32 spB0;
    u32 spB4;
    s32 spB8;
    s32 spBC;
    s32 spC0;
    s32 spC4;
    u16 *spC8;
    u16 *spCC;
    u16 *spD0;
    u16 *spD4;
    void *var_sl;
    s16 *var_r4;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s16 temp_r1_2;
    s16 temp_r1_7;
    s16 var_r2;
    s16 var_r3;
    s16 var_r3_2;
    s32 *temp_r1_10;
    s32 *temp_r1_11;
    s32 *temp_r1_12;
    s32 *temp_r1_13;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 temp_r0_14;
    s32 temp_r0_15;
    s32 temp_r0_16;
    s32 temp_r0_17;
    s32 temp_r0_18;
    s32 temp_r0_19;
    s32 temp_r0_8;
    s32 temp_r1_4;
    s32 temp_r4;
    s32 var_r5;
    u16 temp_r0_2;
    u16 temp_r0_9;
    u16 temp_r1;
    u16 temp_r1_3;
    u16 var_r0_2;
    u32 temp_r0_10;
    u32 temp_r0_20;
    u32 temp_r0_21;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r0_7;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_8;
    u32 temp_r1_9;
    u32 temp_r5;
    u32 temp_r5_2;
    u8 temp_r0_11;
    u8 temp_r0_12;
    u8 temp_r0_13;
    u8 temp_r8;
    u8 temp_r8_2;
    u8 temp_r8_3;
    u8 temp_r8_4;
    u8 var_r0;
    u8 var_r0_3;
    void *temp_r0;

    gUnk_030002D0 = arg0;
    temp_r0 = arg0 + 0x204;
    sp7C = temp_r0;
    sub_0801623C(arg0, &gImageData100, 0);
    sub_08019F60(temp_r0);
    sub_0801A0A4(arg0);
    temp_r0_2 = sub_08016E04(M2C_FIELD(arg0, u16 *, 0x2D8), M2C_FIELD(arg0, u16 *, 0x2DA));
    gUnk_030002D4 = temp_r0_2;
    temp_r1 = temp_r0_2;
    if (temp_r1 == 0xFFFF) {
loop_2:
        M2C_FIELD(arg0, u16 *, 0xC) = 0xBU;
        if ((sub_0800CB78() != 0) || (sub_08056E90() != 0)) {
            gUnk_030056FC &= ~(1 << M2C_FIELD(arg0, u16 *, 0));
            return;
        }
        sub_080003F0();
        if (gUnk_030002D4 != temp_r1) {
            goto block_6;
        }
        goto loop_2;
    }
block_6:
    sp0 = 1;
    sub_08065158(&sp10, 0x50000, gUnk_030002D4, -1, sp0);
    sp0 = 1;
    sub_08065158(&sp44, 0x50001, gUnk_030002D4, -1, sp0);
    M2C_FIELD(arg0, s16 *, 0x6C) = 0;
    M2C_FIELD(arg0, s16 *, 0x6A) = 0;
    M2C_FIELD(arg0, s16 *, 0x68) = 0;
    temp_r0_3 = M2C_FIELD(sp7C, s16 *, 6) * 3;
    M2C_FIELD(arg0, s16 *, 0x1D6) = temp_r0_3;
    M2C_FIELD(arg0, s16 *, 0x5C) = temp_r0_3;
    temp_r0_4 = M2C_FIELD(sp7C, s16 *, 4) * 0xA * 2;
    M2C_FIELD(arg0, s16 *, 0x1D4) = temp_r0_4;
    M2C_FIELD(arg0, s16 *, 0x5E) = temp_r0_4;
    M2C_FIELD(arg0, u16 *, 0xC) = 0U;
    sp84 = 0;
    sp88 = 0xFFFF;
    sp90 = 0;
    M2C_FIELD(arg0, u8 *, 0x1FD) = 2U;
    M2C_FIELD(arg0, u8 *, 0x1FE) = 2U;
    sub_080656B8(1);
    sub_0809975C();
    var_r3 = 0;
    spB8 = 0;
    sp98 = 0;
    sp94 = 0;
    M2C_FIELD(arg0, s32 *, 0x50) = 1;
    spD0 = arg0 + 0x6C;
    spCC = arg0 + 0x6A;
    spC8 = arg0 + 0x68;
    spD4 = sp7C + 0xD6;
    do {
        var_r2 = 0;
loop_8:
        temp_r1_2 = var_r2;
        M2C_FIELD(&gStateClear100, s32 *, temp_r1_2*4+var_r3*0x14C) = 0;
        temp_r1_3 = temp_r1_2 + 1;
        var_r2 = (s16) temp_r1_3;
        if ((s32) (s16) temp_r1_3 <= 4) {
            goto loop_8;
        }
        temp_r0_5 = (var_r3 << 0x10) + 0x10000;
        var_r3 = (s16) (temp_r0_5 >> 0x10);
    } while ((s32) ((s32) temp_r0_5 >> 0x10) <= 3);
    if (sub_0800CE30() == 1) {
        sp9C = 0x78;
        spA0 = 0x168;
    } else {
        sp9C = 0xF0;
        spA0 = 0xF0;
    }
    M2C_FIELD(arg0, u8 *, 0x1FC) = (u8) ((-0x10 & M2C_FIELD(arg0, u8 *, 0x1FC)) | (0xF & (u8) M2C_FIELD(arg0, u16 *, 0)));
    M2C_FIELD(arg0, u16 *, 0x202) = (u16) M2C_FIELD(arg0, u16 *, 2);
    M2C_FIELD(arg0, u8 *, 0x200) = 0xFFU;
    sub_08097FE4();
    sub_08097A4C();
    spBC = 0;
    sub_08067C18();
loop_15:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_15;
    }
    sub_08067BF8();
loop_126:
    if ((sub_0800CB78() == 0) && (sub_08056E90() == 0)) {
        if ((M2C_FIELD(arg0, u16 *, 0xC) == 0xA) && (sp90 == 0)) {
            sp90 = 8;
        }
        var_r4 = &screenY;
        if (sub_08058DB0() != 0) {

        } else {
            sub_0801C8F0(arg0);
            temp_r0_6 = M2C_FIELD(arg0, u8 *, 0x1FD) - 1;
            switch (temp_r0_6) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                var_r4 = &screenY;
                if (sub_08067C08() == 0) {

                } else {
                    M2C_FIELD(arg0, u8 *, 0x1FD) = (u8) M2C_FIELD(arg0, u8 *, 0x1FE);
                    sub_08067BF8();
                }
                break;
            case 1:                                 /* switch 1 */
                sp84 = 0;
                var_r4 = &screenY;
                if (sub_08056F78() == 0) {

                } else {
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 3U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                }
                break;
            case 2:                                 /* switch 1 */
                sp84 = 1;
                M2C_FIELD(arg0, u16 *, 0xC) = 1U;
                if ((sub_08097A74(arg0, &gUnk_03003CE0[sub_08096594(0)], 0x100, 0x20) << 0x18) != 0) {
                    temp_r1_4 = sp98;
                    sp98 = (s32) (u16) (temp_r1_4 + 1);
                    var_r4 = &screenY;
                    if (sp9C >= temp_r1_4) {

                    } else {
                        M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                        spA4 = 0;
                        if (spB8 == 0) {
                            M2C_FIELD(arg0, u8 *, 0x1FE) = 6U;
                            sub_08097A38(0U);
                        } else {
                            M2C_FIELD(arg0, u8 *, 0x1FE) = 4U;
                            M2C_FIELD(arg0, s32 *, 0x50) = (s32) (M2C_FIELD(arg0, s32 *, 0x50) + 1);
                            spA8 = 0;
                        }
                        sub_08067C18();
                        sp98 = 0;
                        goto block_51;
                    }
                } else {
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    spA4 = 0;
                    if (spB8 == 0) {
                        M2C_FIELD(arg0, u8 *, 0x1FE) = 6U;
                        sub_08097A38(0U);
                    } else {
                        M2C_FIELD(arg0, u8 *, 0x1FE) = 4U;
                        M2C_FIELD(arg0, s32 *, 0x50) = (s32) (M2C_FIELD(arg0, s32 *, 0x50) + 1);
                        spA8 = 0;
                    }
block_50:
                    sub_08067C18();
block_51:
                    var_r4 = &screenY;
                }
                break;
            case 5:                                 /* switch 1 */
                sp84 = 2;
                M2C_FIELD(arg0, u16 *, 0xC) = 2U;
                var_r4 = &screenY;
                if (M2C_FIELD(arg0, u16 *, 0x6E) == 0) {

                } else {
                    temp_r1_5 = spA4;
                    temp_r0_7 = (u32) ((temp_r1_5 << 0x10) + 0x10000) >> 0x10;
                    spA4 = temp_r0_7;
                    if ((s32) (s16) temp_r1_5 <= 7) {
                        sub_0805865C(0xA6);
                        if (sub_0800CE30() == 1) {
                            sub_080997C0(M2C_FIELD(arg0, u16 *, 8), (u16) temp_r0_7);
                        } else {
                            sub_080997C0(M2C_FIELD(arg0, u16 *, 8), 0U);
                            sub_080997C0(M2C_FIELD(arg0, u16 *, 8), 2U);
                            sub_080997C0(M2C_FIELD(arg0, u16 *, 8), 4U);
                            sub_080997C0(M2C_FIELD(arg0, u16 *, 8), 6U);
                        }
                        M2C_FIELD(arg0, s32 *, 0x50) = (s32) (M2C_FIELD(arg0, s32 *, 0x50) + 1);
                        *spD0 = 0;
                        *spCC = 0;
                        M2C_FIELD(arg0, u16 *, 8) = (u16) ((M2C_FIELD(arg0, u16 *, 8) + 1) & 7);
                        goto block_51;
                    }
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 7U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                    spB4 = 0;
                }
                break;
            case 3:                                 /* switch 1 */
                sp84 = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                spB0 = (s32) sub_08096594(0);
                sub_08097A38(0U);
                spC0 = 0;
                M2C_FIELD(arg0, u8 *, 0x1FE) = 5U;
                M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                goto block_50;
            case 4:                                 /* switch 1 */
                sp84 = 2;
                M2C_FIELD(arg0, u16 *, 0xC) = 2U;
                if ((*spCC == 0) && (*spD0 != 0)) {
                    sub_0805865C(0xA7);
                }
                sub_08097A74(arg0, &gUnk_03003CE0[spB0], 0x60, 0x20);
                if (spC0 == 0) {
                    var_r0 = sub_08098F2C();
                } else {
                    var_r0 = spC0 - 1;
                }
                spC0 = (s32) var_r0;
                temp_r0_8 = sub_0800CE30();
                spC4 = spA0 << 0x10;
                var_r4 = &screenY;
                if (temp_r0_8 == 0) {
                    temp_r1_6 = spA8;
                    spA8 = (u32) ((temp_r1_6 << 0x10) + 0x10000) >> 0x10;
                    if ((s32) (s16) temp_r1_6 > 0x3C) {
                        temp_r5 = sub_08002164();
                        M2C_FIELD(arg0, u8 *, 0x200) = 0xFFU;
                        var_r3_2 = 0;
                        if (temp_r5 > 0U) {
                            do {
                                temp_r1_7 = var_r3_2;
                                if (((u32) (**(u8 **)((u8 *)&gPlayerPtr100+temp_r1_7*0x14C) << 0x1C) >> 0x1C) == 0xA) {
                                    M2C_FIELD(arg0, u8 *, 0x200) = 0U;
                                }
                                temp_r0_9 = temp_r1_7 + 1;
                                var_r3_2 = (s16) temp_r0_9;
                            } while ((u32) (s16) temp_r0_9 < temp_r5);
                        }
                        if (M2C_FIELD(arg0, u8 *, 0x200) == 0) {
                            sub_0805865C(0xA8);
                            M2C_FIELD(arg0, u8 *, 0x1FE) = 8U;
                            M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                            sub_08067C18();
                            spB4 = 0;
                        }
                    }
                }
                temp_r0_10 = spA4;
                spA4 = (u32) ((spA4 << 0x10) + 0x10000) >> 0x10;
                if ((s32) (spC4 >> 0x10) < (s32) (s16) temp_r0_10) {
                    sub_0805865C(0xA8);
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 8U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                    spB4 = 0;
                }
                break;
            case 6:                                 /* switch 1 */
                sp84 = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                temp_r1_8 = spB4;
                spB4 = (u32) (u8) (temp_r1_8 + 1);
                var_r4 = &screenY;
                if (temp_r1_8 > 0x78U) {
                    spB8 = 1;
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 3U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                }
                break;
            case 7:                                 /* switch 1 */
                sp84 = 0;
                M2C_FIELD(arg0, u16 *, 0xC) = 0U;
                sp0 = sp84;
                M2C_FIELD(arg0, u16 *, 8) = sub_08013E90(0x40, (s32 *)(arg0 + 0x14), M2C_FIELD(arg0, u16 *, 8), 0, sp0);
                temp_r1_9 = spB4;
                spB4 = (u32) (u8) (temp_r1_9 + 1);
                var_r4 = &screenY;
                if (temp_r1_9 > 0x78U) {
                    spB8 = 0;
                    M2C_FIELD(arg0, u8 *, 0x1FE) = 3U;
                    M2C_FIELD(arg0, u8 *, 0x1FD) = 1U;
                    sub_08067C18();
                }
                break;
            }
        }
        switch (sp84) {                             /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            var_sl = &sp10;
            temp_r0_11 = M2C_FIELD(arg0, u8 *, 0x1FD);
            if (temp_r0_11 != 7) {
                if (temp_r0_11 != 8) {
                    temp_r0_12 = M2C_FIELD(arg0, u8 *, 0x1FE);
                    if (temp_r0_12 != 7) {
                        if (temp_r0_12 != 8) {
                            *spC8 = M2C_FIELD(arg0, u16 *, 8);
                            sp8C = 1;
                        } else {
                            *spC8 = 0x11;
                            var_r5 = 0;
                            goto block_93;
                        }
                    } else {
                        var_r0_2 = 0x10;
                        goto block_89;
                    }
                } else {
                    *spC8 = 0x11;
                    var_r5 = 0;
block_93:
                    sp8C = var_r5;
                }
            } else {
                var_r0_2 = 0x10;
block_89:
                *spC8 = var_r0_2;
                sp8C = 1;
            }
            break;
        case 1:                                     /* switch 2 */
            var_sl = &sp10;
            var_r0_2 = M2C_FIELD(arg0, u16 *, 8) + 8;
            goto block_89;
        case 2:                                     /* switch 2 */
            var_sl = &sp44;
            if (spB8 == 0) {
                *spC8 = M2C_FIELD(arg0, u16 *, 8) + 2;
                sp8C = 0;
            } else {
                *spC8 = 0;
                var_r5 = 1;
                goto block_93;
            }
            break;
        }
        if (sp88 != M2C_FIELD(gUnk_030002D0, u16 *, 0x68)) {
            sp88 = (s32) M2C_FIELD(gUnk_030002D0, u16 *, 0x68);
            M2C_FIELD(gUnk_030002D0, s16 *, 0x6C) = 0;
            M2C_FIELD(gUnk_030002D0,u16 *,0x6A) = 0;
        }
        M2C_FIELD(var_sl, s8 *, 0x1C) = (s8) gUnk_030002D4;
        sub_08000AF0(gUnk_030002D4 + 0x10, M2C_FIELD(var_sl, u8 **, 0xC) + (*spD4 << 5), 1U);
        if (1 & sub_08098004()) {
            var_r0_3 = sub_08097FF8();
        } else {
            var_r0_3 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(arg0, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(arg0, s32 *, 0x18) >> 8), 0U);
        }
        temp_r0_13 = var_r0_3;
        if (sub_0800CD8C() == 0) {
            sp0 = sp8C;
            M2C_FIELD(arg0, u16 *, 0x6E) = (u16) sub_08065370(var_sl, *spC8, (s32) spCC, (s32) spD0, sp0);
        }
        sp0 = 0;
        sp4 = NULL;
        sub_0800BC08((s32) (M2C_FIELD(arg0, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(arg0, s32 *, 0x18) << 8) >> 0x10, &sp78, var_r4, 0, 0);
        temp_r0_14 = sp90;
        if (temp_r0_14 != 0) {
            sp90 = (s32) (u16) (temp_r0_14 - 1);
            if ((1 & temp_r0_14) && (sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
                sp0 = (s32) temp_r0_13;
                sp4 = var_sl + 0x1C;
                sp8 = M2C_FIELD(var_sl, s32 *, 8);
                spC = M2C_FIELD(var_sl, s32 *, 0);
                sub_08007870(sp78, *var_r4, *spC8, *spCC, sp0, sp4, sp8, spC);
            }
        } else if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0) && (sub_0800CD34() == 0)) {
            sp0 = (s32) temp_r0_13;
            sp4 = var_sl + 0x1C;
            sp8 = M2C_FIELD(var_sl, s32 *, 8);
            spC = M2C_FIELD(var_sl, s32 *, 0);
            sub_08007870(sp78, *var_r4, *spC8, *spCC, sp0, sp4, sp8, spC);
        }
        temp_r0_15 = M2C_FIELD(arg0, s32 *, 0x4C);
        if ((temp_r0_15 != 0) && (sp80 != temp_r0_15)) {
            sp80 = temp_r0_15;
            sp94 = 0xA;
            spAC = 0;
        }
        if (sp94 != 0) {
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (sub_0800CD34() == 0)) {
                sub_0801A120(arg0, sp80, (s16) spAC);
            }
            if (2 & sp94) {
                spAC = (u32) ((spAC << 0x10) + 0xFFFF0000) >> 0x10;
            }
            sp94 = (s32) (u16) (sp94 - 1);
        } else {
            sp80 = 0;
            M2C_FIELD(arg0, s32 *, 0x4C) = sp94;
        }
        if ((sub_08019CE8(arg0) << 0x10) != 0) {
            spBC = 1;
        }
        sub_080003F0();
        if (spBC == 0) {
            goto loop_126;
        }
    }
    gUnk_030056FC = 0;
    temp_r2 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
    *temp_r2 |= 1;
    sub_08099788();
    sub_080656EC();
    M2C_FIELD(&sp10, s8 *, 0x1C) = (s8) gUnk_030002D4;
    M2C_FIELD(gUnk_030002D0, u16 *, 0x68) = 0x10U;
    M2C_FIELD(gUnk_030002D0, s16 *, 0x6C) = 0;
    M2C_FIELD(gUnk_030002D0,u16 *,0x6A) = 0;
    spAC = 0;
    sp94 = 0xA;
loop_130:
    temp_r1_10 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
    *temp_r1_10 |= 1;
    if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
        temp_r0_16 = sub_0800CD34();
        if (temp_r0_16 == 0) {
            sub_08000AF0(gUnk_030002D4 + 0x10, M2C_FIELD(&sp10, u8 **, 0xC) + (*spD4 << 5), 1U);
            temp_r8 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x18) >> 8), 0U);
            sp0 = 1;
            M2C_FIELD(gUnk_030002D0, s16 *, 0x6E) = (s16) sub_08065370(&sp10, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), (s32) (gUnk_030002D0 + 0x6A), (s32) (gUnk_030002D0 + 0x6C), sp0);
            sp0 = temp_r0_16;
            sp4 = (void *)temp_r0_16;
            sub_0800BC08((s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x18) << 8) >> 0x10, &sp78, &screenY, 0, 0);
            sp0 = (s32) temp_r8;
            sp4 = (u8 *)&sp10 + 0x1C;
            sp8 = M2C_FIELD(&sp10, s32 *, 8);
            spC = M2C_FIELD(&sp10, s32 *, 0);
            sub_08007870(sp78, screenY, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), M2C_FIELD(gUnk_030002D0, u16 *, 0x6A), sp0, sp4, sp8, spC);
            sub_0801A120(arg0, sp80, (s16) spAC);
        }
    }
    if (2 & sp94) {
        spAC = (u32) ((spAC << 0x10) + 0xFFFF0000) >> 0x10;
    }
    sub_080003F0();
    sp94 = (s32) (u16) (sp94 - 1);
    if (sp94 != 0xFFFF) {
        goto loop_130;
    }
    sub_080683CC();
    sub_08067CA8(M2C_FIELD(arg0, u16 *, 2));
    sub_08068330(-0x21520532);
loop_144:
    if (sub_080682B8(-0x21520532) == 0) {
        temp_r1_11 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
        *temp_r1_11 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_17 = sub_0800CD34();
            if (temp_r0_17 == 0) {
                sub_08000AF0(gUnk_030002D4 + 0x10, M2C_FIELD(&sp10, u8 **, 0xC) + (*spD4 << 5), 1U);
                temp_r8_2 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x18) >> 8), 0U);
                sp0 = 1;
                M2C_FIELD(gUnk_030002D0, s16 *, 0x6E) = (s16) sub_08065370(&sp10, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), (s32) (gUnk_030002D0 + 0x6A), (s32) (gUnk_030002D0 + 0x6C), sp0);
                sp0 = temp_r0_17;
                sp4 = (void *)temp_r0_17;
                sub_0800BC08((s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x18) << 8) >> 0x10, &sp78, &screenY, 0, 0);
                sp0 = (s32) temp_r8_2;
                sp4 = (u8 *)&sp10 + 0x1C;
                sp8 = M2C_FIELD(&sp10, s32 *, 8);
                spC = M2C_FIELD(&sp10, s32 *, 0);
                sub_08007870(sp78, screenY, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), M2C_FIELD(gUnk_030002D0, u16 *, 0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_144;
    }
    sub_08065E38(-0x21520532);
loop_151:
    if (sub_08058DB0() != 0) {
        temp_r1_12 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
        *temp_r1_12 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_18 = sub_0800CD34();
            if (temp_r0_18 == 0) {
                sub_08000AF0(gUnk_030002D4 + 0x10, M2C_FIELD(&sp10, u8 **, 0xC) + (*spD4 << 5), 1U);
                temp_r8_3 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x18) >> 8), 0U);
                sp0 = 1;
                M2C_FIELD(gUnk_030002D0, s16 *, 0x6E) = (s16) sub_08065370(&sp10, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), (s32) (gUnk_030002D0 + 0x6A), (s32) (gUnk_030002D0 + 0x6C), sp0);
                sp0 = temp_r0_18;
                sp4 = (void *)temp_r0_18;
                sub_0800BC08((s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x18) << 8) >> 0x10, &sp78, &screenY, 0, 0);
                sp0 = (s32) temp_r8_3;
                sp4 = (u8 *)&sp10 + 0x1C;
                sp8 = M2C_FIELD(&sp10, s32 *, 8);
                spC = M2C_FIELD(&sp10, s32 *, 0);
                sub_08007870(sp78, screenY, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), M2C_FIELD(gUnk_030002D0, u16 *, 0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_151;
    }
    sub_080586B4(0);
    temp_r2_2 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
    *temp_r2_2 |= 1;
    sp0 = 0x3C;
    sp4 = (void *)0x140032;
    M2C_FIELD(gUnk_03005CF4, u32 *, 0x720) = sub_0805DF38(1U, 0xEU, 0x19U, 2U, sp0, (u32)sp4);
loop_158:
    if (sub_0805EEFC((void *) M2C_FIELD(gUnk_03005CF4, u32 *, 0x720)) == 0) {
        temp_r1_13 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
        *temp_r1_13 |= 1;
        if ((sub_0800CCCC() == 0) && (sub_0800CC98() == 0)) {
            temp_r0_19 = sub_0800CD34();
            if (temp_r0_19 == 0) {
                sub_08000AF0(gUnk_030002D4 + 0x10, M2C_FIELD(&sp10, u8 **, 0xC) + (*spD4 << 5), 1U);
                temp_r8_4 = (u8) sub_0800BC44((u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x14) >> 8), (u32) ((s32) M2C_FIELD(gUnk_030002D0, s32 *, 0x18) >> 8), 0U);
                sp0 = 1;
                M2C_FIELD(gUnk_030002D0, s16 *, 0x6E) = (s16) sub_08065370(&sp10, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), (s32) (gUnk_030002D0 + 0x6A), (s32) (gUnk_030002D0 + 0x6C), sp0);
                sp0 = temp_r0_19;
                sp4 = (void *)temp_r0_19;
                sub_0800BC08((s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x14) << 8) >> 0x10, (s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x18) << 8) >> 0x10, &sp78, &screenY, 0, 0);
                sp0 = (s32) temp_r8_4;
                sp4 = (u8 *)&sp10 + 0x1C;
                sp8 = M2C_FIELD(&sp10, s32 *, 8);
                spC = M2C_FIELD(&sp10, s32 *, 0);
                sub_08007870(sp78, screenY, M2C_FIELD(gUnk_030002D0, u16 *, 0x68), M2C_FIELD(gUnk_030002D0, u16 *, 0x6A), sp0, sp4, sp8, spC);
            }
        }
        sub_080003F0();
        goto loop_158;
    }
    temp_r2_3 = (s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C);
    *temp_r2_3 &= ~1;
    sub_08058688(0xD);
    sub_080970CC(gUnk_030002D0, &sp10, *spD4, gUnk_030002D4);
    if (!(*((s32 *)((u8 *)&gUnk_03003CE0->flags+sub_080020F4()*0x14C)) & 0x2000) && (M2C_FIELD(gUnk_030002D0, u16 *, 0x5A) != 0)) {
        temp_r4 = sub_0801E46C((void *) gUnk_030034E0, sp7C);
        spAC = 0x1D;
        do {
            M2C_FIELD(gUnk_030002D0, s32 *, 0x18) = (s32) (M2C_FIELD(gUnk_030002D0, s32 *, 0x18) - 0x20);
            sub_0806171C(gUnk_030002D0, temp_r4);
            sub_080003F0();
            temp_r0_20 = (spAC << 0x10) + 0xFFFF0000;
            spAC = temp_r0_20 >> 0x10;
        } while (((s32) temp_r0_20 >> 0x10) != -1);
        sub_0801E4CC((u8 *) gUnk_030034E0, temp_r4);
    }
    spAC = 0x6F;
    do {
        sub_080003F0();
        temp_r5_2 = spAC;
        temp_r0_21 = (temp_r5_2 << 0x10) + 0xFFFF0000;
        spAC = temp_r0_21 >> 0x10;
    } while (((s32) temp_r0_21 >> 0x10) != -1);
    sub_08067C18();
loop_168:
    if (sub_08067C08() == 0) {
        sub_080003F0();
        goto loop_168;
    }
    sub_08067BF8();
    sub_08056E24();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098108);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08098F2C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809919C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099468);
void sub_08099720(void) {
    if (M2C_FIELD(gUnk_030002D0, s16 *, 0x5C) != 0) {
        sub_08099788();
        sub_080656EC();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002D4);
}
void sub_0809975C(void)
{
    u32 i;
    gUnk_030002D8 = sub_08001494(0xA00);
    for (i = 0; i < 64; i++)
        M2C_FIELD((u8 *)gUnk_030002D8 + i * 0x28, s32 *, 8) = 0;
}
void sub_08099788(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_030002D8;
  for (i = 0, entry = new_var2; i < 64; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002D8);
  gUnk_030002D8 = i;
}
struct TaskP97C0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct TaskP97C0 *gTP030002D8 asm("gUnk_030002D8");
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08099468();
extern void sub_0809919C();
void sub_080997C0(u16 a, u16 b)
{
    struct TaskP97C0 *t = gTP030002D8;
    u32 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskP97C0 *)((u8 *)t + 0x28);
check:
    if (i > 0x3F)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    if ((t->f20 = sub_08001494(0x400)) == 0)
        return;
    t->f10 = t->f20 + 0x3FC;
    if (sub_0800CE30() == 1)
        t->fC = (u32)sub_08099468;
    else
        t->fC = (u32)sub_0809919C;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274_3((u32)t, a, b);
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_08099838);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809A5E0);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809A834);
void sub_0809ADE8(void) {
    if (M2C_FIELD(gUnk_030002DC, s16 *, 0x5C) != 0) {
        sub_08097C6C();
        sub_0809AE50();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnk_030002E0);
}
void sub_0809AE24(void)
{
    u32 i;
    gUnk_030002E4 = sub_08001494(0xC8);
    for (i = 0; i < 5; i++)
        M2C_FIELD((u8 *)gUnk_030002E4 + i * 0x28, s32 *, 8) = 0;
}
void sub_0809AE50(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_030002E4;
  for (i = 0, entry = new_var2; i < 5; i++)
  {
    new_var = entry;
    if (sub_08000470(new_var) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002E4);
  gUnk_030002E4 = i;
}
struct TaskP { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");
extern void sub_08000274_1(u32) asm("sub_08000274");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
extern u8 *gP030002E4 asm("gUnk_030002E4");
extern void sub_0809A834();
void sub_0809AE88(u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP030002E4;
  u32 z;
  u32 i;
  i = 0;
  goto check;
  next:
  i++;

  t = (struct TaskP *) (((u8 *) t) + 0x28);
  check:
  if (i > 4)
  {
    return;
  }

  if ((sub_08000470((u32) t) != 0) || ((z = t->f8) != 0))
  {
    goto next;
  }
  if ((t->f20 = sub_08001494(0x400)) == 0)
  {
    return;
  }
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_0809A834; t->f24 = z; t->f8 = 0x46; sub_08000274_2(t, arg); } while (0);
}
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809AEE8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C1B4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C4E8);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809C8F4);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809CC2C);
INCLUDE_ASM("asm/nonmatchings/code_08097E28", sub_0809D374);
void sub_0809D558(void) {
    gUnk_030002E8 = 1;
}
s8 sub_0809D564(void) {
    return (s8) (u8) gUnk_030002E8;
}
void sub_0809D574(void)
{
    sub_0805867C(0xE6);
    if (*(s16 *)((u8 *)gUnk_030002EC + 0x5C) != 0) {
        sub_0809D5E4();
        sub_0809D6D8();
        sub_0809D810();
    }
    sub_08068384();
    gUnk_030056FC = 0;
    sub_08016ECC(gUnkVu16_030002F0);
}
void sub_0809D5B8(void)
{
  int i;
  gUnk_030002F4 = sub_08001494(0x140);
  for (i = 0; i < 8; i++)
  {
    *((s32 *) (((s8 *) (((u8 *) gUnk_030002F4) + (i * 0x28))) + 8)) = 0;
  }

}
void sub_0809D5E4(void)
{
  u32 i;
  u8 *new_var;
  u8 *entry;
  new_var = (entry = (u8 *) gUnk_030002F4);
  sub_0805867C(0xE6);
  for (i = 0, new_var; i < 8; i++)
  {
    if (sub_08000470(entry) != 0)
    {
      sub_080003A8(entry);
    }
    entry += 0x28;
  }

  i = 0;
  sub_08001538(gUnk_030002F4);
  gUnk_030002F4 = i;
}
extern struct TaskP *gTP030002F4 asm("gUnk_030002F4");
extern s8 gS030002E8 asm("gUnk_030002E8");
extern void sub_0809C4E8();
extern void sub_0809C1B4();
void sub_0809D620(u16 a)
{
    struct TaskP *t = gTP030002F4;
    u8 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskP *)((u8 *)t + 0x28);
check:
    if (i > 7)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    if ((t->f20 = sub_08001494(0x400)) == 0)
        return;
    t->f10 = t->f20 + 0x3FC;
    if (sub_0800CE30() == 1 && gS030002E8 == 0)
        t->fC = (u32)sub_0809C4E8;
    else
        t->fC = (u32)sub_0809C1B4;
    t->f24 = 0;
    t->f8 = 0x46;
    sub_08000274_2(t, a);
}
void sub_0809D6A8(void)
{
  u8 var_r2;
  void *new_var;
  gUnk_030002F8 = (new_var = sub_08001494(0x78U));
  var_r2 = 0;
  do
  {
    *((s32 *) (((s8 *) ((var_r2 * 0x28) + gUnk_030002F8)) + 8)) = 0;
    var_r2 += 1;
  }
  while (((u32) var_r2) <= 2U);
}
void sub_0809D6D8(void)
{
  s32 var_r4;
  u32 var_r5;
  s32 new_var;
  int new_var2;
  new_var = gUnk_030002F8;
  var_r5 = 0;
  var_r4 = new_var;
  do
  {
    if (sub_08000470(var_r4) != 0)
    {
 do { sub_080003A8(var_r4); } while (0);
    }
    var_r4 += 0x28;
    var_r5 += 1;
  }
  while (var_r5 <= 2U);
  new_var2 = 0;
  sub_08001538(gUnk_030002F8);
  gUnk_030002F8 = new_var2;
}
extern u8 *gP030002F8 asm("gUnk_030002F8");
void sub_0809D710(u32 a, u16 arg)
{
  struct TaskP *t = (struct TaskP *) gP030002F8;
  u32 z;
  u8 i;
  i = 0;
  goto check;
  next:
  i++;

  t = (struct TaskP *) (((u8 *) t) + 0x28);
  check:
  if (i > 2)
  {
    return;
  }

  if ((sub_08000470((u32) t) != 0) || ((z = t->f8) != 0))
  {
    goto next;
  }
  if ((t->f20 = sub_08001494(0x400)) == 0)
  {
    return;
  }
 do { t->f10 = t->f20 + 0x3FC; t->fC = (u32) sub_0809C8F4; t->f24 = z; t->f8 = 0x46; sub_08000274_3((u32)t, a, arg); } while (0);
}
extern struct TaskP *gTP03000308 asm("gUnk_03000308");
extern void sub_0809D848();
void sub_0809D77C(u8 a)
{
    struct TaskP *t = gTP03000308;
    u8 i;
    i = 0;
    goto check;
next:
    i++;
    t = (struct TaskP *)((u8 *)t + 0x28);
check:
    if (i > 1)
        return;
    if (sub_08000470((u32)t) != 0 || t->f8 != 0)
        goto next;
    t->f8 = a + 0x46;
    t->f20 = sub_08001494(0x400);
    t->f10 = t->f20 + 0x3FC;
    t->fC = (u32)sub_0809CC2C;
    t->f24 = (u32)sub_0809D848;
    sub_08000274_2(t, a);
}
void sub_0809D7E4(void)
{
    u32 i;
    gUnk_03000308 = sub_08001494(0x50);
    for (i = 0; i < 2; i++)
        M2C_FIELD((u8 *)gUnk_03000308 + i * 0x28, s32 *, 8) = 0;
}
void sub_0809D810(void)
{
  u32 i;
  u8 *entry;
  u8 *new_var2;
  u8 *new_var;
  new_var2 = (u8 *) gUnk_03000308;
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
  sub_08001538(gUnk_03000308);
  gUnk_03000308 = i;
}
void sub_0809D848(void)
{
    s32 *obj = (s32 *)sub_0800048C();
    obj[2] -= 0x46;
    gUnk_030056FC &= ~(1 << *(u16 *)gUnk_03000300[obj[2]]);
}
