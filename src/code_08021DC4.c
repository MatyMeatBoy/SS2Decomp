#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021DC4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021E44);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021EC8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021F58);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08021FE0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022028);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022078);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022100);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022180);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022200);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022284);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802230C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080223A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080223F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802247C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022504);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802258C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022630);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080226A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022E60);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023274);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023684);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080239E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023A3C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023ED8);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023F98);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802413C);
void sub_08024538(s32 arg0) {
    struct Player *p;

    p = &gUnk_03003CE0[sub_080020F4()];
    p->flags = (p->flags & ~0x400) | 1;
    while (sub_08067D74() == 0) {
        (void)sub_08057624(1);
    }
    (void)sub_08057624(0x3C);
    p->flags &= ~3;
    while (sub_08067D74() == 0) {
        (void)sub_08057624(1);
    }
    if (sub_0800CF80() == 0) {
        *((u8 *)p + 0x68) = 1;
    }
    while (sub_0806617C() == 0) {
        (void)sub_08057624(1);
    }
    if (arg0 != 0) {
        p->flags |= 0x1000000;
    } else {
        p->flags |= 0x800000;
    }
}
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
