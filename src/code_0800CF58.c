#include "global.h"

void sub_0800CF58(void) {
    gUnk_03003478 |= 0x10000;
}
void sub_0800CF6C(void) {
    gUnk_03003478 &= 0xFFFEFFFF;
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800CF80);
void sub_0800CF90(void) {
    gUnk_03003478 |= 0x20000;
}
s32 sub_0800CFA4(void) {
    gUnk_03003478 &= 0xFFFDFFFF;
    return (s32) &gUnk_03003478;
}
s32 sub_0800CFB8(void) {
    return ((u32) gUnk_03003478 >> 0x11) & 1;
}
void sub_0800CFC8(void) {
    gUnk_03003478 |= 0x40000;
}
void sub_0800CFDC(void) {
    gUnk_03003478 &= 0xFFFBFFFF;
}
s32 sub_0800CFF0(void) {
    return ((u32) gUnk_03003478 >> 0x12) & 1;
}
void sub_0800D000(void) {
    gUnk_03003478 |= 0x400000;
}
void sub_0800D014(void) {
    gUnk_03003478 &= 0xFFBFFFFF;
}
s32 sub_0800D028(void) {
    return ((u32) gUnk_03003478 >> 0x16) & 1;
}
void sub_0800D038(void) {
    gUnk_03003478 |= 0x800000;
}
void sub_0800D04C(void) {
    gUnk_03003478 &= 0xFF7FFFFF;
}
s32 sub_0800D060(void) {
    return ((u32) gUnk_03003478 >> 0x17) & 1;
}
void sub_0800D070(void) {
    gUnk_03003478 |= 0x01000000;
}
void sub_0800D084(void) {
    gUnk_03003478 &= 0xFEFFFFFF;
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D098);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D0A8);
void sub_0800D0F4(void) {
    gUnk_03003478 |= 0x800;
}
void sub_0800D108(void) {
    gUnk_03003478 &= 0xFFFFF7FF;
}
s32 sub_0800D11C(void) {
    return ((u32) gUnk_03003478 >> 0xB) & 1;
}
void sub_0800D12C(void) {
    gUnk_03003478 |= 0x100000;
}
void sub_0800D140(void) {
    gUnk_03003478 &= 0xFFEFFFFF;
}
s32 sub_0800D154(void) {
    return ((u32) gUnk_03003478 >> 0x14) & 1;
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D164);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D1B0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D2F4);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D368);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080135C4);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080137A0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013850);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013BC0);
void sub_08013C3C(u8 *arg0) {
    u8 *p = gUnk_030056F4;
    u16 i = 0;
    u32 one = 1;
    u32 lim = 0x800;
    u8 *base = arg0 + 0x126;
    do {
        if (((gUnk_03002344 & one) == (i & one)) && (gUnk_030056FC & (one << i))) {
            u16 a = ArcTan2((*(s32 *)(p + 0x14) - *(s32 *)(arg0 + 0x8C)) << 8 >> 16,
                            (*(s32 *)(p + 0x18) - *(s32 *)(arg0 + 0x90)) << 8 >> 16);
            if ((a & 0xFFF) > lim) {
                *(u16 *)(base + (i << 1)) = (a >> 12) + 1;
            } else {
                *(u16 *)(base + (i << 1)) = a >> 12;
            }
            *(u16 *)(base + (i << 1)) &= 0xF;
        }
        i++;
        p += 0x2E0;
    } while (i <= 4);
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013CEC);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013E90);
void sub_080140AC(u8 *arg0) {
    u16 t;
    s32 v;
    s16 r;
    if ((*(u16 *)(arg0 + 0xC8)) != 0) {
        sub_08013E90((*(s16 *)(arg0 + 0xCC)), arg0 + 0x8C, (*(u16 *)(arg0 + 0xCA)), (u16)sub_0800CCCC(), 0);
        (*(u16 *)(arg0 + 0xC8))--;
    }
    if ((*(u16 *)(arg0 + 0xCE)) != 0) {
        sub_08013E90((*(s16 *)(arg0 + 0xD2)), arg0 + 0x8C, (*(u16 *)(arg0 + 0xD0)), (u16)sub_0800CCCC(), 0);
        v = (*(u16 *)(arg0 + 0xCE)) - 1;
        (*(u16 *)(arg0 + 0xCE)) = v;
        t = (u16)v;
        if (t == 0) {
            if ((*(s16 *)(arg0 + 0xD4)) != 0) {
                (*(u16 *)(arg0 + 0xCE)) = (*(s16 *)(arg0 + 0xD4)) / 2;
                if ((*(u16 *)(arg0 + 0xCE)) > 3) (*(u16 *)(arg0 + 0xCE)) = 4;
                (*(s16 *)(arg0 + 0xD4)) = t;
                r = 0x200;
                goto end;
            }
        } else if ((*(s16 *)(arg0 + 0xD4)) != 0) {
            return;
        }
        (*(s16 *)(arg0 + 0xD2)) = (u16)(*(s16 *)(arg0 + 0xD2)) << 16 >> 17;
        if ((*(s16 *)(arg0 + 0xD2)) <= 0x3F) {
            r = 0x40;
end:
            (*(s16 *)(arg0 + 0xD2)) = r;
        }
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014170);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014B28);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014C04);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014C8C);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014D60);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08014E68);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0801500C);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08015090);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08015150);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080151E0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080152CC);
