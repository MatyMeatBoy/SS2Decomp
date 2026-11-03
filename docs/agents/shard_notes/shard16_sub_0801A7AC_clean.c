#include "global.h"
struct Disp16 { u8 pad[0x30]; u16 f30, f32, f34, f36, f38, f3A; u8 pad3C[4]; u16 f40, f42, f44; };
extern struct Disp16 display16 asm("gUnk_03001250");
extern s16 gUnk_03001294;
extern s16 gUnk_03001F40;
extern s16 flags16 asm("gUnk_03000028");
void sub_0801A7AC(void)
{
    s16 *step;
    struct Disp16 *screen;
    struct Disp16 *inner;
    s32 flag;
    s32 flag16;
    s32 d;
    u32 total;

    flags16 = 1;
    step = &gUnk_03000026;
    screen = &display16;
    for (;;) {
        sub_080003F4(100);
        flag = (s16)(flags16 & 2);
        if (flag) {
            display16.f40 = 0xFF;
            flag = 0;
            if (*step > 0)
                gUnk_03001294 = flag;
            else
                gUnk_03001294 = 16;
            sub_080003F0();
            sub_080009F8(0, 0x2000, 1);
            for (;;) {
                gUnk_03001294 = (gUnk_03000022 << 4) / gUnk_03000020;
                d = *(u16 *)step;
                total = d + gUnk_03000022;
                gUnk_03000022 = total;
                d = (s16)d;
                if (d > 0 && gUnk_03000020 < (u16)total)
                    goto fin;
                if (d < 0 && (total & 0x8000))
                    goto fin;
                sub_080003F0();
                continue;
            fin:
                if (gUnk_03000026 < 0)
                    gUnk_03000022 = 0;
                break;
            }
        } else if ((flag16 = (s16)(flags16 & 16))) {
            if (*step > 0)
                gUnk_03001294 = flag;
            else
                gUnk_03001294 = 16;
            inner = &display16;
            for (;;) {
                inner->f40 = 0xFF;
                inner->f44 = (gUnk_03000022 << 4) / gUnk_03000020;
                d = *(u16 *)step;
                total = d + gUnk_03000022;
                gUnk_03000022 = total;
                d = (s16)d;
                if (d > 0 && gUnk_03000020 < (u16)total)
                    goto fin2;
                if (d < 0 && (total & 0x8000))
                    goto fin2;
                sub_080003F0();
                continue;
            fin2:
                if (gUnk_03000026 < 0)
                    gUnk_03000022 = 0;
                break;
            }
        } else {
            gUnk_03000020 = 2;
            if (gUnk_03000026 > 0) {
                screen->f3A = 0x3F3F;
                screen->f38 = flag16;
                screen->f30 = 0xF0;
                screen->f34 = 0xA0;
                sub_080003F0();
                gUnk_03001F40 = flag16;
                sub_08000B38();
                sub_080009C0(0, 0x2000, 1);
                gUnk_03000022 = 1;
                gUnk_03000026 = flag16;
                sub_080003F0();
            } else {
                screen->f3A = flag16;
                screen->f38 = 0x3F3F;
                screen->f30 = flag16;
                screen->f34 = flag16;
                sub_080009F8(0, 0x2000, 1);
                gUnk_03000022 = flag16;
                gUnk_03000026 = -1;
                sub_080003F0();
            }
        }
        flags16 &= ~0x16;
    }
}
