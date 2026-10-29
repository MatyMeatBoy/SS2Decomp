#include "global.h"

void sub_08006D5C_(u16 n) __asm__("sub_08006D5C");

void sub_08006E84_(void) __asm__("sub_08006E84");

void sub_08006D24(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrChange(temp_r1);
    }
}
void sub_08006D40(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumStartOrContinue(temp_r1);
    }
}
void sub_08006D5C_(u16 n)
{
    if (n <= 0x1AB)
        m4aSongNumStop(n);
}
void sub_08006D78(u16 arg0) {
    u16 temp_r1;

    temp_r1 = arg0;
    if ((u32) temp_r1 <= 0x1ABU) {
        m4aSongNumContinue(temp_r1);
    }
}
void sub_08006D94(struct MusicPlayerInfo *mplayInfo, struct SongHeader *songHeader) {
    MPlayStart(mplayInfo, songHeader);
}
void sub_08006DA0(struct MusicPlayerInfo *mplayInfo) {
    m4aMPlayStop(mplayInfo);
}
void sub_08006DAC(void) {
    m4aMPlayAllStop();
}
void sub_08006DB8(void) {
    m4aMPlayAllContinue();
}
void sub_08006DC4(struct MusicPlayerInfo *mplayInfo, u16 speed) {
    m4aMPlayFadeOut(mplayInfo, speed);
}
void sub_08006DD4(struct MusicPlayerInfo *mplayInfo, u16 tempo) {
    m4aMPlayTempoControl(mplayInfo, tempo);
}
void sub_08006DE4(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u16 volume) {
    m4aMPlayVolumeControl(mplayInfo, trackBits, volume);
}
void sub_08006DF8(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s16 pitch) {
    m4aMPlayPitchControl(mplayInfo, trackBits, pitch);
}
void sub_08006E0C(struct MusicPlayerInfo *mplayInfo, u16 trackBits, s8 pan) {
    m4aMPlayPanpotControl(mplayInfo, trackBits, pan);
}
void sub_08006E20(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 modDepth) {
    m4aMPlayModDepthSet(mplayInfo, trackBits, modDepth);
}
void sub_08006E34(struct MusicPlayerInfo *mplayInfo, u16 trackBits, u8 lfoSpeed) {
    m4aMPlayLFOSpeedSet(mplayInfo, trackBits, lfoSpeed);
}
void sub_08006E48(struct MusicPlayerInfo *mplayInfo) {
    m4aMPlayImmInit(mplayInfo);
}
void sub_08006E54(void) {

}
void sub_08006E58(void) {
    m4aSongNumStart(0x62);
}
void sub_08006E64(u8 v)
{
    gUnk_030028AC = v;
    if (v == 0)
        m4aMPlayStop(&gUnk_030075C0
                     );
}
void sub_08006E84_(void)
{
    u8 *p = sub_08001494(
        0x400);
    gUnk_03002880.fC = sub_08006BC0;
    gUnk_03002880.f10 = p + 0x3FC;
    gUnk_03002880.f20 = p;
    gUnk_03002880.f8 = 1000;
    gUnk_03002880.f18 = 0;
    gUnk_03002880.f0 = 0;
    gUnk_03002880.f24 = sub_08006BE8;
    sub_08000274((void *)&gUnk_03002880,
                 0);
}
void sub_08006EC8(u16 s)
{
    m4aMPlayFadeOut((struct MusicPlayerInfo *)&gUnk_030075C0,
                    s);
}
struct ResourceHeader6EE0 { u32 first, second; u32 offsets[10]; };
struct ResourceBlock6EE0 { u32 count; u32 offsets[1]; };
extern u8 gUnk_084506D0[], gUnk_08434738[], gUnk_0843B8C8[], gUnk_08442498[];
extern u8 gUnk_084303B8[], gUnk_0844A820[], gUnk_0844EB50[], gUnk_0842A6D4[];
extern u8 gUnk_084742BC[], gUnk_0842A38C[], gUnk_0847838C[];
extern u8 *gUnk_0838AFF0[], *gUnk_084009A4[], *gUnk_08428C38[], *gUnk_083D8AEC[], *gUnk_083B0B4C[];
s32 sub_08006EE0(s32 value, s32 *archive)
{
    u8 *resource;
    struct ResourceHeader6EE0 *header = (struct ResourceHeader6EE0 *)archive;
    u32 kind = ((u32)value << 4) >> 20;
    switch (kind) {
    case 7: resource = (u8 *)header + header->offsets[1]; break;
    case 8: resource = (u8 *)header + header->offsets[6]; break;
    case 9: resource = (u8 *)header + header->offsets[3]; break;
    case 0: case 1: case 2: case 3: case 4: case 5: case 6:
        resource = (u8 *)header + header->offsets[kind]; break;
    case 11: resource = gUnk_084506D0 + 0xC4 * (value & 0xFFFF); break;
    case 12: resource = gUnk_08434738 + 0xB8 * (value & 0xFFFF); break;
    case 13: resource = gUnk_0843B8C8 + 0xB8 * (value & 0xFFFF); break;
    case 14: resource = gUnk_08442498 + 0xB8 * (value & 0xFFFF); break;
    case 15: resource = gUnk_084303B8 + 0xB4 * (value & 0xFFFF); break;
    case 16: resource = gUnk_0844A820 + 0xAC * (value & 0xFFFF); break;
    case 17: resource = gUnk_0844EB50 + 0xB0 * (value & 0xFFFF); break;
    case 18: resource = gUnk_0842A6D4 + 0xA4 * (value & 0xFFFF); break;
    case 19: resource = gUnk_084742BC + 0xB0 * (value & 0xFFFF); break;
    case 20:
        switch ((u32)gUnk_03003470) {
        case 0: resource = gUnk_0838AFF0[value & 0xFFFF]; break;
        case 1: resource = gUnk_084009A4[value & 0xFFFF]; break;
        case 2: resource = gUnk_08428C38[value & 0xFFFF]; break;
        case 4: resource = gUnk_083B0B4C[value & 0xFFFF]; break;
        case 3: resource = gUnk_083D8AEC[value & 0xFFFF]; break;
        }
        break;
    case 21: resource = gUnk_0842A38C + 0xA8 * (value & 0xFFFF); break;
    case 22: resource = gUnk_0847838C; break;
    default: return 0;
    }
    switch (kind) {
    case 0: case 2:
        { u32 offset = (value & 0xFFFF) << 2; register u8 *entry asm("r1") = resource + 4; entry += offset; resource += *(u32 *)entry; }; break;
    case 5:
        { u32 offset = (value & 0xFFFF) << 2; register u8 *entry asm("r1") = resource + 4; entry += offset; resource += *(u32 *)entry; }; break;
    case 4:
        { u32 offset = (value & 0xFFFF) << 2; register u8 *entry asm("r1") = resource + 4; entry += offset; resource += *(u32 *)entry; }; break;
    case 1: case 3: case 6:
        { u32 offset = ((value & 0xFFFF) * 2) << 2; register u8 *entry asm("r1") = resource + 4; entry += offset; resource += *(u32 *)entry; }; break;
    case 7: case 8: case 9:
        { u32 offset = ((value & 0xFFFF) * 2 + 1) << 2; register u8 *entry asm("r1") = resource + 4; entry += offset; resource += *(u32 *)entry; }; break;
    }
    return (s32)resource;
}
struct ResourceTable7164 { u32 first, second; u32 offsets[10]; };
s32 sub_08007164(u32 value)
{
    register s32 result asm("r4");
    u8 *base = (u8 *)&gUnk_08518938;
    struct ResourceTable7164 *header = (struct ResourceTable7164 *)base;
    u8 *resource;
    u32 kind = value & 0xFFF;
    switch (kind) {
    case 7: resource = base + header->offsets[1]; break;
    case 8: resource = base + header->offsets[6]; break;
    case 9: resource = base + header->offsets[3]; break;
    case 0: case 1: case 2: case 3: case 4: case 5: case 6:
        resource = base + header->offsets[kind]; break;
    case 11: return 0x2EB;
    case 12: return 0x9E;
    case 13: return 0x96;
    case 14: return 0xB7;
    case 15: return 0x60;
    case 17: return 0x28;
    case 16: return 0x64;
    case 20: return 0x5D5;
    case 18: return 0x91;
    case 19: return 0x59;
    case 21: return 5;
    default: return 0;
    }
    switch (kind) {
    case 0: result = *(s32 *)resource; break;
    case 1: result = *(s32 *)resource; break;
    case 2: result = *(s32 *)resource; break;
    case 3: result = *(s32 *)resource; break;
    case 4: result = *(s32 *)resource; break;
    case 5: result = *(s32 *)resource; break;
    case 6: result = *(s32 *)resource; break;
    case 7: result = *(s32 *)resource; break;
    case 8: result = *(s32 *)resource; break;
    case 9: result = *(s32 *)resource; break;
    }
    return result;
}
s32 sub_08007280(M2C_UNK arg0) {
    return sub_08006EE0(arg0, &gUnk_08E3FB54);
}
s32 sub_08007290(s32 arg0) {
    return sub_08006EE0(arg0, &gUnk_08518938);
}
struct Root4OamData { u32 y:8; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 x:9; u32 matrixNum:5; u32 size:2; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; u16 affineParam; };
struct Root4SpriteOam { s8 y; u8 unk1; u16 x:9; u16 unk2_9:7; u16 tileNum:10; u16 unk4_10:6; u16 unk6; };
struct Root4SpriteFrame { u16 unk0; u16 count; u32 unk4; s32 oams; };
struct Root4SpriteAnim { u16 unk0; u16 unk2; u16 frameCount; u16 unk6; s32 frames; };
struct Root4SpriteRecord { u16 unk0; u16 animCount; s32 frames; s32 anims; };
extern struct Root4OamData root4OamBuffer[] asm("gUnk_03001330");
extern u32 root4OamUsed asm("gUnk_030028B4");
s32 oamDraw004(s32,s32,u16,u16,u8,u8,struct Root4SpriteRecord *,u16) asm("sub_080072A0");
s32 oamDraw004(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 palette,
                    struct Root4SpriteRecord *record, u16 tileBase)
{
    struct Root4SpriteFrame *frames;
    u32 anims;
    u32 list;
    struct Root4SpriteAnim *entry;
    struct Root4SpriteOam *src;
    struct Root4OamData *dest;
    u32 firstTile;
    u32 i;
    s32 objX;
    s32 objY;
    u32 count;

    count = root4OamUsed;
    if (count > 128)
        return 0;
    frames = (struct Root4SpriteFrame *)((u8 *)record + record->frames);
    anims = (u32)record + record->anims;
    if (anim < record->animCount)
    {
        entry = (struct Root4SpriteAnim *)(anim * sizeof(struct Root4SpriteAnim) + anims);
        if (entry->frameCount > frame)
        {
            list = entry->frames + (u32)entry;
            list += frame * 4;
            frames += *(u16 *)list;
            src = (struct Root4SpriteOam *)((u8 *)frames + frames->oams);
            firstTile = src->tileNum;
            dest = &root4OamBuffer[count];
            for (i = 0; i < frames->count; i++, dest++, src++)
            {
                ((u16 *)dest)[0] = ((u16 *)src)[0];
                ((u16 *)dest)[1] = ((u16 *)src)[1];
                ((u16 *)dest)[2] = ((u16 *)src)[2];



                do
                {
                    objX = ((struct Root4OamData *)src)->x << 23;
                    objX >>= 23;
                    objY = src->y;
                    objY += y;
                    objX += x;
                } while (0);
                dest->priority = priority;
                dest->paletteNum = palette;
                if ((u32)(objX + 64) > 304)
                {
                    dest->shape = 0;
                    dest->size = 0;
                    objY = 160;
                }
                if ((u32)(objY + 64) > 224)
                {
                    dest->shape = 0;
                    dest->size = 0;
                    objY = 160;
                }
                dest->x = objX;
                dest->y = objY;
                dest->tileNum -= firstTile;
                dest->tileNum += tileBase;
                if (++root4OamUsed > 128)
                    return 0;
            }
        }
    }
    return 1;
}
struct Root4TileSpriteOam { s8 y; u8 unk1_0:6; u8 shape:2; s16 x:9; u16 unk2_9:5; u16 size:2; u16 tileNum:10; u16 tileHi:2; u16 unk4_12:4; u16 unk6; };
struct Root4TileSpriteFrame { u16 unk0; u16 count; u32 unk4; s32 oams; };
struct Root4TileSpriteAnim { u16 unk0; u16 unk2; u16 frameCount; u16 unk6; s32 frames; };
struct Root4TileSpriteRecord { u16 unk0; u16 animCount; s32 frames; s32 anims; };
extern void tileQueue004(const void *src, void *dest, u32 size) asm("sub_08001348");
void oamFrameTiles004(u16, u16, struct Root4TileSpriteRecord *, u8 *, u8 *) asm("sub_08007434");
void oamFrameTiles004(u16 anim, u16 frame, struct Root4TileSpriteRecord *record, u8 *tiles, u8 *vram)
{
    struct Root4TileSpriteFrame *frames;
    struct Root4TileSpriteAnim *entry;
    struct Root4TileSpriteOam *obj;
    u32 anims;
    u32 list;
    u32 firstTile;
    u32 i;
    u8 *src;
    u8 *dest;

    frames = (struct Root4TileSpriteFrame *)(record->frames + (u32)record);
    anims = (u32)record + record->anims;
    entry = (struct Root4TileSpriteAnim *)(anim * sizeof(struct Root4TileSpriteAnim) + anims);
    if (entry->frameCount > frame)
    {
        list = entry->frames + (u32)entry;
        list += frame * 4;
        frames += *(u16 *)list;

        obj = (struct Root4TileSpriteOam *)frames->oams;
        obj = (struct Root4TileSpriteOam *)((u32)obj + (u32)frames);
        firstTile = obj->tileNum;
        for (i = 0; i < frames->count; i++, obj++)
        {
            dest = vram + (obj->tileNum - firstTile) * 32;
            src = tiles + obj->tileNum * 0x400;
            switch (obj->shape)
            {
            case 0:
                switch (obj->size)
                {
                case 0:
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    break;
                case 1:
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    break;
                case 2:
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    break;
                case 3:
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    break;
                }
                break;
            case 1:
                switch (obj->size)
                {
                case 0:
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    break;
                case 1:
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    break;
                case 2:
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    break;
                case 4:
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x100); src += 0x400; dest += 0x400; }
                    break;
                }
                break;
            case 2:
                switch (obj->size)
                {
                case 0:
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    break;
                case 1:
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x20); src += 0x400; dest += 0x400; }
                    break;
                case 2:
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x40); src += 0x400; dest += 0x400; }
                    break;
                case 4:
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    { tileQueue004(src, dest, 0x80); src += 0x400; dest += 0x400; }
                    break;
                }
                break;
            }
        }
    }
}
struct Root4SeqOamData { u32 y:8; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 x:9; u32 matrixNum:5; u32 size:2; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; u16 affineParam; };
struct Root4SeqSpriteOam { s8 y; u8 unk1_0:6; u8 shape:2; s16 x:9; u16 unk2_9:5; u16 size:2; u16 tileNum:10; u16 unk4_10:6; u16 unk6; };
struct Root4SeqSpriteFrame { u16 unk0; u16 count; u32 unk4; s32 oams; };
struct Root4SeqSpriteAnim { u16 unk0; u16 unk2; u16 frameCount; u16 unk6; s32 frames; };
struct Root4SeqSpriteRecord { u16 unk0; u16 animCount; s32 frames; s32 anims; };
extern struct Root4SeqOamData root4SeqOam[] asm("gUnk_03001330");
extern u32 root4SeqCount asm("gUnk_030028B4");
extern u32 root4SeqTiles asm("gUnk_030028B8");
extern const u32 root4SeqNonSquare[] asm("gUnk_0847842C");
extern const u32 root4SeqSquare[] asm("gUnk_0847843C");
extern u32 root4SeqVram asm("gUnk_030028BC");
u32 oamDrawSeq004(s32,s32,u16,u16,u8,u8 *,struct Root4SeqSpriteRecord *) asm("sub_080076C4");
u32 oamDrawSeq004(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 *palettes,
                 struct Root4SeqSpriteRecord *record)
{
    struct Root4SeqSpriteFrame *frames;
    struct Root4SeqSpriteAnim *entry;
    struct Root4SeqSpriteOam *src;
    struct Root4SeqOamData *dest;
    u32 base;
    u32 list;
    struct Root4SeqSpriteOam *obj;
    u32 shape;
    u16 tile;
    u32 i;
    s32 objX;
    s32 objY;
    u32 count;

    count = root4SeqCount;
    if (count > 128)
        return -1;
    if (record->animCount < anim)
        return -1;
    base = root4SeqTiles;
    frames = (struct Root4SeqSpriteFrame *)(record->frames + (u32)record);
    entry = (struct Root4SeqSpriteAnim *)((u32)record + record->anims) + anim;
    list = (u32)entry + entry->frames;
    list += frame * 4;
    frames += *(u16 *)list;
    src = (struct Root4SeqSpriteOam *)((u8 *)frames + frames->oams);
    dest = &root4SeqOam[count];
    tile = 0;
    for (i = 0; i < frames->count; i++, dest++, src++)
    {


        do
        {
            obj = src;
            *dest = *(struct Root4SeqOamData *)src;
            objX = ((u16 *)src)[1] << 23;
            objX >>= 23;
            objY = src->y;
            objY += y;
            objX += x;
        } while (0);
        dest->priority = priority;
        dest->paletteNum = palettes[dest->paletteNum];
        if ((u32)(objX + 64) > 304 || objY > 160 || objY < -64)
        {
            dest->size = 0;
            dest->shape = 0;
            objY = 160;
        }
        dest->x = objX;
        dest->y = objY;
        dest->tileNum = tile + base;
        shape = obj->shape;
        if (shape)
            tile += root4SeqNonSquare[obj->size];
        else
            tile += root4SeqSquare[obj->size];
        if (++root4SeqCount > 128)
            return 0;
    }
    root4SeqTiles += tile;
    return root4SeqVram + base * 32;
}
struct Draw7870 { struct Draw7870 *prev,*next; s32 x,y; u16 a,b; u32 data0,data1,data2; u16 field20; u8 priority:3; u8 bit3:1; u8 bits4:3; u8 bit7:1; u8 pad23; u16 field24,field26,field28,pad2A; };
extern struct Draw7870 *head7870 asm("gUnk_030028C0");
extern struct Draw7870 *tail7870 asm("gUnk_030028C4");
extern u32 count7870 asm("gUnk_030028C8");
extern struct Draw7870 entries7870[] asm("gUnk_030028D0");
s32 sub_08007870(s32 arg0, s32 arg1, u32 arg2, u32 arg3, s32 arg4, s32 arg5, s32 arg6, s32 arg7) {
    register u32 temp_r5 asm("r5"); register s32 x7870 asm("r8")=arg0; register s32 y7870 asm("r6")=arg1; 
    struct Draw7870 *temp_r0; register u32 priorityInput7870 asm("r0"); register u32 a7870 asm("ip"); u32 b7870;
    struct Draw7870 *temp_r1; register u32 *countAddr7870 asm("r2"); u32 countValue7870;
    struct Draw7870 *temp_r4;
    struct Draw7870 *var_r1; register struct Draw7870 **tailAddr7870 asm("r3"); register struct Draw7870 **headAddr7870 asm("r2");

    priorityInput7870=arg4; asm("" : "+r"(priorityInput7870), "+r"(arg2), "+r"(arg3)); a7870=(u16)arg2; asm("" : "+r"(a7870)); b7870=(u16)arg3; asm("" : "+r"(b7870)); temp_r5=(u8)priorityInput7870;
    countAddr7870=&count7870; countValue7870=*countAddr7870; if (countValue7870 > 0x31U) {
        return 0;
    }
    temp_r4 = &entries7870[countValue7870];
    *countAddr7870=countValue7870+1;
    temp_r4->x = x7870;
    temp_r4->y = y7870;
    temp_r4->a = a7870;
    temp_r4->b = b7870;
    temp_r4->priority = temp_r5;
    temp_r4->data2 = arg5;
    temp_r4->data0 = arg6;
    temp_r4->data1 = arg7;
    temp_r4->prev = NULL;
    temp_r4->next = NULL;
    asm("" ::: "r8"); temp_r4->bit3 = 0; temp_r4->bits4 = 0;
    temp_r4->field24 = 0;
    temp_r4->field26 = 0;
    temp_r4->field28 = 0;
    temp_r1=tail7870; asm("" : "+r"(temp_r1) : : "r3"); tailAddr7870=&tail7870;
    if(temp_r1==0) {
        head7870=temp_r4;
        *tailAddr7870=temp_r4;
        temp_r4->prev=temp_r1;
        temp_r4->next=temp_r1;
        goto done;
    }
    var_r1=head7870; asm("" : "+r"(var_r1) : : "r2"); headAddr7870=&head7870;
    goto check;
insert_middle:
    temp_r0->next=temp_r4;
    temp_r4->next=var_r1;
    temp_r4->prev=var_r1->prev;
    var_r1->prev=temp_r4;
    goto done;
next:
    var_r1=var_r1->next;
check:
    if(var_r1==0)goto append;
    if(var_r1->y>=y7870)goto next;
    if(var_r1->priority<temp_r5)goto next;
    temp_r0=var_r1->prev;
    if(temp_r0!=0)goto insert_middle;
    *headAddr7870=temp_r4;
    var_r1->prev=temp_r4;
    temp_r4->next=var_r1;
    goto done;
append:
    temp_r0=*tailAddr7870;
    temp_r0->next=temp_r4;
    temp_r4->prev=temp_r0;
    { register u32 zero7870 asm("r0")=0; asm("" : "+r"(zero7870)); temp_r4->next=(struct Draw7870 *)zero7870; }
    *tailAddr7870=temp_r4;
done:
    return (s32)temp_r4;
}










struct Draw7870 *sub_08007974(s32 x, s32 y, u16 a, u16 b, u8 priority, u8 flip, u8 mode, u32 d2, u32 d0, u32 d1) {
    struct Draw7870 *e;
    struct Draw7870 *it;
    struct Draw7870 *prev;

    if (count7870 > 49)
        return NULL;
    e = &entries7870[count7870++];
    e->x = x;
    e->y = y;
    e->a = a;
    e->b = b;
    e->priority = priority;
    e->data2 = d2;
    e->data0 = d0;
    e->data1 = d1;
    e->prev = NULL;
    e->next = NULL;
    e->bit3 = flip;
    e->bits4 = mode;
    e->field24 = 0;
    e->field26 = 0;
    e->field28 = 0;
    if (tail7870 == NULL) {
        head7870 = e;
        tail7870 = e;
        e->prev = NULL;
        e->next = NULL;
        return e;
    }
    /* Sorted insert before the first entry that is higher on screen and not
     * behind the new one. do/while(0) inside for(;;) gives the original layout. */
    it = head7870;
    goto check;
    for (;;) {
        do {
        next:
            it = it->next;
        check:
            if (it == NULL)
                goto append;
            if (it->y >= y)
                goto next;
            if (it->priority < priority)
                goto next;
            prev = it->prev;
            if (prev != NULL) {
                prev->next = e;
                e->next = it;
                e->prev = it->prev;
                it->prev = e;
                return e;
            }
            head7870 = e;
            it->prev = e;
            e->next = it;
        } while (0);
        return e;
    }
append:
    prev = tail7870;
    prev->next = e;
    e->prev = prev;
    e->next = NULL;
    tail7870 = e;
    return e;
}
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007AA4);
struct Root4CopyOamData { u32 y:8; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 x:9; u32 matrixNum:5; u32 size:2; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; u16 affineParam; };
struct Root4CopySpriteOam { s8 y; u8 unk1_0:6; u8 shape:2; s16 x:9; u16 unk2_9:5; u16 size:2; u16 tileNum:10; u16 tileHi:2; u16 unk4_12:4; u16 unk6; };
struct Root4CopySpriteFrame { u16 unk0; u16 count; u32 unk4; s32 oams; };
struct Root4CopySpriteAnim { u16 unk0; u16 unk2; u16 frameCount; u16 unk6; s32 frames; };
struct Root4CopySpriteRecord { u16 unk0; u16 animCount; s32 frames; s32 anims; };
extern struct Root4CopyOamData root4CopyOam[] asm("gUnk_03001330");
extern u32 root4CopyCount asm("gUnk_030028B4");
extern u32 root4CopyTiles asm("gUnk_030028B8");
extern const u32 root4CopyNonSquare[] asm("gUnk_0847842C");
extern const u32 root4CopySquare[] asm("gUnk_0847843C");
extern void root4CopyCopy(const void *src, void *dest, u32 size) asm("sub_08001348");
extern u32 root4CopyVram asm("gUnk_030028BC");
u32 oamDrawCopy004(s32,s32,u16,u16,u8,u8 *,struct Root4CopySpriteRecord *,u8 *) asm("sub_08007CF0");
u32 oamDrawCopy004(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 *palettes,
                 struct Root4CopySpriteRecord *record, u8 *tiles)
{
    struct Root4CopySpriteFrame *frames;
    struct Root4CopySpriteAnim *entry;
    struct Root4CopySpriteOam *src;
    struct Root4CopySpriteOam *obj;
    struct Root4CopyOamData *dest;
    u32 vram;
    u32 i;
    u32 base;
    u16 param;
    u32 list;
    u32 size;
    u16 tile;
    s32 objX;
    s32 objY;
    u32 count;

    count = root4CopyCount;
    if (count > 127)
        return -1;
    if (record->animCount < anim)
        return -1;
    base = root4CopyTiles;
    frames = (struct Root4CopySpriteFrame *)(record->frames + (u32)record);
    entry = (struct Root4CopySpriteAnim *)((u32)record + record->anims) + anim;
    list = (u32)entry + entry->frames;
    list += frame * 4;
    frames += *(u16 *)list;
    src = (struct Root4CopySpriteOam *)((u8 *)frames + frames->oams);
    dest = &root4CopyOam[count];
    vram = root4CopyVram + base * 32;
    tile = 0;
    size = 0;
    for (i = 0; i < frames->count; i++, dest++, src++)
    {
        obj = src;
        param = dest->affineParam;
        *dest = *(struct Root4CopyOamData *)src;
        dest->affineParam = param;
        dest->objMode = 0;

        objX = dest->x << 23;
        objX >>= 23;
        objY = ((struct Root4CopySpriteOam *)dest)->y;
        objY += y;
        objX += x;
        if ((u32)(objX + 64) > 304 || objY > 160 || objY < -64)
        {
            dest->y = 160;
            dest->shape = 0;
            dest->size = 0;
            dest--;
            continue;
        }
        vram += size;
        dest->priority = priority;
        dest->paletteNum = palettes[dest->paletteNum];
        dest->x = objX;
        dest->y = objY;
        dest->tileNum = base + tile;
        if (dest->shape)
        {
            size = root4CopyNonSquare[dest->size];
            tile += size;
        }
        else
        {
            size = root4CopySquare[dest->size];
            tile += size;
        }
        if (++root4CopyCount > 127)
            return 0;
        size *= 32;
        root4CopyCopy(tiles + ((obj->tileNum | (obj->tileHi << 10)) << 5), (void *)vram, size);
    }
    root4CopyTiles += tile;
    return root4CopyVram + base * 32;
}
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08007F0C);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080081D4);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008500);
struct Root4ModeOamData { u32 y:8; u32 affineMode:2; u32 objMode:2; u32 mosaic:1; u32 bpp:1; u32 shape:2; u32 x:9; u32 matrixNum:5; u32 size:2; u16 tileNum:10; u16 priority:2; u16 paletteNum:4; u16 affineParam; };
struct Root4ModeSpriteOam { s8 y; u8 unk1_0:6; u8 shape:2; s16 x:9; u16 unk2_9:5; u16 size:2; u16 tileNum:10; u16 tileHi:2; u16 unk4_12:4; u16 unk6; };
struct Root4ModeSpriteFrame { u16 unk0; u16 count; u32 unk4; s32 oams; };
struct Root4ModeSpriteAnim { u16 unk0; u16 unk2; u16 frameCount; u16 unk6; s32 frames; };
struct Root4ModeSpriteRecord { u16 unk0; u16 animCount; s32 frames; s32 anims; };
extern struct Root4ModeOamData root4ModeOam[] asm("gUnk_03001330");
extern u32 root4ModeCount asm("gUnk_030028B4");
extern u32 root4ModeTiles asm("gUnk_030028B8");
extern const u32 root4ModeNonSquare[] asm("gUnk_0847842C");
extern const u32 root4ModeSquare[] asm("gUnk_0847843C");
extern void root4ModeCopy(const void *src, void *dest, u32 size) asm("sub_08001348");
extern u32 root4ModeVram asm("gUnk_030028BC");
u32 oamDrawMode004(s32,s32,u16,u16,u8,u8 *,struct Root4ModeSpriteRecord *,u8 *,u8) asm("sub_080087AC");
u32 oamDrawMode004(s32 x, s32 y, u16 anim, u16 frame, u8 priority, u8 *palettes,
                 struct Root4ModeSpriteRecord *record, u8 *tiles, u8 objMode)
{
    struct Root4ModeSpriteFrame *frames;
    struct Root4ModeSpriteAnim *entry;
    struct Root4ModeSpriteOam *src;
    struct Root4ModeSpriteOam *obj;
    struct Root4ModeOamData *dest;
    u32 vram;
    u32 i;
    u32 base;
    u16 param;
    u32 list;
    u32 size;
    u16 tile;
    s32 objX;
    s32 objY;
    u32 count;
    u32 t;
    u16 num;

    count = root4ModeCount;
    if (count > 127)
        return -1;
    if (record->animCount < anim)
        return -1;
    base = root4ModeTiles;
    frames = (struct Root4ModeSpriteFrame *)(record->frames + (u32)record);
    entry = (struct Root4ModeSpriteAnim *)((u32)record + record->anims) + anim;
    list = (u32)entry + entry->frames;
    list += frame * 4;
    frames += *(u16 *)list;
    src = (struct Root4ModeSpriteOam *)((u8 *)frames + frames->oams);
    dest = &root4ModeOam[count];
    vram = root4ModeVram + base * 32;
    tile = 0;
    size = 0;
    for (i = 0; i < frames->count; i++, dest++, src++)
    {
        obj = src;
        param = dest->affineParam;
        *dest = *(struct Root4ModeOamData *)src;
        dest->affineParam = param;
        objX = dest->x << 23;
        objX >>= 23;
        objY = ((struct Root4ModeSpriteOam *)dest)->y;
        objY += y;
        objX += x;
        if ((u32)(objX + 64) > 304 || objY > 160 || objY < -64)
        {
            dest->y = 160;
            dest->shape = 0;
            dest->size = 0;
            dest--;
            continue;
        }
        dest->objMode = objMode;
        vram += size;
        dest->priority = priority;
        dest->paletteNum = palettes[dest->paletteNum];
        dest->x = objX;
        dest->y = objY;
        dest->tileNum = base + tile;
        if (dest->shape)
        {
            size = root4ModeNonSquare[dest->size];
            tile += size;
        }
        else
        {
            size = root4ModeSquare[dest->size];
            tile += size;
        }
        if (++root4ModeCount > 127)
            return 0;
        num = obj->tileNum;
        t = (obj->tileHi << 10) | num;
        size *= 32;
        root4ModeCopy(tiles + (t << 5), (void *)vram, size);
    }
    root4ModeTiles += tile;
    return root4ModeVram + base * 32;
}
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_080089DC);
void sub_08008C10(void) {
    sub_08008C1C();
}
extern u32 gW8C1C_28B4 asm("gUnk_030028B4");
extern u32 gW8C1C_28B8 asm("gUnk_030028B8");
extern u32 gW8C1C_28C8 asm("gUnk_030028C8");
extern u32 gW8C1C_28B0 asm("gUnk_030028B0");
extern u32 gW8C1C_28C0 asm("gUnk_030028C0");
extern u32 gW8C1C_28C4 asm("gUnk_030028C4");
struct DispCnt8C1C { u32 mode:3; u32 rest:29; };
extern struct DispCnt8C1C gW8C1C_128C asm("gUnk_0300129C");
extern u32 gW8C1C_28BC asm("gUnk_030028BC");
void sub_08008C1C_v(void) asm("sub_08008C1C");
void sub_08008C1C_v(void)
{
    gW8C1C_28B4 = 0;
    gW8C1C_28B8 = 0;
    gW8C1C_28C8 = 0;
    gW8C1C_28B0 = 0;
    gW8C1C_28C0 = 0;
    gW8C1C_28C4 = 0;
    switch (gW8C1C_128C.mode) {
    case 0:
        gW8C1C_28BC = 0x06010000;
        break;
    case 1:
        gW8C1C_28BC = 0x06010000;
        break;
    case 2:
        gW8C1C_28BC = 0x06010000;
        break;
    case 3:
    case 4:
    case 5:
        gW8C1C_28BC = 0x06014000;
        break;
    }
}
u32 sub_08008CC4(u32 arg0, u16 *arg1, u16 *arg2, u8 *arg3, u32 arg4)
{
    u16 idx = arg0;
    u8 *entry;
    u8 *sub;
    u32 ret;

    if (*(u16 *)(arg3 + 2) < idx)
        return 0;

    entry = arg3 + *(u32 *)(arg3 + 8);
    entry += idx * 12;

    if (*(u16 *)(entry + 4) <= *arg1)
        *arg1 = 0;

    sub = entry + *(u32 *)(entry + 8);
    sub += *arg1 * 4;

    ret = 0;

    if (*(u16 *)(sub + 2) <= *arg2) {
        *arg1 = *arg1 + 1;
        *arg2 = 0;
        if (*(u16 *)(entry + 4) <= *arg1) {
            if (arg4 != 0) {
                *arg1 = 0;
            } else {
                *arg2 = *(u16 *)(sub + 2) + 1;
                *arg1 = *(u16 *)(entry + 4) - 1;
                ret = 1;
            }
        }
    } else {
        *arg2 = *arg2 + 1;
    }
    return ret;
}
s32 sub_08008D38(u16 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4)
{
    u16 *state = (u16 *)arg1;
    u16 *step = (u16 *)arg2;
    u8 *data = (u8 *)arg3;
    u8 *entry;
    u8 *sub;
    u16 index = arg0;
    u16 count;
    u32 result;

    count = *(u16 *)(data + 2);
    if (count < index)
        return 0;

    entry = data + *(u32 *)(data + 8);
    entry += index * 12;
    if (*state & 0x8000)
        *state = *(u16 *)(entry + 4) - 1;

    sub = entry + *(u32 *)(entry + 8);
    sub += *state * 4;
    result = 0;
    if (*step & 0x8000) {
        *state -= 1;
        *step = *(u16 *)(sub + 2) - 1;
        if (*state & 0x8000) {
            if (arg4 != 0) {
                *state = *(u16 *)(entry + 4) - 1;
            } else {
                *step = 0;
                *state = 0;
                result = 1;
            }
        }
    } else {
        *step -= 1;
    }
    return result;
}
struct AnimHeader005 { u16 unk0; u16 count; u32 unk4; u32 animsOffset; };
struct Anim005 { u32 unk0; u16 numFrames; u16 unk6; u32 framesOffset; };
struct AnimFrame005 { u16 unk0; u16 duration; };
struct SpriteFrame005 { u16 unk0; u16 numParts; u32 unk4; u32 partsOffset; };
extern const u32 animSizes005[] asm("gUnk_0847844C");
extern const u32 animSquare005[] asm("gUnk_0847845C");
struct SpritePart005 { u8 unk0; u8 unk1; u8 unk2; u8 unk3; u16 tile:10; u16 tileHigh:2; u16 unk4_12:4; u16 unk6; } __attribute__((packed, aligned(2)));
extern void animCopy005(const void *,void *,u32) asm("sub_08001348");
void sub_08008DB8(u16 animId, u16 frame, struct AnimHeader005 *data, u8 *tiles, u8 *dest)
{
    u8 *out;
    struct SpriteFrame005 *spriteFrame;
    struct Anim005 *anim;
    struct AnimFrame005 *animFrame;
    struct SpritePart005 *part;
    u32 size;
    u32 i;

    if (data->count < animId)
        return;
    spriteFrame = (struct SpriteFrame005 *)((u8 *)data + data->unk4);
    anim = (struct Anim005 *)((u8 *)data + data->animsOffset);
    anim += animId;
    animFrame = (struct AnimFrame005 *)((u8 *)anim + anim->framesOffset);
    animFrame += frame;
    spriteFrame += animFrame->unk0;
    part = (struct SpritePart005 *)((u8 *)spriteFrame + spriteFrame->partsOffset);
    out = dest;
    size = 0;
    for (i = 0; i < spriteFrame->numParts; i++, part++)
    {
        u8 *src = tiles + ((part->tile | (part->tileHigh << 10)) << 5);

        out += size;
        if (part->unk1 >> 6)
            size = animSizes005[part->unk3 >> 6];
        else
            size = animSquare005[part->unk3 >> 6];
        animCopy005(src, out, size);
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008E74);
INCLUDE_ASM("asm/nonmatchings/code_08006D24", sub_08008F2C);
void sub_08009014(void) {
    void *var_r4;

    var_r4 = gUnk_030028C0;
    if (var_r4 != NULL) {
        do {
            sub_08007AA4(var_r4);
            var_r4 = M2C_FIELD(var_r4, void **, 4);
        } while (var_r4 != NULL);
    }
}
s32 sub_08009034(void *arg0) {
    return M2C_FIELD(arg0, u16 *, 2) - 1;
}
void sub_0800903C(s32 arg0, s32 arg1, s32 arg2, s32 arg3, s32 arg4, s32 arg5)
{
    u16 a = arg0;
    u16 b = arg1;
    u16 c = arg2;
    u16 d = arg3;
    u16 e = arg4;
    u16 f = arg5;

    gUnk_03001250[0x40 / 2] = a | (c << 6) | (b << 8);
    gUnk_03001250[0x42 / 2] = d | (e << 8);
    gUnk_03001250[0x44 / 2] = f;
}
void sub_0800907C(s32 arg0) {
    gUnk_030028BC = arg0;
}
