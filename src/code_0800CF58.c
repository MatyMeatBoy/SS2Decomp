#include "global.h"

void sub_0800CF58(void) {
    gUnk_03003478 |= 0x10000;
}
void sub_0800CF6C(void) {
    gUnk_03003478 &= 0xFFFEFFFF;
}
s32 sub_0800CF80(void) {
    return ((u32) gUnk_03003478 >> 0x10) & 1;
}
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
s32 sub_0800D098(void) {
    return ((u32) gUnk_03003478 >> 0x18) & 1;
}
void sub_0800D0A8(void) {
    gUnk_03003480[3] = (s32) sub_0800BEC0;
    while (1) {
        gUnk_03003480[8] = (s32) sub_08001494(0x800);
        if (gUnk_03003480[8] != 0) {
            break;
        }
        sub_080003F0();
    }
    gUnk_03003480[4] = gUnk_03003480[8] + 0x7FC;
    gUnk_03003480[2] = 0x64;
    gUnk_03003480[9] = 0;
    sub_08000274(gUnk_03003480, 0);
}
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
void sub_0800D164(void) {
    while (1) {
        while (sub_08056E90() == 0 && ((u32) gUnk_03003478 >> 5) & 1) {
            sub_080003F0();
        }
        if (((u32) gUnk_03003478 >> 5) & 1) {
            sub_08057328(0, sub_080277E0);
        }
        while (sub_08056E90() != 0) {
            sub_080003F0();
        }
    }
}
s32 sub_0800D1B0(void) {
    s32 r4;
    s32 idx;
    u8 *pl;
    idx = sub_080020F4();
    pl = (u8 *) gUnk_03003CE0 + idx * 0x14C;
    r4 = 0;
    if (pl[0x68] == 0 || (*(u32 *) (pl + 0x30) & 0x400) || *(u16 *) (pl + 0x20) == 0xC || sub_08058DB0() || sub_0800D11C() || sub_0800CCCC() || sub_0800CDF8()) {
        r4 = 1;
    }
    if (sub_0800CF80() != 0 && sub_08056E50() != 0) {
        r4 = 1;
    }
    switch (gUnk_03003170.curLevel - 2) {
    case 0:
        if (gUnk_03003170.f90 == 7) r4 = 1;
        break;
    case 3:
        if (gUnk_03003170.f90 == 0 || gUnk_03003170.f90 == 0xA) r4 = 1;
        break;
    case 6:
        if (gUnk_03003170.f90 == 0x11) r4 = 1;
        break;
    case 17:
        if (gUnk_03003170.f90 == 2) r4 = 1;
        break;
    case 19:
        if (gUnk_03003170.f90 == 2 || gUnk_03003170.f90 == 4) r4 = 1;
        break;
    case 9:
        if (gUnk_03003170.f90 != 0) break;
    case 10:
    case 12:
        r4 = 1;
        break;
    }
    if (sub_0800CDC0() != 0 && sub_08019C3C() == 0) {
        r4 = 1;
    }
    return r4;
}
void sub_0800D2F4(void) {
    s32 r;
    s32 p;
    r = ((s32 (*)(void)) sub_0801DE60)();
    if (r == 2) {
        goto block_a;
    }
    if (r > 2) {
        goto block_x;
    }
    if (r == 0) {
        goto block_a;
    }
    return;
block_x:
    if (r == 3) {
        goto block_c;
    }
    if (r != 5) {
        return;
    }
block_a:
    p = gUnk_030034E0;
    if (*(u16 *) (p + 0x50) != 0) {
        u16 v = sub_0801E0AC(p + 0x30, 7);
        sub_08067FE0(7, v);
    }
    return;
block_c:
    p = gUnk_030034E0;
    if (*(u16 *) (p + 0x4C) != 0) {
        u16 v = sub_0801E0AC(p + 0x30, 6);
        sub_08067FE0(6, v);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_0800D368);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080135C4);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080137A0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013850);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013BC0);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013C3C);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013CEC);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_08013E90);
INCLUDE_ASM("asm/nonmatchings/code_0800CF58", sub_080140AC);
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
