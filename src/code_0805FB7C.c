#include "global.h"

void sub_080605D0(s32 index);

extern s32 gUnk_03006208;

extern void sub_0801A664(s32, s32);
extern u16 digitBasesFB63[] asm("gUnk_084EBD74");
extern u8 tileMap63[] asm("gUnk_03005740");
void sub_0805FB7C(s32 x, s32 y, u32 value, u8 style)
{
    u16 digits[3];
    u16 base;
    u16 *out;
    u32 remainder;
    if (value > 999) value = 999;
    base = digitBasesFB63[style];
    out = (u16 *)(tileMap63 + (y << 6) + x * 2);
    digits[0] = sub_08000498(&value, 100);
    digits[1] = sub_08000498(&value, 10);
    remainder = value;
    digits[2] = remainder;
    *out = base + remainder;
    if (digits[0] != 0) out[-2] = base + digits[0];
    if (digits[0] != 0 || digits[1] != 0) out[-1] = base + digits[1];
    sub_0801A664(y, 1);
}
extern u16 digitBases63[] asm("gUnk_084EBD74");
void sub_0805FC0C(u16 *out, u32 value, u8 index)
{
    u16 digits[3];
    u16 base;
    u32 remainder;
    if (value > 999) value = 999;
    base = digitBases63[index];
    digits[0] = sub_08000498(&value, 100);
    digits[1] = sub_08000498(&value, 10);
    remainder = value;
    digits[2] = remainder;
    *out = base + remainder;
    if (digits[0] != 0) {
        out[-2] = base + digits[0];
        goto tens;
    }
    if (digits[1] != 0) {
tens:
        out[-1] = base + digits[1];
    }
}
struct IconAsset63 { s32 f0, f4, f8; u8 padC[0x10]; u8 attr[0x10]; u16 value, step; s16 upper, lower; };
extern struct IconAsset63 iconAssets63[] asm("gUnk_03005DC0");
extern struct IconAsset63 iconOverlay63 asm("gUnk_03005D80");
extern void sub_0800BC08(s16, s16, s16 *, s16 *, s32, s32);
extern void sub_08008E74(s32, s32, u16, u16, u8, void *, s32, s32);
extern void sub_08007F0C(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32);
struct IconPosition63 { s32 x, y; };
extern s32 drawIcon63(s32, s32, u16, u16, s32, s32, s32, s32) asm("sub_08007CF0");
extern void scaledIcon63(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32) asm("sub_08007F0C");
/* The attribute field is the canonical DDC symbol; the record starts 28 bytes earlier. */
extern struct IconAsset63 drawingAssets63[] asm("gUnk_03005DDC-28");
void sub_0805FC80(struct IconPosition63 pos, u16 *item, u32 flags)
{
    register u16 *entry asm("r5") = item;
    register u32 mode asm("sl") = flags;
    u16 screenX; s16 screenY;
    u16 alternate = 0;
    u16 overlay = 0;
    u32 group;
    u8 frame;
    u8 *resource;
    u8 *descriptor;
    register u8 *icon asm("r4");
    register u32 packed asm("r1");
    struct IconAsset63 *asset;
    u16 step;
    u32 value;
    s32 worldX, worldY;
    u8 priority;
    switch (*entry) {
    case 0:
    default:
        return;
    case 1:
        descriptor = (u8 *)sub_08007290(entry[1] | 0x100000) + 0xA8;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        break;
    case 2: {
        u16 packed2;
        resource = (u8 *)sub_08007290(entry[1] | 0xB0000);
        icon = resource + 0xBE;
        packed2 = *(u16 *)icon;
        frame = *icon;
        group = packed2 >> 8;
        if (((u8 *)entry)[8] != 0) {
            group++;
            alternate++;
        } else {
            overlay = ((u8 *)entry)[7];
            if (overlay == 0) overlay = *(u16 *)(resource + 0xBC);
        }
        break;
    }
    case 3:
        descriptor = (u8 *)sub_08007290(entry[1] | 0xC0000) + 0xB0;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        if (((u8 *)entry)[8] != 0) {
            group++;
            alternate++;
        } else {
            overlay = ((u8 *)entry)[7];
        }
        break;
    case 4:
        descriptor = (u8 *)sub_08007290(entry[1] | 0xD0000) + 0xB0;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        if (((u8 *)entry)[8] != 0) {
            group++;
            alternate++;
        } else {
            overlay = ((u8 *)entry)[7];
        }
        break;
    case 5:
        descriptor = (u8 *)sub_08007290(entry[1] | 0xE0000) + 0xB0;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        if (((u8 *)entry)[8] != 0) {
            group++;
            alternate++;
        }
        break;
    case 7:
        descriptor = (u8 *)sub_08007290(entry[1] | 0x110000) + 0xA8;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        break;
    case 6:
        descriptor = (u8 *)sub_08007290(entry[1] | 0xF0000) + 0xAC;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        break;
    case 9:
        descriptor = (u8 *)sub_08007290(entry[1] | 0x150000) + 0xA0;
        packed = *(u32 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        break;
    case 10:
        descriptor = (u8 *)sub_08007290(0x160000) + 0x9C;
        packed = *(u32 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        break;
    case 8:
        descriptor = (u8 *)sub_08007290(entry[1] | 0x120000) + 0xA0;
        packed = *(u16 *)descriptor;
        frame = *descriptor;
        group = packed >> 8;
        break;
    }
    if (mode & 1) {
        /* Preserve the ROM's coordinate lifetimes and narrowing order. */
        register s32 rawX asm("r2");
        register s32 rawY asm("r1");
        register s32 cameraX asm("r0");
        s32 camera = sub_0800CCCC();
        rawX = pos.x;
        asm("" : "+r"(rawX));
        rawX >>= 8;
        worldX = rawX;
        cameraX = (s16)rawX;
        asm("" : : "r"(cameraX));
        rawY = pos.y;
        asm("" : : "r"(rawY));
        worldY = rawY >> 8;
        sub_0800BC08(cameraX, worldY, &screenX, &screenY, 16, camera);
        if (((u32)(screenX + 16) << 16) > 0x1080000 || screenY < -16 || screenY > 168)
            return;
        priority = sub_0800BC44(worldX, worldY, sub_0800CCCC());
        sub_08008E74((s16)screenX, screenY, 0, frame, priority, drawingAssets63[group].attr,
            drawingAssets63[group].f8, drawingAssets63[group].f0);
        return;
    }
    if ((mode & 2) && alternate == 0)
        iconAssets63[group].attr[9] = 10;
    else
        iconAssets63[group].attr[9] = 9;
    if ((mode & 8) && overlay != 0) {
        /* Keep the overlay frame and record base live in the call registers. */
        register u32 overlayFrame asm("r3");
        register struct IconAsset63 *layer asm("r2");
        if (overlay == 7) overlay = 6;
        overlayFrame = (u16)(overlay + 11);
        asm("" : : "r"(overlayFrame));
        layer = &iconOverlay63;
        asm("" : : "r"(layer));
        drawIcon63(pos.x, pos.y + 8, 4, overlayFrame, 0, (s32)layer->attr, layer->f8, layer->f0);
    }
    if (mode & 4) {
        register u32 byteOffset asm("r2");
        register u32 oldValue asm("r4");
        byteOffset = group * sizeof(struct IconAsset63);
        asm("" : "+r"(byteOffset));
        asset = (struct IconAsset63 *)((u8 *)iconAssets63 + byteOffset);
        step = asset->step;
        oldValue = asset->value;
        value = step + oldValue;
        asset->value = value;
        if ((s32)((u32)step << 16) > 0 && (s16)value > asset->upper)
            asset->step = -step;
        if ((s16)asset->step < 0 && (s16)asset->value < asset->lower)
            asset->step = -asset->step;
        scaledIcon63(pos.x, pos.y, 0, frame, 0, asset->attr, asset->f8, asset->f0, (s16)asset->value, (s16)asset->value, 255);
    } else {
        drawIcon63(pos.x, pos.y, 0, frame, 0, (s32)drawingAssets63[group].attr,
            drawingAssets63[group].f8, drawingAssets63[group].f0);
    }
    iconAssets63[group].attr[9] = 9;
    iconOverlay63.attr[9] = 9;
}
#ifdef NONMATCHING
struct ItemName63 { u16 kind; u16 id; u16 suffix; u8 level; u8 grade; u8 broken; };
extern u8 *resFF63(s32) asm("sub_08007290");
extern u32 digitDivFF63[] asm("gUnk_084EBD5C");
extern void textFF63(u8 *, u16, u16) asm("sub_0801A3D0");
extern void clearFF63(s32, s32) asm("sub_0801A664");
extern u32 widthFF63(u8 *) asm("sub_0801A638");
extern s32 checkFF63(void) asm("sub_0801DE60");
extern s32 divFF63(s32 *, u32) asm("sub_08000498");
void sub_0805FFBC(s32 x, s32 y, struct ItemName63 *item, s32 flags)
{
    u8 buf[32];
    u8 numeric[32];
    s32 value;
    u8 *res;
    u8 *suffix;
    s32 broken;
    u32 level;
    u32 grade;
    s32 cursed;
    u32 mode;
    u8 *name;
    s32 n;
    u8 i;
    u16 off;

    if (item == NULL)
        goto clear;
    suffix = NULL;
    broken = 0;
    level = 0;
    grade = 0;
    cursed = 0;
    mode = flags & 0x7FFFFFFF;
    switch (item->kind) {
    case 1:
        res = resFF63(item->id | 0x100000);
        name = res + gUnk_03003470 * 31;
        broken = 0;
        level = 0;
        grade = 0;
        break;
    case 2:
    {
        u8 *r = resFF63(item->id | 0xB0000);
        name = r + gUnk_03003470 * 31;
        broken = item->broken;
        level = item->level;
        grade = item->grade;
        if (grade == 0)
            grade = *(u16 *)(r + 0xBC);
        goto suffix;
    }
    case 3:
        name = resFF63(item->id | 0xC0000) + gUnk_03003470 * 31;
        broken = item->broken;
        level = item->level;
        grade = item->grade;
        goto suffix;
    case 4:
        name = resFF63(item->id | 0xD0000) + gUnk_03003470 * 31;
        broken = item->broken;
        level = item->level;
        grade = item->grade;
        goto suffix;
    case 7:
        name = resFF63(item->id | 0x110000) + gUnk_03003470 * 31;
        broken = 0;
        level = 0;
        break;
    case 5:
    {
        u8 *r = resFF63(item->id | 0xE0000);
        name = r + gUnk_03003470 * 31;
        broken = item->broken;
        level = item->level;
        grade = item->grade;
        if (r[0xA0] != 0)
            cursed = 1;
    }
    suffix:
        if (item->suffix != 0)
            suffix = resFF63((item->suffix - 1) | 0x130000);
        break;
    case 6:
        name = resFF63(item->id | 0xF0000) + gUnk_03003470 * 31;
        broken = 0;
        level = 0;
        grade = 0;
        break;
    case 9:
        name = resFF63(item->id | 0x150000) + gUnk_03003470 * 31;
        break;
    case 10:
        if (sub_0800CC98() == 0) {
            u32 *div;
            u8 *out;
            s32 started;
            u32 k;
            value = *(s32 *)&item->suffix;
            div = digitDivFF63;
            out = numeric;
            started = 0;
            for (k = 0; k <= 5; k++) {
                *out = divFF63(&value, *div) + 0x41;
                if (started != 0 || *out != 0x41) {
                    out++;
                    started = 1;
                }
                div++;
            }
            out[0] = 7;
            out[1] = 0;
            name = numeric;
        } else {
            name = resFF63(0x160000) + gUnk_03003470 * 31;
        }
        break;
    case 8:
        name = resFF63(item->id | 0x120000) + gUnk_03003470 * 31;
        break;
    default:
    clear:
        clearFF63(y, 2);
        return;
    }

    switch (mode) {
    case 0:
        if (broken != 0) {
            u8 *src, *dst;
            buf[0] = 0xA1;
            n = 0;
            if (*name != 0) {
                src = name;
                dst = buf + 1;
                do {
                    *dst++ = *src++;
                    n++;
                } while (*src != 0);
            }
            buf[n + 1] = 0xFD;
            break;
        }
        if (grade != 0) {
            if (grade == 7)
                grade = 6;
            buf[0] = grade + 0xA1;
            n = 1;
        } else {
            n = 0;
        }
        if (cursed != 0) {
            buf[n] = 0xCD;
            n++;
        }
        if (gUnk_03003470 == 2) {
            if (suffix != NULL) {
                i = 0;
                if (suffix[62] != 0) {
                    do {
                        buf[i + n] = suffix[i + 62];
                        i++;
                    } while (suffix[i + 62] != 0);
                }
                n += i;
                buf[n] = 0x51;
                n++;
            }
            i = 0;
            if (name[0] != 0) {
                do {
                    buf[i + n] = name[i];
                    i++;
                } while (name[i] != 0 && i <= 0x1B);
            }
        } else {
            i = 0;
            if (name[0] != 0) {
                do {
                    buf[i + n] = name[i];
                    i++;
                } while (name[i] != 0 && i <= 0x1B);
            }
            n += i;
            i = 0;
            if (suffix != NULL) {
                s32 o;
                buf[n] = 0x51;
                n++;
                o = gUnk_03003470 * 31;
                if (suffix[o] != 0) {
                    do {
                        buf[i + n] = suffix[i + o];
                        i++;
                    } while (suffix[i + o] != 0);
                }
            }
        }
        i = i + n;
        if (level != 0) {
            if (level <= 9) {
                u32 tens;
                buf[i++] = 0x4C;
                tens = level / 10;
                level = level % 10;
                if (tens != 0)
                    buf[i++] = tens + 0x41;
                buf[i++] = level + 0x41;
            } else {
                buf[i++] = 0x4C;
                buf[i++] = level + 0xAC;
            }
            buf[i] = 0xFD;
        }
        buf[i] = 0xFD;
        break;
    case 1:
        i = 0;
        if (broken != 0) {
            buf[0] = 0xA1;
            i = 1;
        } else if (item->kind == 1) {
            if (*(u16 *)(res + 0xA0) == 1) {
                u32 v;
                s32 j;
                u8 *p;
                if (checkFF63() == 0)
                    v = *(u16 *)(res + 0xA2) * (*(u16 *)(gUnk_030034E0 + 0x48) << 2);
                else
                    v = *(u16 *)(res + 0xA2);
                for (i = 0; name[i] != 0xFD && name[i] != 0xF7; i++)
                    buf[i] = name[i];
                j = i + 3;
                if (name[i] != 0xFD) {
                    u32 h = v / 100;
                    v = v % 100;
                    if (h != 0)
                        buf[i++] = h + 0x41;
                    h = v / 10;
                    v = v % 10;
                    buf[i++] = h + 0x41;
                    buf[i++] = v + 0x41;
                }
                p = name + j;
                if (*p != 0) {
                    do {
                        buf[i] = *p;
                        j++;
                        i++;
                        p = name + j;
                    } while (*p != 0);
                }
            } else {
                while (name[i] != 0xFD) {
                    buf[i] = name[i];
                    i++;
                }
            }
        } else {
            while (name[i] != 0) {
                buf[i] = name[i];
                i++;
            }
        }
        buf[i] = 0xFD;
        break;
    case 2:
        i = 0;
        if (broken != 0) {
            buf[0] = 0xA1;
            i = 1;
        } else {
            while (name[i] != 0xFD) {
                buf[i] = name[i];
                i++;
            }
        }
        buf[i] = 0;
        break;
    }
    off = 0;
    if (flags < 0)
        off = -(widthFF63(buf) >> 1);
    x += (s16)off;
    textFF63(buf, x, y);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0805FFBC);
#endif
#ifdef NONMATCHING
struct HudPlayer63 {
    u8 pad0[0x20];
    u16 state;
    u8 pad22[2];
    s16 f24;
    s16 f26;
    u8 pad28[8];
    u32 flags;
    u8 pad34[0x34];
    u8 f68;
    u8 pad69[0xE];
    u8 count;
    u8 f78;
    u8 pad79[0x14C - 0x79];
};
struct HudSlot63 { u8 b[0x10]; };
struct HudMgr63 { u8 pad0[0x68]; u16 sel; u8 pad6A[6]; struct HudSlot63 slots[1]; };
struct HudPos63 { s16 x, y; };
extern struct HudPlayer63 hudPlayers63[] asm("gUnk_03003CE0");
extern struct HudMgr63 *hudMgr63 asm("gUnk_030034E0");
extern u16 hudKeys63 asm("gUnk_03001324");
extern u16 hudMap63[][0x20] asm("gUnk_03005740");
extern u16 hudFrame63[4][8] asm("gUnk_084EBD7C");
extern struct HudPos63 hudPos63[] asm("gUnk_084EBDBC");
extern struct HudPos63 hudPosY63[] asm("gUnk_084EBDBE");
extern struct IconAsset63 hudIcon63 asm("gUnk_03005D80");
extern void hudItem63(s32, s32, struct HudSlot63 *, s32) asm("sub_0805FC80");
extern void hudSprite63(s32, s32, u16, u16, s32, void *, s32, s32) asm("sub_08007CF0");
extern void hudSound63(s32) asm("sub_080003F4");
extern void hudSelect63(u16) asm("sub_0805AD78");
void sub_080605D0(s32 animate)
{
    struct HudMgr63 *mgr;
    struct HudPlayer63 *pl;
    s16 slide;
    s16 timer;
    s32 dirty;
    s32 count;
    s32 f78;
    s16 i;
    s16 base;
    s16 k;
    s16 end;
    u16 keys;

    mgr = hudMgr63;
    pl = &hudPlayers63[sub_080020F4()];
    dirty = 1;
    count = pl->count;
    f78 = pl->f78;
    while (sub_0800CB78() == 0) {
        if (animate != 0) {
            hudSound63(0x18A92);
            sub_0805865C(mgr->sel % 3 + 0x57);
            sub_080003F0();
            if (sub_0800CB78() != 0)
                return;
        }
        slide = 8;
        timer = 0x3C;
        while (timer-- > 0 && sub_0800CB78() == 0) {
            slide -= 2;
            if (slide < 0)
                slide = 0;
            keys = hudKeys63;
            if (keys & 0x300)
                dirty = 1;
            if (count != pl->count) {
                count = pl->count;
                dirty = 1;
            }
            if (f78 != pl->f78) {
                f78 = pl->f78;
                dirty = 1;
            }
            if (keys & 0x200) {
                if (pl->state != 5 && pl->state != 2) {
                    if (++mgr->sel >= pl->count)
                        mgr->sel = 0;
                    hudSelect63(mgr->sel);
                    if (pl->f68 > 1)
                        pl->flags |= 0x800;
                    timer = 0x3C;
                    pl->f26 = 0;
                    pl->f24 = 0;
                    switch (pl->state) {
                    case 3:
                        pl->state = 0;
                        break;
                    case 4:
                        pl->state = 1;
                        break;
                    }
                }
                sub_0805865C(mgr->sel % 3 + 0x57);
            }
            if (animate != 0 || dirty != 0) {
                sub_0801A664(2, 4);
                for (i = slide; i <= 7; i++) {
                    hudMap63[2][i - slide] = hudFrame63[0][i];
                    hudMap63[3][i - slide] = hudFrame63[1][i];
                    hudMap63[4][i - slide] = hudFrame63[2][i];
                    hudMap63[5][i - slide] = hudFrame63[3][i];
                }
                if ((u8)(pl->count - 4) <= 2) {
                    if (mgr->sel <= 2) {
                        hudMap63[2][i - slide] = 0xF032;
                        hudMap63[3][i - slide] = 0xF052;
                    } else {
                        hudMap63[2][i - slide] = 0xF033;
                        hudMap63[3][i - slide] = 0xF053;
                    }
                } else if (pl->count > 6) {
                    if (mgr->sel <= 2) {
                        hudMap63[2][i - slide] = 0xF034;
                        hudMap63[3][i - slide] = 0xF054;
                        hudMap63[4][i - slide] = 0xF074;
                    } else if (mgr->sel <= 5) {
                        hudMap63[2][i - slide] = 0xF035;
                        hudMap63[3][i - slide] = 0xF055;
                        hudMap63[4][i - slide] = 0xF075;
                    } else {
                        hudMap63[2][i - slide] = 0xF036;
                        hudMap63[3][i - slide] = 0xF056;
                        hudMap63[4][i - slide] = 0xF076;
                    }
                }
                if (slide <= 0)
                    dirty = 0;
            }
            if (animate == 0) {
                timer = 0x3C;
                slide = 0;
            }
            base = mgr->sel / 3 * 3;
            end = base + 3;
            if (animate != 0) {
                for (k = base; k < end; k++)
                    hudItem63(hudPos63[k - base].x + (7 - slide) * 8,
                              hudPosY63[k - base].x + 0x10, &mgr->slots[k], 8);
            }
            if (animate == 0) {
                if (*(s32 *)(gUnk_03006440 + 0x28) & 1) {
                    dirty = 1;
                    do {
                        sub_080003F0();
                    } while (*(s32 *)(gUnk_03006440 + 0x28) & dirty);
                }
            }
            hudSprite63((7 - slide) * 8 + hudPos63[mgr->sel - base].x - 1,
                        hudPosY63[mgr->sel - base].x + 0x10, 7, 0, 0,
                        hudIcon63.attr, hudIcon63.f8, hudIcon63.f0);
            sub_080003F0();
            if (sub_0800CD34() != 0)
                break;
            if (animate != 0) {
                if (sub_08058DB0() != 0 || sub_0800D11C() != 0 || sub_0800CC98() != 0
                    || sub_0800D060() != 0 || sub_08056E90() != 0)
                    break;
                if (pl->flags & 0x400)
                    break;
                if (pl->state == 0xC)
                    break;
                if (sub_0800CCCC() == 0 && (*(u16 *)((u8 *)gUnk_03005CF4 + 4) & 4))
                    break;
            }
        }
        while (slide <= 7) {
            if (animate != 0) {
                if (sub_08058DB0() != 0 || sub_0800D11C() != 0 || sub_0800CC98() != 0
                    || sub_08056E90() != 0 || sub_0800D060() != 0)
                    break;
                if (pl->flags & 0x400)
                    break;
                if (pl->state == 0xC)
                    break;
                if (sub_0800CCCC() == 0 && (*(u16 *)((u8 *)gUnk_03005CF4 + 4) & 4))
                    break;
            }
            if (sub_0800CD34() != 0)
                break;
            slide += 2;
            if (slide > 8)
                slide = 8;
            for (i = slide; i <= 7; i++) {
                hudMap63[2][i - slide] = hudFrame63[0][i];
                hudMap63[3][i - slide] = hudFrame63[1][i];
                hudMap63[4][i - slide] = hudFrame63[2][i];
                hudMap63[5][i - slide] = hudFrame63[3][i];
            }
            if ((u8)(pl->count - 4) <= 2) {
                if (mgr->sel <= 2) {
                    hudMap63[2][i - slide] = 0xF032;
                    hudMap63[3][i - slide] = 0xF052;
                } else {
                    hudMap63[2][i - slide] = 0xF033;
                    hudMap63[3][i - slide] = 0xF053;
                }
            } else if (pl->count > 6) {
                if (mgr->sel <= 2) {
                    hudMap63[2][i - slide] = 0xF034;
                    hudMap63[3][i - slide] = 0xF054;
                    hudMap63[4][i - slide] = 0xF074;
                } else if (mgr->sel <= 5) {
                    hudMap63[2][i - slide] = 0xF035;
                    hudMap63[3][i - slide] = 0xF055;
                    hudMap63[4][i - slide] = 0xF075;
                } else {
                    hudMap63[2][i - slide] = 0xF036;
                    hudMap63[3][i - slide] = 0xF056;
                    hudMap63[4][i - slide] = 0xF076;
                }
            }
            sub_0801A664(2, 4);
            base = mgr->sel / 3 * 3;
            end = base + 3;
            for (k = base; k < end; k++)
                hudItem63(hudPos63[k - base].x + (7 - slide) * 8,
                          hudPosY63[k - base].x + 0x10, &mgr->slots[k], 8);
            hudSprite63((7 - slide) * 8 + hudPos63[mgr->sel - base].x,
                        hudPosY63[mgr->sel - base].x + 0x10, 7, 0, 0,
                        hudIcon63.attr, hudIcon63.f8, hudIcon63.f0);
            sub_080003F0();
        }
        sub_080003F0();
        sub_0801A664(2, 4);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080605D0);
#endif
extern u32 taskMem63[] asm("gUnk_03006130");
extern struct Task tasks63[] asm("gUnk_03006110");
extern void sub_080605D0(s32);
void sub_08060DB0(s32 index)
{
    u32 *memOut;
    if (index != 0) {
        tasks63[index].u8 = 0x3C;
    } else {
        tasks63[0].u8 = 0x65;
    }
    memOut = &taskMem63[index * 10];
    while ((*memOut = sub_08001494(0x200)) == 0)
        sub_080003F0();
    tasks63[index].uC = sub_080605D0;
    tasks63[index].u10 = tasks63[index].u20 + 0x1FC;
    tasks63[index].u24 = 0;
    sub_08000274(&tasks63[index], index);
}
#ifdef NONMATCHING
struct HudSlotE63 { u16 kind; u16 id; u8 pad4[0xC]; };
struct HudMgrE63 { u8 pad0[0x54]; u16 sel; u16 list[0x7D]; struct HudSlotE63 bag[25]; };
extern struct HudMgrE63 *hudMgrE63 asm("gUnk_030034E0");
extern u16 hudFrameE63[4][8] asm("gUnk_084EBDC8");
extern struct HudPos63 hudPosE63[] asm("gUnk_084EBE08");
extern struct HudPos63 hudPosYE63[] asm("gUnk_084EBE0A");
extern void hudItemE63(s32, s32, struct HudSlotE63 *, s32) asm("sub_0805FC80");
extern void hudNumberE63(s32, s32, u32, u8) asm("sub_0805FAC0");
void sub_08060E44(s32 animate)
{
    struct HudSlotE63 tmp;
    struct HudMgrE63 *mgr;
    struct HudPlayer63 *pl;
    s16 slide;
    s16 timer;
    s32 dirty;
    s32 count;
    s32 f78;
    s16 i;
    s16 j;
    s16 base;
    s16 k;
    s16 end;
    u16 keys;

    mgr = hudMgrE63;
    pl = &hudPlayers63[sub_080020F4()];
    dirty = 1;
    count = pl->count;
    f78 = pl->f78;
    while (sub_0800CB78() == 0) {
        if (animate != 0) {
            hudSound63(0x18A93);
            sub_0805865C(mgr->sel % 3 + 0x5A);
            sub_080003F0();
            if (sub_0800CB78() != 0)
                return;
        }
        slide = 8;
        timer = 0x3C;
        while (timer-- > 0 && sub_0800CB78() == 0) {
            slide -= 2;
            if (slide < 0)
                slide = 0;
            keys = hudKeys63;
            if (keys & 0x300)
                dirty = 1;
            if (count != pl->count) {
                count = pl->count;
                dirty = 1;
            }
            if (f78 != pl->f78) {
                f78 = pl->f78;
                dirty = 1;
            }
            if (keys & 0x100) {
                if (++mgr->sel >= pl->f78)
                    mgr->sel = 0;
                pl->f26 = 0;
                pl->f24 = 0;
                if (pl->state == 7)
                    pl->state = 1;
                if (pl->state == 6)
                    pl->state = 0;
                sub_0805865C(mgr->sel % 3 + 0x5A);
                if (animate != 0)
                    timer = 0x3C;
            }
            if (animate != 0 || dirty != 0) {
                sub_0801A664(2, 4);
                for (i = slide, j = 0; i <= 7; i++, j++) {
                    hudMap63[2][i + 0x16] = hudFrameE63[0][j];
                    hudMap63[3][i + 0x16] = hudFrameE63[1][j];
                    hudMap63[4][i + 0x16] = hudFrameE63[2][j];
                    hudMap63[5][i + 0x16] = hudFrameE63[3][j];
                }
                if ((u8)(pl->f78 - 4) <= 2) {
                    if (mgr->sel <= 2) {
                        hudMap63[2][slide + 0x15] = 0xF037;
                        hudMap63[3][slide + 0x15] = 0xF057;
                    } else {
                        hudMap63[2][slide + 0x15] = 0xF038;
                        hudMap63[3][slide + 0x15] = 0xF058;
                    }
                } else if (pl->f78 > 6) {
                    if (mgr->sel <= 2) {
                        hudMap63[2][slide + 0x15] = 0xF039;
                        hudMap63[3][slide + 0x15] = 0xF059;
                        hudMap63[4][slide + 0x15] = 0xF079;
                    } else if (mgr->sel <= 5) {
                        hudMap63[2][slide + 0x15] = 0xF03A;
                        hudMap63[3][slide + 0x15] = 0xF05A;
                        hudMap63[4][slide + 0x15] = 0xF07A;
                    } else {
                        hudMap63[2][slide + 0x15] = 0xF03B;
                        hudMap63[3][slide + 0x15] = 0xF05B;
                        hudMap63[4][slide + 0x15] = 0xF07B;
                    }
                }
                if (slide <= 0)
                    dirty = 0;
            }
            if (animate == 0) {
                timer = 0x3C;
                slide = 0;
            }
            base = mgr->sel / 3 * 3;
            end = base + 3;
            if (animate != 0) {
                for (k = base; k < end; k++) {
                    if (mgr->list[k] != 0) {
                        struct HudSlotE63 *found;
                        s32 id;
                        s16 n;
                        s16 m;
                        id = mgr->list[k] - 1;
                        found = &tmp;
                        tmp.kind = 1;
                        tmp.id = id;
                        n = 0;
                        for (m = 0; m <= 0x18; m++) {
                            if (mgr->bag[m].kind == 1 && id == mgr->bag[m].id) {
                                n++;
                                found = &mgr->bag[m];
                            }
                        }
                        hudNumberE63(hudPosE63[end - (k + 1)].x + (0xF0 - (7 - slide) * 8),
                                     hudPosYE63[end - (k + 1)].x + 0x18, n, 0);
                        hudItemE63(hudPosE63[end - (k + 1)].x + (0xF0 - (7 - slide) * 8),
                                   hudPosYE63[end - (k + 1)].x + 0x10, found, 0);
                    }
                }
            }
            if (animate == 0) {
                if (*(s32 *)(gUnk_03006440 + 0x28) & 1) {
                    dirty = 1;
                    do {
                        sub_080003F0();
                    } while (*(s32 *)(gUnk_03006440 + 0x28) & dirty);
                }
            }
            hudSprite63(hudPosE63[end - (mgr->sel + 1)].x - (7 - slide) * 8 + 0xF1,
                        hudPosYE63[end - (mgr->sel + 1)].x + 0x10, 7, 0, 0,
                        hudIcon63.attr, hudIcon63.f8, hudIcon63.f0);
            sub_080003F0();
            if (animate != 0) {
                if (sub_08058DB0() != 0 || sub_0800D11C() != 0 || sub_0800CC98() != 0
                    || sub_08056E90() != 0 || sub_0800D060() != 0)
                    break;
                if (pl->flags & 0x400)
                    break;
                if (pl->state == 0xC)
                    break;
                if (sub_0800CCCC() == 0 && (*(u16 *)((u8 *)gUnk_03005CF4 + 4) & 4))
                    break;
            }
            if (sub_0800CD34() != 0)
                break;
        }
        while (slide <= 7) {
            if (animate != 0) {
                if (sub_08058DB0() != 0 || sub_0800D11C() != 0 || sub_0800CC98() != 0
                    || sub_08056E90() != 0 || sub_0800D060() != 0)
                    break;
                if (pl->flags & 0x400)
                    break;
                if (pl->state == 0xC)
                    break;
                if (sub_0800CCCC() == 0 && (*(u16 *)((u8 *)gUnk_03005CF4 + 4) & 4))
                    break;
            }
            if (sub_0800CD34() != 0)
                break;
            slide += 2;
            if (slide > 8)
                slide = 8;
            for (i = slide, j = 0; i <= 7; i++, j++) {
                hudMap63[2][i + 0x16] = hudFrameE63[0][j];
                hudMap63[3][i + 0x16] = hudFrameE63[1][j];
                hudMap63[4][i + 0x16] = hudFrameE63[2][j];
                hudMap63[5][i + 0x16] = hudFrameE63[3][j];
            }
            sub_0801A664(2, 4);
            if ((u8)(pl->f78 - 4) <= 2) {
                if (mgr->sel <= 2) {
                    hudMap63[2][slide + 0x15] = 0xF037;
                    hudMap63[3][slide + 0x15] = 0xF057;
                } else {
                    hudMap63[2][slide + 0x15] = 0xF038;
                    hudMap63[3][slide + 0x15] = 0xF058;
                }
            } else if (pl->f78 > 6) {
                if (mgr->sel <= 2) {
                    hudMap63[2][slide + 0x15] = 0xF039;
                    hudMap63[3][slide + 0x15] = 0xF059;
                    hudMap63[4][slide + 0x15] = 0xF079;
                } else if (mgr->sel <= 5) {
                    hudMap63[2][slide + 0x15] = 0xF03A;
                    hudMap63[3][slide + 0x15] = 0xF05A;
                    hudMap63[4][slide + 0x15] = 0xF07A;
                } else {
                    hudMap63[2][slide + 0x15] = 0xF03B;
                    hudMap63[3][slide + 0x15] = 0xF05B;
                    hudMap63[4][slide + 0x15] = 0xF07B;
                }
            }
            base = mgr->sel / 3 * 3;
            end = base + 3;
            for (k = base; k < end; k++) {
                if (mgr->list[k] != 0)
                    hudItemE63(hudPosE63[2 - (end - (k + 1))].x + 0xF0 - (7 - slide) * 8,
                               hudPosYE63[2 - (end - (k + 1))].x + 0x10,
                               &mgr->bag[mgr->list[k] - 1], 0);
            }
            hudSprite63(hudPosE63[2 - (end - (mgr->sel + 1))].x + 0xF0 - (7 - slide) * 8,
                        hudPosYE63[2 - (end - (mgr->sel + 1))].x + 0x10, 7, 0, 0,
                        hudIcon63.attr, hudIcon63.f8, hudIcon63.f0);
            sub_080003F0();
        }
        sub_080003F0();
        sub_0801A664(2, 4);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08060E44);
#endif
extern u32 taskMem64[] asm("gUnk_03006180");
extern struct Task tasks64[] asm("gUnk_03006160");
extern void sub_08060E44(s32);
void sub_08061688(s32 index)
{
    u32 *memOut;
    if (index != 0) {
        tasks64[index].u8 = 0x3C;
    } else {
        tasks64[0].u8 = 0x65;
    }
    memOut = &taskMem64[index * 10];
    while ((*memOut = sub_08001494(0x200)) == 0)
        sub_080003F0();
    tasks64[index].uC = sub_08060E44;
    tasks64[index].u10 = tasks64[index].u20 + 0x1FC;
    tasks64[index].u24 = 0;
    sub_08000274(&tasks64[index], index);
}
/* SS1 number_above.c (52c0fa73870fab238941e32be7eff172e9bad71f), adapted to SS2 ASM. */
struct NumberPlayer64 { u8 pad0[0x14]; s32 x,y; };
struct NumberSprite64 { u32 base,unused,data; u8 padC[0x10]; u8 attr[24]; };
extern struct NumberSprite64 numberSprite64 asm("gUnk_03005D80");
extern const u32 numberPowers64[] asm("gUnk_084EBD4C");
extern void numberCoords64(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
static inline void NumberDraw64(struct NumberSprite64 *obj,u32 x,u32 y,u16 anim,u16 frame)
{
    sub_08007CF0(x,y,anim,frame,0,(s32)obj->attr,obj->data,obj->base);
}
static inline void NumberDigits64(s32 x,s32 y,s32 number,u32 kind,u8 count)
{
    u8 digits[12];
    s32 value;
    u32 i,started;
    u8 *p;
    const u32 *table;
    if (number < 0) number = 0x7FFFFFFF;
    switch (kind) {
    case 0: kind = 0; break;
    case 1: kind = 1; break;
    case 2: kind = 2; break;
    case 3: kind = 13; break;
    }
    value = number;
    table = &numberPowers64[10-count];
    p = digits;
    for (i = 0; i < count; i++,p++)
        *p = sub_08000498(&value,*table++);
    started = 0;
    x -= (count-1)*6;
    p = digits;
    for (i = 0; i < count; i++,x += 6,p++) {
        if (started || *p != 0 || i == count-1) {
            started = 1;
            NumberDraw64(&numberSprite64,x,y,kind,*p);
        }
    }
}
void sub_0806171C(void *raw,s32 value)
{
    struct NumberPlayer64 *object = raw;
    u16 screenX,screenY;
    u32 second;
    if (sub_0800CCCC() != 0) return;
    second = sub_0800CC98();
    if (second != 0) return;
    numberCoords64((object->x << 8) >> 16,(object->y << 8) >> 16,(s16 *)&screenX,(s16 *)&screenY,0x30,second);
    NumberDigits64(screenX,screenY,value,2,4);
    NumberDraw64(&numberSprite64,screenX-6,screenY-8,4,6);
}
/* SS1 player_rise_effect.c (52c0fa73870fab238941e32be7eff172e9bad71f), adapted to SS2 ASM. */
struct RisePlayer64 { u8 pad0[0x30]; u32 flags; u8 pad34[0x58]; s32 x,y; };
struct RiseSprite64 { u32 base,unused,data; u8 padC[0x10]; u8 attr[24]; };
extern struct RiseSprite64 riseSprite64 asm("gUnk_03005D80");
extern void riseCoords64(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
static inline u32 StepRise64(struct RiseSprite64 *obj,u16 anim,u16 *frame,u16 *timer,u32 loop)
{
    return sub_08008CC4(anim,frame,timer,(u8 *)obj->data,loop);
}
static inline void DrawRise64(struct RiseSprite64 *obj,u32 x,u32 y,u16 anim,u16 frame)
{
    sub_08007CF0(x,y,anim,frame,0,(s32)obj->attr,obj->data,obj->base);
}
void sub_08061830(void *raw)
{
    struct RisePlayer64 *player = raw;
    struct RiseSprite64 *sprite = &riseSprite64;
    s32 x = player->x;
    s32 y = player->y;
    s16 screenX,screenY;
    u16 frame = 0;
    u16 timer = 0;
    u16 i;
    sub_0805865C(0x25);
    for (i = 47; i != 0xFFFF; i--) {
        y -= 0x20;
        riseCoords64(((x >> 8) << 16) >> 16,(y << 8) >> 16,&screenX,&screenY,0x30,0);
        screenX -= 8;
        screenY -= 8;
        StepRise64(sprite,14,&frame,&timer,1);
        if (sub_0800CC98() == 0)
            DrawRise64(sprite,screenX,screenY,14,frame);
        sub_080003F0();
    }
    player->flags |= 8;
}
extern u8 resetTaskA64[] asm("gUnk_03006110");
extern u8 resetTaskB64[] asm("gUnk_03006160");
extern u8 resetPlayers64[] asm("gUnk_030034F0");
extern u8 resetTaskC64[] asm("gUnk_030061B0");
extern u8 resetTaskD64[] asm("gUnk_03003C10");
extern u8 resetTaskE64[] asm("gUnk_03006000");
extern u8 resetTaskF64[] asm("gUnk_03003480");
extern u8 resetTaskG64[] asm("gUnk_03006450");
extern u16 resetScroll64[] asm("gUnk_03001250");
extern u32 resetRunning64(void *) asm("sub_08000470");
extern void resetKill64(void *) asm("sub_080003A8");
extern void resetPrepare64(void) asm("sub_0805EFBC");
extern void resetBg64(u32,u16 *) asm("sub_08000AA8");
extern void resetMode64(s32) asm("sub_0801AB50");
extern void resetFade64(s32) asm("sub_0801AA8C");
extern void resetDisplay64(u32,u32,u32) asm("sub_080009F8");
extern void resetEnable64(u32,u32,u32) asm("sub_080009C0");
extern void resetSound64(u32) asm("sub_080570DC");
void sub_08061910(void)
{
  union 
  {
    u32 raw;
    struct 
    {
      u32 value : 16;
      u32 upper : 16;
    } bits;
  } control;
  u32 fill;
  u16 i;
  u8 *task;
  u32 ready;
  void *window;
  resetDisplay64(0x7F00, 0, 1);
  resetSound64(1);
  resetPrepare64();
  while (sub_0801AAE0() == 0)
  {
    sub_080003F0();
  }

  if (sub_0801AAF8() != 0)
  {
    sub_0801ABE8(6);
    while (sub_0801AAE0() == 0)
    {
      sub_080003F0();
    }

  }
  sub_08006C14();
  for (i = 0; i < 60; i++)
  {
    sub_080003F0();
  }

  sub_0800CCB8();
  sub_0800CBAC();
  sub_0805EF2C();
  task = resetTaskA64;
  do
  {
    if (resetRunning64(task))
    {
      resetKill64(task);
    }
  }
  while (0);
  task += 0x28;
  do
  {
    if (resetRunning64(task))
    {
      resetKill64(task);
    }
  }
  while (0);
  task = resetTaskB64;
  do
  {
    if (resetRunning64(task))
    {
      resetKill64(task);
    }
  }
  while (0);
  task += 0x28;
  do
  {
    if (resetRunning64(task))
    {
      resetKill64(task);
    }
  }
  while (0);
  for (i = 0; i < sub_08002164(); i++)
  {
    task = resetPlayers64 + (i * 0x28);
    do
    {
      if (resetRunning64(task))
      {
        resetKill64(task);
      }
    }
    while (0);
  }

  do
  {
    if (resetRunning64(resetTaskC64))
    {
      resetKill64(resetTaskC64);
    }
  }
  while (0);
  do
  {
    if (resetRunning64(resetTaskD64))
    {
      resetKill64(resetTaskD64);
    }
  }
  while (0);
  do
  {
    if (resetRunning64(resetTaskE64))
    {
      resetKill64(resetTaskE64);
    }
  }
  while (0);
  do
  {
    if (resetRunning64(resetTaskF64))
    {
      resetKill64(resetTaskF64);
    }
  }
  while (0);
  do
  {
    if (resetRunning64(resetTaskG64))
    {
      resetKill64(resetTaskG64);
    }
  }
  while (0);
  resetDisplay64(0x7F00, 0, 1);
  sub_080003F0();
  sub_080003F0();
  sub_0805EF2C();
  sub_080003F0();
  sub_080003F0();
  sub_0805EF2C();
  sub_080003F0();
  sub_080003F0();
  sub_0805EF2C();
  sub_080003F0();
  sub_080003F0();
  sub_0805EF2C();
  fill = 0;
  CpuSet(&fill, (void *) 0x0600E000, 0x05000200);
  sub_080003F0();
  sub_080003F0();
  control.bits.value = 0x1C08;
  resetBg64(0, (u16 *) (&control.raw));
  ;
  resetScroll64[2] = 0;
  resetScroll64[3] = 0;
  resetDisplay64(0x7F00, 0, 0);
  resetEnable64(0x100, 0, 1);
  resetMode64(6);
  while ((ready = sub_0801AAE0()) == 0)
  {
    resetScroll64[2] = ready;
    resetScroll64[3] = ready;
    sub_0805EF2C();
    sub_080003F0();
  }

  window = (void *) sub_0805DF38(0, 0, 0, 0, -1, 0x1404E2);
  sub_0805F07C();
  do
  {
    resetDisplay64(0, 0x2000, 1);
    resetBg64(0, (u16 *) (&control.raw));
    sub_080003F0();
  }
  while (sub_0805EEFC(window) == 0);
  sub_0805EE6C(window);
  resetFade64(10);
  while (sub_0801AAE0() == 0)
  {
    sub_080003F0();
  }

  SoftReset(0);
}
extern u8 linkEnemies64[] asm("gUnk_03004220");
extern u32 linkMap64[] asm("gUnk_03003170");
#define LKILL64(p) do { if(resetRunning64(p)) resetKill64(p); } while(0)
#define LWAIT64() do { if(sub_080021A8()) return; sub_080003F0(); } while(0)
void sub_08061B88(void)
{
    union { u32 raw; struct {u32 value:16;u32 upper:16;} bits; } control;
    u32 i;
    u8 *task;
    void *window;
    u32 ready;
    sub_0800CDD0();
    for(i=0;i<100;i++) LWAIT64();
    sub_080021D4();
    while(!sub_0801AAE0()) LWAIT64();
    if(sub_0801AC78()) {
        sub_0801ABE8(6);
        while(!sub_0801AAE0()) LWAIT64();
    }
    resetScroll64[29]=0;
    sub_0800CCEC();
    linkMap64[39]|=12;
    task=resetTaskD64; LKILL64(task);
    task=resetTaskE64; LKILL64(task);
    task=resetTaskF64; LKILL64(task);
    for(i=0;i<5;i++) { task=linkEnemies64+i*40; LKILL64(task); }
    sub_0805DE98();
    task=resetTaskA64; LKILL64(task);
    task+=40; LKILL64(task);
    task=resetTaskB64; LKILL64(task);
    task+=40; LKILL64(task);
    for(i=0;i<sub_08002164();i++) {task=resetPlayers64+i*40;LKILL64(task);}
    LWAIT64(); LWAIT64(); LWAIT64(); LWAIT64();
    LWAIT64(); LWAIT64(); LWAIT64(); LWAIT64();
    if((ready=sub_080021A8())!=0) return;
    resetDisplay64(0x7F00,0,0);
    resetEnable64(0x1100,0,1);
    control.bits.value=0x1C08;
    resetBg64(0,(u16*)&control.raw);
    resetScroll64[2]=ready;resetScroll64[3]=ready;
    sub_0805F07C();resetMode64(6);
    while(!sub_0801AAE0()) sub_080003F0();
    do {sub_080003F0();} while(!sub_0805EEFC(window));
    sub_08006DAC();
    for(i=0;i<60;i++) sub_080003F0();
retry:
    sub_08006C14();
    if(!sub_0807A124()) {
        do {sub_080003F0();} while(!sub_0805EEFC(window));
        sub_0801ABE8(10);
        while(!sub_0801AAE0()) sub_080003F0();
        sub_0800CBAC();sub_0800CDE4();resetFade64(6);
    } else {
        sub_08006BF8();
        do {sub_080003F0();} while(!sub_0805EEFC(window));
        goto retry;
    }
    while(!sub_0801AAE0()) sub_080003F0();
    SoftReset(0);
}
extern u32 saveFlags64 asm("gUnk_03003478");
extern u32 saveWrite64(void) asm("sub_0807A124");
struct SavePair64 {u32 a,b;};
struct SaveItem64 {u32 words[8];};
struct SaveEntry64 {u32 words[10];};
extern u8 *saveData64 asm("gUnk_03004210");
struct SaveFile64 { u8 pad[0xD8]; u16 hD8, hDA; u16 h[10]; u8 padF0[0x1DC-0xF0]; struct SaveItem64 items[16]; struct SaveEntry64 ent[8]; };
extern u8 *saveStats64 asm("gUnk_03005CF4");
extern u8 *saveItems64 asm("gUnk_03005D58");
struct SavePlayer64 { u8 pad0[0x2C]; u16 f2C,f2E; u8 pad30[0xC2-0x30]; u16 fC2,fC4,fC6; u8 padC8[0x14C-0xC8]; };
extern struct SavePlayer64 savePlayers64[] asm("gUnk_03003CE0");
extern u8 savePlayerPtr64[] asm("gUnk_03003D14");
extern u8 saveMap64[] asm("gUnk_03003170");
struct SaveMapS64 { u8 pad0[0x8C]; u16 f8C; u16 f8E; u16 f90; };
extern struct SaveMapS64 saveMapS64 asm("gUnk_03003170");
void sub_08061E44(s32 arg0) { register u32 var_r5 asm("r5");
    u8 *data;
    u8 *stats;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r4;
    s32 var_r4_2;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u8 *temp_r0;
    void *temp_r0_13;
    void *temp_r0_2;

    sub_0800CDD0();
    if ((sub_0800D11C() != 0) || (sub_0801DF8C() != 0)) {
        sub_0800CDE4();
        return;
    }
    if(arg0==0) {
        if(sub_0800CB9C()) temp_r0=(u8*)sub_0805DF38(1,14,25,2,-2,0x1403D7); else temp_r0=(u8*)sub_0805DF38(1,14,25,2,-2,0x1403D6);
        sub_0805EF84(temp_r0, 0U);
        do {
            sub_080003F0();
        } while (sub_0805EEFC(temp_r0) == 0);
        if (sub_0805EF14(temp_r0) == 0) {
            goto block_104;
        }
        if ((sub_0800CB9C() != 0) && (sub_08002204() != 0)) {
while(sub_080681F4(arg0) == 0) sub_080003F0();
            return;
        }
        sub_08006DAC();
        var_r5 = 0;
        do {
            sub_080003F0();
            var_r5 += 1;
        } while (var_r5 <= 9U);
        sub_08006C14();
        memcpy(saveData64, saveStats64 + 0x70, 0x51C);
        if (sub_0800CCCC() != 0) {
if (savePlayers64[sub_080020F4()].f2E == 0){
            (*(u32 *)((u8 *)(saveData64)+0x0)) = 2;
            var_r5=0; do { {register u8 *d asm("r0") = saveData64; asm("" : "+r"(d)); ((struct SaveFile64 *)d)->items[var_r5]=((struct SaveItem64 *)saveItems64)[var_r5];} var_r5++; } while(var_r5<=15);
        } else {
            {u8 *dp=saveData64; *(u32 *)dp = 3; stats=saveStats64;
            ((struct SaveFile64 *)dp)->hD8 = *(u16 *)(stats+0x4);
            *(u32 *)(dp+0x28) = *(u32 *)(stats+0x38);}
            (*(u16 *)((u8 *)(saveData64)+0x1C)) = (u16) savePlayers64[sub_080020F4()].f2E;
            (*(u16 *)((u8 *)(saveData64)+0x1E)) = (u16) savePlayers64[sub_080020F4()].f2C;
{u32 id=sub_080020F4(); u8 *d=saveData64; u8 *p=(u8 *)&savePlayers64[id]; *(struct SavePair64 *)(d+0x30)=*(struct SavePair64 *)(p+0xA4);}
            (*(u16 *)((u8 *)(saveData64)+0x20)) = (u16) savePlayers64[sub_080020F4()].fC4;
            (*(u16 *)((u8 *)(saveData64)+0x22)) = (u16) savePlayers64[sub_080020F4()].fC2;
            {u32 id=sub_080020F4(); u8 *d=saveData64; *(u16*)(d+0x24)=savePlayers64[id].fC6; *(u32*)(d+0x2C)=saveFlags64 & 0xFFFFFEFF;}
            var_r5=0; do { {register u8 *d asm("r0") = saveData64; asm("" : "+r"(d)); ((struct SaveFile64 *)d)->items[var_r5]=((struct SaveItem64 *)saveItems64)[var_r5];} var_r5++; } while(var_r5<=15);
            var_r5 = 0;
            do {
                {u8 *d=saveData64; u32 o; u8 *s; asm("" : "+r"(d)); o=var_r5*2; d+=0xDC; d+=o; s=saveStats64+0x22; *(u16*)d=*(u16*)(s+o);}
                var_r5 += 1;
            } while (var_r5 <= 9U);
            {register u8 *pp asm("r6"); var_r5=0; pp=savePlayerPtr64; asm("" : "+r"(pp)); var_r4_2=0; do { *(struct SaveEntry64 *)(saveData64+var_r4_2+0x3DC)=*(struct SaveEntry64 *)(var_r4_2+*(u32 *)(pp+0x14C*sub_080020F4())); var_r4_2+=40; var_r5++; } while(var_r5<=7);}
        }
} else {
            data=saveData64;stats=saveStats64;
((struct SaveFile64 *)data)->hD8 = *(u16 *)(stats+0x4);
            (*(u32 *)((u8 *)(data)+0x28)) = (s32) (*(u32 *)((u8 *)(stats)+0x38));
            (*(u32 *)((u8 *)(data)+0x0)) = 4;
            (*(u16 *)((u8 *)(data)+0x1C)) = saveMapS64.f8C;
            (*(u16 *)((u8 *)(data)+0x1E)) = saveMapS64.f90;
            (*(u16 *)((u8 *)(saveData64)+0x20)) = (u16) savePlayers64[sub_080020F4()].fC4;
            (*(u16 *)((u8 *)(saveData64)+0x22)) = (u16) savePlayers64[sub_080020F4()].fC2;
            (*(u16 *)((u8 *)(saveData64)+0x24)) = (u16) savePlayers64[sub_080020F4()].fC6;
{u32 id=sub_080020F4(); u8 *d=saveData64; u8 *p=(u8 *)&savePlayers64[id]; *(struct SavePair64 *)(d+0x30)=*(struct SavePair64 *)(p+0x8C);}
            (*(u32 *)((u8 *)(saveData64)+0x2C)) = (s32) (saveFlags64 & 0xFFFFFEFF);
            var_r5=0; do { {register u8 *d asm("r0") = saveData64; asm("" : "+r"(d)); ((struct SaveFile64 *)d)->items[var_r5]=((struct SaveItem64 *)saveItems64)[var_r5];} var_r5++; } while(var_r5<=15);
            var_r5 = 0;
            do {
                {u8 *d=saveData64; u32 o; u8 *s; asm("" : "+r"(d)); o=var_r5*2; d+=0xDC; d+=o; s=saveStats64+0x22; *(u16*)d=*(u16*)(s+o);}
                var_r5 += 1;
            } while (var_r5 <= 9U);
            {register u8 *pp asm("r6"); var_r5=0; pp=savePlayerPtr64; asm("" : "+r"(pp)); var_r4=0; do { *(struct SaveEntry64 *)(saveData64+var_r4+0x3DC)=*(struct SaveEntry64 *)(var_r4+*(u32 *)(pp+0x14C*sub_080020F4())); var_r4+=40; var_r5++; } while(var_r5<=7);}
        }
        if (saveWrite64() == 0) {
            sub_08006BF8();
            temp_r4 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x1403D9U);
            do {
                sub_080003F0();
            } while (sub_0805EEFC((void *) temp_r4) == 0);
            sub_0801ABE8(0xA);
while(sub_0801AAE0() == 0) sub_080003F0();
            goto block_101;
        } else {
            sub_08006BF8();
            temp_r4_2 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x1403DAU);
            do {
                sub_080003F0();
            } while (sub_0805EEFC((void *) temp_r4_2) == 0);
        }
        goto block_104;
    } else if(arg0==1) {
while(sub_0801AAE0() == 0) sub_080003F0();
        if (sub_0801AC78() != 0) {
            sub_0801ABE8(6);
while(sub_0801AAE0() == 0) sub_080003F0();
        }
        if (sub_0800CB9C() != 0) {
            if (sub_08002204() == 0) {
                return;
            }
while(sub_080681F4(arg0) == 0) sub_080003F0();
            return;
        }
        sub_08006DAC();
        var_r5 = 0;
        do {
            sub_080003F0();
            var_r5 += 1;
        } while (var_r5 <= 9U);
        sub_08006C14();
        memcpy(saveData64, saveStats64 + 0x70, 0x51C);
        (*(u32 *)((u8 *)(saveData64)+0x0)) = 2;
        if (saveWrite64() == 0) {
            sub_08006BF8();
            sub_0801AB50(0xA);
            temp_r4_3 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x1403D9U);
            do {
                sub_080003F0();
            } while (sub_0805EEFC((void *) temp_r4_3) == 0);
            sub_0801ABE8(0xA);
while(sub_0801AAE0() == 0) sub_080003F0();
        } else {
            sub_08006BF8();
            temp_r4_4 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x1403DAU);
            do {
                sub_080003F0();
            } while (sub_0805EEFC((void *) temp_r4_4) == 0);
        }
        goto block_104;
    } else {
        if (sub_08002204() != 0) {
            if (sub_0800CE30() == 0) {
                {u8 *d=saveData64; u8 *s=saveStats64; *(u32*)(d+0x4)=*(u32*)(s+0x74); *(u32*)(d+0x8)=*(u32*)(s+0x78);}
                var_r5 = 0;
                do {
                    {u8 *d=saveData64+0x140; u8 *s; d+=var_r5; s=saveStats64+0x1B0; *d=s[var_r5];}
                    var_r5 += 1;
                } while (var_r5 <= 6U);
                var_r5 = 0;
                do {
                    {u8 *d=saveData64+0x147; u8 *s; d+=var_r5; s=saveStats64+0x1B7; *d=s[var_r5];}
                    var_r5 += 1;
                } while (var_r5 <= 4U);
            } else {
                {u8 *d=saveData64; u8 *s=saveStats64; *(u32*)(d+0xC)=*(u32*)(s+0x7C); *(u32*)(d+0x10)=*(u32*)(s+0x80);}
                var_r5 = 0;
                do {
                    {u8 *d=saveData64+0x14C; u8 *s; d+=var_r5; s=saveStats64+0x1BC; *d=s[var_r5];}
                    var_r5 += 1;
                } while (var_r5 <= 6U);
                var_r5 = 0;
                do {
                    {u8 *d=saveData64+0x153; u8 *s; d+=var_r5; s=saveStats64+0x1C3; *d=s[var_r5];}
                    var_r5 += 1;
                } while (var_r5 <= 4U);
            }
        }
        var_r5 = 0;
        do {
{u8 *d=saveData64; *(u16*)(d+(var_r5<<5)+0x1E6)=0;}
            var_r5 += 1;
        } while (var_r5 <= 0xFU);
        {u8 *d=saveData64; *(u32*)d=2; ((struct SaveFile64 *)d)->hDA=*(u16*)(saveStats64+0x14A);}
        sub_08006DAC();
        var_r5 = 0;
        do {
            sub_080003F0();
            var_r5 += 1;
        } while (var_r5 <= 9U);
        sub_08006C14();
        if ((sub_0800CB9C() != 0) && (sub_08002204() != 0)) {
            sub_080021D4();
        }
        if (saveWrite64() == 0) {
            sub_08006BF8();
            temp_r4_5 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x1403D9U);
            do {
                sub_080003F0();
            } while (sub_0805EEFC((void *) temp_r4_5) == 0);
            sub_0801ABE8(0xA);
while(sub_0801AAE0() == 0) sub_080003F0();
block_101:
            sub_0800CBAC();
            SoftReset(0);
            goto block_104;
        }
        sub_08006BF8();
        temp_r4_6 = sub_0805DF38(1U, 0xEU, 0x19U, 2U, 0x3C, 0x1403DAU);
        do {
            sub_080003F0();
        } while (sub_0805EEFC((void *) temp_r4_6) == 0);
        goto block_104;
    }
block_104:
    sub_0800CDE4();
}
#ifdef NONMATCHING
struct Pt624 { s32 x, y; };
struct Spr624 {
    s32 base; u32 unk4; s32 data; s32 unkC; u32 id; u32 unk14; s32 unk18;
    u8 remap[16];
    s16 scale, step, max, min;
};
struct Menu624 {
    struct Spr624 spr;
    s32 x[4];
    s32 y[4];
    u16 w[4];
    u16 h[4];
    u8 *text[4];
    u32 pad[3];
};
extern struct Pt624 src624[] asm("gUnk_084EBE14");
extern struct Pt624 dst624[] asm("gUnk_084EBE34");
extern s32 dstY624[] asm("gUnk_084EBE38");
extern s32 msg624[] asm("gUnk_084EBE54");
extern u8 res624[] asm("gUnk_08518938");
extern u32 flags624[] asm("gUnk_03003D10");
extern u16 keys624 asm("gUnk_03001324");
extern u16 held624 asm("gUnk_03001308");
extern u8 *party624 asm("gUnk_030034E0");
extern u8 *state624 asm("gUnk_03005CF4");
extern void draw624(s32, s32, u16, u16, s32, void *, s32, s32) asm("sub_08007CF0");
extern void drawScaled624(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32) asm("sub_08007F0C");
extern s32 load624(u32, void *) asm("sub_08006EE0");
extern u8 *window624(s32, s32, s32, s32) asm("sub_0805D720");
extern void text624(u8 *, u32, u32) asm("sub_0801A3D0");

static inline void Load624(struct Spr624 *p, u32 id)
{
    s32 data;
    u32 i;
    p->id = id;
    p->unk14 = 0;
    p->unk18 = 0x80000000;
    p->data = data = load624(id, res624);
    if (data != 0) {
        id &= 0xFFFF;
        p->base = data = load624(id | 0x60000, res624);
        if (data != 0) {
            p->unkC = data = load624(id | 0x80000, res624);
            if (data != 0) {
                for (i = 0; i <= 15; i++)
                    p->remap[i] = i;
                sub_080653B8(p, 0x120, 0xE0, 8);
            }
        }
    }
}

static inline void Lerp624(s32 *dst, s32 a, s32 b, s32 t, s32 u)
{
    if (a == b)
        *dst = a;
    else
        *dst = (b * t >> 10) + (a * u >> 10);
}

static inline void DrawScaled624(struct Spr624 *p, s32 x, s32 y, u16 id, u16 frame)
{
    p->scale += p->step;
    if (p->step > 0 && p->scale > p->max)
        p->step = -p->step;
    if (p->step < 0 && p->scale < p->min)
        p->step = -p->step;
    drawScaled624(x, y, id, frame, 0, p->remap, p->data, p->base, p->scale, p->scale, 0xFF);
}

#define PLAYER_FLAGS() flags624[sub_080020F4() * (0x14C / 4)]

#define LERP(a, b, t, u) (((b) * (t) >> 10) + ((a) * (u) >> 10))

#define BUSY() (sub_0800CDF8() || sub_0800D11C() || (sub_0801DF8C() && !sub_0800CCCC()) || sub_0805F184() || sub_0800D060())
#define BUSY2() (sub_0800CDF8() || sub_0800D11C() || (sub_0801DF8C() && !sub_0800CCCC()) || (PLAYER_FLAGS() & 0x2000) || sub_0805F184() || sub_0800D060())

/* Pause menu: slide the four option icons in, pick one, slide them out and run it. */
void sub_080624D8_(void) asm("sub_080624D8");
void sub_080624D8_(void)
{
    struct Menu624 m;
    u32 sel;
    s16 scale, step;
    u8 *win;
    u8 **texts;
    u8 *remap;
    u16 i;
    s32 t, u, a, b;
    s32 next;
    s16 w;
    s16 sx, sy;
    u32 ok;
    u8 *p;

    if (sub_0800CD8C() || sub_0800D11C() || sub_0805EF90())
        goto out;
    texts = m.text;
    remap = m.spr.remap;
    switch (gUnk_03003470) {
    case 0:
        Load624(&m.spr, 0x50002);
        break;
    case 1:
        Load624(&m.spr, 0x5015B);
        break;
    case 2:
        Load624(&m.spr, 0x5015C);
        break;
    case 3:
        Load624(&m.spr, 0x5015D);
        break;
    case 4:
        Load624(&m.spr, 0x5015E);
        break;
    }
    m.spr.scale = 0x100;
    m.spr.max = 0x120;
    m.spr.min = 0xE0;
    m.spr.step = 8;
    for (i = 0; i <= 3; i++)
        texts[i] = (u8 *)sub_08007290(msg624[i]);
    while (sub_0801AC78() == 0)
        sub_080003F0();
    sub_0800CE40();
    t = 0;
    sub_0805865C(0x12);
    do {
        sub_08015C14();
        next = t + 0x80;
        u = 0x400 - t;
        for (i = 0; i <= 3; i++) {
            Lerp624(&m.x[i], src624[i].x, dst624[i].x, t, u);
            Lerp624(&m.y[i], src624[i].y, dstY624[i * 2], t, u);
            if (i == 1 && (PLAYER_FLAGS() & 8))
                draw624(m.x[1] >> 8, m.y[1] >> 8, 7, 0, 0, remap, m.spr.data, m.spr.base);
            else
                draw624(m.x[i] >> 8, m.y[i] >> 8, i, 0, 0, remap, m.spr.data, m.spr.base);
        }
        t = next;
        sub_080003F0();
    } while (t <= 0x3FF);

    sub_0801A664(0x12, 2);
    win = window624(9, 0xF, 9, 1);
    sel = 1;
    if (gUnk_03003170.curLevel != 0xC)
        sel = 0;
    step = 8;
    scale = 0x100;
    for (;;) {
        sub_08015C14();
        scale += step;
        if (step > 0 && scale > 0x120)
            step = -8;
        if (step < 0 && scale < 0xE0)
            step = 8;
        for (i = 0; i <= 3; i++) {
            sub_08008CC4(i, &m.w[i], &m.h[i], (u8 *)m.spr.data, 1);
            if (sel == i) {
                if (i == 1 && (PLAYER_FLAGS() & 8))
                    DrawScaled624(&m.spr, dst624[1].x >> 8, dst624[1].y >> 8, 7, m.w[1]);
                else
                    DrawScaled624(&m.spr, dst624[i].x >> 8, dstY624[i * 2] >> 8, i, m.w[i]);
            } else {
                    if (i == 1 && (PLAYER_FLAGS() & 8))
                        draw624(dst624[1].x >> 8, dst624[1].y >> 8, 7, m.w[1], 0, remap, m.spr.data, m.spr.base);
                    else
                        draw624(dst624[i].x >> 8, dstY624[i * 2] >> 8, i, m.w[i], 0, remap, m.spr.data, m.spr.base);
            }
        }
        w = sub_0801A638(texts[sel] + 2);
        text624(texts[sel] + 2, (u16)(-(w / 2 + (w & 1)) + 15), 16);
        sub_080003F0();
        if (BUSY())
            keys624 = 2;
        if (sub_0800CD8C()) {
            keys624 = 0;
            held624 = 0;
        }
        if (keys624 & 1) {
            if (sel > 2) {
                if (++*(u16 *)(state624 + 0x14A) > 7)
                    *(u16 *)(state624 + 0x14A) = 0;
                sub_0805865C(0xF);
                continue;
            }
            sub_0805865C(0xF);
            goto confirm;
        }
        if (keys624 & 2) {
            sub_0805865C(0x10);
            if (sub_0800CDF8() == 0) {
                t = 0x400;
                do {
                    next = t - 0x80;
                    u = 0x400 - t;
                    for (i = 0; i <= 3; i++) {
                        Lerp624(&m.x[i], src624[i].x, dst624[i].x, t, u);
                        Lerp624(&m.y[i], src624[i].y, dst624[i].y, t, u);
                        if (i == 1 && (PLAYER_FLAGS() & 8))
                            draw624(m.x[1] >> 8, m.y[1] >> 8, 7, 0, 0, remap, m.spr.data, m.spr.base);
                        else
                            draw624(m.x[i] >> 8, m.y[i] >> 8, i, 0, 0, remap, m.spr.data, m.spr.base);
                    }
                    t = next;
                    sub_080003F0();
                } while (t > 0);
            }
            while (sub_0805EEDC(win) == 0)
                sub_080003F0();
            sub_0805F0F0(win);
            while (sub_0805EEEC(win) == 0)
                sub_080003F0();
            if (sub_0800CD8C() == 0 && sub_0800D11C() == 0)
                sub_08015C38();
        out:
            sub_0800CE54();
            sub_0800D04C();
            return;
        }
        if (keys624 & 0x40) {
            if (gUnk_03003170.curLevel == 0xC)
                goto buzz;
            if (sel != 0)
                sub_0805865C(0x62);
            sel = 0;
            continue;
        }
        if (keys624 & 0x20) {
            if (sub_0800CDC0())
                goto buzz;
            if (sel != 1)
                sub_0805865C(0x62);
            sel = 1;
            continue;
        }
        if (keys624 & 0x80) {
            if (sub_0800CDC0() && !sub_0800CCCC())
                goto buzz;
            if (sub_08002204() == 0)
                continue;
            ok = 1;
            switch (gUnk_03003170.curLevel) {
            case 1:
            case 3:
            case 7:
                if (gUnk_03003170.f90 == 4)
                    goto buzz;
                break;
            case 2:
                if (gUnk_03003170.f90 == 4 || gUnk_03003170.f90 == 7)
                    goto buzz;
                break;
            case 4:
                if (gUnk_03003170.f90 == 6)
                    goto buzz;
                break;
            case 5:
                if (gUnk_03003170.f90 == 0 || gUnk_03003170.f90 == 10)
                    goto buzz;
                break;
            case 8:
                if (gUnk_03003170.f90 == 0)
                    goto buzz;
                break;
            case 11:
            case 12:
            case 13:
                ok = 0;
                break;
            case 19:
                if (gUnk_03003170.f90 == 2)
                    goto buzz;
                break;
            }
            if (ok == 0)
                goto buzz;
            if (sel != 2)
                sub_0805865C(0x62);
            sel = 2;
            continue;
        buzz:
            sub_0805865C(0x61);
            continue;
        }
        if (keys624 & 0x10) {
            if (sel != 3)
                sub_0805865C(0x62);
            sel = 3;
        }
    }

confirm:
    while (sub_0805EEDC(win) == 0) {
        if (BUSY())
            sel = 4;
        sub_080003F0();
    }
    if (BUSY())
        sel = 4;
    sub_080003F0();
    if (BUSY())
        sel = 4;
    sub_080003F0();
    if (BUSY())
        sel = 4;
    sub_0805F0F0(win);
    if (sel != 2)
        sub_0801ABE8(6);
    t = 0x400;
    do {
        next = t - 0x80;
        u = 0x400 - t;
        for (i = 0; i <= 3; i++) {
            Lerp624(&m.x[i], src624[i].x, dst624[i].x, t, u);
            Lerp624(&m.y[i], src624[i].y, dst624[i].y, t, u);
            if (i == 1 && (PLAYER_FLAGS() & 8))
                draw624(m.x[1] >> 8, m.y[1] >> 8, 7, 0, 0, remap, m.spr.data, m.spr.base);
            else
                draw624(m.x[i] >> 8, m.y[i] >> 8, i, 0, 0, remap, m.spr.data, m.spr.base);
        }
        t = next;
        if (BUSY2())
            sel = 4;
        sub_080003F0();
    } while (t > 0 || sub_0801AAE0() == 0);
    while (sub_0805EEEC(win) == 0) {
        if (BUSY2())
            sel = 4;
        sub_080003F0();
    }
    switch (sel) {
    case 0:
        sub_0800BB54();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sx = gUnk_03003170.scrollX;
        sy = gUnk_03003170.scrollY;
        sub_0800CCA8();
        sub_08084F24();
        sub_080003F4(0x11201100);
        gUnk_03003170.scrollX = sx;
        gUnk_03003170.scrollY = sy;
        for (i = 0; i <= 0x18; i++) {
            p = party624 + i * 16;
            if (*(u16 *)(p + 0x150) == 7)
                *(u16 *)(p + 0x156) = 0;
        }
        sub_0800CCB8();
        goto reset;
    case 1:
        sub_0800BB54();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_0800CCA8();
        sx = gUnk_03003170.scrollX;
        sy = gUnk_03003170.scrollY;
        sub_08084EAC();
        goto restore;
    case 2:
        sub_08061E44(0);
        break;
    case 3:
        sub_0800BB54();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_0800CCA8();
        sx = gUnk_03003170.scrollX;
        sy = gUnk_03003170.scrollY;
    restore:
        sub_080003F4(0x11201100);
        gUnk_03003170.scrollX = sx;
        gUnk_03003170.scrollY = sy;
        sub_0800CCB8();
        gUnk_03003CE0[sub_080020F4()].flags &= ~8;
    reset:
        sub_08000420(0x514C8);
        break;
    case 4:
        sub_0801AB50(6);
        break;
    }
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    if (sub_0800CD8C() == 0 && sub_0800D11C() == 0 && sub_0800D060() == 0)
        sub_08015C38();
    sub_0800D04C();
    sub_0800CE54();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080624D8);
#endif
struct T65Draw { u32 base; u32 unk4; u8 *data; u32 unkC; u8 pad[12]; u8 style; u8 rest[23]; };
struct T65Level { u16 count; u8 pad[114]; };
extern struct T65Level t65_levels[] asm("gUnk_0847846C");
extern u16 t65_level asm("gUnk_030031FE");
struct T65State { u8 pad[0x8E]; u16 level, f90, area; };
struct T65Video { u8 pad[0x3A]; u16 blend; };
struct T65Player { u8 pad[0x30]; u32 flags; u8 rest[0x118]; };
struct T65Pair { u16 x,y; };
extern struct T65State t65_state asm("gUnk_03003170");
extern struct T65Video t65_video asm("gUnk_03001250");
extern struct T65Player t65_players[] asm("gUnk_03003CE0");
static inline void t65_measure(u32 id,u16 *w,u16 *h,u8 *data) {
 u16 *pw = w;
 u16 *ph = h;
 sub_08008CC4(id,pw,ph,data,1);
}
static inline u16 t65_readLevel(u16 *p) {register u16 *p1 asm("r1")=p; return *p1;}
static inline void t65_flags(void) {
 u32 id=sub_080020F4();
 register u8 *base asm("r1")=(u8 *)t65_players;
 register u32 offset asm("r2")=0x14C;
 offset*=id; base+=0x30; offset+=(u32)base;
 { register u32 *p asm("r2")=(u32 *)offset; *p &= ~0x80; }
}
static inline u16 t65_width(struct T65Pair *p) {register struct T65Pair *p1 asm("r1")=p; return p1->x;}
void sub_0806335C(void)
{
    struct T65Draw a, b;
    u16 ids[2], widths[2], heights[2];
    u16 i;
    register struct T65Pair *wp asm("r8");
    register u16 *lp asm("r9");
    u8 *bp;
    register u8 *ap asm("r4");
    sub_08000AF0(0x15, b.unkC, 1);
    a.style = 5;
    b.style = 5;
    if (t65_state.area != 0) {
        ids[0] = t65_state.level + 0x14;
        if (t65_state.area == t65_levels[t65_state.level].count - 1) {
            if (t65_state.level <= 8U)
                ids[1] = t65_state.level + 0x1C;
            else ids[1] = 0x23;
        } else ids[1] = t65_state.area;
        widths[0] = 0; widths[1] = 0;
        heights[0] = 0; heights[1] = 0;
        i = 1;
        wp = (struct T65Pair *)widths;
        ap=&a.style;
        { register u8 *p asm("r0")=&b.style; bp=p; }
        lp = &t65_level;
        do {
            t65_video.blend = 0x3030;
            if (t65_readLevel(lp) <= 8U) t65_measure(ids[0], widths, heights, a.data);
            else t65_measure(0x26, widths, heights, a.data);
            t65_measure(ids[1], widths + 1, heights + 1, b.data);
            if (t65_readLevel(lp) <= 8U) sub_08007CF0(0x78,0x36,ids[0],wp->x,0,(s32)ap,(s32)a.data,a.base);
            else sub_08007CF0(0x78,0x36,0x26,t65_width(wp),0,(s32)ap,(s32)a.data,a.base);
            sub_08007CF0(0x78,0x6A,ids[1],wp->y,0,(s32)({register u8 *p asm("r1")=bp;asm("" : "+r"(p));p;}),(s32)b.data,b.base);
            sub_080003F0();
        } while (i++ <= 0x77U);
        t65_video.blend = 0;
    }
    t65_flags();
}
#ifdef NONMATCHING
struct T65Popup { u32 base, unk4; u8 *data; u32 sound, resource, style, mode; u8 palette[24]; };
extern u8 t65_popupResource[] asm("gUnk_08518938");
extern u32 *t65_popupTasks asm("gUnk_0300602C");
extern void t65_position(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
extern void t65_draw(s32,s32,u32,u32,u32,void *,u8 *,u32) asm("sub_08007870");
static inline s32 t65P_init(struct T65Popup *obj,u32 resource,s32 index,s32 size)
{
    void *table = t65_popupResource;
    s32 mem,first,second,i;
    obj->resource=resource;obj->style=index;obj->mode=size;
    first=sub_08006EE0(resource,table); obj->data=(u8 *)first;
    if (!first) return 0;
    resource=(resource&0xFFFF)|0x60000;
    second=sub_08006EE0(resource,table);obj->base=second;
    if (!second) return 0;
    mem=sub_08006EE0((resource&0xFFFF)|0x80000,table);obj->sound=mem;
    if (!mem) return 0;
    if (size>=0) sub_08000AF0(index+16,(void *)(mem+(index<<5)),size);
    i=0;
    do {obj->palette[i]=i;i++;} while ((u32)i<=15);
    sub_080653B8(obj,0x120,0xE0,8);
    return (s32)obj;
}
void t65_popupImplementation(u32,u32) asm("sub_080634D8");
void t65_popupImplementation(u32 packed,u32 arg)
{
    struct T65Popup draw;
    s16 xy[2];
    u16 sizes[2];
    u32 pos = packed;
    u32 sound = arg >> 16;
    u32 shifted;
    register u32 px asm("sl");
    register u32 py asm("r9");
    register u16 *widthPtr asm("r8");
    u16 *initialHeight;
    register s16 *initialX asm("r5");
    register s16 *initialY asm("r6");
    s16 *xPtr;
    register s16 *yPtr asm("r5");
    register u32 done asm("r4");
    u32 i;
    {register u32 resource asm("r4")=0x50130;
    register void *table asm("r9");
    register struct T65Popup *descriptor asm("sl");
    register u32 style asm("r0");register s32 mode asm("r1");register void *base asm("r2");
    s32 first,second,mem;
    asm("" : "+r"(resource));
    {register struct T65Popup *p asm("r0")=&draw;asm("" : "+r"(p));descriptor=p;asm("" : "+r"(descriptor));}
    style=5;mode=-1;base=t65_popupResource;asm("" : "+r"(style), "+r"(mode), "+r"(base));table=base;
    draw.resource=resource;draw.style=style;draw.mode=mode;
    first=sub_08006EE0(resource,table);draw.data=(u8 *)first;
    widthPtr=&sizes[0];initialHeight=&sizes[1];initialX=&xy[0];initialY=&xy[1];
    asm("" : "+r"(widthPtr), "+r"(initialHeight), "+r"(initialX), "+r"(initialY));
    if(first) {
        resource&=0xFFFF;
        second=sub_08006EE0(resource|0x60000,table);draw.base=second;
        if(second) {
            mem=sub_08006EE0(resource|0x80000,table);draw.sound=mem;
            if(mem) {
                i=0;do {draw.palette[i]=i;i++;} while(i<=15);
                sub_080653B8(({register struct T65Popup *p asm("r0")=descriptor;asm("" : "+r"(p));p;}),0x120,0xE0,8);
            }
        }
    }}
    if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC() && !sub_0800CD34())
        sub_08000AF0(sound+0x10,draw.sound+0x20,1);
    draw.palette[0] = 5;
    draw.palette[1] = sound;
    py = pos >> 16;
    {
        register u32 mask asm("r0") = 0xFFFF;
        register u32 coord asm("r1");
        asm("" : "+r"(mask));
        coord = pos;
        asm("" : "+r"(coord));
        coord &= mask;
        asm("" : "+r"(coord));
        px = coord;
        {
            register u16 *wp asm("r3") = widthPtr;
            asm("" : "+r"(wp));
            *wp = 0;
        }
        *initialHeight = 0;
        xPtr = initialX;
        yPtr = initialY;
        shifted = coord << 16;
    }
    loop:
        {
            register u32 rawY asm("r6") = py;
            asm("" : : "r"(rawY));
            t65_position((s32)shifted >> 16, (s16)rawY, xPtr, yPtr, 0x30, 0);
        }
        done = (u16)sub_08008CC4(10,&sizes[0],&sizes[1],draw.data,0);
        if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CCCC() && !sub_0800CD34()) {
            if (*t65_popupTasks != 0) {
                register u32 fade asm("r0")=sub_0800BC44(px,py,0);
                register s32 drawX asm("r2")=*xPtr;
                register s32 drawY asm("r1")=*yPtr;
                register u16 *widths asm("r6")=widthPtr;
                register u32 width asm("r3")=*widths;
                asm("" : "+r"(fade), "+r"(drawX), "+r"(drawY), "+r"(width));
                t65_draw(drawX,drawY,10,width,(u8)fade,draw.palette,draw.data,draw.base);
            }
            else
                sub_08007CF0(*xPtr,*yPtr,10,*widthPtr,1,(s32)draw.palette,(s32)draw.data,draw.base);
        }
        sub_080003F0();
    if (!sub_0800CED8() && !sub_0800CB78() && !sub_0800CD00() && done == 0) goto loop;
    *(u32 *)((u8 *)sub_0800048C()+8)=0;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080634D8);
#endif
#ifdef NONMATCHING
struct T65CPopup { u32 base, unk4; u8 *data; u32 sound, resource, style, mode; u8 palette[24]; };
struct T65CPlayer { u8 bytes[0x14C]; };
struct T65CResource { u32 id; u8 pad[84]; };
struct T65CState { u8 pad[0x90]; u16 area; };
extern struct T65CPlayer t65C_players[] asm("gUnk_03003CE0");
extern struct T65CResource t65C_resourceTable[] asm("gUnk_08479140");
extern struct T65CState t65C_state asm("gUnk_03003170");
extern u8 t65C_resources[] asm("gUnk_08518938");
extern u32 t65C_flags asm("gUnk_03002344");
extern u8 *t65C_game asm("gUnk_03005CF4");
extern void t65C_position(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
extern void t65C_overlay(s32,s32,u32,u32,u32,void *,u8 *,u32) asm("sub_08008E74");
#define T65C_H(p,o) (*(u16 *)((p)+(o)))
#define T65C_W(p,o) (*(u32 *)((p)+(o)))
#define T65C_ENTITY(p) (*(u8 **)((p)+0x148))
static inline s32 t65C_init(struct T65CPopup *obj,u32 resource,s32 index,s32 size)
{
    void *table = t65C_resources;
    s32 mem,first,second,i;
    obj->resource=resource;obj->style=index;obj->mode=size;
    first=sub_08006EE0(resource,table); obj->data=(u8 *)first;
    if (!first) return 0;
    resource=(resource&0xFFFF)|0x60000;
    second=sub_08006EE0(resource,table);obj->base=second;
    if (!second) return 0;
    mem=sub_08006EE0((resource&0xFFFF)|0x80000,table);obj->sound=mem;
    if (!mem) return 0;
    if (size>=0) sub_08000AF0(index+16,(void *)(mem+(index<<5)),size);
    i=0;
    do {obj->palette[i]=i;i++;} while ((u32)i<=15);
    sub_080653B8(obj,0x120,0xE0,8);
    return (s32)obj;
}
void t65C_impl(s32) asm("sub_080636B0");
void t65C_impl(s32 index)
{
    struct Remote65C {
        u16 low4:4, x:12;
        u16 y:12, upper4:4;
        union {
            struct {u8 value:6, upper2:2;} region;
            struct {u8 low5:5;s8 bit5:1;u8 upper2:2;} bits;
        } byte4;
    };
    struct T65CPopup label,sprite;
    s16 x, y;
    u16 w0, h0, w1, h1, w2, h2;
    s32 playerIndex=index;
    u32 worldX,worldY,text;
    s16 frame;
    u32 shifted;
    s32 zero,cc;
    u16 *spriteIndex;
    u8 *p=t65C_players[playerIndex].bytes;
    u8 *color;
    t65C_init(&label,0x5005E,5,-1);
    label.palette[0]=15;
    worldY=((struct Remote65C *)T65C_ENTITY(p))->y;
    worldX=((struct Remote65C *)T65C_ENTITY(p))->x;
    if (playerIndex==sub_080020F4()) sub_0800CEE8();
    w1=0;h1=0;
    w2=2;h2=0;
    h0=0;
    frame=0;
    spriteIndex=(u16 *)(p+0x64);
    t65C_init(&sprite,t65C_resourceTable[*spriteIndex].id,0,-1);
    sprite.palette[0]=T65C_H(p,0);
    zero=sub_0800CF80();
    if (zero) goto cleanup;
    h0=zero;w0=zero;
    text=0x21;
    if (playerIndex==sub_080020F4()) {
        sub_0805865C(0x75);
        T65C_H(p,0x1C)=zero;
    }
    while (frame<=159) {
    t65C_position((s16)worldX,(s16)worldY,&x,&y,0x30,0);
    T65C_H(p,0xB6)=sub_08008CC4(0x21,&w0,&h0,sprite.data,1);
    sub_08008CC4(0,&w1,&h1,label.data,1);
    sub_08008CC4(1,&w2,&h2,label.data,1);
    if (sub_0800CC98()) goto skipDraw;
    if (sub_08058DB0()) goto skipDraw;
    if (sub_0800CD34()) goto skipDraw;
    if (sub_0800D11C()) goto skipDraw;
    if (((struct Remote65C *)T65C_ENTITY(p))->byte4.bits.bit5<0) {
        if (sub_0800CCCC()) goto drawTest;
        if (((struct Remote65C *)T65C_ENTITY(p))->byte4.bits.bit5<0) goto skipDraw;
    }
    if (sub_0800CCCC()) goto skipDraw;
drawTest:
    if ((((struct Remote65C *)T65C_ENTITY(p))->byte4.region.value&~0x20U)!=t65C_state.area) goto skipDraw;
    sub_08000AF0(0x1F,(void *)label.sound,1);
    if (T65C_W(p,0x30)&0x2000) {
        if (!(t65C_flags&1)) {
            sub_08007CF0(x,y-frame,text,w0,1,(s32)sprite.palette,(s32)sprite.data,sprite.base);
            sub_08000AF0(T65C_H(p,0)+16,(void *)(sprite.sound+0x1C0),1);
        }
    } else {
        sub_08007CF0(x,y-frame,text,w0,1,(s32)sprite.palette,(s32)sprite.data,sprite.base);
        if (*spriteIndex==9) {
            sub_08000AF0(T65C_H(p,0)+16,(void *)sprite.sound,1);
            color=p+0x66;
        } else {
            color=p+0x66;
            sub_08000AF0(T65C_H(p,0)+16,(void *)(sprite.sound+(*color<<5)),1);
        }
        sub_08000AF0(T65C_H(p,0)+16,(void *)(sprite.sound+(*color<<5)),1);
    }
    sub_08007CF0(x,y-(frame+24),0,w1,1,(s32)label.palette,(s32)label.data,label.base);
    if (t65C_flags&1) t65C_overlay(x,y,1,w2,3,label.palette,label.data,label.base);
skipDraw:
    sub_080003F0();
    if (sub_0800CB78() || sub_0800CD00()) goto cleanup;
    if (!sub_08056E90() && !sub_08058DB0()) frame++;
    }
cleanup:
    if (sub_0800CDF8()) return;
    while (sub_0800D11C()) sub_080003F0();
    while ((zero=sub_0800D098())!=0) sub_080003F0();
    if (playerIndex!=sub_080020F4()) return;
    sub_0805867C(0x75);
    p[0x68]=1;
    cc=sub_0800CCCC();
    if (cc) {
        sub_08056FB8(T65C_H(p,0x2E),T65C_H(p,0x2C));
        T65C_H(p,0x2E)=zero;T65C_H(p,0x2C)=zero;
        return;
    }
    if (T65C_W(p,0x30)&0x2000) {
        if (!sub_0800CF80()) {
            sub_08056FB8(0,4);
            T65C_H(t65C_game,0x36)=3;
        } else {
            sub_08026CD0(11,0,1);
            T65C_H(t65C_game,0x36)=cc;
            sub_0800CEFC();
        }
    } else {
        sub_08056FB8(0,0);
        T65C_H(t65C_game,0x36)=0;
    }
    sub_0800CCDC();
}
#undef T65C_H
#undef T65C_W
#undef T65C_ENTITY
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_080636B0);
#endif
#ifdef NONMATCHING
struct T65BPopup { u32 base, unk4; u8 *data; u32 sound, resource, style, mode; u8 palette[24]; };
struct T65BPlayer { u8 pad0[0x14]; u16 buttons; u8 pad16[10]; u16 state, substate; u8 pad24[12]; u32 flags; u8 pad34[0x114]; u8 *entity; };
extern struct T65BPlayer t65B_players[] asm("gUnk_03003CE0");
extern u8 t65B_resources[] asm("gUnk_08518938");
extern u16 t65B_blocked asm("gUnk_03003200");
extern u32 t65B_flags asm("gUnk_03002344");
extern void t65B_position(s32,s32,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
extern u8 *t65B_draw(s32,s32,u32,u32,u32,void *,u8 *,u32) asm("sub_08007870");
extern void t65B_overlay(s32,s32,u32,u32,u32,void *,u8 *,u32) asm("sub_08008E74");
extern s32 t65B_intersect(s32 *,void *,s32 *,s32 *) asm("sub_08021FE0");
static inline s32 t65B_init(struct T65BPopup *obj,u32 resource,s32 index,s32 size)
{
    void *table = t65B_resources;
    s32 mem,first,second,i;
    obj->resource=resource;obj->style=index;obj->mode=size;
    first=sub_08006EE0(resource,table); obj->data=(u8 *)first;
    if (!first) return 0;
    resource=(resource&0xFFFF)|0x60000;
    second=sub_08006EE0(resource,table);obj->base=second;
    if (!second) return 0;
    mem=sub_08006EE0((resource&0xFFFF)|0x80000,table);obj->sound=mem;
    if (!mem) return 0;
    if (size>=0) sub_08000AF0(index+16,(void *)(mem+(index<<5)),size);
    i=0;
    do {obj->palette[i]=i;i++;} while ((u32)i<=15);
    sub_080653B8(obj,0x120,0xE0,8);
    return (s32)obj;
}
void t65B_impl(s32) asm("sub_08063B80");
void t65B_impl(s32 index)
{
    struct T65BPopup draw;
    s16 xy[2];
    u16 sizes[4];
    s32 box[4];
    volatile s32 playerIndex=index;
    volatile u32 worldX;
    register u32 dialog asm("sl");
    u32 i;
    register u32 alternate asm("r5");
    register u32 one asm("r9");
    register s16 *xPtr asm("r6");
    s16 *yPtr;
    u16 *volatile sizePtr;
    u16 *heightPtr;
    s32 *volatile boxPtr;
    u8 *out;
    register u32 callOne65 asm("r4");
    u32 currentPlayer;
    register s32 testedIndex asm("r4");
    register u8 *palettePtr asm("r4");
    register struct T65BPlayer *player asm("r8");
    {
        register u32 stride65 asm("r0") = 0x14C;
        register u32 idx65 asm("r2");
        register u32 product65 asm("r1");
        asm("" : "+r"(stride65));
        idx65 = playerIndex;
        asm("" : "+r"(idx65) : "r"(stride65));
        product65 = idx65;
        product65 *= stride65;
        asm("" : "+r"(product65));
        player = (struct T65BPlayer *)((u8 *)t65B_players + product65);
    }
    {register void *table asm("r6");
    register u32 resource65 asm("r0")=0x5005E;
    register u32 style65 asm("r1");
    register s32 mode65 asm("r2");
    struct T65BPopup *descriptor=&draw;
    s32 first,second,mem;
    asm("" : "+r"(resource65), "+r"(descriptor));
    style65=5;mode65=-1;
    asm("" : "+r"(resource65), "+r"(style65), "+r"(mode65));
    table=t65B_resources;
    draw.resource=resource65;draw.style=style65;draw.mode=mode65;
    first=sub_08006EE0(resource65,table);draw.data=(u8 *)first;
    boxPtr=box;sizePtr=&sizes[0];heightPtr=&sizes[1];
    asm("" : "+r"(heightPtr));
    if(first) {
        register u32 lowResource asm("r4")=0x5E;
        second=sub_08006EE0(0x6005E,table);draw.base=second;
        if(second) {
            lowResource |= 0x80000; asm("" : "+r"(lowResource));
            mem=sub_08006EE0(lowResource,table);draw.sound=mem;
            if(mem) {
                i=0;do {draw.palette[i]=i;i++;} while(i<=15);
                sub_080653B8(descriptor,0x120,0xE0,8);
            }
        }
    }}
    draw.palette[0]=15;
    {register u32 idxWorld65 asm("r1")=playerIndex;
    register u32 offsetWorld65 asm("r0");
    register u32 worldValue65 asm("r1");
    register u32 scaledX65 asm("r0");
    asm("" : "+r"(idxWorld65));
    offsetWorld65=idxWorld65*24;
    asm("" : "+r"(offsetWorld65));
    worldValue65=0xB8;
    asm("" : "+r"(worldValue65) : "r"(offsetWorld65));
    worldValue65-=offsetWorld65;
    asm("" : "+r"(worldValue65));
    worldX=worldValue65;scaledX65=worldValue65<<8;
    asm("" : "+r"(scaledX65));box[0]=scaledX65;}
    {register u32 y65 asm("r3")=0x138;
    register u32 scaledY65 asm("r0");
    register s32 *ptr65 asm("r4");
    asm("" : "+r"(y65));scaledY65=y65<<8;
    asm volatile("" : "+r"(scaledY65) : : "memory");
    ptr65=boxPtr;asm("" : "+r"(ptr65));ptr65[1]=scaledY65;}
    box[2]=0x80010;
    box[3]=0x1E0018;
    *sizePtr=0;*heightPtr=0;
    dialog=0;
    sub_0800CF20();
goto check;
loop:
    {register u32 worldInput asm("r1")=worldX;
    register s32 rawX asm("r0");register s32 rawY asm("r1");
    register u32 constantY asm("r2");register u32 flag asm("r2");register u32 initialOne asm("r3");
    asm("" : "+r"(worldInput));rawX=worldInput<<16;asm("" : "+r"(rawX));
    constantY=0x138;asm("" : "+r"(constantY));rawY=constantY<<16;asm("" : "+r"(rawY));
    xPtr=&xy[0];yPtr=&xy[1];flag=0x30;initialOne=1;
    asm("" : "+r"(rawX), "+r"(rawY), "+r"(xPtr), "+r"(yPtr));
    asm("" : "+r"(flag), "+r"(initialOne) : "r"(rawX), "r"(rawY), "r"(xPtr), "r"(yPtr));one=initialOne;
    t65B_position(rawX>>16,rawY>>16,xPtr,yPtr,flag,initialOne);}
    sub_08008CC4(0,&sizes[0],&sizes[1],draw.data,({callOne65=one;asm("" : "+r"(callOne65));callOne65;}));
    {register u8 *data65 asm("r3")=draw.data;
    asm volatile("" : "+r"(data65) : "r"(callOne65) : "r0","r1","r2","memory");
    sub_08008CC4(1,&sizes[2],&sizes[3],data65,callOne65);}
    if (!sub_0800CC98() && !sub_0800CD8C() && !sub_0800CD34() && ({register u16 *p asm("r1")=&t65B_blocked;asm("" : "+r"(p));*p;})==0) {
        {register u32 fade asm("r0")=sub_0800BC44(worldX,0x138,1);
        register s32 drawX asm("r2")=*xPtr;
        register s32 drawY asm("r1")=*yPtr;
        register u16 *widths asm("r4")=sizePtr;
        register u32 width asm("r3")=*widths;
        asm("" : "+r"(fade), "+r"(drawX), "+r"(drawY), "+r"(width));
        alternate=(u8)fade;
        out=t65B_draw(drawX,drawY,0,width,alternate,({palettePtr=draw.palette;asm("" : "+r"(palettePtr));palettePtr;}),draw.data,draw.base);}
        *(u32 *)(out+12) -= 20;
        if (t65B_flags & one) t65B_overlay(*xPtr,*yPtr,1,sizes[2],alternate,palettePtr,draw.data,draw.base);
        sub_08000AF0(0x1F,(void *)draw.sound,1);
    }
    currentPlayer=sub_080020F4();testedIndex=playerIndex;asm("" : "+r"(testedIndex));
    if (testedIndex == currentPlayer) {
        if ((({register u16 *p asm("r1")=&t65B_blocked;asm("" : "+r"(p));*p;})==0 && t65B_intersect(boxPtr,(u8 *)player+0x8C,box+2,box+3)) || ({register u32 prior65 asm("r2")=dialog;asm("" : "+r"(prior65));prior65;}) != 0) {
            if (({register u32 now65 asm("r3")=dialog;asm("" : "+r"(now65));now65;}) == 0) {
                if (!sub_0800CDF8()) {
                    register struct T65BPlayer *p asm("r4")=player;asm("" : "+r"(p));
                    if(p->buttons&1) {p->flags|=1;dialog=sub_0805DF38(1,14,25,2,-2,0x1404E0);}
                }
            } else if (sub_0805EEFC((void *)dialog)) {
                if (sub_0805EF14((u8 *)dialog)) {
                    player->state=12;
                    player->substate=1;
                    sub_0800CEE8();
                    sub_0800CF34();
                    goto finish;
                } else {
                    {register struct T65BPlayer *p asm("r2")=player;asm("" : "+r"(p));p->flags&=~1;}
                    {register u32 zero asm("r3")=0;asm("" : "+r"(zero));dialog=zero;}
                }
            }
        }
    } else {
        {register u8 *entity asm("r1")=player->entity;
        register u32 state asm("r0")=entity[0];
        asm("" : "+r"(entity), "+r"(state));
        state<<=28;asm("" : "+r"(state));state>>=28;
        if(state==12) {
            state=*(u16 *)(entity+4);state<<=20;asm("" : "+r"(state));state>>=26;
            if(state==1) goto finish;
        }}
    }
    sub_080003F0();
    if (sub_0800CB78() || sub_0800CD00()) goto finish;
check:
    if (sub_0800CCCC()) goto loop;
finish:
    sub_0800CF34();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08063B80);
#endif
#ifdef NONMATCHING
struct T65EPopup { u32 base, unk4; u8 *data; u32 sound, resource, style, mode; u8 palette[24]; };
struct T65EPlayer { u8 bytes[0x14C]; };
struct T65EResource { u32 id; u8 pad[84]; };
struct T65EPoint { s32 x,y; };
struct T65EVideo { u16 h0,h2,h4,h6,h8,hA,hC,hE; };
extern struct T65EPlayer t65E_players[] asm("gUnk_03003CE0");
extern struct T65EResource t65E_resourceTable[] asm("gUnk_08479140");
extern struct T65EVideo t65E_video asm("gUnk_03001250");
extern s16 t65E_display asm("gUnk_03001F40");
extern u8 t65E_resources[] asm("gUnk_08518938");
extern void t65E_bg(u32,u32,u32) asm("sub_080009F8");
#define T65E_H(p,o) (*(u16 *)((p)+(o)))
struct T65EEntity { u32 kind:4; u32 kindHi:4; u8 pad[3]; };
#define T65E_ENTITY(p) (*(struct T65EEntity **)((p)+0x148))
static inline s32 t65E_init(struct T65EPopup *obj,u32 resource,s32 index,s32 size)
{
    void *table = t65E_resources;
    s32 mem,first,second,i;
    obj->resource=resource;obj->style=index;obj->mode=size;
    first=sub_08006EE0(resource,table); obj->data=(u8 *)first;
    if (!first) return 0;
    resource=(resource&0xFFFF)|0x60000;
    second=sub_08006EE0(resource,table);obj->base=second;
    if (!second) return 0;
    mem=sub_08006EE0((resource&0xFFFF)|0x80000,table);obj->sound=mem;
    if (!mem) return 0;
    if (size>=0) sub_08000AF0(index+16,(void *)(mem+(index<<5)),size);
    i=0;
    do {obj->palette[i]=i;i++;} while ((u32)i<=15);
    sub_080653B8(obj,0x120,0xE0,8);
    return (s32)obj;
}
void sub_08063E30(void)
{
    struct T65EPopup sprites[4];
    s32 delays[4],sounds[4];
    struct T65EPoint trails[4][5];
    struct T65EPoint velocities[4];
    u32 fill,fillEnd,control;
    u32 playerIndex,n,players,count,finished;
    s32 j;
    u8 *p;
    sub_08000990(0,1);
    control=(control&0xFFFF0000)|0x1D00;
    sub_08000AA8(1,(u16 *)&control);
    *(u16 *)&control=0x5900;
    sub_08000AA8(2,(u16 *)&control);
    *(u16 *)&control=0x5A00;
    sub_08000AA8(3,(u16 *)&control);
    fill=0;
    CpuSet(&fill,(void *)0x0600C800,0x05000600);
    sub_0800B650(0x3A,0x1D,0x06000000,0,15);
    sub_0800B650(0x39,0x1A,0x06000000,0,15);
    t65E_video.h4=0;t65E_video.h6=0;t65E_video.hA=0;t65E_video.hE=0;
    t65E_video.h8=16;t65E_video.hC=0x100;
    t65E_bg(0xF00,0,0);
    sub_080009C0(0x1E00,0,1);
    players=sub_08002164();
    count=0;
    for (playerIndex=0;playerIndex<players;playerIndex++) {
        if (T65E_ENTITY(t65E_players[playerIndex].bytes)->kind==14) count++;
    }
    n=0;
    for (playerIndex=0;playerIndex<players;playerIndex++) {
        p=t65E_players[playerIndex].bytes;
        if (T65E_ENTITY(p)->kind==14) {
            t65E_init(sprites+n,t65E_resourceTable[T65E_H(p,0x64)].id,0,-1);
            sprites[n].palette[0]=playerIndex;
            delays[n]=n*10+10;
            velocities[n].x=0;velocities[n].y=0;
            sounds[n]=0;
            j=4;
            do {
                trails[n][4-j].x=((n*24-count*12)+132)<<8;
                trails[n][4-j].y=0xA000;
                j--;
            } while (j>=0);
            n++;
        }
    }
    sub_0801AB90(10);
    t65E_display=-1;
    sub_08000B38();
loop:
    if (sub_0800CDF8() || sub_080021A8()) return;
    sub_0800903C(2,60,1,16,16,0);
    t65E_video.h6+=4;t65E_video.h8+=3;t65E_video.hC-=3;
    finished=0;
    n=0;
    for (playerIndex=0;playerIndex<players;playerIndex++) {
        p=t65E_players[playerIndex].bytes;
        if (T65E_ENTITY(p)->kind==14) {
            if (delays[n]==0) {
                if (!sounds[n]) {sub_0805865C(n+0xF0);sounds[n]=1;}
                j=4;
                do {trails[n][j].y=trails[n][j-1].y;j--;} while (j>0);
                trails[n][0].y+=velocities[n].y;
                velocities[n].y-=0x30;
            } else delays[n]--;
            if (trails[n][4].y<0) finished++;
            j=4;
            do {
                sub_08007CF0(trails[n][4-j].x>>8,trails[n][4-j].y>>8,T65E_H(p,0xB0),T65E_H(p,0xB2),0,(s32)sprites[n].palette,(s32)sprites[n].data,sprites[n].base);
                j--;
            } while (j>=0);
            n++;
        }
    }
    if (count!=finished) {sub_080003F0();goto loop;}
    sub_0800903C(0,0,0,0,0,0);
    sub_0801AA8C(30);
loopEnd:
    if (!sub_0801AAE0()) {
        if (sub_0800CDF8() || sub_080021A8()) return;
        t65E_video.h6+=4;
        n=0;
        for (playerIndex=0;playerIndex<players;playerIndex++) {
            p=t65E_players[playerIndex].bytes;
            if (T65E_ENTITY(p)->kind==14) {
                if (!delays[n]) {
                    j=4;
                    do {trails[n][j].y=trails[n][j-1].y;j--;} while (j>0);
                    trails[n][0].y+=velocities[n].y;
                    velocities[n].y-=0x30;
                } else delays[n]--;
                j=4;
                do {
                    sub_08007CF0(trails[n][4-j].x>>8,trails[n][4-j].y>>8,T65E_H(p,0xB0),T65E_H(p,0xB2),0,(s32)sprites[n].palette,(s32)sprites[n].data,sprites[n].base);
                    j--;
                } while (j>=0);
                n++;
            }
        }
        sub_080003F0();goto loopEnd;
    }
    fillEnd=0;
    CpuSet(&fillEnd,(void *)0x06000000,0x05002000);
    t65E_display=0;
    sub_08000B38();
    sub_080003F0();
    t65E_bg(0xF00,0,1);
}
#undef T65E_H
#undef T65E_ENTITY
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_08063E30);
#endif
#ifdef NONMATCHING
struct Chr441 { u32 kind:4; u32 kindHi:28; u32 lo:11; u32 level:8; u32 cls:5; u32 hi:8; };
struct PL441 { u8 pad0[0x20]; u16 state; u8 pad22[0xE]; u32 flags; u8 pad34[0x34]; u8 b68; u8 pad69[0x5D]; u16 hC6; u8 padC8[0x80]; struct Chr441 *chr; };
struct PE441 { struct Chr441 *chr; u8 pad[0x148]; };
struct TS441 { u8 pad0[0x7C]; s16 scrollX; s16 scrollY; u8 pad80[0xC]; u16 curLevel; u16 pad8E; u16 f90; };
struct Obj441 { s32 f0, f4, f8, fC, f10, f14, f18; u8 data[16]; };
struct Pop441 { s32 base, unk4, data, sound, resource, style, mode; u8 palette[24]; };
struct Res441 { u32 b0:8; u32 b1:8; u32 b2:8; s32 b3:8; u16 h4; u16 h6; };
struct Ene441 { u16 h0; u16 h2; u8 pad4[8]; u16 hC; u8 padE[0x3C]; u16 h4A; u32 w4C; u8 pad50[8]; u16 h58; u16 h5A; u8 pad5C[6]; u16 h62; u8 pad64[0x18]; u16 h7C; u16 h7E;
    u8 pad80[0x14E]; s16 h1CE; u8 pad1D0[0xC]; u8 b1DC; u8 pad1DD[0x3B]; u8 b218[0xE]; u8 b226; };
struct Tbl441 { u16 a; u16 b; };
extern struct PL441 pl441[] asm("gUnk_03003CE0");
extern struct PE441 pe441[] asm("gUnk_03003E28");
extern struct TS441 ts441 asm("gUnk_03003170");
extern struct Obj441 obj441 asm("gUnk_03005D80");
extern struct Tbl441 tblA441[] asm("gUnk_084EBE84");
extern struct Tbl441 tblB441[] asm("gUnk_084EBE86");
extern u8 res441[] asm("gUnk_08518938");
extern u8 *ene441 asm("gUnk_030056F4");
extern u32 eneMask441 asm("gUnk_030056FC");
extern u16 video441[] asm("gUnk_03001250");
s32 f441_sub_0801E244(void *, u32) asm("sub_0801E244");
s32 f441_sub_0801E104(void *, s32) asm("sub_0801E104");
void f441_sub_0801DB94(s32, s32, u32) asm("sub_0801DB94");
s32 f441_sub_08021C74(s32, s32, s32) asm("sub_08021C74");
s32 f441_sub_08021D00(s32, s32, void *) asm("sub_08021D00");
void f441_sub_08069388(void *, void *, s32, s32, s32) asm("sub_08069388");
void f441_sub_08069080(void *, s32, s32, s32, s32, s32) asm("sub_08069080");
void f441_sub_080660EC(void *) asm("sub_080660EC");
void f441_sub_08092348(s32, s32, s32) asm("sub_08092348");
void f441_sub_080009F8(s32, s32, s32) asm("sub_080009F8");
void f441_sub_0800A34C(s32, s32, s32) asm("sub_0800A34C");
void f441_sub_08000AF0(s32, s32, s32) asm("sub_08000AF0");
void f441_sub_080003F4(s32) asm("sub_080003F4");
void f441_sub_0801A6D4(s32) asm("sub_0801A6D4");
void f441_sub_0801A664(s32, s32) asm("sub_0801A664");
void f441_sub_08007CF0(s32, s32, s32, s32, s32, s32, s32, s32) asm("sub_08007CF0");
u32 f441_sub_08008CC4(u32, u16 *, u16 *, s32, u32) asm("sub_08008CC4");
u32 f441_sub_080923B0(void) asm("sub_080923B0");

static inline s32 init441(struct Pop441 *obj, u32 resource, s32 index, s32 size)
{
    void *table = res441;
    s32 mem;
    s32 first;
    s32 second;
    s32 i;
    obj->resource = resource;
    obj->style = index;
    obj->mode = size;
    first = sub_08006EE0(resource, table);
    obj->data = first;
    if (first == 0) return 0;
    resource = (resource & 0xFFFF) | 0x60000;
    second = sub_08006EE0(resource, table);
    obj->base = second;
    if (second == 0) return 0;
    mem = sub_08006EE0((resource & 0xFFFF) | 0x80000, table);
    obj->sound = mem;
    if (mem == 0) return 0;
    if (size >= 0)
        f441_sub_08000AF0(obj->style + 0x10, mem + (obj->style << 5), obj->mode);
    i = 0;
    do {
        obj->palette[i] = i;
        i++;
    } while ((u32)i <= 15);
    sub_080653B8(obj, 0x120, 0xE0, 8);
    return (s32)obj;
}

void BattleResult441(u16 *arg0, u32 arg1) asm("sub_0806441C");
void BattleResult441(u16 *arg0, u32 arg1)
{
    struct Pop441 obj;
    u16 levels[4];
    u16 classes[4];
    u16 w58;
    u16 w5A;
    u16 fill[2];
    struct Res441 res;
    u32 flag;
    u32 hi;
    u32 type;
    s32 cnt7;
    u16 mask;
    u16 i;
    u16 cnt;
    u16 val;
    u16 sum;
    u16 c;
    u32 n;
    s32 sx, sy;
    s32 m;
    struct Obj441 *o = &obj441;
    struct Ene441 *e;
    s32 dmg;
    s32 r;
    struct Chr441 *chr;
    struct PE441 *pe;
    struct PL441 *plp;

    if (sub_0800BA6C() && !sub_0805F184() && !sub_0800CC98() && !sub_0800CCCC() && !sub_0800CE68() && !sub_0800CDF8() && !sub_0800D11C()) {
        pl441[sub_080020F4()].b68 = 0;
        while (sub_0801AC78() == 0)
            sub_080003F0();
        sub_0800BB54();
        mask = 0;
        i = 0;
        pe = pe441;
        for (; i < sub_08002164(); i++) {
            chr = pe[i].chr;
            if (chr->kind == 0xE) {
                mask |= 1 << i;
                levels[i] = chr->level;
                classes[i] = pe[i].chr->cls;
            } else {
                levels[i] = 0;
                classes[i] = 100;
            }
        }
        sub_0800CD68();
        sub_0801AC24(0x3C);
        switch (ts441.curLevel) {
        case 4:
            if (sub_0800CDC0())
                f441_sub_080009F8(0x400, 0, 1);
            break;
        case 6:
            f441_sub_080009F8(0x200, 0, 1);
            break;
        case 8:
            if (sub_0800CDC0())
                f441_sub_080009F8(0x200, 0, 1);
            break;
        case 9:
            switch (ts441.f90) {
            case 1: case 3: case 5: case 7: case 9: case 11: case 14:
                f441_sub_080009F8(0x200, 0, 1);
                break;
            }
            break;
        case 10:
            if (sub_0800CDC0())
                f441_sub_080009F8(0x200, 0, 1);
            break;
        case 13:
            f441_sub_080009F8(0x200, 0, 1);
            break;
        }
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_08015C14();
        sub_08015D2C();
        sub_080003F0();
        sub_080003F0();
        sub_08063E30();
        if (sub_0800CDF8())
            return;
        if (sub_080021A8())
            return;
        hi = (arg1 & 0xFF00) >> 8;
        arg1 &= 0xFF;
        cnt = 0;
        for (i = 0; i < sub_08002164(); i++) {
            plp = &pl441[i]; if (plp->chr->kind == 0xE)
                cnt++;
        }
        sx = ts441.scrollX;
        sy = ts441.scrollY;
        f441_sub_08092348((s8)arg1, (s8)hi, (s8)cnt);
        f441_sub_080003F4(0x12001111);
        sub_0800CBEC();
        sub_08057624(10);
        sub_08000420(0x514C8);
        ts441.scrollX = sx;
        ts441.scrollY = sy;
        sub_0805F07C();
        f441_sub_08000AF0(obj441.f14 + 0x10, obj441.fC + (obj441.f14 << 5), obj441.f18);
        init441(&obj, 0x5008C, 0, -1);
        f441_sub_08000AF0(0x17, obj.sound, 2);
        f441_sub_0801A6D4(0);
        f441_sub_0801A664(0, 0x14);
        *(u32 *)fill = 0;
        CpuSet(fill, (void *)0x0600E000, 0x05000200);
        video441[0] = 0;
        video441[1] = 0;
        if (!(pl441[sub_080020F4()].flags & 0x400) && sub_0800CF10() == 0) {
            sub_08015D50();
            sub_08067D74();
        }
        if (pl441[sub_080020F4()].state == 0xE)
            pl441[sub_080020F4()].hC6 = 0;
        sub_0800CBEC();
        sub_0800CD78();
        n = 0;
        if (sub_0800CF10() == 0)
            pl441[sub_080020F4()].state = 0;
        while (sub_08068330(0x586) == 0)
            sub_080003F0();
        while (sub_080682B8(0x586) == 0) {
            if (++n > 0x708)
                break;
            sub_080003F0();
        }
        sub_08065E38(0x586);
        while (sub_0801AC78() == 0)
            sub_080003F0();
        f441_sub_0800A34C(ts441.curLevel, 0, 1);
        if (cnt > 1) {
            val = 0;
            for (i = 0; i < sub_08002164(); i++) {
                if (i != sub_080020F4())
                    val += tblA441[levels[i]].a;
            }
            val = (val >> 1) + tblA441[hi].a;
            switch (cnt) {
            case 2: m = 15; break;
            case 3: m = 20; break;
            case 4: m = 25; break;
            default: m = 10; break;
            }
            val = val * m / 10;
            val = val * (sub_080008C8() % 50 + 100) / 100;
        } else {
            val = tblA441[hi].a * (sub_080008C8() % 50 + 100) / 100;
        }
        switch (arg1) {
        case 6: val = hi * 100; break;
        case 7:
            type = 0;
            c = 0;
            for (i = 0; i < sub_08002164(); i++) {
                if (classes[i] == 7)
                    c++;
            }
            cnt7 = (u16)(c + 11);
            break;
        case 1: type = 2; break;
        case 2: type = 3; break;
        case 3: type = 6; break;
        case 4: type = 4; break;
        case 5: type = 5; break;
        case 0: type = 1; break;
        }
        res.b2 = 0;
        res.b3 = 0;
        if (*arg0 == sub_080020F4()) {
            i = 0;
            do {
                if ((eneMask441 & (1 << i)) && (e = (struct Ene441 *)(ene441 + i * 0x2E0), e->b1DC != 0)) {
                    switch (arg1) {
                    default:
                        f441_sub_08069388(&res, e->b218, tblB441[classes[*arg0]].a, type, e->h0 + 4);
                        dmg = (u16)f441_sub_08021D00(type, val, e->b218);
                        break;
                    case 6:
                        if ((u8)f441_sub_080923B0() == 6) {
                            dmg = 0;
                        } else {
                            f441_sub_08069388(&res, e->b218, 100, 7, *arg0);
                            dmg = (u16)f441_sub_08021D00(type, val, e->b218);
                        }
                        break;
                    case 7:
                        dmg = (u16)((f441_sub_08021C74(val, e->h1CE, 200) * cnt7) / 8);
                        break;
                    }
                    res.h4 = dmg;
                    e->hC = 10;
                    e->h4A = res.h4;
                    e->w4C = e->h4A;
                    e->h7C = res.b2;
                    e->h7E = res.b3;
                    e->h58 = *arg0;
                    e->h62 = res.b1;
                    res.b0 = e->h2;
                    if (e->b226 != 3) {
                        r = f441_sub_0801E244(e, res.b1);
                        if (r != 0) {
                            f441_sub_0801DB94(e->h0 + 4, r, res.b1);
                        } else {
                            r = f441_sub_0801E104(e, 0);
                            if (r != 0)
                                f441_sub_0801DB94(e->h0 + 4, r, res.b1);
                        }
                    }
                    f441_sub_080660EC(&res);
                    e->h5A |= mask;
                    f441_sub_08069080(e->b218, res.h4, tblB441[classes[*arg0]].a, *arg0, e->h0 + 4, type);
                }
                i++;
            } while (i <= 4);
        } else {
            i = 0;
            do {
                if (eneMask441 & (1 << i)) {
                    e = (struct Ene441 *)(ene441 + i * 0x2E0);
                    e->h5A |= mask;
                }
                i++;
            } while (i <= 4);
        }
        if (eneMask441 != 0)
            sub_0805865C(0x1A);
        sub_08057624(10);
        if (!(pl441[sub_080020F4()].flags & 0x2400) && sub_0800CF10() == 0)
            pl441[sub_080020F4()].b68 = 1;
        sub_0806617C();
        if (!(pl441[sub_080020F4()].flags & 0x400) && sub_0800D11C() == 0)
            sub_08015C38();
    } else {
        if (sub_0800CC98() == 0)
            sub_08015C14();
        sub_0800CD68();
        w58 = 0;
        w5A = 0;
        pl441[sub_080020F4()].state = 0;
        pl441[sub_080020F4()].b68 = 0;
        while (sub_08058DB0() == 0)
            sub_080003F0();
        goto check;
    loop:
        {
            if (sub_0800CC98() == 0)
                sub_08015C14();
            flag = 0;
            for (i = 0; i < sub_08002164(); i++) {
                if (pe441[i].chr->kind == 0xE)
                    flag = 1;
            }
            if (i == 1)
                goto done;
            f441_sub_08008CC4(0x21, &w58, &w5A, o->f8, 1);
            f441_sub_08007CF0(0x78, 0x3C, 0x21, w58, 0, (s32)o->data, o->f8, o->f0);
            sub_080003F0();
        }
    check:
        if (flag)
            goto loop;
    done:
        if ((r = sub_0800CF10()) == 0)
            pl441[sub_080020F4()].state = r;
        sub_0806617C();
        n = 0;
        while (sub_08068330(0x586) == 0)
            sub_080003F0();
        while (sub_080682B8(0x586) == 0) {
            if (++n > 0x708)
                break;
            sub_080003F0();
        }
        sub_08065E38(0x586);
        if (!(pl441[sub_080020F4()].flags & 0x2400) && sub_0800CF10() == 0)
            pl441[sub_080020F4()].b68 = 1;
        if (sub_0800CC98() == 0 && sub_0800CF10() == 0 && sub_0805F184() == 0) {
            f441_sub_0800A34C(ts441.curLevel, 0, 1);
            sub_08015C38();
        }
        sub_0800CBEC();
        sub_0800CD78();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805FB7C", sub_0806441C);
#endif
extern u8 *gA4210 asm("gUnk_03004210");
extern u8 *gA5CF4 asm("gUnk_03005CF4");
#define W64E(p, o) (*(u32 *)((p) + (o)))
#define BA64E(p, o, i) (((struct { u8 pad[o]; u8 a[8]; } *)(p))->a[i])
void sub_08064E14(s32 arg0)
{
    u32 val;
    u32 temp;
    u32 i;

    sub_0800CDD0();
    sub_0800CF90();
    sub_08015C14();
    sub_0805EFBC();
    while (sub_0800CC98() != 0)
        sub_080003F0();
    sub_080570DC(1);
    sub_08006DAC();
    for (i = 0; i < 60; i++) {
        sub_080009F8(0x1E00, 0, 1);
        sub_0801A664(0, 0x14);
        sub_080003F0();
    }
    if (sub_08002204() != 0) {
        if (sub_0800CE30() != 0) {
            {
                u8 *d = gA4210;
                u8 *s = gA5CF4;
                W64E(d, 0xC) = W64E(s, 0x7C);
                W64E(d, 0x10) = W64E(s, 0x80);
            }
        } else {
            {
                u8 *d = gA4210;
                u8 *s = gA5CF4;
                W64E(d, 0x4) = W64E(s, 0x74);
                W64E(d, 0x8) = W64E(s, 0x78);
            }
        }
        for (i = 0; i < 7; i++)
            BA64E(gA4210, 0x140, i) = BA64E(gA5CF4, 0x1B0, i);
        for (i = 0; i < 5; i++)
            BA64E(gA4210, 0x147, i) = BA64E(gA5CF4, 0x1B7, i);
        for (i = 0; i < 7; i++)
            BA64E(gA4210, 0x14C, i) = BA64E(gA5CF4, 0x1BC, i);
        for (i = 0; i < 5; i++)
            BA64E(gA4210, 0x153, i) = BA64E(gA5CF4, 0x1C3, i);
    } else {
        if (sub_0800CE30() == 0) {
            {
                u8 *d = gA5CF4;
                u8 *s = gA4210;
                W64E(d, 0x74) = W64E(s, 0x4);
                W64E(d, 0x78) = W64E(s, 0x8);
            }
            for (i = 0; i < 7; i++)
                BA64E(gA5CF4, 0x1B0, i) = BA64E(gA4210, 0x140, i);
            for (i = 0; i < 5; i++)
                BA64E(gA5CF4, 0x1B7, i) = BA64E(gA4210, 0x147, i);
        } else {
            {
                u8 *d = gA5CF4;
                u8 *s = gA4210;
                W64E(d, 0x7C) = W64E(s, 0xC);
                W64E(d, 0x80) = W64E(s, 0x10);
            }
            for (i = 0; i < 7; i++)
                BA64E(gA5CF4, 0x1BC, i) = BA64E(gA4210, 0x14C, i);
            for (i = 0; i < 5; i++)
                BA64E(gA5CF4, 0x1C3, i) = BA64E(gA4210, 0x153, i);
        }
        if (sub_08057AE8(7) != 0)
            sub_08057A5C(0x15);
        sub_08057AE8(0x15);
        sub_0805C7B8();
    }
    for (i = 0; i < 16; i++)
        ((struct { u8 pad[0x1E0]; struct { u8 p[6]; u16 x; u8 q[24]; } e[16]; } *)gA4210)->e[i].x = 0;
    {
        u8 *d = gA4210;
        *(u32 *)d = 2;
        ((struct { u8 pad[0xDA]; u16 x; } *)d)->x = ((struct { u8 pad[0x14A]; u16 x; } *)gA5CF4)->x;
    }
    sub_08006C14();
    if (sub_0800CB9C() != 0)
        sub_080021D4();
    if (sub_0807A124() == 0) {
        sub_08006BF8();
        sub_0805F07C();
        val = (val & 0xFFFF0000) | 0x1C08;
        sub_08000AA8(0, (u16 *)&val);
        sub_0800CCB8();
        temp = sub_0805DF38(1, 0xE, 0x19, 2, 0x3C, 0x1403D9);
        do {
            sub_080009C0(0x100, 0, 1);
            sub_080003F0();
        } while (sub_0805EEFC((void *)temp) == 0);
        sub_0801ABE8(0xA);
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800CBAC();
        SoftReset(0);
    } else {
        sub_08006BF8();
        temp = sub_0805DF38(1, 0xE, 0x19, 2, 0x3C, 0x1403DA);
        do {
            sub_080009C0(0x100, 0, 1);
            sub_080003F0();
        } while (sub_0805EEFC((void *)temp) == 0);
    }
    sub_0800CDE4();
    if (arg0 == 0)
        SoftReset(0);
}
void sub_0806514C(void) {
    gUnk_03006028 = 0;
}
struct Init66 { s32 f0, f4, f8, fC, f10, f14, f18; u8 data[16]; };
s32 sub_08065158(struct Init66 *obj, u32 resource, s32 index, s32 size, s32 alternate)
{
    void *table = &gUnk_08518938;
    s32 mem;
    s32 first;
    s32 second;
    s32 i;
    if (alternate != 0)
        table = &gUnk_08E3FB54;
    obj->f10 = resource;
    obj->f14 = index;
    obj->f18 = size;
    first = sub_08006EE0(resource, table);
    obj->f8 = first;
    if (first == 0) return 0;
    resource = (resource & 0xFFFF) | 0x60000;
    second = sub_08006EE0(resource, table);
    obj->f0 = second;
    if (second == 0) return 0;
    mem = sub_08006EE0((resource & 0xFFFF) | 0x80000, table);
    obj->fC = mem;
    if (mem == 0) return 0;
    if (size >= 0)
        sub_08000AF0(obj->f14 + 0x10, mem + (obj->f14 << 5), obj->f18);
    i = 0;
    do {
        obj->data[i] = i;
        i++;
    } while ((u32)i <= 15);
    sub_080653B8(obj, 0x120, 0xE0, 8);
    return (s32)obj;
}
void sub_08065204(void *arg0) {
    M2C_FIELD(arg0, s32 *, 0x10) = -1;
    M2C_FIELD(arg0, s32 *, 8) = 0;
    M2C_FIELD(arg0, s32 *, 0) = 0;
    M2C_FIELD(arg0, s32 *, 0xC) = 0;
}
void sub_08065214(void *arg0) {
    s32 temp_r2;

    temp_r2 = M2C_FIELD(arg0, s32 *, 0x14);
    sub_08000AF0(temp_r2 + 0x10, M2C_FIELD(arg0, s32 *, 0xC) + (temp_r2 << 5), M2C_FIELD(arg0, s32 *, 0x18));
}
void sub_08065230(void *arg0, s32 arg1, s32 arg2, u16 arg3, s32 arg4) {
    sub_08007CF0(arg1, arg2, arg3, (u16) arg4, 0, arg0 + 0x1C, M2C_FIELD(arg0, s32 *, 8), M2C_FIELD(arg0, s32 *, 0));
}
extern void sub_08007F0C(s32, s32, u16, u16, s32, void *, s32, s32, s32, s32, s32);
struct Bounce66 { s32 f0, f4, f8; u8 pad[0x20]; u16 value; u16 step; s16 upper; s16 lower; };
void sub_08065264(struct Bounce66 *obj, s32 x, s32 y, u16 a, u16 b)
{
    u16 step = obj->step;
    u32 value = step + obj->value;
    s16 result;
    obj->value = value;
    if ((s32)(step << 16) > 0 && (s16)value > obj->upper)
        obj->step = -step;
    if ((s16)obj->step < 0 && (s16)obj->value < obj->lower)
        obj->step = -obj->step;
    sub_08007F0C(x, y, a, b, 0, (u8 *)obj + 0x1C, obj->f8, obj->f0, (s16)obj->value, (s16)obj->value, 255);
}
void sub_080652E0(struct Bounce66 *obj, s32 x, s32 y, u16 a, u16 b, u16 c)
{
    u16 step = obj->step;
    u32 value = step + obj->value;
    s16 result;
    obj->value = value;
    if ((s32)(step << 16) > 0 && (s16)value > obj->upper)
        obj->step = -step;
    if ((s16)obj->step < 0 && (s16)obj->value < obj->lower)
        obj->step = -obj->step;
    sub_08007F0C(x, y, a, b, (u8)c, (u8 *)obj + 0x1C, obj->f8, obj->f0, (s16)obj->value, (s16)obj->value, 255);
}
s32 sub_08065370(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    return sub_08008CC4(arg1, arg2, arg3, M2C_FIELD(arg0, s32 *, 8), arg4);
}
s32 sub_08065394(void *arg0, u16 arg1, s32 arg2, s32 arg3, s32 arg4) {
    return sub_08008D38(arg1, arg2, arg3, M2C_FIELD(arg0, s32 *, 8), arg4);
}
void sub_080653B8(void *arg0, s16 arg1, s16 arg2, s16 arg3)
{
  int new_var;
  new_var = 0x100;
  *((s16 *) (((s8 *) arg0) + 0x2C)) = new_var;
  *((s16 *) (((s8 *) arg0) + 0x30)) = arg1;
  *((s16 *) (((s8 *) arg0) + 0x32)) = arg2;
  *((s16 *) (((s8 *) arg0) + 0x2E)) = arg3;
}
M2C_UNK *sub_080653CC(void) {
    return &gUnk_03005D80;
}
void sub_080653D4(s32 arg0) {
    void *temp_r4;

    temp_r4 = (&((struct Sz40 *)&gUnk_03006110)[arg0]);
    if (sub_08000470(temp_r4) != 0) {
        sub_080003A8((s32) temp_r4);
    }
}
void sub_080653FC(s32 arg0) {
    void *temp_r4;

    temp_r4 = (&((struct Sz40 *)&gUnk_03006160)[arg0]);
    if (sub_08000470(temp_r4) != 0) {
        sub_080003A8((s32) temp_r4);
    }
}
extern u32 gUnk_084EBD4C[];
void sub_08065424(s32 x, s32 y, s32 number, u32 argStyle, u32 argDigits)
{
    u8 buffer[12];
    s32 value;
    s32 style = (u8)argStyle;
    u32 digits = (u8)argDigits;
    u32 *table;
    u8 *out;
    u32 i;
    s32 started;
    u8 *obj;
    if (number < 0) number = 0x7FFFFFFF;
    switch (style) {
    case 0: style = 0; break;
    case 1: style = 1; break;
    case 2: style = 2; break;
    case 3: style = 13; break;
    }
    value = number;
    table = gUnk_084EBD4C + (10 - digits);
    out = buffer;
    i = 0;
    if (i < digits) {
        do {
            *out = sub_08000498(&value, *table++);
            i++;
            out++;
        } while (i < digits);
    }
    started = 0;
    x -= (digits - 1) * 6;
    out = buffer;
    i = 0;
    if (i < digits) {
        obj = (u8 *)&gUnk_03005D80;
        do {
            if (started != 0 || *out != 0 || i == digits - 1) {
                started = 1;
                sub_08007CF0(x, y, style, *out, 0, (s32)(obj + 0x1C), *(u32 *)(obj + 8), *(u32 *)obj);
            }
            i++;
            x += 6;
            out++;
        } while (i < digits);
    }
}
extern u32 gUnk_084EBD4C[];
extern u16 gTiles74[] asm("gUnk_084EBD74");
extern u16 gBg5740[][32] asm("gUnk_03005740");
extern void sub_0801A664(s32, s32);
void sub_08065504(s32 x, s32 y, s32 number, u8 style, u8 digits)
{
    u8 buffer[12];
    s32 value;
    u32 *table;
    u8 *out;
    u32 i;
    s32 started;
    if (number < 0) number = 0x7FFFFFFF;
    value = number;
    table = &gUnk_084EBD4C[10 - digits];
    out = buffer;
    i = 0;
    x++;
    for (; i < digits; i++, out++)
        *out = sub_08000498(&value, *table++);
    started = 0;
    x -= digits;
    out = buffer;
    for (i = 0; i < digits; i++, x++, out++) {
        if (started != 0 || *out != 0 || i == digits - 1) {
            started = 1;
            gBg5740[y][x] = gTiles74[style] + *out;
        }
    }
    sub_0801A664(y, 1);
}
extern void textDraw66(s32, s32, s32) asm("sub_0801A3D0");
void sub_080655CC(s32 x, s32 y, u16 *data, s32 align)
{
    s32 text;
    s32 base;
    u16 offset;
    if (data != 0) {
        switch (*data) {
        case 0: return;
        case 1: return;
        case 2: case 3: base = sub_08007290(data[2] | 0x130000); break;
        case 4: case 5: base = sub_08007290(data[2] | 0x130000); break;
        default: return;
        }
        offset = 0;
        text = base + gUnk_03003470 * 31;
        if (align < 0)
            offset = -(((u32)sub_0801A638((u8 *)text) * 13) >> 1);
        { s32 t = (s16)offset; textDraw66(text, (u16)(t + x), (u16)y); }
    }
}
struct Task6654 { u32 f0, f4, f8; void (*fC)(); u8 *f10; u32 f14, f18, f1C; u8 *f20; u32 f24; };
extern struct Task6654 task6654 asm("gUnk_03006000");
void sub_08065654(void)
{
    u8 *mem;
    while ((mem = (u8 *)sub_08001494(0x400), task6654.f20 = mem) == 0)
        sub_080003F0();
    task6654.f8 = 0x34;
    task6654.fC = (void (*)())sub_080624D8;
    task6654.f10 = task6654.f20 + 0x3FC;
    task6654.f24 = 0;
    sub_08000274(&task6654);
}
s32 sub_0806569C(void)
{
  M2C_UNK **new_var2;
  M2C_UNK *new_var;
  new_var2 = &new_var;
  new_var = &gUnk_03006000;
  if (sub_08000470(*new_var2) == 0)
  {
    return 0;
  }
  if (new_var2)
  {
    return 1;
  }
  else
  {
    return 1;
  }
}
struct S602C_E { u32 x; u8 pad[0x24]; };
struct S602C { u32 a; u32 b; u32 c; struct S602C_E e[30]; };
extern struct S602C *gS602C asm("gUnk_0300602C");
void sub_080656B8(u32 a)
{
    u32 i;
    gS602C = sub_08001494(0x4B4);
    gS602C->a = a;
    for (i = 0; i < 30; i++)
        gS602C->e[i].x = 0;
}
void sub_080656EC(void)
{
    u8 *base = (u8 *)gUnk_0300602C + 4;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470((u32)(base + i * 0x28))) != 0)
            sub_080003A8((u32)(base + i * 0x28));
        i++;
    } while (i <= 29);
    sub_08001538(gUnk_0300602C);
    gUnk_0300602C = result;
}
void sub_08065748(u32 a, u32 b, u32 c)
{
    u32 result;
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_0300602C + 4;
    i = 0;
    while (1) {
        if (i > 29) return;
        if (sub_08000470((u32)entry) == 0) {
            result = *(u32 *)(entry + 8);
            if (result == 0) break;
        }
        i++;
        entry += 0x28;
    }
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)sub_080634D8;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = result;
    sub_08000274(entry, (b << 16) | a, i | (c << 16));
}
extern s32 gUnk_03006030;
void sub_080657C4(u32 a, u32 mode)
{
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_03006030;
    i = 0;
    while (1) {
        if (i > 3) return;
        if (sub_08000470((u32)entry) == 0) break;
        i++;
        entry += 0x28;
    }
    while ((mem = sub_08001494(0x400), *(u32 *)(entry + 0x20) = mem) == 0)
        sub_080003F0();
    *(u32 *)(entry + 8) = 0x3C;
    switch (mode) {
    case 0: *(u32 *)(entry + 0xC) = (u32)sub_080636B0; break;
    case 1: *(u32 *)(entry + 0xC) = (u32)sub_08063B80; break;
    }
    *(u32 *)(entry + 0x10) = *(u32 *)(entry + 0x20) + 0x3FC;
    *(u32 *)(entry + 0x24) = 0;
    sub_08000274(entry, a);
}
void sub_08065838(u32 a, u32 b)
{
    u32 result;
    u32 i;
    u32 mem;
    u8 *entry = (u8 *)gUnk_03006208;
    i = 0;
    while (1) {
        if (i > 3) return;
        result = sub_08000470((u32)entry);
        if (result == 0) break;
        i++;
        entry += 0x28;
    }
    mem = sub_08001494(0x400);
    *(u32 *)(entry + 0x20) = mem;
    if (mem == 0) return;
    *(u32 *)(entry + 8) = 0x3C;
    *(u32 *)(entry + 0xC) = (u32)sub_08065BD0;
    *(u32 *)(entry + 0x10) = mem + 0x3FC;
    *(u32 *)(entry + 0x24) = result;
    sub_08000274(entry, a, b);
}
void sub_080658A0(void)
{
    u32 i;
    gUnk_03006208 = sub_08001494(0xA0);
    for (i = 0; i < 4; i++)
        M2C_FIELD((u8 *)gUnk_03006208 + i * 0x28, s32 *, 8) = 0;
}
void sub_080658CC(void)
{
    s32 base = gUnk_03006208;
    u32 i = 0;
    u32 result;
    do {
        while ((result = sub_08000470(i * 0x28 + base)) != 0)
            sub_080003F0();
        i++;
    } while (i <= 3);
    sub_08001538(gUnk_03006208);
    gUnk_03006208 = result;
}
void sub_08065918(u32 a, u32 b)
{
    u8 *mem;
    if (sub_08000470((u32)&gUnk_030061E0) == 0) {
        gUnk_030061E0.f8 = 0x3C;
        while ((mem = (u8 *)sub_08001494(0xC00), gUnk_030061E0.f20 = mem) == 0)
            sub_080003F0();
        gUnk_030061E0.fC = (void (*)())sub_0806441C;
        gUnk_030061E0.f10 = gUnk_030061E0.f20 + 0xBFC;
        gUnk_030061E0.f24 = 0;
        sub_08000274(&gUnk_030061E0, a, b);
    }
}
struct P148 { u8 pad[0x148]; u8 *p; };
extern struct P148 gP148[] asm("gUnk_03003CE0");
u32 sub_08065974(void)
{
    u32 n = sub_08002164();
    u32 i;
    for (i = 0; i < n; i++) {
        if ((u32)(*gP148[i].p << 28) >> 28 == 0xE)
            return 1;
    }
    return 0;
}
