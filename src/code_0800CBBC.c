#include "global.h"

void sub_0800CBBC(void) {
    gUnk_03003474 += 1;
}
s32 sub_0800CBCC(void) {
    if (sub_08002164() <= (u32) gUnk_03003474) {
        gUnk_03003474 = (s32) sub_08002164();
    }
    return gUnk_03003474;
}
void sub_0800CBEC(void) {
    gUnk_03003474 = 0;
}
void sub_0800CBF8(u16 arg0) {
    gUnk_030034D8 = (s32) arg0;
    gUnk_03003478 |= 0x8000;
}
void sub_0800CC18(void) {
    gUnk_030034D8 = 0;
    gUnk_03003478 &= 0xFFFF7FFF;
}
s32 sub_0800CC38(void) {
    return ((u32) gUnk_03003478 >> 0xF) & 1;
}
s32 sub_0800CC48(u16 arg0) {
    s32 temp_r0;

    gUnk_030034A8 = (s32) arg0;
    temp_r0 = gUnk_03003478 | 0x80000;
    gUnk_03003478 = temp_r0;
    return temp_r0;
}
s32 sub_0800CC68(void) {
    s32 temp_r0;

    gUnk_030034A8 = 0;
    temp_r0 = gUnk_03003478 & 0xFFF7FFFF;
    gUnk_03003478 = temp_r0;
    return temp_r0;
}
s32 sub_0800CC88(void) {
    return ((u32) gUnk_03003478 >> 0x13) & 1;
}
s32 sub_0800CC98(void) {
    return ((u32) gUnk_03003478 >> 2) & 1;
}
void sub_0800CCA8(void) {
    gUnk_03003478 |= 4;
}
void sub_0800CCB8(void) {
    gUnk_03003478 &= ~4;
}
s32 sub_0800CCCC(void) {
    return ((u32) gUnk_03003478 >> 3) & 1;
}
void sub_0800CCDC(void) {
    gUnk_03003478 |= 8;
}
void sub_0800CCEC(void) {
    gUnk_03003478 &= ~8;
}
s32 sub_0800CD00(void) {
    return ((u32) gUnk_03003478 >> 4) & 1;
}
void sub_0800CD10(void) {
    gUnk_03003478 |= 0x10;
}
void sub_0800CD20(void) {
    gUnk_03003478 &= ~0x10;
}
s32 sub_0800CD34(void) {
    return ((u32) gUnk_03003478 >> 5) & 1;
}
void sub_0800CD44(void) {
    gUnk_03003478 |= 0x20;
}
void sub_0800CD54(void) {
    gUnk_03003478 &= ~0x20;
}
void sub_0800CD68(void) {
    gUnk_03003478 |= 0x40;
}
void sub_0800CD78(void) {
    gUnk_03003478 &= ~0x40;
}
s32 sub_0800CD8C(void) {
    return ((u32) gUnk_03003478 >> 6) & 1;
}
void sub_0800CD9C(void) {
    gUnk_03003478 |= 0x80;
}
void sub_0800CDAC(void) {
    gUnk_03003478 &= ~0x80;
}
s32 sub_0800CDC0(void) {
    return ((u32) gUnk_03003478 >> 7) & 1;
}
void sub_0800CDD0(void) {
    gUnk_03003478 |= 0x100;
}
void sub_0800CDE4(void) {
    gUnk_03003478 &= 0xFFFFFEFF;
}
s32 sub_0800CDF8(void) {
    return ((u32) gUnk_03003478 >> 8) & 1;
}
void sub_0800CE08(void) {
    gUnk_03003478 |= 0x200;
}
void sub_0800CE1C(void) {
    gUnk_03003478 &= 0xFFFFFDFF;
}
s32 sub_0800CE30(void) {
    return ((u32) gUnk_03003478 >> 9) & 1;
}
void sub_0800CE40(void) {
    gUnk_03003478 |= 0x400;
}
void sub_0800CE54(void) {
    gUnk_03003478 &= 0xFFFFFBFF;
}
s32 sub_0800CE68(void) {
    return ((u32) gUnk_03003478 >> 0xA) & 1;
}
s32 sub_0800CE78(void) {
    return ((u32) gUnk_03003478 >> 0xC) & 1;
}
void sub_0800CE88(void) {
    gUnk_03003478 |= 0x1000;
}
void sub_0800CE9C(void) {
    gUnk_03003478 &= 0xFFFFEFFF;
}
void sub_0800CEB0(void) {
    gUnk_03003478 |= 0x2000;
}
void sub_0800CEC4(void) {
    gUnk_03003478 &= 0xFFFFDFFF;
}
s32 sub_0800CED8(void) {
    return ((u32) gUnk_03003478 >> 0xD) & 1;
}
void sub_0800CEE8(void) {
    gUnk_03003478 |= 0x4000;
}
void sub_0800CEFC(void) {
    gUnk_03003478 &= 0xFFFFBFFF;
}
s32 sub_0800CF10(void) {
    return ((u32) gUnk_03003478 >> 0xE) & 1;
}
void sub_0800CF20(void) {
    gUnk_03003478 |= 0x200000;
}
void sub_0800CF34(void) {
    gUnk_03003478 &= 0xFFDFFFFF;
}
s32 sub_0800CF48(void) {
    return ((u32) gUnk_03003478 >> 0x15) & 1;
}
