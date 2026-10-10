#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002118);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002164);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080021A8);
void sub_080021C4(void) {
    gUnk_030027D0 |= 4;
}
void sub_080021D4(void) {
    gUnk_030027D0 &= ~4;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080021E8);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002204);
s32 sub_08002228(void) {
    return gUnk_030027D0 & 1;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002238);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800224C);
void sub_08002298(s32 arg0) {
    gUnk_0300272C = arg0;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080022A4);
s32 sub_080022F4(void) {
    return ((u32) gUnk_030027D0 >> 1) & 1;
}
void sub_08002304(void) {
    if (2 & gUnk_030027D0) {
        gUnk_030027D0 &= ~8;
        sub_08000420(0x1F40);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800232C);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002658);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002694);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002A54);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002A8C);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002AA0);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08002B70);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08003984);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08005A24);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08005B88);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800608C);
void sub_08006544(void) {
    gUnk_0300001C = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006550);
void sub_080065B0(void) {
    s32 temp_r0;

    if (sub_08000470(&gUnk_03002840) != 0) {
        sub_080003A8((s32) &gUnk_03002840);
    }
    temp_r0 = sub_08001494(0x1000);
    M2C_FIELD(&gUnk_03002840, M2C_UNK **, 0xC) = &sub_08002B70;
    M2C_FIELD(&gUnk_03002840, s32 *, 0x10) = (s32) (temp_r0 + 0xFFC);
    M2C_FIELD(&gUnk_03002840, s32 *, 0x20) = temp_r0;
    M2C_FIELD(&gUnk_03002840, s32 *, 8) = 1;
    M2C_FIELD(&gUnk_03002840, s32 *, 0x24) = 0;
    sub_08000274(&gUnk_03002840, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080065FC);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_0800663C);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006694);
void sub_080066A8(void) {
    *(s16 *)0x04000010 = (s16) gUnk_03003474;
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_080066BC);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006B2C);
void sub_08006B60(void) {
    m4aSoundMode(0x93D800);
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006B70);
void sub_08006BB4(u32 mode) {
    m4aSoundMode(mode);
}
void sub_08006BC0(void) {
    gUnk_03002870 = 0;
    gUnk_030028AC = 0;
    sub_08000940();
    m4aMPlayAllStop();
    sub_08006BF8();
loop_1:
    sub_080003F0();
    goto loop_1;
}
void sub_08006BE8(void) {
    m4aMPlayAllStop();
    sub_08006C14();
}
void sub_08006BF8(void) {
    if (gUnk_03002870 == 0) {
        gUnk_03002870 = 1;
        m4aSoundVSyncOn();
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006C14);
INCLUDE_ASM("asm/nonmatchings/code_08002118", sub_08006C30);
void sub_08006C70(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if (((u32) temp_r1 <= 0x1ABU) && (gUnk_030028AC != 0)) {
        m4aSongNumStart((s32) temp_r1);
    }
}
void sub_08006C98(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrChange(temp_r1);
    }
}
void sub_08006CB4(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrContinue(temp_r1);
    }
}
void sub_08006CD0(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStop(temp_r1);
    }
}
void sub_08006CEC(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumContinue(temp_r1);
    }
}
void sub_08006D08(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStart((s32) temp_r1);
    }
}
