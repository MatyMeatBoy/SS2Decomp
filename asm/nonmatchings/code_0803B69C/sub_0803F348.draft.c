#include "global.h"

extern s32 sub_08029174(s32, s32);

void sub_0803F348(s32 arg0) {
    s32 p;
    u16 n;

    p = arg0;

    sub_08028D98(p, -0x14, 0, 0xA);
    sub_08029174(p, 0x10);
    sub_08028D98(p, 0x14, 0, 0xA);
    sub_08029174(p, 0xA);
    n = 60;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08028D98(p, -0x14, 0, 0xA);
    sub_08029174(p, 0x10);
    sub_08028D98(p, 0x14, 0, 0xA);
    sub_08029174(p, 0xA);
    n = 60;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08028D98(p, -0x1C, 0, 0xA);
    sub_08029174(p, 0x10);
    sub_08029174(p, 0xA);
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    for (n = 1; n <= 9; n++) {
        sub_08028D98(p, 4, 0, 8);
        sub_08028D98(p, -4, 0, 8);
    }
    sub_08029174(p, 0x10);
    sub_08028D98(p, -0xA, 0, 2);
    sub_08029174(p, 0xA);
}
