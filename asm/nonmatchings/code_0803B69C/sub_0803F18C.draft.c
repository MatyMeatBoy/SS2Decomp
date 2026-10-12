#include "global.h"

extern s32 sub_0802939C(s32, s32);

void sub_0803F18C(s32 arg0) {
    u16 n;
    u8 *q;

    n = 0x1E;
    while (sub_080003F0(), sub_080021A8() == 0) {
        n--;
        if (n == 0) {
            break;
        }
    }
    sub_0802939C(0, 8);
    switch (arg0) {
    case 1:
    case 2:
    case 0:
        sub_08028D98(0, 0, -0x12C, 0x12C);
        break;
    case 3:
        sub_08028D98(0, 0, -0x12C, 0x12C);
        break;
    }
    q = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    *(u16 *)(q + 0x20) = 0;
}
