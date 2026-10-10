#include "global.h"

void sub_08025890(void);
void sub_080263B4(void);

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
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08024538);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080245CC);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080257D4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
void sub_08026338(void *arg) {
    s32 *gp;
    s32 off;
    s32 base;
    void *temp_r0;

    gp = &gUnk_03005CF4;
    off = 0x17BC;
    if (sub_08000470(*gp + off) != 0) {
        sub_080003A8(*gp + off);
    }
    *(void **)(*gp + 0x17C8) = sub_08025890;
    temp_r0 = sub_08001494(0x400);
    base = *gp;
    *(void **)(base + 0x17DC) = temp_r0;
    *(void **)(base + 0x17CC) = (void *) (temp_r0 + 0x3FC);
    *(s32 *)(base + 0x17C4) = 0x46;
    *(s32 *)(base + 0x17E0) = 0;
    sub_08000274((M2C_UNK *) (base + off), (s32) arg);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
void sub_080267DC(void) {
    s32 *gp;
    s32 off;
    s32 base;
    void *temp_r0;

    gp = &gUnk_03005CF4;
    off = 0x17BC;
    if (sub_08000470(*gp + off) != 0) {
        sub_080003A8(*gp + off);
    }
    *(void **)(*gp + 0x17C8) = sub_080263B4;
    temp_r0 = sub_08001494(0x400);
    base = *gp;
    *(void **)(base + 0x17DC) = temp_r0;
    *(void **)(base + 0x17CC) = (void *) (temp_r0 + 0x3FC);
    *(s32 *)(base + 0x17C4) = 0x46;
    *(void **)(base + 0x17E0) = sub_0805A6A0;
    sub_08000274((M2C_UNK *) (base + off), (s32) sub_0805A6A0);
}
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
