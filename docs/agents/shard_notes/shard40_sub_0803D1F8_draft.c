#include "global.h"

void sub_0803D1F8(s32 arg0)
{
    s32 h;
    u8 *q;
    struct Player *p;

    p = gUnk_03003CE0 + sub_080020F4();
    p->flags |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) {
        sub_080003F0();
    }
    h = sub_0805DF38(1, 0xF, 2, 0, -2, 0x1404F8);
    while (sub_0805EEFC(h) == 0) {
        sub_080003F0();
    }
    if (sub_0805EF14(h) != 0) {
        if (sub_0800CE30() != 0) {
            q = (u8 *) gUnk_03005CF4 + 0x1C4;
        } else {
            q = (u8 *) gUnk_03005CF4 + 0x1B8;
        }
        *q |= 0x40;
        if ((gUnk_030027D0 & 0x20) == 0) {
            sub_08006D08(0x32);
        }
    }
    while (sub_0805F184() != 0) {
        sub_080003F0();
    }
    h = sub_0805DF38(1, 0xF, 2, 0, -2, 0x1404F9);
    while (sub_0805EEFC(h) == 0) {
        sub_080003F0();
    }
    if (sub_0805EF14(h) != 0) {
        if (sub_0800CE30() != 0) {
            q = (u8 *) gUnk_03005CF4 + 0x1C4;
        } else {
            q = (u8 *) gUnk_03005CF4 + 0x1B8;
        }
        *q |= 0x80;
        if ((gUnk_030027D0 & 0x20) == 0) {
            sub_08006D08(0x32);
        }
    }
    sub_08029788(arg0);
    p = gUnk_03003CE0 + sub_080020F4();
    p->flags &= ~1;
    sub_0800D108();
}
