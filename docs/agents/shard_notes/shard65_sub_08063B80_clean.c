#ifdef NONMATCHING
struct T65BEntity { u8 kind:4; u8 pad0:4; u8 pad1[3]; u16 a:6; u16 phase:6; u16 b:4; };
struct T65BPopup { u32 base, unk4; u8 *data; u32 sound, resource, style, mode; u8 palette[24]; };
struct T65BPlayer { u8 pad0[0x14]; u16 buttons; u8 pad16[10]; u16 state, substate; u8 pad24[12]; u32 flags; u8 pad34[0x58]; u8 f8C[0xBC]; struct T65BEntity *entity; };
extern struct T65BPlayer t65B_players[] asm("gUnk_03003CE0");
extern u8 t65B_resources[] asm("gUnk_08518938");
extern u16 t65B_blocked asm("gUnk_03003200");
extern u32 t65B_flags asm("gUnk_03002344");
extern void t65B_position(s16, s16, s16 *, s16 *, u32, u32) asm("sub_0800BC08");
extern u8 *t65B_draw(s32, s32, u32, u32, u32, void *, u8 *, u32) asm("sub_08007870");
extern void t65B_overlay(s32, s32, u32, u32, u32, void *, u8 *, u32) asm("sub_08008E74");
extern s32 t65B_intersect(s32 *, void *, s32 *, s32 *) asm("sub_08021FE0");
extern u32 t65B_dialog(s32, s32, s32, s32, s32, u32) asm("sub_0805DF38");
static inline void t65B_init(struct T65BPopup *obj, u32 resource, s32 index, s32 size)
{
    void *table = t65B_resources;
    s32 mem, first, second, i;
    obj->resource = resource;
    obj->style = index;
    obj->mode = size;
    first = sub_08006EE0(resource, table);
    obj->data = (u8 *)first;
    if (!first)
        return;
    resource &= 0xFFFF;
    second = sub_08006EE0(resource | 0x60000, table);
    obj->base = second;
    if (!second)
        return;
    mem = sub_08006EE0(resource | 0x80000, table);
    obj->sound = mem;
    if (!mem)
        return;
    if (size >= 0)
        sub_08000AF0(index + 16, (void *)(mem + (index << 5)), size);
    i = 0;
    do {
        obj->palette[i] = i;
        i++;
    } while ((u32)i <= 15);
    sub_080653B8(obj, 0x120, 0xE0, 8);
}
void t65B_impl(s32) asm("sub_08063B80");
void t65B_impl(s32 index)
{
    struct T65BPopup draw;
    s16 x, y;
    u16 w, h, w2, h2;
    struct { s32 x, y; } pos;
    s32 bw, bh;
    struct T65BPlayer *player;
    s32 worldX;
    s32 worldY;
    u32 dialog;
    u8 alt;
    u8 *out;

    player = &t65B_players[index];
    t65B_init(&draw, 0x5005E, 5, -1);
    draw.palette[0] = 15;
    worldX = 0xB8 - index * 24;
    worldY = 0x138;
    pos.x = worldX << 8;
    pos.y = worldY << 8;
    bw = 0x80010;
    bh = 0x1E0018;
    w = 0;
    h = 0;
    dialog = 0;
    sub_0800CF20();
    while (sub_0800CCCC()) {
        t65B_position(worldX, worldY, &x, &y, 0x30, 1);
        sub_08008CC4(0, &w, &h, draw.data, 1);
        sub_08008CC4(1, &w2, &h2, draw.data, 1);
        if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CD34() && t65B_blocked == 0) {
            alt = sub_0800BC44(worldX, 0x138, 1);
            out = t65B_draw(x, y, 0, w, alt, draw.palette, draw.data, draw.base);
            *(u32 *)(out + 12) -= 20;
            if (t65B_flags & 1)
                t65B_overlay(x, y, 1, w2, alt, draw.palette, draw.data, draw.base);
            sub_08000AF0(0x1F, (void *)draw.sound, 1);
        }
        if (index == sub_080020F4()) {
            if ((t65B_blocked == 0 && t65B_intersect((s32 *)&pos, player->f8C, &bw, &bh)) || dialog != 0) {
                if (dialog == 0) {
                    if (!sub_0800CDF8() && (player->buttons & 1)) {
                        player->flags |= 1;
                        dialog = t65B_dialog(1, 14, 25, 2, -2, 0x1404E0);
                    }
                } else if (sub_0805EEFC((void *)dialog)) {
                    if (sub_0805EF14((u8 *)dialog)) {
                        player->state = 12;
                        player->substate = 1;
                        sub_0800CEE8();
                        sub_0800CF34();
                        return;
                    }
                    player->flags &= ~1;
                    dialog = 0;
                }
            }
        } else {
            struct T65BEntity *e = player->entity;
            if (e->kind == 12 && e->phase == 1)
                break;
        }
        sub_080003F0();
        if (sub_0800CB78() || sub_0800CD00())
            break;
    }
    sub_0800CF34();
}
#else
