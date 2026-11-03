#include "global.h"
struct Sprite10847 {u32 f0,f4,f8;u8 *palette;u8 pad10[12];u8 style,paletteId;u8 pad1E[22];};
struct Oam10847 {u32 f0,f4;s32 x,y;};
struct Obj10847 {u8 p0[0x14]; s32 x, y;};
extern struct Obj10847 *object10847 asm("gUnk_03000364");
extern struct Sprite10847 sprites10847[] asm("gUnk_03000380");
extern u8 styles10847[] asm("gUnk_0300039C");
extern u8 frame10847 asm("gUnk_030003FC");
extern u8 side10847 asm("gUnk_030003F0");
extern u8 direction10847 asm("gUnk_030003FB");
extern u16 palette10847 asm("gUnk_030003E8");
extern s16 offsetX10847[] asm("gUnk_08518754");
extern s16 offsetY10847[] asm("gUnk_08518756");
extern void animate10847(void*,u32,u16*,u16*,s32) asm("sub_08065370");
extern void coords10847(s32,s32,s16*,s16*,s32,s32) asm("sub_0800BC08");
extern struct Oam10847 *draw10847(s32,s32,u32,u32,u32,void*,u32,u32) asm("sub_08007870");
void sub_080A47A0(void)
{
    u16 tile, rotation;
    s16 sx, sy;
    u8 *metadata;
    s32 x, y;
    u8 animation, mode;
    s32 paused;
    struct Oam10847 *output;

    metadata = (u8 *)object10847 + 0x204;
    rotation = 0;
    tile = 0;
    for (;;) {
    wait:
        if (frame10847 == 0) {
            sub_080003F0();
            goto wait;
        }
        if (side10847 == 1)
            animation = frame10847 + 5;
        else
            animation = frame10847;
        x = object10847->x;
        y = object10847->y;
        x += offsetX10847[direction10847 * 2];
        y += offsetY10847[direction10847 * 2];
        sprites10847[side10847].style = palette10847;
        sub_08000AF0(palette10847 + 16, sprites10847[side10847].palette + (*(u16 *)(metadata + 0xD6) << 5), 1);
        if (sub_0800CD8C() == 0)
            animate10847(&sprites10847[side10847], animation, &tile, &rotation, 0);
        if (sub_08098004() & 1)
            mode = sub_08097FF8();
        else
            mode = sub_0800BC44(x >> 8, y >> 8, 0);
        if (sub_0800CCCC() == 0 && sub_0800CC98() == 0 && (paused = sub_0800CD34()) == 0) {
            coords10847((s32)(object10847->x << 8) >> 16, (s32)(object10847->y << 8) >> 16, &sx, &sy, paused, paused);
            output = draw10847(sx, sy + 1, animation, tile, mode, styles10847 + side10847 * 0x34,
                               *(u32 *)(styles10847 + side10847 * 0x34 - 0x14), *(u32 *)(styles10847 + side10847 * 0x34 - 0x1C));
            coords10847((s32)(x << 8) >> 16, (s32)(y << 8) >> 16, &sx, &sy, paused, paused);
            output->x = sx;
            output->y = sy;
        }
        sub_080003F0();
        if (sub_0800CED8() != 0 || sub_0800CB78() != 0 || sub_0800CD00() != 0)
            break;
    }
}
