#include "global.h"

void sub_080003F4(s32);
void sub_080867F8(void);

void sub_0802939C(s32, s32);

INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08028AAC);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08028D98);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_080290E4);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029174);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802926C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802939C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802949C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029788);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802996C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029A7C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029B98);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029CEC);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029E0C);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_08029F54);
void sub_0802A01C(void)
{
  u8 *p = gUnk_030056F4;
  int new_var;
  u32 i = 0;
  do
  {
    if ((gUnk_030056FC & (new_var = 1 << i)) && (8 & (*((u16 *) (p + 0x7A)))))
    {
      *((u16 *) (p + 0x64)) = 0x1E;
      *((u16 *) (p + 0x66)) = 1;
      *((u16 *) (p + 0x7A)) &= 0xFFF7;
    }
    i++;
    p += 0x2E0;
  }
  while (i <= 4);
}
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A080);
struct TaskP2A1 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern u8 *gGS2A1 asm("gUnk_03005CF4");
extern void sub_08000274_2(void *, u32) asm("sub_08000274");
void sub_0802A104_v(struct TaskP2A1 *src, u32 idx) asm("sub_0802A104");
void sub_0802A104_v(struct TaskP2A1 *src, u32 idx)
{
    u32 arg = src->f10;
    u32 cb = src->fC;
    u8 *e = gGS2A1 + (idx * 36 + 0x4B4);
    struct TaskP2A1 *t;
    u32 i;
    u32 mem;
    while (*(u16 *)(e + 0x14) != 0xC) {
        if ((*(u16 *)(gGS2A1 + 4) >> 4) & 1)
            return;
        sub_080003F0();
    }
    t = (struct TaskP2A1 *)(gGS2A1 + 0xE34);
    i = 0;
    goto check;
next:
    i++;
    t++;
check:
    if (i > 0x1D)
        return;
    if (sub_08000470((u32)t) != 0)
        goto next;
    while ((t->f20 = mem = sub_08001494(0x400)) == 0)
        sub_080003F0();
    t->f8 = 0x3C;
    t->fC = cb;
    t->f10 = mem + 0x3FC;
    t->f24 = 0;
    sub_08000274_2(t, arg);
}
void sub_080867F8(void);

void sub_0802A19C(void) {
    s16 *p4;
    s16 *p5;
    s32 a;
    s32 b;
    sub_0800CE40();
    sub_0801ABE8(10);
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    sub_0800BB54();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CCA8();
    p4 = (s16 *)&gUnk_03003170;
    p5 = p4 + 0x3E;
    a = (s16)p5[0];
    b = (s16)p4[0x3F];
    sub_080867F8();
    sub_080003F4(0x11201100);
    p5[0] = a;
    p4[0x3F] = b;
    sub_0800CCB8();
    sub_08000420(0x514C8);
    sub_0800CE54();
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
}

INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A228);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A590);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A644);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802A7DC);
s32 sub_0802A9B0(void) {
    register u32 var_r5 asm("r5") = 0x533;
    register u8 **seqAddr asm("r6");
    register u8 **globalAddr asm("r0");
    register u8 *seq asm("r1");
    s32 var_r7;
    register volatile u16 *attrs asm("r4");
    register s32 var_r3 asm("r3");
    register u16 temp_r1 asm("r1");
    register u16 temp_r2 asm("r2");
    do {
        u8 *temp_r0 = (u8 *)sub_08007290(0x140000 | var_r5);
        attrs = (volatile u16 *)(temp_r0 + 2);
        var_r7 = 1;
        var_r3 = 0;
        temp_r2 = *(u16 *)(temp_r0 + 2);
        if (temp_r2 != 0xFF) {
            globalAddr = (u8 **)&gUnk_030034E0;
            seq = *globalAddr;
            seqAddr = globalAddr;
            if (temp_r2 != seq[0]) goto block_9;
            do {
                var_r3++;
                temp_r1 = attrs[var_r3];
                if (temp_r1 == 0xFF) break;
                if (temp_r1 != (*seqAddr)[var_r3]) {
                    var_r7 = 0;
                    break;
                }
            } while (1);
        }
        if (var_r7 != 0 && ((u8 *)gUnk_030034E0)[var_r3] == 0xFD) return var_r5 - 0x533;
block_9:
        asm volatile (".ltorg");
        var_r5++;
    } while (var_r5 <= 0x53F);
    return -1;
}
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802AA28);
#ifdef NONMATCHING
struct Args028B8A4 { s32 x,y; u16 a,b; void (*callback)(void); u32 zero,pad; };
extern void sub_0801AA34(s32);                                /* extern */
extern void sub_0801AA8C(s32);                                /* extern */
extern s32 sub_0801AB24();                                 /* extern */
extern void sub_0801AB50(s32);                                /* extern */
extern void sub_0801AB90(s32);                                /* extern */
extern void sub_080290E4(s32, s32);                           /* extern */
extern void sub_0802939C(s32, s32);                           /* extern */
extern void sub_0802A228(s32, s32);                           /* extern */
extern void sub_080576A8();                                   /* extern */
extern void sub_0802C144(void);
extern void sub_08031FF8(void);
extern void sub_08032598(void);
extern void sub_0803294C(void);
extern void sub_08032DE4(void);
extern void sub_08033198(void);
extern void sub_08033B3C(void);
extern void sub_0803F18C(void);
extern void sub_0804534C(void);
extern void sub_08045660(void);
extern void sub_08056538(void);
extern void sub_08059168(void);
extern void sub_0805990C(void);

void sub_0802B8A4(void) {
    struct Args028B8A4 args;
    void (*argsCb0)(void), (*argsCb1)(void);
    s32 *var_r0;
    s32 *var_r0_2;
    s32 *var_r0_3;
    s32 *var_r0_4;
    s32 *var_r0_5;
    s32 *var_r0_7;
    s32 *var_r1;
    s32 *var_r1_10;
    s32 *var_r1_11;
    s32 *var_r1_12;
    s32 *var_r1_16;
    s32 *var_r1_2;
    s32 *var_r1_3;
    s32 *var_r1_4;
    s32 *var_r1_5;
    s32 *var_r1_6;
    s32 *var_r1_7;
    s32 *var_r1_8;
    s32 *var_r1_9;
    s32 *var_r2_11;
    s32 *var_r2_14;
    s32 *var_r2_17;
    s32 *var_r2_2;
    s32 *var_r2_5;
    s32 *var_r2_8;
    s32 callback5,callback4,callback3,callback2,callback1,callback0,taskCallback3,taskCallback2,taskCallback1,taskCallback0;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r2;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    register s32 var_r0_8 asm("r0");
    s32 var_r1_15;
    s32 var_r2_19;
    s32 var_r4_4;
    s32 var_r4_5;
    s32 var_r5_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u32 temp_r0_4;
    u32 temp_r0_9;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 var_r2;
    u32 var_r2_10;
    u32 var_r2_12;
    u32 var_r2_13;
    u32 var_r2_15;
    u32 var_r2_16;
    u32 var_r2_18;
    u32 var_r2_20;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_6;
    u32 var_r2_7;
    u32 var_r2_9;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r4;
    u32 var_r4_10;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_6;
    u32 var_r4_9;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r5_5;
    u32 var_r5_7;
    u32 var_r6;
    u8 *var_r0_10;
    u8 *var_r0_6;
    u8 *var_r0_9;
    void *temp_r0;
    void *temp_r0_10;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_5;
    void *temp_r0_8;
    void *temp_r2_2;
    void *var_r1_13;
    void *var_r1_14;

    temp_r6 = sub_080289C0(0x14, 0xC8, 0xB2);
    var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == temp_r6) goto latefound028b1;
        var_r2++; var_r1 += 0x1C;
    } while (var_r2 <= 14);
    sub_080003F0(); var_r2_2 = NULL;
found028b1:
    if (var_r2_2 != NULL) {
        *(u16 *)((u8 *)var_r2_2 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_2 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_2 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_2 + 0x3C) | 0x10);
    }
    callback0 = (s32)sub_08031FF8;
    asm("" : "+r"(callback0));
    var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_3 = 0;
    do {
        if (*var_r1_2 == temp_r6) goto latefound028b8;
        var_r2_3++; var_r1_2 += 0x1C;
    } while (var_r2_3 <= 14);
    sub_080003F0(); var_r0 = NULL;
found028b8:
    if (var_r0 != NULL) {
        *(u32 *)((u8 *)var_r0 + 0x44) = callback0;
    }
    taskCallback0=(s32)sub_08032598; asm("" : "+r"(taskCallback0));
    var_r4 = gUnk_03005CF4+0xE34; var_r5=0; goto checkTask16;
nextTask16:
    var_r5++; var_r4+=0x28;
checkTask16:
    if(var_r5>29) goto doneTask16;
    if(sub_08000470(var_r4)!=0) goto nextTask16;
    while ((*(u32 *)((u8 *)var_r4 + 0x20) = temp_r0 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4 + 0x8)=60; *(u32 *)((u8 *)var_r4 + 0xC)=taskCallback0; *(u32 *)((u8 *)var_r4 + 0x10)=(u32)temp_r0+0x3FC; *(u32 *)((u8 *)var_r4 + 0x24)=0;
    sub_08000274(var_r4,temp_r6);
doneTask16:;

    temp_r4 = sub_080289C0(0x15, 0x2E, 0x187);
    var_r1_3 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_4 = 0;
    do {
        if (*var_r1_3 == temp_r4) goto latefound028b23;
        var_r2_4++; var_r1_3 += 0x1C;
    } while (var_r2_4 <= 14);
    sub_080003F0(); var_r2_5 = NULL;
found028b23:
    if (var_r2_5 != NULL) {
        *(u16 *)((u8 *)var_r2_5 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_5 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_5 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_5 + 0x3C) | 0x10);
    }
    callback1 = (s32)sub_0803294C;
    asm("" : "+r"(callback1));
    var_r1_4 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_6 = 0;
    do {
        if (*var_r1_4 == temp_r4) goto latefound028b30;
        var_r2_6++; var_r1_4 += 0x1C;
    } while (var_r2_6 <= 14);
    sub_080003F0(); var_r0_2 = NULL;
found028b30:
    if (var_r0_2 != NULL) {
        *(u32 *)((u8 *)var_r0_2 + 0x44) = callback1;
    }
    temp_r4_2 = sub_080289C0(0x20039, 0x128, 0xA8);
    var_r1_5 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_7 = 0;
    do {
        if (*var_r1_5 == temp_r4_2) goto latefound028b37;
        var_r2_7++; var_r1_5 += 0x1C;
    } while (var_r2_7 <= 14);
    sub_080003F0(); var_r2_8 = NULL;
found028b37:
    if (var_r2_8 != NULL) {
        *(u16 *)((u8 *)var_r2_8 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_8 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_8 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_8 + 0x3C) | 0x10);
    }
    callback2 = (s32)sub_08033B3C;
    asm("" : "+r"(callback2));
    var_r1_6 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_9 = 0;
    do {
        if (*var_r1_6 == temp_r4_2) goto latefound028b44;
        var_r2_9++; var_r1_6 += 0x1C;
    } while (var_r2_9 <= 14);
    sub_080003F0(); var_r0_3 = NULL;
found028b44:
    if (var_r0_3 != NULL) {
        *(u32 *)((u8 *)var_r0_3 + 0x44) = callback2;
    }
    if ((sub_0800CF48() == 0) && !(((u16) *(u16 *)((u8 *)gUnk_03005CF4 + 0x4) >> 8) & 1)) {
        temp_r4_3 = sub_080289C0(0x60017, 0x114, 0x116);
    var_r1_7 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_10 = 0;
    do {
        if (*var_r1_7 == temp_r4_3) goto latefound028b53;
        var_r2_10++; var_r1_7 += 0x1C;
    } while (var_r2_10 <= 14);
    sub_080003F0(); var_r2_11 = NULL;
found028b53:
        if (var_r2_11 != NULL) {
            *(u16 *)((u8 *)var_r2_11 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_11 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_11 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_11 + 0x3C) | 0x10);
        }
    callback3 = (s32)sub_08059168;
    asm("" : "+r"(callback3));
    var_r1_8 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_12 = 0;
    do {
        if (*var_r1_8 == temp_r4_3) goto latefound028b59;
        var_r2_12++; var_r1_8 += 0x1C;
    } while (var_r2_12 <= 14);
    sub_080003F0(); var_r0_4 = NULL;
found028b59:
        if (var_r0_4 != NULL) {
            *(u32 *)((u8 *)var_r0_4 + 0x44) = callback3;
        }
    }
    temp_r4_4 = sub_080289C0(0x1C, 0xAE, 0xF9);
    var_r1_9 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_13 = 0;
    do {
        if (*var_r1_9 == temp_r4_4) goto latefound028b65;
        var_r2_13++; var_r1_9 += 0x1C;
    } while (var_r2_13 <= 14);
    sub_080003F0(); var_r2_14 = NULL;
found028b65:
    if (var_r2_14 != NULL) {
        *(u16 *)((u8 *)var_r2_14 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_14 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_14 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_14 + 0x3C) | 0x10);
    }
    callback4 = (s32)sub_08032DE4;
    asm("" : "+r"(callback4));
    var_r1_10 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_15 = 0;
    do {
        if (*var_r1_10 == temp_r4_4) goto latefound028b71;
        var_r2_15++; var_r1_10 += 0x1C;
    } while (var_r2_15 <= 14);
    sub_080003F0(); var_r0_5 = NULL;
found028b71:
    if (var_r0_5 != NULL) {
        *(u32 *)((u8 *)var_r0_5 + 0x44) = callback4;
    }
    if (sub_0800CE30() != 0) {
        var_r0_6 = (u8 *)(gUnk_03005CF4 + 0x1C3);
        goto selectedFlag028b;
latefound028b71: var_r0_5 = var_r1_10; goto found028b71;
latefound028b65: var_r2_14 = var_r1_9; goto found028b65;
latefound028b59: var_r0_4 = var_r1_8; goto found028b59;
latefound028b53: var_r2_11 = var_r1_7; goto found028b53;
latefound028b44: var_r0_3 = var_r1_6; goto found028b44;
latefound028b37: var_r2_8 = var_r1_5; goto found028b37;
latefound028b30: var_r0_2 = var_r1_4; goto found028b30;
latefound028b23: var_r2_5 = var_r1_3; goto found028b23;
latefound028b8: var_r0 = var_r1_2; goto found028b8;
latefound028b1: var_r2_2 = var_r1; goto found028b1;
latefound028b93: var_r2_17 = var_r1_11; goto found028b93;
latefound028b99: var_r0_7 = var_r1_12; goto found028b99;

    } else {
        var_r0_6 = (u8 *)(gUnk_03005CF4 + 0x1B7);
    }
selectedFlag028b:
    { register s32 value asm("r0"); register s32 bit asm("r2"); value=*var_r0_6; asm("" : "+r"(value)); bit=value>>2; bit &= 1; asm("" : "+r"(bit)); if (bit) {
        temp_r4_5 = sub_080289C0(0x28, 0xBF, 0xF9);
    var_r1_11 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_16 = 0;
    do {
        if (*var_r1_11 == temp_r4_5) goto latefound028b93;
        var_r2_16++; var_r1_11 += 0x1C;
    } while (var_r2_16 <= 14);
    sub_080003F0(); var_r2_17 = NULL;
found028b93:
        if (var_r2_17 != NULL) {
            *(u16 *)((u8 *)var_r2_17 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_17 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_17 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_17 + 0x3C) | 0x10);
        }
    callback5 = (s32)sub_08033198;
    asm("" : "+r"(callback5));
    var_r1_12 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_18 = 0;
    do {
        if (*var_r1_12 == temp_r4_5) goto latefound028b99;
        var_r2_18++; var_r1_12 += 0x1C;
    } while (var_r2_18 <= 14);
    sub_080003F0(); var_r0_7 = NULL;
found028b99:
        if (var_r0_7 != NULL) {
            *(u32 *)((u8 *)var_r0_7 + 0x44) = callback5;
        }
    } else {
    taskCallback1=(s32)sub_08045660; asm("" : "+r"(taskCallback1));
    var_r4_2 = gUnk_03005CF4+0xE34; var_r5_2=0; goto checkTask106;
nextTask106:
    var_r5_2++; var_r4_2+=0x28;
checkTask106:
    if(var_r5_2>29) goto doneTask106;
    if(sub_08000470(var_r4_2)!=0) goto nextTask106;
    while ((*(u32 *)((u8 *)var_r4_2 + 0x20) = temp_r0_2 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_2 + 0x8)=60; *(u32 *)((u8 *)var_r4_2 + 0xC)=taskCallback1; *(u32 *)((u8 *)var_r4_2 + 0x10)=(u32)temp_r0_2+0x3FC; *(u32 *)((u8 *)var_r4_2 + 0x24)=0;
    sub_08000274(var_r4_2,0);
doneTask106:;

    }
    }
    taskCallback2=(s32)sub_08056538; asm("" : "+r"(taskCallback2));
    var_r4_3 = gUnk_03005CF4+0xE34; var_r5_3=0; goto checkTask114;
nextTask114:
    var_r5_3++; var_r4_3+=0x28;
checkTask114:
    if(var_r5_3>29) goto doneTask114;
    if(sub_08000470(var_r4_3)!=0) goto nextTask114;
    while ((*(u32 *)((u8 *)var_r4_3 + 0x20) = temp_r0_3 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_3 + 0x8)=60; *(u32 *)((u8 *)var_r4_3 + 0xC)=taskCallback2; *(u32 *)((u8 *)var_r4_3 + 0x10)=(u32)temp_r0_3+0x3FC; *(u32 *)((u8 *)var_r4_3 + 0x24)=0;
    sub_08000274(var_r4_3,0);
doneTask114:;

    if (sub_0800CE30() != 0) {
        var_r0_8 = *(u32 *)((u8 *)gUnk_03005CF4 + 0x80);
    } else {
        var_r0_8 = *(u32 *)((u8 *)gUnk_03005CF4 + 0x78);
    }
    if (!(var_r0_8 & 0x10)) {

    } else {
        if (sub_0800CE30() != 0) {
            var_r0_9 = (u8 *)(gUnk_03005CF4 + 0x1C3);
        } else {
            var_r0_9 = (u8 *)(gUnk_03005CF4 + 0x1B7);
        }
        temp_r6_2 = ((s32) *var_r0_9 >> 1) & 1;
        temp_r2 = sub_080020F4();
        var_r4_4 = 0;
        var_r3 = 0;
        var_r1_13 = (u8 *)gUnk_030034E0 + 0x150;
        do {
            if ((*(u16 *)((u8 *)var_r1_13 + 0x0) == 1) && (*(u16 *)((u8 *)var_r1_13 + 0x2) == 0x29)) {
                var_r4_4 += 1;
            }
            var_r1_13 += 0x10;
            var_r3 += 1;
        } while (var_r3 <= 0x18U);
        var_r4_5 = 0;
        var_r3_2 = 0;
        var_r1_14 = (u8 *)gUnk_030034E0 + 0x2E0;
        do {
            if ((*(u16 *)((u8 *)var_r1_14 + 0x0) == 1) && (*(u16 *)((u8 *)var_r1_14 + 0x2) == 0x29)) {
                var_r4_5 += 1;
            }
            var_r1_14 += 0x10;
            var_r3_2 += 1;
        } while (var_r3_2 <= 0x4AU);
        if ((temp_r6_2 == 0) && (temp_r2 == 0) && (var_r4_4 == 0) && (var_r4_5 == 0)) {
    argsCb0=sub_0804534C; asm("" : "+r"(argsCb0));
    var_r4_6=gUnk_03005CF4+0xE34; var_r5_4=0; goto checkArgs0;
nextArgs0:
    var_r5_4++;var_r4_6+=0x28;
checkArgs0:
    if(var_r5_4>29) goto doneArgs0;
    temp_r0_4=sub_08000470(var_r4_6);if(temp_r0_4!=0) goto nextArgs0;
    args.x=0x9700; args.y=0x16D00;args.a=16;args.b=8;args.callback=argsCb0;
    asm("" : "+r"(temp_r0_4));
    { register u32 z asm("r0")=0; asm("" : "+r"(z) : "m"(args.callback)); args.zero=z; }
    *(u32 *)((u8 *)var_r4_6 + 0x8)=60; temp_r0_5=sub_08001494(0x400); *(u32 *)((u8 *)var_r4_6 + 0x20)=temp_r0_5; *(u32 *)((u8 *)var_r4_6 + 0xC)=(u32)sub_0805A874; *(u32 *)((u8 *)var_r4_6 + 0x10)=(u32)temp_r0_5+0x3FC; *(u32 *)((u8 *)var_r4_6 + 0x24)=temp_r0_4;
    sub_08000274(var_r4_6,(u32)&args,1);sub_080003F0();sub_080003F0();
doneArgs0:;

            sub_08068070((u32) &sub_0805990C, 0x14U);
        }
    }
    if (sub_0800CE30() != 0) {
        var_r0_10 = (u8 *)(gUnk_03005CF4 + 0x1C3);
    } else {
        var_r0_10 = (u8 *)(gUnk_03005CF4 + 0x1B7);
    }
    if (!(*var_r0_10 & 1)) {
        if (sub_0800CC98() == 0) {
            temp_r0_6 = sub_0801AB24();
            switch (temp_r0_6) {                    /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 2 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 2 */
                sub_0801AB90(6);
                break;
            }
loop_216:
            if (sub_0801AAE0() == 0) {
                sub_080003F0();
                goto loop_216;
            }
        }
    } else {
        temp_r2_2 = (void *)(0x14C * sub_080020F4() + (u32)gUnk_03003CE0);
        *(u32 *)((u8 *)temp_r2_2 + 0x30) = (s32) (*(u32 *)((u8 *)temp_r2_2 + 0x30) | 1);
        sub_0800D0F4();
        temp_r7 = sub_080289C0(0x31, 0xF0, 0x190);
        temp_r0_7 = sub_080020F4();
        switch (temp_r0_7) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r2_19 = 0x1B8;
            var_r1_15 = 0xF0;
block_163:
            sub_08028AAC(0, var_r1_15, var_r2_19, 0);
            break;
        case 1:                                     /* switch 1 */
            var_r1_15 = 0x104;
            var_r2_19 = 0x1C2;
            goto block_163;
        case 2:                                     /* switch 1 */
            var_r2_19 = 0x1C2;
            var_r1_15 = 0xDC;
            goto block_163;
        case 3:                                     /* switch 1 */
            sub_08028AAC(0, 0xF0, 0x1CC, 0);
            break;
        }
        sub_080290E4(0, 4);
        var_r4_7 = 0x1E;
loop_167:
        sub_080003F0();
        if (sub_080021A8() == 0) {
            var_r4_7 -= 1;
            if (var_r4_7 != 0) {
                goto loop_167;
            }
        }
        sub_0801AA34(0x1E);
loop_170:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_170;
        }
loop_173:
        if (sub_0805F184() != 0) {
            sub_080003F0();
            goto loop_173;
        }
loop_176:
        if (sub_0805EF90() != 0) {
            sub_080003F0();
            goto loop_176;
        }
        temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140482U);
loop_179:
        if (sub_0805EEFC((void *) temp_r4_6) == 0) {
            sub_080003F0();
            goto loop_179;
        }
        var_r4_8 = 0xA;
loop_182:
        sub_080003F0();
        if (sub_080021A8() == 0) {
            var_r4_8 -= 1;
            if (var_r4_8 != 0) {
                goto loop_182;
            }
        }
    taskCallback3=(s32)sub_0803F18C; asm("" : "+r"(taskCallback3));
    var_r4_9 = gUnk_03005CF4+0xE34; var_r5_5=0; goto checkTask185;
nextTask185:
    var_r5_5++; var_r4_9+=0x28;
checkTask185:
    if(var_r5_5>29) goto doneTask185;
    if(sub_08000470(var_r4_9)!=0) goto nextTask185;
    while ((*(u32 *)((u8 *)var_r4_9 + 0x20) = temp_r0_8 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_9 + 0x8)=60; *(u32 *)((u8 *)var_r4_9 + 0xC)=taskCallback3; *(u32 *)((u8 *)var_r4_9 + 0x10)=(u32)temp_r0_8+0x3FC; *(u32 *)((u8 *)var_r4_9 + 0x24)=0;
    sub_08000274(var_r4_9,temp_r0_7);
doneTask185:;

        sub_0802939C(temp_r7, 8);
        sub_08028D98(temp_r7, 0, -0x12C, 0x12C);
        var_r1_16 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2_20 = 0;
loop_192:
        if (*var_r1_16 != temp_r7) {
            var_r2_20 += 1;
            var_r1_16 += 0x1C;
            if (var_r2_20 > 0xEU) {
                sub_080003F0();
                var_r1_16 = NULL;
            } else {
                goto loop_192;
            }
        }
        if (var_r1_16 != NULL) {
            *(u16 *)((u8 *)var_r1_16 + 0x36) = 4;
        }
        sub_0801AA8C(0x1E);
loop_199:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_199;
        }
        var_r5_6 = gUnk_03005CF4 + 0x7A4;
        var_r6 = 0;
        do {
            temp_r4_7 = var_r5_6 + 0x48;
            if (sub_08000470(temp_r4_7) != 0) {
                sub_080003A8((s32) temp_r4_7);
            }
            var_r6 += 1;
            var_r5_6 += 0x70;
        } while (var_r6 <= 0xEU);
        sub_0802A228(0, 2);
    }
    if ((sub_0800CF48() != 0) || (((u16) *(u16 *)((u8 *)gUnk_03005CF4 + 0x4) >> 8) & 1)) {
    argsCb1=sub_0802C144; asm("" : "+r"(argsCb1));
    var_r4_10=gUnk_03005CF4+0xE34; var_r5_7=0; goto checkArgs1;
nextArgs1:
    var_r5_7++;var_r4_10+=0x28;
checkArgs1:
    if(var_r5_7>29) goto doneArgs1;
    temp_r0_9=sub_08000470(var_r4_10);if(temp_r0_9!=0) goto nextArgs1;
    args.x=0xF000; args.y=0x1C000;args.a=64;args.b=8;args.callback=argsCb1;
    asm("" : "+r"(temp_r0_9));
    { register u32 z asm("r0")=0; asm("" : "+r"(z) : "m"(args.callback)); args.zero=z; }
    *(u32 *)((u8 *)var_r4_10 + 0x8)=60; temp_r0_10=sub_08001494(0x400); *(u32 *)((u8 *)var_r4_10 + 0x20)=temp_r0_10; *(u32 *)((u8 *)var_r4_10 + 0xC)=(u32)sub_0805A874; *(u32 *)((u8 *)var_r4_10 + 0x10)=(u32)temp_r0_10+0x3FC; *(u32 *)((u8 *)var_r4_10 + 0x24)=temp_r0_9;
    sub_08000274(var_r4_10,(u32)&args,1);sub_080003F0();sub_080003F0();
doneArgs1:;

    }
}




#else
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802B8A4);
#endif
struct Task028C144 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
struct Args028C144 { s32 x,y; u16 a,b; void (*callback)(void); u32 zero, pad; };
extern u8 *gs028C144 asm("gUnk_03005CF4");
void sub_0802C144(void) {
    struct Args028C144 args;
    u32 result;
    struct Task028C144 *task;
    u32 i, free, index;
    void (*callback)(void);
    register struct Player *player asm("r2");
    register u32 offset asm("r2");
    offset = 0x14C * sub_080020F4();
    asm("" : "+r"(offset));
    player = (struct Player *)(offset + (u32)gUnk_03003CE0);
    asm("" : "+r"(player));
    player->flags |= 1;
    sub_0800D0F4();
    while (sub_0805F184() != 0) sub_080003F0();
    result = sub_0805DF38(1,15,2,0,-2,0x1404E3);
    while (sub_0805EEFC((void *)result) == 0) sub_080003F0();
    if (sub_0805EF14((u8 *)result) != 0) {
        sub_0802939C(0,8);
        sub_080290E4(0,0);
        sub_08028D98(0,0,32,20);
    } else {
        sub_0802939C(0,8);
        sub_080290E4(0,4);
        sub_08028D98(0,0,-20,20);
        callback = sub_0802C144;
        asm("" : "+r"(callback));
        task = (struct Task028C144 *)(gs028C144 + 0xE34);
        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) goto done;
        free = sub_08000470((u32)task);
        if (free != 0) goto next;
        args.x = 0xF000;
        args.y = 0x1C000;
        args.a = 64;
        args.b = 8;
        args.callback = callback;
        asm("" : "+r"(free));
        { register u32 zero asm("r0") = 0;
          asm("" : "+r"(zero) : "m"(args.callback));
          args.zero = zero; }
        task->f8 = 60;
        task->f20 = sub_08001494(0x400);
        task->fC = (u32)sub_0805A874;
        task->f10 = task->f20 + 0x3FC;
        task->f24 = free;
        sub_08000274(task, &args, 1);
        sub_080003F0();
        sub_080003F0();
    }
done:
    offset = 0x14C * sub_080020F4();
    asm("" : "+r"(offset));
    player = (struct Player *)(offset + (u32)gUnk_03003CE0);
    asm("" : "+r"(player));
    player->flags &= ~1;
    sub_0800D108();
    gUnk_03003CE0[sub_080020F4()].state = 0;
}








extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_0802939C(s32,s32);
extern void sub_080576A8(void);
extern void sub_0803188C(void);
extern void sub_080319F0(void);
extern void sub_08031B54(void);
extern void sub_08031CB8(void);
extern void sub_08031D88(void);
extern void sub_08031E58(void);
void sub_0802C2A0(void) {
 s32 handle, cb, mode; register s32 bits asm("r1"); register s32 value asm("r0"); s32 *p, *res, *res2; u32 i; u8 *flag;
 handle=sub_080289C0(0x20039,0x1A8,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found1; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found1:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_0803188C;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found2; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found2:
 if(res2) res2[17]=cb;
 handle=sub_080289C0(0x20039,0x1E8,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found3; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found3:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_080319F0;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found4; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found4:
 if(res2) res2[17]=cb;
 if(sub_0800CE30()) flag=(u8 *)(gUnk_03005CF4+0x1C5); else flag=(u8 *)(gUnk_03005CF4+0x1B9);
 value=(s32)*flag; asm("" : "+r"(value)); bits=value>>5; bits &= 1; asm("" : "+r"(bits)); if(!bits) {
 handle=sub_080289C0(7,0xDA,0xCF); sub_0802939C(handle,1);
 sub_0802939C(sub_080289C0(8,0xF6,0xCF),2);
 handle=sub_080289C0(6,0xE9,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found5; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found5:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031B54;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found8; } i++; p+=0x1C; } while(i<=14);
 goto fail8;
 } else {
 handle=sub_080289C0(7,0xE9,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found7; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found7:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 sub_0802939C(handle,1);
 cb=(s32)sub_08031B54;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found8; } i++; p+=0x1C; } while(i<=14);
fail8:
 sub_080003F0(); res2=0;
found8:
 if(res2) res2[17]=cb;
 }
 handle=sub_080289C0(0x20039,0x228,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found9; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found9:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031CB8;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found10; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found10:
 if(res2) res2[17]=cb;
 handle=sub_080289C0(0x20039,0xA8,0xC8);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found11; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found11:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031D88;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found12; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found12:
 if(res2) res2[17]=cb;
 handle=sub_080289C0(0x20039,0x128,0xCF);
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res=p; goto found13; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res=0;
found13:
 if(res) { *(u16 *)((u8 *)res+0x18)=8; *(u16 *)((u8 *)res+0x1A)=0x22; res[15]|=0x10; }
 cb=(s32)sub_08031E58;
 p=(s32 *)(gUnk_03005CF4+0x7A4); i=0;
 do { if (*p==handle) { res2=p; goto found14; } i++; p+=0x1C; } while(i<=14);
 sub_080003F0(); res2=0;
found14:
 if(res2) res2[17]=cb;
 if(sub_0800CC98()==0) { mode=sub_0801AB24(); switch(mode) { case 0:sub_080576A8();break; case 1:sub_0801AB50(6);break;case 2:sub_0801AB90(6);break;} while(sub_0801AAE0()==0) sub_080003F0(); }
}


#ifdef NONMATCHING
extern void sub_0801AA34(s32);                                /* extern */
extern s32 sub_0801AB24();                                 /* extern */
extern void sub_0801AB50(s32);                                /* extern */
extern void sub_0801AB90(s32);                                /* extern */
extern void sub_0802939C(s32, s32);                           /* extern */
extern void sub_080576A8();                                   /* extern */
extern void sub_08033C40(void);
extern void sub_08034488(void);
extern void sub_08034900(void);
extern void sub_08034A5C(void);
extern void sub_08034F64(void);
extern void sub_0803540C(void);
extern void sub_08035914(void);
extern void sub_080359E8(void);
extern void sub_08035A88(void);
extern void sub_08035B18(void);
extern void sub_080368F4(void);
extern void sub_080376CC(void);
extern void sub_08044D1C(void);

void sub_0802C674(void) {
    void (*var_r4_7)(void);
    s32 *var_r0_10;
    s32 *var_r0_11;
    s32 *var_r0_2;
    s32 *var_r0_3;
    s32 *var_r0_5;
    s32 *var_r0_6;
    s32 *var_r0_7;
    s32 *var_r0_8;
    s32 *var_r0_9;
    s32 *var_r1;
    s32 *var_r1_10;
    s32 *var_r1_11;
    s32 *var_r1_12;
    s32 *var_r1_13;
    s32 *var_r1_14;
    s32 *var_r1_15;
    s32 *var_r1_16;
    s32 *var_r1_17;
    s32 *var_r1_18;
    s32 *var_r1_19;
    s32 *var_r1_20;
    s32 *var_r1_2;
    s32 *var_r1_3;
    s32 *var_r1_4;
    s32 *var_r1_5;
    s32 *var_r1_6;
    s32 *var_r1_7;
    s32 *var_r1_8;
    s32 *var_r1_9;
    s32 *var_r2_11;
    s32 *var_r2_15;
    s32 *var_r2_18;
    s32 *var_r2_21;
    s32 *var_r2_24;
    s32 *var_r2_27;
    s32 *var_r2_2;
    s32 *var_r2_31;
    s32 *var_r2_34;
    s32 *var_r2_5;
    s32 *var_r2_8;
    s32 callback, taskCallback;
    s32 temp_r0_8;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 var_r2_13;
    s32 var_r2_29;
    s32 var_r6; /* Assigned by each defined entry-state case (0..3). */
    u32 var_r2;
    u32 var_r2_10;
    u32 var_r2_12;
    u32 var_r2_14;
    u32 var_r2_16;
    u32 var_r2_17;
    u32 var_r2_19;
    u32 var_r2_20;
    u32 var_r2_22;
    u32 var_r2_23;
    u32 var_r2_25;
    u32 var_r2_26;
    u32 var_r2_28;
    u32 var_r2_30;
    u32 var_r2_32;
    u32 var_r2_33;
    u32 var_r2_35;
    u32 var_r2_36;
    u32 var_r2_3;
    u32 var_r2_4;
    u32 var_r2_6;
    u32 var_r2_7;
    u32 var_r2_9;
    u32 var_r4;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_4;
    u32 var_r4_5;
    u32 var_r4_6;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r5_5;
    u32 var_r5_6;
    u8 *var_r0;
    u8 *var_r0_4;
    u8 temp_r0;
    u8 temp_r4;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r0_6;
    void *temp_r0_7;
    void *temp_r2;

    if (sub_0800CE30() != 0) {
        var_r0 = (u8 *)(gUnk_03005CF4 + 0x1BF);
    } else {
        var_r0 = (u8 *)(gUnk_03005CF4 + 0x1B3);
    }
    temp_r0 = *var_r0;
    switch (temp_r0) {                              /* switch 1; irregular */
    case 0:                                         /* switch 1 */
        var_r6 = sub_080289C0(0xC, 0xDA, 0xE9);
    var_r1_4 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_7 = 0;
    do {
        if (*var_r1_4 == var_r6) { var_r2_8 = var_r1_4; goto found028b14; }
        var_r2_7++; var_r1_4 += 0x1C;
    } while (var_r2_7 <= 14);
    sub_080003F0(); var_r2_8 = NULL;
found028b14:
        if (var_r2_8 != NULL) {
            *(u16 *)((u8 *)var_r2_8 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_8 + 0x1A) = 0x1E;
            *(u32 *)((u8 *)var_r2_8 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_8 + 0x3C) | 0x10);
        }
        callback = (s32)sub_08033C40; asm("" : "+r"(callback));
        var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2_9 = 0;
loop_20:
        if (*var_r1_2 == var_r6) {
            goto block_59;
        }
        var_r2_9 += 1;
        var_r1_2 += 0x1C;
        if (var_r2_9 > 0xEU) {
            goto block_69;
        }
        goto loop_20;
        goto block_70;
    case 1:                                         /* switch 1 */
        var_r6 = sub_080289C0(0x9000C, 0x110, 0xF8);
    var_r1_5 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_10 = 0;
    do {
        if (*var_r1_5 == var_r6) { var_r2_11 = var_r1_5; goto found028b27; }
        var_r2_10++; var_r1_5 += 0x1C;
    } while (var_r2_10 <= 14);
    sub_080003F0(); var_r2_11 = NULL;
found028b27:
        if (var_r2_11 != NULL) {
            *(u16 *)((u8 *)var_r2_11 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_11 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_11 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_11 + 0x3C) | 0x10);
        }
    callback = (s32)sub_08033C40;
    asm("" : "+r"(callback));
    var_r1_6 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_12 = 0;
    do {
        if (*var_r1_6 == var_r6) { var_r0_3 = var_r1_6; goto found028b33; }
        var_r2_12++; var_r1_6 += 0x1C;
    } while (var_r2_12 <= 14);
    sub_080003F0(); var_r0_3 = NULL;
found028b33:
        if (var_r0_3 != NULL) {
            *(u32 *)((u8 *)var_r0_3 + 0x44) = callback;
        }
        var_r4 = gUnk_03005CF4 + 0xE34;
        var_r5 = 0;
loop_40:
        if (var_r5 > 0x1DU) {

        } else if (sub_08000470(var_r4) == 0) {
loop_45:
            temp_r0_2 = sub_08001494(0x400U);
            *(u32 *)((u8 *)var_r4 + 0x20) = temp_r0_2;
            if (temp_r0_2 == NULL) {
                sub_080003F0();
                goto loop_45;
            }
            *(u32 *)((u8 *)var_r4 + 0x8) = 0x3C;
            *(u32 *)((u8 *)var_r4 + 0xC) = &sub_08034900;
            *(u32 *)((u8 *)var_r4 + 0x10) = (void *) (temp_r0_2 + 0x3FC);
            *(u32 *)((u8 *)var_r4 + 0x24) = 0;
            sub_08000274(var_r4, 0);
        } else {
            var_r5 += 1;
            var_r4 += 0x28;
            goto loop_40;
        }
        break;
    case 2:                                         /* switch 1 */
        var_r6 = sub_080289C0(0x9000C, 0x110, 0xF8);
    var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == var_r6) { var_r2_2 = var_r1; goto found028b49; }
        var_r2++; var_r1 += 0x1C;
    } while (var_r2 <= 14);
    sub_080003F0(); var_r2_2 = NULL;
found028b49:
        if (var_r2_2 != NULL) {
            *(u16 *)((u8 *)var_r2_2 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_2 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_2 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_2 + 0x3C) | 0x10);
        }
        callback = (s32)sub_08033C40; asm("" : "+r"(callback));
        var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2_3 = 0;
loop_55:
        if (*var_r1_2 != var_r6) {
            var_r2_3 += 1;
            var_r1_2 += 0x1C;
            if (var_r2_3 > 0xEU) {
block_69:
                sub_080003F0();
                var_r0_2 = NULL;
            } else {
                goto loop_55;
            }
        } else {
block_59:
            var_r0_2 = var_r1_2;
        }
block_70:
        if (var_r0_2 != NULL) {
            *(u32 *)((u8 *)var_r0_2 + 0x44) = callback;
        }
        break;
    case 3:                                         /* switch 1 */
        var_r6 = sub_080289C0(0x9000C, 0x110, 0xF8);
    var_r1_3 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_4 = 0;
    do {
        if (*var_r1_3 == var_r6) { var_r2_5 = var_r1_3; goto found028b61; }
        var_r2_4++; var_r1_3 += 0x1C;
    } while (var_r2_4 <= 14);
    sub_080003F0(); var_r2_5 = NULL;
found028b61:
        if (var_r2_5 != NULL) {
            *(u16 *)((u8 *)var_r2_5 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_5 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_5 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_5 + 0x3C) | 0x10);
        }
        callback = (s32)sub_08033C40; asm("" : "+r"(callback));
        var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2_6 = 0;
loop_67:
        if (*var_r1_2 != var_r6) {
            var_r2_6 += 1;
            var_r1_2 += 0x1C;
            if (var_r2_6 > 0xEU) {
                goto block_69;
            }
            goto loop_67;
        }
        goto block_59;
        goto block_70;
    }
    if (sub_0800CE30() != 0) {
        var_r0_4 = (u8 *)(gUnk_03005CF4 + 0x1BF);
    } else {
        var_r0_4 = (u8 *)(gUnk_03005CF4 + 0x1B3);
    }
    temp_r4 = *var_r0_4;
    if (sub_0800CE30() != 0) {
        var_r2_13 = 0x1C5;
    } else {
        var_r2_13 = 0x1B9;
    }
    if (temp_r4 == 0) {
    taskCallback=(s32)sub_08034488; asm("" : "+r"(taskCallback));
    var_r4_2 = gUnk_03005CF4+0xE34; var_r5_2=0; goto checkTask81;
nextTask81:
    var_r5_2++; var_r4_2+=0x28;
checkTask81:
    if(var_r5_2>29) goto doneTask81;
    if(sub_08000470(var_r4_2)!=0) goto nextTask81;
    while ((*(u32 *)((u8 *)var_r4_2 + 0x20) = temp_r0_3 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_2 + 0x8)=60; *(u32 *)((u8 *)var_r4_2 + 0xC)=taskCallback; *(u32 *)((u8 *)var_r4_2 + 0x10)=(u32)temp_r0_3+0x3FC; *(u32 *)((u8 *)var_r4_2 + 0x24)=0;
    sub_08000274(var_r4_2,var_r6);
doneTask81:;

    } else if (((s32) *(u8 *)(gUnk_03005CF4 + var_r2_13) >> 5) & 1) {
        temp_r4_2 = sub_080289C0(6, 0x138, 0xFA);
    var_r1_7 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_14 = 0;
    do {
        if (*var_r1_7 == temp_r4_2) { var_r2_15 = var_r1_7; goto found028b99; }
        var_r2_14++; var_r1_7 += 0x1C;
    } while (var_r2_14 <= 14);
    sub_080003F0(); var_r2_15 = NULL;
found028b99:
        if (var_r2_15 != NULL) {
            *(u16 *)((u8 *)var_r2_15 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_15 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_15 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_15 + 0x3C) | 0x10);
        }
    callback = (s32)sub_080376CC;
    asm("" : "+r"(callback));
    var_r1_8 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_16 = 0;
    do {
        if (*var_r1_8 == temp_r4_2) { var_r0_5 = var_r1_8; goto found028b105; }
        var_r2_16++; var_r1_8 += 0x1C;
    } while (var_r2_16 <= 14);
    sub_080003F0(); var_r0_5 = NULL;
found028b105:
        if (var_r0_5 != NULL) {
            *(u32 *)((u8 *)var_r0_5 + 0x44) = callback;
        }
        sub_0802939C(temp_r4_2, 0xB);
    }
    temp_r6 = sub_080289C0(0x1E, 0x128, 0x131);
    var_r1_9 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_17 = 0;
    do {
        if (*var_r1_9 == temp_r6) { var_r2_18 = var_r1_9; goto found028b112; }
        var_r2_17++; var_r1_9 += 0x1C;
    } while (var_r2_17 <= 14);
    sub_080003F0(); var_r2_18 = NULL;
found028b112:
    if (var_r2_18 != NULL) {
        *(u16 *)((u8 *)var_r2_18 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_18 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_18 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_18 + 0x3C) | 0x10);
    }
    callback = (s32)sub_0803540C;
    asm("" : "+r"(callback));
    var_r1_10 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_19 = 0;
    do {
        if (*var_r1_10 == temp_r6) { var_r0_6 = var_r1_10; goto found028b118; }
        var_r2_19++; var_r1_10 += 0x1C;
    } while (var_r2_19 <= 14);
    sub_080003F0(); var_r0_6 = NULL;
found028b118:
    if (var_r0_6 != NULL) {
        *(u32 *)((u8 *)var_r0_6 + 0x44) = callback;
    }
    taskCallback=(s32)sub_08035914; asm("" : "+r"(taskCallback));
    var_r4_3 = gUnk_03005CF4+0xE34; var_r5_3=0; goto checkTask125;
nextTask125:
    var_r5_3++; var_r4_3+=0x28;
checkTask125:
    if(var_r5_3>29) goto doneTask125;
    if(sub_08000470(var_r4_3)!=0) goto nextTask125;
    while ((*(u32 *)((u8 *)var_r4_3 + 0x20) = temp_r0_4 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_3 + 0x8)=60; *(u32 *)((u8 *)var_r4_3 + 0xC)=taskCallback; *(u32 *)((u8 *)var_r4_3 + 0x10)=(u32)temp_r0_4+0x3FC; *(u32 *)((u8 *)var_r4_3 + 0x24)=0;
    sub_08000274(var_r4_3,temp_r6);
doneTask125:;

    temp_r6_2 = sub_080289C0(0x2D, 0xEF, 0x13C);
    var_r1_11 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_20 = 0;
    do {
        if (*var_r1_11 == temp_r6_2) { var_r2_21 = var_r1_11; goto found028b132; }
        var_r2_20++; var_r1_11 += 0x1C;
    } while (var_r2_20 <= 14);
    sub_080003F0(); var_r2_21 = NULL;
found028b132:
    if (var_r2_21 != NULL) {
        *(u16 *)((u8 *)var_r2_21 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_21 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_21 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_21 + 0x3C) | 0x10);
    }
    callback = (s32)sub_0803540C;
    asm("" : "+r"(callback));
    var_r1_12 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_22 = 0;
    do {
        if (*var_r1_12 == temp_r6_2) { var_r0_7 = var_r1_12; goto found028b139; }
        var_r2_22++; var_r1_12 += 0x1C;
    } while (var_r2_22 <= 14);
    sub_080003F0(); var_r0_7 = NULL;
found028b139:
    if (var_r0_7 != NULL) {
        *(u32 *)((u8 *)var_r0_7 + 0x44) = callback;
    }
    taskCallback=(s32)sub_080359E8; asm("" : "+r"(taskCallback));
    var_r4_4 = gUnk_03005CF4+0xE34; var_r5_4=0; goto checkTask147;
nextTask147:
    var_r5_4++; var_r4_4+=0x28;
checkTask147:
    if(var_r5_4>29) goto doneTask147;
    if(sub_08000470(var_r4_4)!=0) goto nextTask147;
    while ((*(u32 *)((u8 *)var_r4_4 + 0x20) = temp_r0_5 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_4 + 0x8)=60; *(u32 *)((u8 *)var_r4_4 + 0xC)=taskCallback; *(u32 *)((u8 *)var_r4_4 + 0x10)=(u32)temp_r0_5+0x3FC; *(u32 *)((u8 *)var_r4_4 + 0x24)=0;
    sub_08000274(var_r4_4,temp_r6_2);
doneTask147:;

    temp_r6_3 = sub_080289C0(0x1D, 0x100, 0x118);
    var_r1_13 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_23 = 0;
    do {
        if (*var_r1_13 == temp_r6_3) { var_r2_24 = var_r1_13; goto found028b154; }
        var_r2_23++; var_r1_13 += 0x1C;
    } while (var_r2_23 <= 14);
    sub_080003F0(); var_r2_24 = NULL;
found028b154:
    if (var_r2_24 != NULL) {
        *(u16 *)((u8 *)var_r2_24 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_24 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_24 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_24 + 0x3C) | 0x10);
    }
    callback = (s32)sub_0803540C;
    asm("" : "+r"(callback));
    var_r1_14 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_25 = 0;
    do {
        if (*var_r1_14 == temp_r6_3) { var_r0_8 = var_r1_14; goto found028b161; }
        var_r2_25++; var_r1_14 += 0x1C;
    } while (var_r2_25 <= 14);
    sub_080003F0(); var_r0_8 = NULL;
found028b161:
    if (var_r0_8 != NULL) {
        *(u32 *)((u8 *)var_r0_8 + 0x44) = callback;
    }
    taskCallback=(s32)sub_08035A88; asm("" : "+r"(taskCallback));
    var_r4_5 = gUnk_03005CF4+0xE34; var_r5_5=0; goto checkTask169;
nextTask169:
    var_r5_5++; var_r4_5+=0x28;
checkTask169:
    if(var_r5_5>29) goto doneTask169;
    if(sub_08000470(var_r4_5)!=0) goto nextTask169;
    while ((*(u32 *)((u8 *)var_r4_5 + 0x20) = temp_r0_6 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_5 + 0x8)=60; *(u32 *)((u8 *)var_r4_5 + 0xC)=taskCallback; *(u32 *)((u8 *)var_r4_5 + 0x10)=(u32)temp_r0_6+0x3FC; *(u32 *)((u8 *)var_r4_5 + 0x24)=0;
    sub_08000274(var_r4_5,temp_r6_3);
doneTask169:;

    temp_r4_3 = sub_080289C0(5, 0x190, 0x159);
    var_r1_15 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_26 = 0;
    do {
        if (*var_r1_15 == temp_r4_3) { var_r2_27 = var_r1_15; goto found028b176; }
        var_r2_26++; var_r1_15 += 0x1C;
    } while (var_r2_26 <= 14);
    sub_080003F0(); var_r2_27 = NULL;
found028b176:
    if (var_r2_27 != NULL) {
        *(u16 *)((u8 *)var_r2_27 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_27 + 0x1A) = 0xA;
        *(u32 *)((u8 *)var_r2_27 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_27 + 0x3C) | 0x10);
    }
    callback = (s32)sub_08034A5C;
    asm("" : "+r"(callback));
    var_r1_16 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_28 = 0;
    do {
        if (*var_r1_16 == temp_r4_3) { var_r0_9 = var_r1_16; goto found028b183; }
        var_r2_28++; var_r1_16 += 0x1C;
    } while (var_r2_28 <= 14);
    sub_080003F0(); var_r0_9 = NULL;
found028b183:
    if (var_r0_9 != NULL) {
        *(u32 *)((u8 *)var_r0_9 + 0x44) = callback;
    }
    sub_0802939C(temp_r4_3, 1);
    if (sub_0800CE30() != 0) {
        var_r2_29 = 0x1C5;
    } else {
        var_r2_29 = 0x1B9;
    }
    if (((s32) *(u8 *)(gUnk_03005CF4 + var_r2_29) >> 2) & 1) {
        temp_r4_4 = sub_080289C0(0xF, 0x128, 0x18E);
    var_r1_17 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_30 = 0;
    do {
        if (*var_r1_17 == temp_r4_4) { var_r2_31 = var_r1_17; goto found028b196; }
        var_r2_30++; var_r1_17 += 0x1C;
    } while (var_r2_30 <= 14);
    sub_080003F0(); var_r2_31 = NULL;
found028b196:
        if (var_r2_31 != NULL) {
            *(u16 *)((u8 *)var_r2_31 + 0x18) = 8;
            *(u16 *)((u8 *)var_r2_31 + 0x1A) = 4;
            *(u32 *)((u8 *)var_r2_31 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_31 + 0x3C) | 0x10);
        }
    callback = (s32)sub_08034F64;
    asm("" : "+r"(callback));
    var_r1_18 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_32 = 0;
    do {
        if (*var_r1_18 == temp_r4_4) { var_r0_10 = var_r1_18; goto found028b202; }
        var_r2_32++; var_r1_18 += 0x1C;
    } while (var_r2_32 <= 14);
    sub_080003F0(); var_r0_10 = NULL;
found028b202:
        if (var_r0_10 != NULL) {
            *(u32 *)((u8 *)var_r0_10 + 0x44) = callback;
        }
        sub_0802939C(temp_r4_4, 0x14);
    } else {
    taskCallback=(s32)sub_08044D1C; asm("" : "+r"(taskCallback));
    var_r4_6 = gUnk_03005CF4+0xE34; var_r5_6=0; goto checkTask211;
nextTask211:
    var_r5_6++; var_r4_6+=0x28;
checkTask211:
    if(var_r5_6>29) goto doneTask211;
    if(sub_08000470(var_r4_6)!=0) goto nextTask211;
    while ((*(u32 *)((u8 *)var_r4_6 + 0x20) = temp_r0_7 = sub_08001494(0x400)) == 0) sub_080003F0();
    *(u32 *)((u8 *)var_r4_6 + 0x8)=60; *(u32 *)((u8 *)var_r4_6 + 0xC)=taskCallback; *(u32 *)((u8 *)var_r4_6 + 0x10)=(u32)temp_r0_7+0x3FC; *(u32 *)((u8 *)var_r4_6 + 0x24)=0;
    sub_08000274(var_r4_6,0);
doneTask211:;

    }
    temp_r5 = sub_080289C0(0x4002B, 0xB5, 0xFA);
    var_r1_19 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_33 = 0;
    do {
        if (*var_r1_19 == temp_r5) { var_r2_34 = var_r1_19; goto found028b218; }
        var_r2_33++; var_r1_19 += 0x1C;
    } while (var_r2_33 <= 14);
    sub_080003F0(); var_r2_34 = NULL;
found028b218:
    if (var_r2_34 != NULL) {
        *(u16 *)((u8 *)var_r2_34 + 0x18) = 8;
        *(u16 *)((u8 *)var_r2_34 + 0x1A) = 4;
        *(u32 *)((u8 *)var_r2_34 + 0x3C) = (s32) (*(u32 *)((u8 *)var_r2_34 + 0x3C) | 0x10);
    }
    if (sub_0800CE30() == 0) {
        var_r4_7 = &sub_08035B18;
        var_r1_20 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2_35 = 0;
loop_225:
        if (*var_r1_20 != temp_r5) {
            var_r2_35 += 1;
            var_r1_20 += 0x1C;
            if (var_r2_35 > 0xEU) {
                goto block_232;
            }
            goto loop_225;
        }
        goto block_228;
    }
    var_r4_7 = &sub_080368F4;
    var_r1_20 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_36 = 0;
loop_230:
    if (*var_r1_20 != temp_r5) {
        var_r2_36 += 1;
        var_r1_20 += 0x1C;
        if (var_r2_36 > 0xEU) {
block_232:
            sub_080003F0();
            var_r0_11 = NULL;
        } else {
            goto loop_230;
        }
    } else {
block_228:
        var_r0_11 = var_r1_20;
    }
    if (var_r0_11 != NULL) {
        *(u32 *)((u8 *)var_r0_11 + 0x44) = var_r4_7;
    }
    if (temp_r0 == 1) {
        sub_0801AA34(0x1E);
loop_238:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_238;
        }
        temp_r2 = (void *)(0x14C * sub_080020F4() + (u32)gUnk_03003CE0);
        *(u32 *)((u8 *)temp_r2 + 0x30) = (s32) (*(u32 *)((u8 *)temp_r2 + 0x30) & ~1);
        sub_0800D108();
        return;
    }
    if (sub_0800CC98() == 0) {
        temp_r0_8 = sub_0801AB24();
        switch (temp_r0_8) {                        /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 2 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 2 */
            sub_0801AB90(6);
            break;
        }
loop_251:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_251;
        }
    }
}




#else
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C674);
#endif
void sub_08037B04(void);
void sub_08030F54(void);
void sub_080399E4(void);
void sub_080316A4(void);
s32 sub_0801AB24(void);
void sub_080576A8(void);
void sub_0801AB50(s32);
void sub_0801AB90(s32);
void sub_0802CF84(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x2000D, 0x1B8, 0x60);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08037B04;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08037DFC(void);
extern void sub_080592FC(void);
extern void sub_080384D4(void);
extern s32 sub_0801AB24(void);
extern void sub_080576A8(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
void sub_0802D050(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x30, 0x54, 0x90);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08037DFC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x20039, 0x78, 0x5F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080592FC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x5002A, 0xB5, 0x6D);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080384D4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
void sub_0802D200(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x31, 0x17E, 0x66);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08030F54;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_080455F0(void);
extern void sub_0803A460(void);
extern void sub_08059AD0(void);
extern void sub_08059CEC(void);
extern void sub_08059DA0(void);
struct TaskP29D2 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart29D2(void *, u32) asm("sub_08000274");
void sub_0802D2C8(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    struct TaskP29D2 *t;
    u32 i;
    u32 mem;
    s32 cb;
    s32 first;
    s32 first_cb;

    first = sub_080289C0(0x2C, 0x79, 0x186);
    cb = (s32) sub_080455F0;
    t = (struct TaskP29D2 *)(gUnk_03005CF4 + 0xE34);
    for (i = 0; i <= 0x1D; i++, t++) {
        if (sub_08000470((u32)t) != 0) continue;
        while ((t->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        t->f8 = 0x3C;
        t->fC = cb;
        t->f10 = mem + 0x3FC;
        t->f24 = 0;
        taskStart29D2(t, first);
        break;
    }
    iVar2 = sub_080289C0(0x15, 0x138, 0x1A6);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803A460;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x20016, 0xA3, 0x1AF);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059AD0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x47, 0x5A, 0x1A6);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059CEC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x70010, 0x39, 0x1B7);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059DA0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803145C(void);
extern void sub_08031580(void);
extern void sub_08033650(void);
void sub_0802D568(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    u32 flag;
    u32 bits;

    iVar2 = sub_080289C0(0x31, 0xD0, 0x60);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803145C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x31, 0x110, 0x60);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08031580;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    flag = 2;
    bits = flag & (sub_0800CE30() != 0 ? *(s32 *)(gUnk_03005CF4 + 0x80) : *(s32 *)(gUnk_03005CF4 + 0x78));
    if (bits) {
    iVar2 = sub_080289C0(0x10034, 0x14C, 0x64);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08033650;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
void sub_0802D73C(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x48, 0x58, 0x40);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080399E4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
void sub_0802D800(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x23, 0x40, 0x46);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080316A4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803B194(void);
extern void sub_0803B69C(void);
extern void sub_0803B720(void);
extern void sub_0803BC3C(void);
struct TaskP29D8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart29D8(void *, u32) asm("sub_08000274");
void sub_0802D8C4(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    struct TaskP29D8 *t;
    u32 i;
    u32 mem;
    s32 cb;
    s32 first;
    s32 first_cb;

    first = sub_080289C0(0x36, 0x34, 0x50);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    first_cb = (s32) sub_0803B194;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = first_cb;
    }
    cb = (s32) sub_0803B69C;
    t = (struct TaskP29D8 *)(gUnk_03005CF4 + 0xE34);
    for (i = 0; i <= 0x1D; i++, t++) {
        if (sub_08000470((u32)t) != 0) continue;
        while ((t->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        t->f8 = 0x3C;
        t->fC = cb;
        t->f10 = mem + 0x3FC;
        t->f24 = 0;
        taskStart29D8(t, first);
        break;
    }
    iVar2 = sub_080289C0(0x40027, 0x6C, 0x76);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803B720;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x35, 0x18C, 0x4E);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803BC3C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_080289C0(0xB0036, 0x22, 0x42);
    sub_080289C0(0xC0036, 0x32, 0x42);
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08059488(void);
extern void sub_08059534(void);
extern void sub_080595E0(void);
extern void sub_0805968C(void);
extern void sub_08059738(void);
extern void sub_080597E4(void);
void sub_0802DAF0(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x50019, 0x6E, 0x84);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059488;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x40019, 0x67, 0x4B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059534;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x70019, 0xCC, 0x70);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080595E0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x19, 0xFC, 0x4B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0805968C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x4001B, 0x166, 0x46);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059738;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x10019, 0x90, 0x68);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found11;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found11:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080597E4;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found12;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found12:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern u8 *state30DE asm("gUnk_03005CF4");
extern void sub_08038D18(void);
extern void sub_0803898C(void);
extern void sub_080392B4(void);
extern void sub_08044E34(void);
extern void sub_08045E38(void);
extern void sub_0802939C(s32, s32);
struct TaskP30DE { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart30DE(void *, u32) asm("sub_08000274");
void sub_0802DE0C(void) {
    register u8 **base asm("r0");
    register u8 **bs asm("r1");
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    s32 first, first_cb;
    register s32 mask asm("r4");
    s32 bits, bytebit;
    register s32 first_bits asm("r1");
    s32 mask2;
    s32 raw;
    s32 *word;
    u8 *p;
    register u8 *pf asm("r1");
    register s32 rf asm("r1");
    struct TaskP30DE *t, *t2;
    u32 i, i2, mem, mem2;
    s32 cb, cb2;

    first = sub_080289C0(0x25, 0xB5, 0xEC);
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    first_cb = (s32) sub_08038D18;
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == first) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = first_cb;
    }
    mask = 1;
    if (sub_0800CE30() != 0) { base = &state30DE; pf = *base + 0x1C4; }
    else { base = &state30DE; pf = *base + 0x1B8; }
    rf = *pf;
    first_bits = mask & (rf >> 5);
    if (first_bits) sub_0802939C(first, 1);
    else {
    cb = (s32) sub_08044E34;
    t = (struct TaskP30DE *)(*base + 0xE34);
    for (i = 0; i <= 0x1D; i++, t++) {
        if (sub_08000470((u32)t) != 0) continue;
        while ((t->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        t->f8 = 0x3C;
        t->fC = cb;
        t->f10 = mem + 0x3FC;
        t->f24 = 0;
        taskStart30DE(t, first);
        break;
    }
    }
    if (sub_0800CE30() != 0) { word = (s32 *)(state30DE + 0x80); mask2 = 0x80; bits = *word; }
    else { word = (s32 *)(state30DE + 0x78); mask2 = 0x80; bits = *word; }
    bits &= mask2;
    if (sub_0800CE30() != 0) { bs = &state30DE; p = *bs + 0x1C3; }
    else { bs = &state30DE; p = *bs + 0x1B7; }
    raw = *p;
    bytebit = raw >> 5;
    bytebit &= 1;
    base = bs;
    if (!bits || bytebit) {
    iVar2 = sub_080289C0(0x40029, 0xDD, 0x11E);
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803898C;
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    } else {
    cb2 = (s32) sub_08045E38;
    t2 = (struct TaskP30DE *)(*base + 0xE34);
    for (i2 = 0; i2 <= 0x1D; i2++, t2++) {
        if (sub_08000470((u32)t2) != 0) continue;
        while ((t2->f20 = mem2 = sub_08001494(0x400)) == 0) sub_080003F0();
        t2->f8 = 0x3C;
        t2->fC = cb2;
        t2->f10 = mem2 + 0x3FC;
        t2->f24 = 0;
        taskStart30DE(t2, 0);
        break;
    }
    }
    iVar2 = sub_080289C0(0x33, 0x11E, 0xFF);
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080392B4;
    var_r1 = (s32 *) (state30DE + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}

extern void sub_08039F00(void);
extern void sub_08059418(void);
extern void sub_0803A8F0(void);
extern void sub_0803AD74(void);
extern void sub_08059374(void);
extern void sub_0803AE6C(void);
extern void sub_0802939C(s32, s32);
void sub_0802E110(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x38, 0x6F, 0xDD);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 0x14;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08039F00;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x10022, 0xC6, 0x105);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059418;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x31, 0x110, 0xE0);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803A8F0;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_0802939C(iVar2, 9);
    iVar2 = sub_080289C0(0x60019, 0x14C, 0x116);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803AD74;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x32, 0x179, 0xFD);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059374;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x60018, 0x1A0, 0x58);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found11;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found11:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803AE6C;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found12;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found12:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_0802939C(iVar2, 3);
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803C698(void);
extern void sub_08045F44(void);
extern void sub_08046F28(void);
extern void sub_08046490(void);
extern void sub_080469DC(void);
void sub_0802E444(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x42, 0x140, 0x80);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 0x50;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803C698;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x44, 0x1E8, 0x6F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08045F44;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x45, 0x1B0, 0x5F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08046F28;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x46, 0x1CE, 0x5F);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08046490;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x43, 0x225, 0x83);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_080469DC;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08033C40(void);
void sub_0802E6E0(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x9000C, 0x124, 0x7B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08033C40;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_08058EF8(void);
extern void sub_08059C38(void);
extern void sub_08059B84(void);
extern void sub_08059E54(void);
extern void sub_08059F08(void);
void sub_0802E7AC(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x70023, 0xB8, 0x10B);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08058EF8;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x1A, 0xFC, 0xD0);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059C38;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x1004A, 0x130, 0xD6);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found5;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found5:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059B84;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found6;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found6:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x31, 0xF8, 0xF5);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found7;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found7:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059E54;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found8;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found8:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(0x32, 0x8B, 0x106);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found9;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found9:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08059F08;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found10;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found10:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern void sub_0803C008(void);
extern void sub_08031F28(void);
extern void sub_080290E4(s32, s32);
void sub_0802EA50(s32 arg0) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;
    u32 active;
    s32 flag;
    u8 *p;
    u8 *p0, *pRead, *pWrite;
    register s32 tmp asm("r0");
    s32 raw;
    register u8 *fb asm("r2"); register u32 fm asm("r1");
    u32 *flagdest;
    u32 setmask;
    struct Player *player;
    s32 count;
    u32 index;
    s32 boolflag;
    u32 one;
    s32 *stateaddr;
    u32 handle;
    u8 saved;
    s32 tally;
    struct Player *first_player;
    struct Player *second_player;
    struct Player *last_player;


    iVar2 = sub_080289C0(0x21, 0xB6, 0x87);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 0x14;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803C008;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    iVar2 = sub_080289C0(8, 0x38, 0x87);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found3;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found3:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 0x14;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_08031F28;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found4;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found4:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    sub_0802939C(iVar2, 2);
    active = sub_08002164();
    if (sub_0800CE30()) p0 = (u8 *)(gUnk_03005CF4 + 0x1C5);
    else p0 = (u8 *)(gUnk_03005CF4 + 0x1B9);
    raw = *p0;
    count = raw >> 3; tmp = 1; count &= tmp;
    if (count || active != 1) sub_08028AAC(6, 0x270F, 0x270F, 0);
    if (arg0 != 0) {
        sub_08028AAC(0, 0xB8, 0xA0, 0);
        sub_080290E4(0, 4);
    }
    switch (arg0) {
    case 1:
    first_player = &gUnk_03003CE0[sub_080020F4()];
    first_player->flags |= arg0;
    sub_0800D0F4();
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    tally = 0;
    index = 0;
    one = 1;
    stateaddr = &gUnk_03005CF4;
    do {
        if (sub_0800CE30() != 0) {
            if (!((one << index) & *(s32 *)(*stateaddr + 0x88))) goto no_bit;
            goto increment;
        }
        if ((one << index) & *(s32 *)(*stateaddr + 0x84)) boolflag = 1;
        else {
no_bit:
            boolflag = 0;
        }
        if (boolflag) {
increment:
            tally++;
        }
        index++;
    } while (index <= 0xA);
    count = tally;
    if (sub_0800CE30()) pRead = (u8 *)(gUnk_03005CF4 + 0x1C0);
    else pRead = (u8 *)(gUnk_03005CF4 + 0x1B4);
    if (count != *pRead) {
        switch (count) {
        case 2:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EA);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 3:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EB);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 4:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EC);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 5:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401ED);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 6:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EE);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 7:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401EF);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 8:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F0);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 9:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F1);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 10:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F2);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            break;
        case 11:
                while (sub_0805F184() != 0) sub_080003F0();
            while (sub_0805EF90() != 0) sub_080003F0();
            handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F3);
            while (sub_0805EEFC((void *)handle) == 0) {
                if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
                sub_080003F0();
            }
            if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x33);
            if (sub_0800CE30()) {
                flagdest = (u32 *)(gUnk_03005CF4 + 0x80);
                setmask = 0x80000;
                *flagdest = setmask | *flagdest;
            } else {
                fb = (u8 *)gUnk_03005CF4;
                fm = 0x80000;
                *(u32 *)(fb + 0x78) = fm | *(u32 *)(fb + 0x78);
            }
            break;
        }
        saved = count;
        if (sub_0800CE30()) pWrite = (u8 *)(gUnk_03005CF4 + 0x1C0);
        else pWrite = (u8 *)(gUnk_03005CF4 + 0x1B4);
        *pWrite = saved;
    }
        goto cleanup;
    case 2:
        second_player = &gUnk_03003CE0[sub_080020F4()];
        second_player->flags |= 1;
        sub_0800D0F4();
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        handle = sub_0805DF38(1, 0xF, 2, 0, -1, 0x1401F4);
        while (sub_0805EEFC((void *)handle) == 0) {
            if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
cleanup:
    last_player = &gUnk_03003CE0[sub_080020F4()];
    last_player->flags &= ~1;
    sub_0800D108();
        break;
    default:
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
        break;
    }
}
extern void sub_0801AA34(s32);
extern void sub_0802939C(s32, s32);
extern void sub_0802F424(s32);
struct TaskP30F2 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern void taskStart30F2(void *, u32) asm("sub_08000274");
struct Entry30F2 { u8 pad[12]; u16 state; u8 end[0x2E0 - 14]; };
void sub_0802F208(void) {
    s32 *var_r1_2;
    s32 *var_r2_2;
    s32 cb;
    s32 temp_r6;
    s32 var_r1;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r4;
    u32 var_r2;
    u32 var_r3;
    s32 bit;
    s32 *flags;
    u32 one, zero;
    struct TaskP30F2 *var_r4_3;
    u32 var_r5;
    u8 *temp_r2;
    u32 temp_r0;
    struct Player *temp_r2_2;
    struct Player *temp_r2_3;
    struct Entry30F2 *var_r2_3;

    if (sub_0800CE30() != 0)
        temp_r2 = (u8 *)(gUnk_03005CF4 + 0x1C5);
    else
        temp_r2 = (u8 *)(gUnk_03005CF4 + 0x1B9);
    var_r1 = -9;
    *temp_r2 = var_r1 & *temp_r2;
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags | 1);
    sub_0800D0F4();
    temp_r6 = sub_080289C0(0x21, 0x78, 0x186);
    var_r1_2 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1_2 == temp_r6) {
            var_r2_2 = var_r1_2;
            goto found1;
        }
        var_r2 += 1;
        var_r1_2 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    var_r2_2 = NULL;
found1:
    if (var_r2_2 != NULL) {
        *(u16 *) ((u8 *) var_r2_2 + 0x18) = 8;
        *(u16 *) ((u8 *) var_r2_2 + 0x1A) = 4;
        var_r2_2[0xF] |= 0x10;
    }
    sub_0801AA34(0x1E);
    while (sub_0801AAE0() == 0) sub_080003F0();
    sub_08000420(0x09999000);
    var_r4 = 0x64;
    for (; var_r4 != 0; var_r4--) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
    }
    sub_0802939C(temp_r6, 3);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x1401F9U);
    while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
    var_r4_2 = 0x64;
    for (; var_r4_2 != 0; var_r4_2--) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
    }
    cb = (s32) sub_0802F424;
    var_r4_3 = (struct TaskP30F2 *)(gUnk_03005CF4 + 0xE34);
    for (var_r5 = 0; var_r5 <= 0x1D; var_r5++, var_r4_3++) {
        if (sub_08000470((u32)var_r4_3) != 0) continue;
        while ((var_r4_3->f20 = temp_r0 = sub_08001494(0x400)) == 0) sub_080003F0();
        var_r4_3->f8 = 0x3C;
        var_r4_3->fC = cb;
        var_r4_3->f10 = temp_r0 + 0x3FC;
        var_r4_3->f24 = 0;
        taskStart30F2(var_r4_3, temp_r6);
        break;
    }
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x36U);
    }
    temp_r2_3 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_3->flags = (s32) (temp_r2_3->flags & ~1);
    sub_0800D108();
    var_r2_3 = (struct Entry30F2 *)gUnk_030056F4;
    var_r3 = 0;
    flags = &gUnk_030056FC;
    one = 1;
    zero = 0;
tail_body:
    if ((*flags & (bit = one << var_r3)) && var_r2_3->state == 0xC) var_r2_3->state = zero;
    var_r3++;
    var_r2_3++;
    if (var_r3 <= 4) goto tail_body;
    sub_08019F04();
}

void sub_0802F424(s32 arg0) {
    s32 *var_r1;
    u32 var_r2;

    if (sub_08002164() == 1) {
        sub_0802939C(arg0, 5);
        sub_08028D98(arg0, 0x28, 0x64, 0x3C);
        var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
        var_r2 = 0;
        do {
            if (*var_r1 == arg0) {
                goto found;
            }
            var_r2 += 1;
            var_r1 += 0x1C;
        } while (var_r2 <= 0xEU);
    } else {
        sub_0802939C(arg0, 5);
        sub_08028D98(arg0, 0, 0x64, 0x3C);
        var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
        var_r2 = 0;
        do {
            if (*var_r1 == arg0) {
                goto found;
            }
            var_r2 += 1;
            var_r1 += 0x1C;
        } while (var_r2 <= 0xEU);
    }
    sub_080003F0();
    var_r1 = NULL;
found:
    if (var_r1 != NULL) {
        *(u16 *) ((u8 *) var_r1 + 0x36) = 4;
    }
}
extern void sub_0803C3C8(void);
void sub_0802F4B0(void) {
    s32 *var_r1;
    u32 var_r2;
    s32 *res;
    s32 *res2;
    s32 iVar2;
    s32 dVar1;
    s32 r;

    iVar2 = sub_080289C0(0x2E, 0x10C, 0x87);
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res = var_r1;
            goto found1;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res = NULL;
found1:
    if (res != NULL) {
        *(u16 *) ((u8 *) res + 0x18) = 8;
        *(u16 *) ((u8 *) res + 0x1A) = 4;
        res[0xF] |= 0x10;
    }
    dVar1 = (s32) sub_0803C3C8;
    var_r1 = (s32 *) (gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == iVar2) {
            res2 = var_r1;
            goto found2;
        }
        var_r2 += 1;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xEU);
    sub_080003F0();
    res2 = NULL;
found2:
    if (res2 != NULL) {
        res2[0x11] = dVar1;
    }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
}
extern u8 *gState2F578 asm("gUnk_03005CF4");
extern void cb2F578(void) asm("sub_0805990C");
void sub_0802F578(void)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u16 count;
    register u32 raw asm("r1");
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    if (sub_0800CE30()) field = *(u32 *)(gState2F578 + 0x7C);
    else field = *(u32 *)(gState2F578 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310905);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310904);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310903);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310902);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310901);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        if (sub_0800CE30()) { base = gState2F578; field = 0x1C5; }
        else { base = gState2F578; field = 0x1B9; }
        raw = base[field]; raw &= 1; if (raw) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310898);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        if (sub_0800CE30()) { base = gState2F578; field = 0x1C5; }
        else { base = gState2F578; field = 0x1B9; }
        if ((base[field] >> 7) != 0) {
            sub_08068070((u32)cb2F578, 0x16);
            count = 100;
            while (count != 0) {
                sub_080003F0();
                if (sub_080021A8()) break;
                count--;
            }
            return;
        }
        } else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310897);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310896);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310895);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310894);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310893);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}





extern u8 *gState2FA80 asm("gUnk_03005CF4");
void sub_0802FA80(void)
{
    register u32 offset asm("r2");
    struct Player *p;
    u8 *base;
    u32 field;
    u32 dialog;
    register u32 value asm("r4");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags |= 1;
    sub_0800D0F4();
    if (sub_0800CE30()) field = *(u32 *)(gState2FA80 + 0x7C);
    else field = *(u32 *)(gState2FA80 + 0x74);
    if (field & 256) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310916);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 128) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310915);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 64) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310914);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 32) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310913);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 16) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310912);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 8) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310911);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 4) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310910);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 2) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310909);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else if (field & 1) {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310908);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    else  {
        while (sub_0805F184()) sub_080003F0();
        while (sub_0805EF90()) sub_080003F0();
        dialog = sub_0805DF38(1, 15, 2, 0, -1, 1310907);
        while (sub_0805EEFC((void *)dialog) == 0) {
            if (sub_0800CDF8()) { sub_0805EFBC(); break; }
            sub_080003F0();
        }
    }
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (struct Player *)((u8 *)gUnk_03003CE0 + offset);
    p->flags &= ~1;
    sub_0800D108();
}
