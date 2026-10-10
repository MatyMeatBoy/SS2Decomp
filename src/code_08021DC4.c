#include "global.h"

void sub_080226A4(void);

INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021DC4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021E44);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021EC8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021F58);
s32 sub_08021FE0(s32 *arg0, s32 *arg1, u16 *arg2, u16 *arg3) {
    s32 var_r2;
    s32 var_r3;

    s32 dx = arg0[0] - arg1[0];
    s32 dy = arg0[1] - arg1[1];
    var_r2 = dy >> 8;
    var_r3 = dx >> 8;
    if (var_r3 < 0) {
        var_r3 = -var_r3;
    }
    if (var_r3 <= ((s32)(arg2[0] + arg3[0]) >> 1)) {
        if (var_r2 < 0) {
            var_r2 = -var_r2;
        }
        if (var_r2 <= ((s32)(arg2[1] + arg3[1]) >> 1)) {
            return 1;
        }
    }
    return 0;
}
void sub_08022028(u8 *arg0, u8 *arg1, u16 arg2) {
    ArcTan2((s16)((*(s32 *)(arg1 + 0x8C) - *(s32 *)(arg0 + 0)) << 8 >> 16),
            (s16)((*(s32 *)(arg1 + 0x90) - *(s32 *)(arg0 + 4)) << 8 >> 16));
    *(u16 *)(arg1 + 0xCC) = 0;
    *(u16 *)(arg1 + 0xD0) = 0;
    *(u16 *)(arg1 + 0xCE) = 0;
    *(u16 *)(arg1 + 0x88) += arg2;
    *(u16 *)(arg1 + 0x20) = 0xA;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022078);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022100);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022180);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022200);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022284);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802230C);
u32 sub_080223A4(s16 a, s16 b) {
    s16 q = (a + 10) * 125 / (a + b + 20);
    u16 r = (u16)sub_080008C8() % 100;
    if (q >= r) {
        return 1;
    }
    return 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080223F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802247C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022504);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802258C);
void sub_08022630(void) {
    u8 *p;
    u32 q;
    gUnk_03005CF4 = (s32)sub_08001494(0x1E78);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17A0) = (u32)sub_080226A4;
    q = (u32)sub_08001494(0x800);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17B4) = q;
    *(u32 *)(p + 0x17A4) = q + 0x7FC;
    *(u32 *)(p + 0x179C) = 0x46;
    *(u32 *)(p + 0x17B8) = 0;
    *(u16 *)(p + 4) = 0;
    *(u32 *)(p + 0x54) = 0;
    sub_08000274(p + 0x1794,
        0x1794);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080226A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022E60);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023274);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023684);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080239E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023A3C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023ED8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023F98);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802413C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08024538);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080245CC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080257D4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026338);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080267DC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026858);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026C54);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026CD0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802704C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080277E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027B50);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027C1C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028368);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080283C4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028498);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080284F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028830);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028918);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080289C0);
