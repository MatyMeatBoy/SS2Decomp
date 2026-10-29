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
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802B8A4);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C144);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C2A0);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802C674);
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
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802DE0C);
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
#ifdef NONMATCHING
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
    s32 raw;
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
    count = raw >> 3;
    count = 1 & count;
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
                flagdest = (u32 *)(gUnk_03005CF4 + 0x78);
                setmask = 0x80000;
                *flagdest = setmask | *flagdest;
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
#else
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802EA50);
#endif
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
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802F578);
INCLUDE_ASM("asm/nonmatchings/code_08028AAC", sub_0802FA80);
