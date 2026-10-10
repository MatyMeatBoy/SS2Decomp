#include "global.h"

extern s32 gUnk_030034E0;
extern void *gUnk_03004210;

#define H(p, o) (*(u16 *)((u8 *)(p) + (o)))
#define W(p, o) (*(u32 *)((u8 *)(p) + (o)))
#define B(p, o) (*(u8 *)((u8 *)(p) + (o)))

struct E16 {
    u16 a;
    u16 b;
    u8 c[12];
};

struct Q4 {
    u16 a;
    u16 b;
};

struct GA {
    u8 b0[10];
    u16 h0A;
    u16 h0C;
    u16 pad0E;
    u16 h10;
    u16 h12;
    u16 h14;
    u16 h16;
    u16 h18;
    u16 h1A;
    u8 pad1C[0x24 - 0x1C];
    u8 obj24[0xC];
    u16 h30;
    u16 pad32;
    struct Q4 q34[8];
    u16 h54;
    u16 w56[9];
    u16 h68;
    u16 h6A;
    u32 w6C;
    struct E16 e70[9];
    struct E16 e100[5];
    struct E16 e150[25];
    struct E16 e2E0[75];
    u8 padC10[0xC10 - 0x790];
    u8 bC10[0x91];
};

struct GB {
    u32 w0, w4, w8, wC, w10, w14, w18;
    u16 h1C, h1E;
    u8 pad20[0x38 - 0x20];
    u32 a38[10];
    u32 a60[10];
    u32 a88[10];
    u32 aB0[10];
    u8 padD8[2];
    u16 hDA;
    u8 padDC[0x1C6 - 0xDC];
    u8 b1C6[10];
    u8 b1D0[10];
};

#define GA ((struct GA *)gUnk_030034E0)
#define GB ((struct GB *)gUnk_03004210)

void sub_08013850(void) {
    u32 i, j;
    u8 *a;
    u8 *p;
    u16 zero;
    u16 z16;
    u8 z8;
    u16 *p54, *p68, *p6a;
    u8 *p24;

    sub_08001538(gUnk_030034E0);
    sub_08001538((s32)gUnk_03004210);
    gUnk_030034E0 = (s32)sub_08001494(0xCA4);
    gUnk_03004210 = sub_08001494(0x51C);
    a = (u8 *)gUnk_030034E0;
    i = 0;
    z8 = 0;
    z16 = 0;
    p24 = a + 0x24;
    p54 = (u16 *)(a + 0x54);
    p68 = (u16 *)(a + 0x68);
    p6a = (u16 *)(a + 0x6a);
    for (; i < 4; i++) {
        p = (u8 *)&gUnk_03003CE0[i];
        H(p, 0) = z16;
        H(p, 0x12) = z16;
        H(p, 0x14) = z16;
        H(p, 0x1c) = z16;
        H(p, 0x22) = z16;
        W(p, 0x30) = z16;
        H(p, 0x20) = z16;
        H(p, 0x24) = z16;
        H(p, 0x2a) = z16;
        H(p, 0xc8) = z16;
        H(p, 0xca) = z16;
        H(p, 0x38) = z16;
        H(p, 0x3a) = z16;
        H(p, 0x3c) = z16;
        H(p, 0x3e) = z16;
        H(p, 0x40) = z16;
        sub_0801E0BC(p + 0x4c, 0);
        H(p, 0x58) = z16;
        H(p, 0x5a) = z16;
        H(p, 0x62) = z16;
        H(p, 0x60) = z16;
        B(p, 0x77) = z8;
        B(p, 0x78) = z8;
        H(p, 0x64) = z16;
        B(p, 0x66) = z8;
        sub_0801E0BC(p + 0x7c, 0);
        H(p, 0xc4) = z16;
        H(p, 0xc2) = z16;
        H(p, 0xc6) = z16;
        W(p, 0x144) = z16;
        W(p, 0x138) = z16;
        W(p, 0xdc) = z16;
        H(p, 0x88) = z16;
        W(p, 0x8c) = z16;
        H(p, 0x116) = z16;
        W(p, 0x90) = z16;
        W(p, 0x140) = z16;
        for (j = 0; j < 5; j++)
            W(p, 0xe4 + j * 4) = 0xFFFF;
        for (j = 0; j < 4; j++)
            W(p, 0xf8 + j * 4) = 0xFFFF;
    }
    for (j = 0; j < 10; j++)
        B(a, j) = 0;
    H(a, 0xa) = 0;
    H(a, 0xc) = 0;
    H(a, 0x10) = 0;
    H(a, 0x12) = 0;
    H(a, 0x14) = 0;
    H(a, 0x16) = 0;
    H(a, 0x18) = 0;
    H(a, 0x1a) = 0;
    sub_0801E0BC(p24, 0);
    zero = 0;
    CpuSet(&zero, gUnk_03004210, 0x0100028E);
    for (i = 0; i < 0x19; i++) {
        GA->e150[i].a = 0;
        GA->e150[i].b = 0;
        for (j = 0; j < 0xc; j++)
            GA->e150[i].c[j] = 0;
    }
    for (i = 0; i < 9; i++) {
        GA->e70[i].a = 0;
        GA->e70[i].b = 0;
        for (j = 0; j < 0xc; j++)
            GA->e70[i].c[j] = 0;
    }
    GA->e100[0].a = 0;
    GA->e100[0].b = 0;
    GA->e100[1].a = 0;
    GA->e100[1].b = 0;
    GA->e100[2].a = 0;
    GA->e100[2].b = 0;
    GA->e100[4].a = 0;
    GA->e100[4].b = 0;
    GA->e100[3].a = 0;
    GA->e100[3].b = 0;
    for (i = 0; i < 0x4b; i++) {
        GA->e2E0[i].a = 0;
        GA->e2E0[i].b = 0;
        for (j = 0; j < 0xc; j++)
            GA->e2E0[i].c[j] = 0;
    }
    for (i = 0; i < 0x91; i++)
        GA->bC10[i] = 0;
    for (i = 0; i < 9; i++)
        GA->w56[i] = 0;
    for (i = 0; i < 4; i++)
        sub_080137A0(i);
    *p68 = 0;
    *p54 = 0;
    *p6a = 1;
    W(a, 0x6c) = 0x4E20;
    for (i = 0; i < 10; i++) {
        GB->b1C6[i] = 0;
        GB->a38[i] = 0x57E3F;
        GB->a60[i] = 99;
        GB->b1D0[i] = 0;
        GB->a88[i] = 0x57E3F;
        GB->aB0[i] = 99;
    }
    GB->w14 = 1;
    GB->w18 = 1;
    GB->h1C = 0;
    GB->h1E = 0;
    GB->w4 = 0;
    GB->wC = 0;
    GB->hDA = 0;
    GB->w8 = 0x401;
    GB->w10 = 0x401;
    GB->w0 = 1;
    H(a, 0x30) = 0;
    for (i = 0; i < 8; i++) {
        H(a, 0x34 + i * 4 + 2) = 0;
        H(a, 0x34 + i * 4) = 0;
    }
}
