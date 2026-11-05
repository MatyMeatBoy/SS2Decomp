#include "global.h"

extern void *gUnk_030031D4;

void sub_08009088(u8 a, u8 b, u8 c, u8 d)
{
    gUnk_03001250[0x3c / 2] = a | (b << 4) | (c << 8) | (d << 12);
}
extern void *buffersInit005[4] asm("gUnk_03003460");
struct InitState005 { struct Layer layers[4]; u32 field60; void *field64; void *field68; u8 rest[0x20]; u16 level; u16 pad8E; u16 field90; };
extern struct InitState005 stateInit005 asm("gUnk_03003170");
extern u16 finishInit005(u16 *) asm("sub_0805700C");
void sub_080090B0(void)
{
    u32 i;
    buffersInit005[0] = 0;
    stateInit005.layers[0].data = 0;
    stateInit005.field64 = sub_08001494(0x20000);
    stateInit005.field60 = 0;
    for (i = 1; i < 4; i++) {
        buffersInit005[i] = sub_08001494(0x800);
        stateInit005.layers[i].data = 0;
        stateInit005.layers[i].w2 = 0;
        stateInit005.layers[i].w3 = 0;
        stateInit005.layers[i].s16 = 1;
    }
    stateInit005.field68 = 0;
    stateInit005.field90 = 0;
    stateInit005.level = finishInit005(&stateInit005.field90);
}
struct Level9138 { u16 count, flags; u8 pad[0x70]; };
extern struct Level9138 levels9138[] asm("gUnk_0847846C");
union Bg9138 { struct { u32 value:16; } bits; u16 raw; };
extern u16 done9138 asm("gUnk_03001F40");
extern void mode9138(u32,u32) asm("sub_08000990");
extern void enable9138(u32,u32,u32) asm("sub_080009F8");
extern void bg9138(u32,void *) asm("sub_08000AA8");
extern u32 *record9138(u32) asm("sub_08007290");
void sub_08009138(s32 *arg0, s32 arg1) {
    union Bg9138 bg;
    register u32 *tiles asm("r6");
    u32 *palette;
    u16 i;
    s32 level = arg1;
    register u32 alloc asm("r9"); /* Original reads incoming r9 before freeing it. */
    mode9138(0,0);
    enable9138(0x1f00,0,1);
    bg.bits.value = 0x1c08;
    bg9138(0,&bg.raw);
    if (level == 6) {
        register u8 *base asm("r0") = (u8 *)levels9138;
        register u32 off asm("r1") = 0x2b8;
        asm("" : "+r"(base), "+r"(off));
        base += off;
        asm("" : "+r"(base));
        bg.raw = 0x1d40 | ((struct Level9138 *)base)->flags;
        gUnk_03001250[0x3c / 2] = 0x21;
    } else {
        bg.raw = 0x1d00 | levels9138[level].flags;
    }
    bg9138(1,&bg.raw);
    bg.raw = 0x1e02; bg9138(2,&bg.raw);
    bg.raw = 0x1f03; bg9138(3,&bg.raw);
    tiles = record9138(*arg0);
    palette = record9138((u16)*arg0 | 0x90000);
    i = 0;
    do {
        if (sub_0800CDF8() || sub_0800CB78()) { sub_080013F8(); return; }
        sub_08001348((u32)tiles + (i << 11), 0x6000000 + (i << 11), 0x800);
        sub_080003F0();
        i++;
    } while (i <= 15);
    if (*arg0 < 0) {
        if (level == 0x10 || level == 0x16) sub_08000AF0(0,(void *)((u32)palette + 0x200),15);
        else sub_08000AF0(0,palette,15);
    } else sub_08000AF0(0,palette,15);
    if (gUnk_03003170.curLevel == 4 && sub_0800CDC0()) sub_080009C0(0x1b00,0,1);
    else if (gUnk_03003170.curLevel != 13) sub_080009C0(0x1f00,0,1);
    sub_08001538(alloc);
    done9138 = 0;
    sub_080003F0();
}
extern u16 *bgBuffers005[4] asm("gUnk_03003460");
extern void cameraMap005(u32 *,u32 *,u32) asm("sub_0800AD04");
extern void rowMap005(struct Layer *,s16,s16) asm("sub_080094CC");
extern void copyMap005(const void *,void *,u32) asm("sub_08001348");
void sub_080092C8(u16 index, s16 *map, u16 x, u16 y)
{
    u32 posX;
    s16 indexTwice;
    u32 posY;
    u16 *buffer;
    int t;  // FAKE (decomp-permuter): a temporary for two unrelated values
    u8 *tilemap;
    u16 row;
    u32 regOffset;

    tilemap = (u8 *)map + 0x10;
    tilemap += (u16)map[1] * map[0] * ((3 - index) << 1);
    gUnk_03003170.layers[index].pad14 = index;
    gUnk_03003170.layers[index].data = (u32)tilemap;
    gUnk_03003170.layers[index].s10 = map[0];
    gUnk_03003170.layers[index].s12 = map[1];
    gUnk_03003170.layers[index].x = 0;
    gUnk_03003170.layers[index].y = 0;
    gUnk_03003170.layers[index].w0=0;
    gUnk_03003170.layers[index].w1=0;
    gUnk_03003170.layers[index].w2=0;
    gUnk_03003170.layers[index].w3=0;
    gUnk_03003170.layers[index].s16=1;
    indexTwice = index * 2;
    regOffset = indexTwice;
    buffer = bgBuffers005[index];
    posX = x << 11;
    posY = y << 11;
    cameraMap005(&posX, &posY, 0);
    t = gUnk_03003170.scrollX;
    gUnk_03003170.layers[index].x = (s16)t / 8;
    gUnk_03003170.layers[index].y = (s16)gUnk_03003170.scrollY / 8;
    for (row = gUnk_03003170.scrollY; row < (s16)gUnk_03003170.scrollY + 0x100; row += 8)
        rowMap005(&gUnk_03003170.layers[index], gUnk_03003170.scrollX, row);
    regOffset = index * 2;  // FAKE (decomp-permuter): computed again
    t = ((*(vu16 *)(REG_ADDR_BG0CNT + regOffset) >> 8) & 0x1F) * 0x800;
    copyMap005(buffer, (void *)(t + VRAM), 0x800);
    sub_080003F0();
}
extern u16 *bgBuffers005[4] asm("gUnk_03003460");
void sub_080093E4(struct Layer *entry, s16 x, s16 y)
{
    s16 pos[2];
    u16 *dest = bgBuffers005[entry->pad14];
    u16 *src = (u16 *)entry->data;
    u16 count;
    u16 tileX;
    u16 tileY;         // then the tile's offset in the tilemap
    u16 i;

    if (x < 0)
        x = 0;
    if (y < 0)
        y = 0;
    pos[0] = (x & 0xFF) >> 3;
    pos[1] = (y & 0xFF) >> 3;
    count = 32 - pos[1];
    if (count > 21)
        count = 21;
    tileX = x >> 3;
    tileY = y >> 3;
    dest += pos[0];
    src += tileX;
    i = 0;
    tileY *= entry->s10;
    while (i < count)
    {
        dest[pos[1] * 32] = src[tileY];
        i++;
        pos[1]++;
        tileY += entry->s10;
    }
    pos[1] = 0;
    while (i < 21)
    {
        dest[pos[1] * 32] = src[tileY];
        i++;
        pos[1]++;
        tileY += entry->s10;
    }
}

extern u16 *bgBuffers005[4] asm("gUnk_03003460");
void sub_080094CC(struct Layer *entry, s16 x, s16 y)
{
    s16 pos[2];
    u16 *dest = bgBuffers005[entry->pad14];
    u16 *src = (u16 *)entry->data;
    u16 count;
    u16 tileX;
    u16 tileY;         // then the tile's offset in the tilemap

    if (x < 0)
        x = 0;
    if (y < 0)
        y = 0;
    pos[0] = (x & 0xFF) >> 3;
    pos[1] = (y & 0xFF) >> 3;
    count = 32 - pos[0];
    pos[1] = ((y & 0xFF) >> 3) * 32;
    tileX = x >> 3;
    tileY = y >> 3;
    tileY *= entry->s10;
    tileY += tileX;
    if (count != 0)
        CpuSet(src + tileY, dest + (pos[0] + pos[1]), count);
    CpuSet(src + (count + tileY), dest + pos[1], (32 - count) & 0x1FFFFF);
}
#ifdef NONMATCHING
/* Returns nothing useful; the original epilogue keeps r0 (pop {r1}), so it is non-void. */
s32 sub_08009594(u16 index, u16 dx, u16 dy, s32 force)
{
    u16 *offsets = gUnk_03001250;
    struct Layer *layer = &gUnk_03003170.layers[index];
    u16 x, y;
    u16 tileDX, tileDY;
    s16 pos;
    s16 i;
    u32 update;
    u32 vram;

    if (layer->s16) {
        s32 t;
        t = (s16)dx; t += layer->w2; x = t;
        t = (s16)dy; t += layer->w3; y = t;
    } else {
        x = layer->w2;
        y = layer->w3;
    }
    if (!layer->data)
        return;
    switch (gUnk_03003170.curLevel) {
    case 5:
        update = gUnk_03003170.f90 != 13;
        break;
    case 8:
        if (index == 3) {
            switch (gUnk_03003170.f90) {
            case 2: case 4: case 6: case 8: case 10: case 12: case 14:
                goto skip;
            }
        }
        goto scroll;
    case 10:
        if ((u16)(index - 1) <= 1) {
            s16 t = (s16)y / 8 - layer->y;
            if (t <= -30)
                layer->y = 21;
            else if (t > 29)
                layer->y = 20;
        }
        goto scroll;
    default:
        update = 1;
        break;
    }
    if (!update)
        goto skip;
scroll:
    tileDX = (s16)x / 8 - layer->x;
    tileDY = (s16)y / 8 - layer->y;
    if ((s16)tileDX > 0) {
        pos = (s16)x + 0xF1;
        sub_080093E4(layer, pos, y);
        pos -= 8;
        for (i = 0; i < (s16)tileDX; i++)
            sub_080093E4(layer, (s16)pos - (i << 3), y);
    } else if ((s16)tileDX < 0) {
        pos = (s16)x - 8;
        sub_080093E4(layer, pos, y);
        pos += 8;
        for (i = 0; i < (s16)-tileDX; i++)
            sub_080093E4(layer, (s16)pos + (i << 3), y);
    }
    if ((s16)tileDY > 0) {
        pos = (s16)y + 0xA1;
        sub_080094CC(layer, (s16)x - 8, pos);
        for (i = 0; i < (s16)tileDY; i++)
            sub_080094CC(layer, (s16)x - 8, (s16)pos - (i << 3));
    } else if ((s16)tileDY < 0) {
        sub_080094CC(layer, (s16)x - 8, y);
        for (i = 0; i < (s16)-tileDY; i++)
            sub_080094CC(layer, (s16)x - 8, (s16)y + (i << 3));
    }
    vram = ((*(vu16 *)(REG_ADDR_BG0CNT + index * 2) >> 8) & 0x1F) * 0x800 + VRAM;
    if (tileDX || tileDY || force)
        sub_08001348(bgBuffers005[index], (void *)vram, 0x800);
    if (tileDX || force)
        layer->x = (s16)x / 8;
    if (tileDY || force)
        layer->y = (s16)y / 8;
skip:
    {
        s32 a, b;
        s16 c, d;
        a = (s16)x + gUnk_03003170.offX;
        b = (s16)y + gUnk_03003170.offY;
        c = (s16)a + layer->w0;
        d = (s16)b + layer->w1;
        offsets += layer->pad14 * 2;
        offsets[0] = c & 0xFF;
        offsets[1] = d & 0xFF;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009594);
#endif
struct LoadSize005 { u16 width,height; };
struct LoadState005 { struct Layer layers[4]; s16 *map; void *buffer; u16 *map0,*map1; struct LoadSize005 first; u16 width1,height1,mapW,mapH,scrollX,scrollY,f80,f82,offX,offY; u8 pad88[4]; u16 area,pad8E,index; u8 pad92[10]; u32 flags; u8 padA0[16]; u32 *record; };
struct LoadArea005 { u8 pad[16]; u32 keys[25]; };
struct LoadThread005 { u32 prev,next,priority; void (*entry)(void); void *sp; u8 pad14[12]; u32 stack,onExit; };
struct LoadTile005 { u8 low; u8 hi:4; u8 hflip:1; u8 vflip:1; u8 palette:2; } __attribute__((packed));
extern struct LoadState005 loadState005 asm("gUnk_03003170");
extern struct LoadArea005 loadAreas005[] asm("gUnk_0847846C");
extern struct LoadThread005 loadThread005 asm("gUnk_03003430");
extern u8 loadStack005[] asm("gUnk_0300342C");
extern void loadEntry005(void) asm("sub_0800A998");
extern void displayMode005(u32,u32) asm("sub_08000990");
extern void displayEnable005(u32,u32,u32) asm("sub_080009F8");
extern void loadSetup005(u32 *,u32) asm("sub_08009138");
extern u32 *loadRecord005(u32) asm("sub_08007290");
union LoadBg005 { struct { u32 value:16; } bits; u16 raw; };
s32 sub_08009930(u32 area,u32 index)
{
    s16 *map;
    u32 i,j;
    u16 width,height;
    struct LoadTile005 *tile;
    union LoadBg005 cnt;
    if ((loadState005.flags & 1) || sub_08000470((u32)&loadThread005)) return 0;
    loadThread005.entry=loadEntry005;
    loadThread005.sp=loadStack005;
    loadThread005.stack=0;
    loadThread005.priority=0x50;
    loadThread005.onExit=0;
    loadState005.area=area; loadState005.index=index;
    if (area==5 && sub_0800CDC0() && index==13) {
        width=30; height=32;
        displayMode005(1,1);
        displayEnable005(0x800,0,1);
        sub_080009C0(0x1700,0,1);
        cnt.bits.value=0x1D83; sub_08000AA8(1,&cnt.raw);
        cnt.raw=0xBE81; sub_08000AA8(2,&cnt.raw);
        sub_0800B650(0x2D,0x1D,0x06000000,0,15);
        sub_0800B9F0(0x2C,0x1E);
        tile=loadState005.buffer; loadState005.map0=(u16 *)tile;
        for(i=0;i<32;i++) for(j=0;j<30;j++,tile++) {
            tile->low=0; tile->hi=0; tile->hflip=0; tile->palette=1;
        }
        loadState005.f80=0; loadState005.f82=0; loadState005.offX=0; loadState005.offY=0;
        loadState005.first.width=width; loadState005.first.height=height;
        {
            u16 w=30, h;
            loadState005.width1=w; h=32; loadState005.height1=h;
            loadState005.mapW=w; loadState005.mapH=h;
        }
        loadState005.flags=0; loadState005.scrollX=0; loadState005.scrollY=0;
    } else {
        loadState005.record=loadRecord005(loadAreas005[area].keys[index]);
        loadSetup005(loadState005.record,area);
        if(loadAreas005[area].keys[index]&0x40000000) loadState005.map=(s16 *)((u8 *)loadState005.record+16);
        else loadState005.map=sub_08000BC8((u32 *)((u8 *)loadState005.record+16),&loadState005.buffer);
        map=loadState005.map;
        if(sub_0800CCCC()) loadState005.map1=(u16 *)((u8 *)map+(map[0]*map[1]*6+16));
        else {
            loadState005.map0=(u16 *)((u8 *)map+(map[0]*map[1]*6+16));
            loadState005.mapW=map[0]; loadState005.mapH=map[1];
        }
        loadState005.f80=0; loadState005.f82=0; loadState005.offX=0; loadState005.offY=0;
        {
            u16 w=map[0], h;
            loadState005.first.width=w;
            h=map[1]; loadState005.first.height=h;
            loadState005.width1=w; loadState005.height1=h;
        }
        loadState005.flags=0; loadState005.scrollX=0; loadState005.scrollY=0;
    }
    sub_08000274(&loadThread005,0);
    return 1;
}
struct TileAnim9B84 { u8 pad[0x8C]; u16 area,pad8E,index; u8 pad92[14]; u16 frames[4],timers[4]; u32 *record; };
struct Periods9B84 { u16 periods[4]; u8 rest[108]; };
extern struct TileAnim9B84 tileAnim005 asm("gUnk_03003170");
extern struct Periods9B84 animPeriods9B84[] asm("gUnk_08478470");
extern u16 animLimits9B84[2] asm("gUnk_08478F4C");
void sub_08009B84(void)
{
    u32 alternate,i;
    s32 div;
    u32 src;
    switch(tileAnim005.area) {
    case 0:case 1:case 2:case 3: break;
    case 4: if(tileAnim005.index==12) return; break;
    case 8:
        switch(tileAnim005.index) {
        case 2:case 4:case 6:case 8:case 10:case 12:case 14:case 17:return;
        }
        break;
    case 11:case 12:case 14:return;
    }
    if(tileAnim005.area==3 || tileAnim005.area==6) alternate=1;
    else alternate=0;
    switch(tileAnim005.area) {
    case 0:
        switch(tileAnim005.index) {case 2:case 5:return;}
        if(tileAnim005.index!=0) sub_0800903C(0,0,0,0,0,0);
        if(tileAnim005.index==1) return;
        break;
    case 1:case 2:case 3:
        if(!sub_0800CDC0()) sub_0800903C(0,0,0,0,0,0);
        break;
    case 4:
        if(!sub_0800CDC0() && !sub_0800CC98()) sub_0800903C(6,0x10,1,0xD,0,0);
        break;
    case 5:
        if(!sub_0800CC98() && sub_0800CDC0()) sub_0800903C(0,0,0,0,0,0);
        break;
    case 6:
        if(!sub_0801AAE0()) sub_0800903C(2,0x1C,1,3,0x10,0);
        break;
    case 7:
        if(!sub_0800CDC0()) sub_0800903C(2,0x10,1,7,8,0);
        break;
    case 9:
        switch(tileAnim005.index) {
        case 1:case 3:case 5:case 7:case 9:case 11:case 14:
            if(!sub_0800CC98()) sub_0800903C(2,0x1C,1,3,0x10,0);
            break;
        case 0:case 2:case 6:case 13:
            if(!sub_0800CC98()) sub_0800903C(2,0x10,1,7,8,0);
            break;
        default:
            sub_0800903C(0,0,0,0,0,0);
            break;
        }
        switch(tileAnim005.index) {case 0:case 2:case 4:case 6:case 8:case 12:case 13:case 15:return;}
        break;
    case 10:
        switch(tileAnim005.index) {
        case 0:case 1:case 3:case 13:case 15:case 16:case 19:return;
        case 20:
            if(!sub_0800CC98()) sub_0800903C(2,0x1C,1,3,0x10,0);
            break;
        }
        break;
    case 13:
        if(!sub_0800CC98()) sub_0800903C(2,0x3C,1,3,0x10,0);
        return;
    case 19:
        if(!sub_0800CC98()) sub_0800903C(4,0x10,1,7,8,0);
        break;
    }
    if ((u16)(tileAnim005.area-7)<=1 && sub_0800CDC0()) return;
    div=0x20/animLimits9B84[alternate];
    src=sub_08007290(*tileAnim005.record);
    for(i=0;i<4;i++) {
        if(animPeriods9B84[tileAnim005.area].periods[i]) {
            if(animPeriods9B84[tileAnim005.area].periods[i]<=tileAnim005.timers[i]++) {
                tileAnim005.timers[i]=0;
                if(++tileAnim005.frames[i]>=animLimits9B84[alternate]) tileAnim005.frames[i]=0;
            }
            if(tileAnim005.timers[i]==0)
                sub_08001348((void *)(src+0x7000+i*0x400+((tileAnim005.frames[i]*div)<<5)),(void *)(0x06007000+i*0x400),div<<5);
        }
    }
}
struct MapAnim005 {
    u8 pad[0x8C];
    u16 area, pad8E, index;
    u8 pad92[14];
    u16 frames[4], timers[4];
};
struct MapPeriods005 {
    u16 periods[4];
    u8 rest[108];
};
extern struct MapAnim005 animState005 asm("gUnk_03003170");
extern struct MapPeriods005 animPeriods005[] asm("gUnk_08478470");
extern u16 animLimits005[2] asm("gUnk_08478F4C");
void sub_0800A03C(void)
{
    u32 alternate, i;
    switch (animState005.area) {
    case 0:
    case 1:
    case 2:
    case 3:
        break;
    case 4:
        if (animState005.index == 12)
            return;
        break;
    case 8:
        switch (animState005.index) {
        case 2:
        case 4:
        case 6:
        case 8:
        case 10:
        case 12:
        case 14:
        case 17:
            return;
        }
        break;
    case 11:
    case 12:
    case 14:
        return;
    }
    if (animState005.area == 3 || animState005.area == 6)
        alternate = 1;
    else
        alternate = 0;
    /* Keep the selector out of the frame-counter register. */
    asm("" : : : "r4");
    switch (animState005.area) {
    case 0:
        switch (animState005.index) {
        case 2:
        case 5:
            return;
        }
        break;
    case 9:
        switch (animState005.index) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 8:
        case 12:
        case 13:
        case 15:
            return;
        }
        break;
    case 10:
        switch (animState005.index) {
        case 0:
        case 1:
        case 3:
        case 13:
        case 15:
        case 16:
        case 19:
            return;
        }
        break;
    case 13:
        return;
    }
    if ((u16)(animState005.area - 7) <= 1 && sub_0800CDC0())
        return;
    {
        register u32 index asm("r6") = 0;
        register struct MapAnim005 *base asm("ip") = &animState005;
        register struct MapPeriods005 *periods asm("r8");
        register u16 *limitBase asm("r1");
        register u16 *frames asm("r4");
        u16 *limit;
        register u32 temp asm("r0");
        register u32 value asm("r1");
        register u32 offset asm("r2");
        register u16 *entry asm("r3");
        register u16 *timer asm("r2");
        u32 limitCount;
        register struct MapAnim005 *state asm("r5") = &animState005;
        asm("" : "+r"(index), "+r"(base) : "r"(state));
        temp = (u32)animPeriods005;
        asm("" : "+r"(temp));
        periods = (struct MapPeriods005 *)temp;
        asm("" : "+r"(periods));
        limitBase = animLimits005;
        asm("" : "+r"(limitBase));
        frames = base->frames;
        asm("" : "+r"(frames));
        temp = alternate << 1;
        limit = (u16 *)(temp + (u32)limitBase);
        asm("" : "+r"(limit));
    loop:
        offset = index << 1;
        value = base->area;
        temp = 0x74 * value;
        temp = offset + temp;
        entry = (u16 *)(temp + (u32)periods);
        asm("" : "+r"(entry));
        if (*entry == 0)
            goto next;
        temp = (u32)state;
        asm("" : "+r"(temp));
        temp += 0xA8;
        timer = (u16 *)(offset + temp);
        value = *timer;
        temp = value + 1;
        *timer = temp;
        temp = *entry;
        asm("" : "+r"(value));
        value = (u16)value;
        if (temp > value)
            goto next;
        value = 0;
        *timer = value;
        temp = *frames + 1;
        *frames = temp;
        temp = (u16)temp;
        limitCount = *limit;
        if (temp < limitCount)
            goto next;
        *frames = value;
    next:
        frames++;
        index++;
        if (index <= 3)
            goto loop;
    }
}
struct T06HeaderA298 {s16 w,h;u8 pad[12];};
struct T06SysA298 {
    u8 pad[0x60];struct T06HeaderA298 *volatile header;void *allocation;
    u8 *data,*previous;u16 w,h,w1,h1,mapW,mapH,x,y;
    u8 pad80[12];u16 level,pad8E,current;u8 pad92[0x1E];void *resource;
};
struct T06LevelA298 {u32 header[4];u32 resources[25];};
extern struct T06SysA298 t06_sysA298 asm("gUnk_03003170");
extern struct T06LevelA298 t06_levelsA298[] asm("gUnk_0847846C");
static inline void t06_updateA298(void)
{
    register struct T06SysA298 *sys asm("r4")=&t06_sysA298;
    struct T06HeaderA298 *map=sys->header;
    sys->previous=sys->data;
    sys->data=(u8 *)map+16+map->w*map->h*6;
    sys->w=map->w;
    {register u16 height asm("r0")=map->h;
    register u16 *out asm("r1")=&sys->h;
    *out=height;}
    {register u16 *out asm("r0")=&sys->y;
    *out=0;out--;*out=0;}
}
void sub_0800A298(u32 index)
{
    u8 *resource;
    register struct T06HeaderA298 *map asm("r0");
    struct T06SysA298 *sys=&t06_sysA298;
    sys->current=index;
    resource=(u8 *)sub_08007290(t06_levelsA298[sys->level].resources[index]);
    sys->resource=resource;
    {register u16 *current asm("r3")=&sys->current;
    if(t06_levelsA298[sys->level].resources[*current]&0x40000000)
        map=(struct T06HeaderA298 *)(resource+16);
    else map=sub_08000BC8((u32 *)(resource+16),&sys->allocation);
    sys->header=map;}
    t06_updateA298();
}
extern s32 t06_musicA34C(u32) asm("sub_08058688");
extern s32 t06_stopA34C(s32) asm("sub_080586B4");
extern s32 t06_checkA34C(s32) asm("sub_08057AE8");
void sub_0800A34C(u32 music, s32 previous, s32 changed) {
    u32 selection;
    if (sub_0800CB9C() == 0) {
        if ((sub_0800CCCC() == 0) && (sub_0800D028() != 0)) {
            goto block_127;
        }
        switch (music) {
        case 0:
            if (t06_checkA34C(0x1A) != 0) {
                goto block_185;
            }
            sub_0805867C(0x34);
            switch ((u32) gUnk_03003170.f90) {
            case 0:
                goto map_a;
            case 1:
            case 2:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                goto map_db;
            case 14:
                goto map_14;
            case 3:
            case 4:
            case 20:
                goto map_da;
            }
            break;
        case 10:
            if (sub_0800CDC0() != 0) {
                if (changed != 0) {
                    switch (gUnk_03003170.f90) {
                    case 17:
                        break;
                    case 20:
                        goto block_160;
                    case 18:
                        if (sub_08056E50() == 0) {
                            t06_musicA34C(31);
                            return;
                        }
                        break;
                    case 14:
                        if (sub_08056E50() == 0) {
                            t06_musicA34C(11);
                            return;
                        }
                        break;
                    default:
                        goto block_178;
                    }
                }
                else {
                    if (gUnk_03003170.f90 != 18) return;
                    if (sub_08056E50() == 0) goto block_170;
                }
            }
        block_31:
            t06_musicA34C(30);
            return;
        case 11:
            t06_musicA34C(0x187U);
            return;
        case 12:
            if (changed == 0) {
                return;
            }
            if (gUnk_03003170.f90 != 0) {
                return;
            }
            if (gUnk_030056FC != 0) {
                goto block_195;
            }
            goto block_196;
        case 14:
            t06_musicA34C(0x186U);
            return;
        case 13:
            if (changed != 0) {
                goto block_173;
            }
            goto block_196;
        case 15:
        case 16:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(0x18DU);
                return;
            }
        block_46:
            if (sub_08056E50() != 0) {
                goto block_177;
            }
            goto block_178;
        case 17:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(0x18EU);
                return;
            }
            goto block_46;
        case 18:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(0x18FU);
                return;
            }
            goto block_46;
        case 19:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(0x190U);
                return;
            }
            goto block_46;
        case 20:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(0x191U);
                return;
            }
            goto block_46;
        case 21:
            t06_musicA34C(3U);
            return;
        case 22:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(5U);
                return;
            }
            goto block_46;
        case 23:
            if (sub_0800CDC0() == 0) {
                t06_musicA34C(2U);
                return;
            }
            goto block_46;
        default:
            if (sub_0800CDC0() == 0) {
                switch (gUnk_03003170.curLevel) {
                case 1:
                    if ((gUnk_03003170.f90 == 4) && (sub_08056E50() == 0)) {
                        if (sub_08058524(7) != 0) {
                            goto block_195;
                        }
                        t06_musicA34C(0xC4U);
                        return;
                    }
                    goto block_74;
                case 7:
                    if ((gUnk_03003170.f90 == 4) && (changed == 0)) {
                        return;
                    }
                    goto block_74;
                default:
                block_74:
                    t06_musicA34C(music);
                    return;
                }
            }
            else if (changed != 0) {
                switch (music) {
                default:
                    goto block_87;
                case 5:
                    if (gUnk_03003170.f90 == 0xC) {
                        if (sub_08056E50() != 0) {
                            return;
                        }
                        goto block_195;
                    }
                block_87:
                    if (!(gUnk_030056FC & 1)) {
                        goto block_177;
                    }
                    goto block_178;
                case 6:
                    if (gUnk_03003170.f90 == 5) {
                        if (sub_08056E50() == 0) {
                            goto block_195;
                        }
                        t06_musicA34C(6U);
                        return;
                    }
                    goto block_87;
                case 8:
                    if (gUnk_03003170.f90 != 0x12) {
                        if (gUnk_03003170.f90 == 0) {
                            return;
                        }
                        if (sub_08056E50() == 0) {
                            goto block_195;
                        }
                        t06_musicA34C(8U);
                        return;
                    }
                    goto block_87;
                case 9:
                    if ((gUnk_03003170.f90 == 4) || (gUnk_03003170.f90 == 0xC)) {
                        if (sub_08056E50() == 0) {
                            goto block_195;
                        }
                        t06_musicA34C(9U);
                        return;
                    }
                    goto block_87;
                }
            }
            else {
                if (gUnk_03003170.curLevel != 8) {
                    return;
                }
                goto block_46;
            }
            break;
        }
    }
    else {
        if ((sub_0800CCCC() != 0) || (sub_0800D028() == 0)) {
            if (sub_0800CDC0() != 0) {
                if ((changed != 0) && (sub_08056E50() == 0) && (sub_0800CDC0() != 0) && !(gUnk_030056FC & 1)) {
                    if (previous != 0xD) {
                        goto block_196;
                    }
                    goto block_177;
                }
                selection = music - 5;
                switch (selection) {
                case 0:
                    if (gUnk_03003170.f90 == 0xC) {
                        if (changed == 0) {
                            return;
                        }
                        if (sub_08056E50() == 0) {
                            goto block_195;
                        }
                    block_127:
                        t06_musicA34C(0x40U);
                        return;
                    }
                    if (changed == 0) {
                        goto block_196;
                    }
                    goto block_87;
                case 1:
                    if (gUnk_03003170.f90 == 5) {
                        goto block_196;
                    }
                    if (changed == 0) {
                        return;
                    }
                    goto block_87;
                case 3:
                    switch (gUnk_03003170.f90) {
                    case 13:
                        if (changed == 0) {
                            return;
                        }
                        if (sub_08056E50() == 0) {
                            /* Preserve the separate success edge in the original CFG. */
                            asm volatile("" : : : "cc");
                            goto block_195;
                        }
                        else {
                            goto block_196;
                        }
                    case 18:
                        if (changed == 0) goto block_178;
                        goto block_87;
                    }
                    break;
                case 4:
                    if (changed == 0) {
                        return;
                    }
                    switch (gUnk_03003170.f90) {
                    case 12:
                    case 4:
                        if (sub_08056E50() != 0) {
                            goto block_196;
                        }
                        goto block_195;
                    case 16:
                        goto block_87;
                    }
                    break;
                case 5:
                    if (changed != 0) {
                        if (gUnk_03003170.f90 == 0x14) {
                        block_160:
                            if (gUnk_030056FC & 1) {
                                t06_musicA34C(12);
                                return;
                            }
                            goto block_177;
                        }
                        if (gUnk_03003170.f90 != 0x12) {
                            if (sub_08056E50() != 0) {
                                goto block_196;
                            }
                            goto block_178;
                        }
                        goto block_168;
                    }
                    if (gUnk_03003170.f90 != 0x12) {
                        return;
                    }
                block_168:
                    if (sub_08056E50() != 0) {
                        goto block_196;
                    }
                block_170:
                    t06_musicA34C(31);
                    return;
                case 8:
                    if (changed == 0) {
                        return;
                    }
                block_173:
                    t06_musicA34C(0x194);
                    return;
                default:
                    if (changed == 0) {
                        return;
                    }
                    if (!(gUnk_030056FC & 1)) {
                    block_177:
                        t06_musicA34C(13);
                        return;
                    }
                block_178:
                    t06_musicA34C(11);
                    return;
                }
            }
            else {
                switch (gUnk_03003170.curLevel) {
                case 0:
                    if ((sub_0800CF48() == 0) && (sub_08057314() == 0)) {
                        if (t06_checkA34C(0x1A) != 0) {
                        block_185:
                            t06_musicA34C(0x188U);
                            return;
                        }
                        switch ((u32) gUnk_03003170.f90) {
                        case 0:
                        map_a:
                            t06_musicA34C(0xAU);
                            return;
                        case 1:
                        case 2:
                        case 5:
                        case 6:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        map_db:
                            t06_musicA34C(0xDBU);
                            return;
                        case 14:
                        map_14:
                            t06_stopA34C(0xDB);
                            sub_0805865C(0x34);
                            return;
                        case 3:
                        case 4:
                        case 20:
                        map_da:
                            t06_musicA34C(0xDAU);
                            return;
                        }
                    }
                    else {
                        goto block_196;
                    }
                    break;
                default:
                    goto block_196;
                case 12:
                    if ((changed != 0) && (gUnk_03003170.f90 == 0)) {
                        if (gUnk_030056FC != 0) {
                        block_195:
                            t06_musicA34C(165);
                            return;
                        }
                    block_196:
                        t06_stopA34C(0);
                        return;
                    }
                    break;
                }
            }
        }
        else {
            goto block_127;
        }
    }
}
struct T06PlayerA998 {u8 pad[0x8C];s32 x,y;u8 tail[0xB8];};
struct T06SysA998 {
    u8 pad[0x60];void *header,*allocation;u16 *map0,*map1;
    u16 width0,pad72,width1,pad76,mapW,mapH;s16 scrollX,scrollY;
    u16 f80,f82,offX,offY,relX,relY,curLevel,pad8E,f90;
    u8 pad92[10];u32 flags;u8 padA0[16];void *resource;
};
extern u8 t06_rawA998[] asm("gUnk_03003170");
extern struct T06SysA998 t06_sysA998 asm("gUnk_03003170");
extern struct T06PlayerA998 t06_playersA998[] asm("gUnk_03003CE0");
extern u16 t06_levelA998 asm("gUnk_030031FC");
extern s16 t06_scrollYA998 asm("gUnk_030031EE");
static inline void t06_layersA998(u16 x, u16 y)
{
    if (t06_sysA998.curLevel == 0xA) {
        if (t06_sysA998.f90 == 3 || t06_sysA998.f90 == 0xD) {
            sub_080092C8(1, t06_sysA998.header, x, 0);
            sub_080092C8(2, t06_sysA998.header, x, 0);
        } else {
            sub_080092C8(1, t06_sysA998.header, x, y);
            sub_080092C8(2, t06_sysA998.header, x, y);
        }
    } else {
        sub_080092C8(1, t06_sysA998.header, x, y);
        sub_080092C8(2, t06_sysA998.header, x, y);
    }
    sub_080092C8(3, t06_sysA998.header, x, y);
}
union T06BgA998 { struct { u32 value:16; } bits; u16 raw; };
void sub_0800A998(void)
{
    struct T06PlayerA998 *player;
    u16 x, y;
    union T06BgA998 cnt;
    s32 result;
    s32 flag;
    u32 i;
    u16 *level = &t06_levelA998;

    t06_sysA998.flags = 1;
    player = &t06_playersA998[sub_080020F4()];
    x = (player->x >> 11) - 15;
    y = (player->y >> 11) - 11;
    sub_080003F0();
    sub_080003F0();
    if (t06_sysA998.curLevel != 5 || t06_sysA998.f90 != 0xD)
        t06_layersA998(x, y);
    { register struct T06SysA998 *base asm("r4") = &t06_sysA998; register u16 *level asm("r5") = &base->curLevel; sub_0800A34C(*level, 0, 0); }
    while (!(t06_sysA998.flags & 2) && sub_0800CB78() == 0) {
        while (sub_0800CD34() != 0)
            sub_080003F0();
        if (t06_sysA998.flags & 0xC) {
            if (sub_0800CD8C() == 0)
                result = sub_080586B4(0);
            sub_080003F4(0x514C8);
            if (sub_080021A8() != 0)
                break;
            x = (player->x >> 11) - 15;
            y = (player->y >> 11) - 11;
            if (x & 0x8000) x = 0;
            if (y & 0x8000) y = 0;
            if (x > t06_sysA998.width0 - 30) x = t06_sysA998.width0 - 30;
            if (t06_sysA998.scrollY < 0) t06_sysA998.scrollY = 0;
            if (y > t06_sysA998.pad72 - 20) y = t06_sysA998.pad72 - 20;
            if (t06_sysA998.curLevel != 5 || t06_sysA998.f90 != 0xD) {
                sub_08009138(t06_sysA998.resource, t06_sysA998.curLevel);
                t06_layersA998(x, y);
            } else {
                sub_08000990(1, 1);
                sub_080009F8(0x800, 0, 1);
                sub_080009C0(0x1700, 0, 1);
                cnt.bits.value = 0x1C08;
                sub_08000AA8(0, &cnt.raw);
                cnt.raw = 0x1D83;
                sub_08000AA8(1, &cnt.raw);
                cnt.raw = 0xBE81;
                sub_08000AA8(2, &cnt.raw);
                sub_0800B650(0x2D, 0x1D, 0x06000000, 0, 15);
                sub_0800B9F0(0x2C, 0x1E);
                sub_080003F0();
                sub_080003F0();
            }
            flag = 1;
            t06_sysA998.flags &= ~0xC;
            sub_0800A34C(*level, result, 1);
            if (sub_0801AB24() == 0)
                sub_0801AA34(0x14);
            else if (sub_0801AB24() == 2)
                sub_0801AB90(6);
            else
                sub_0801AB50(6);
        }
        { register s16 *sy asm("r6"); register s16 *sx asm("r5"); i = 1; sy = &t06_sysA998.scrollY; sx = sy - 1;
        do { sub_08009594((u16)i, *sx, *sy, flag); i++; } while (i <= 3); }
        flag = 0;
        sub_08009B84();
        sub_080003F0();
        t06_sysA998.flags |= 0x40;
    }
    t06_sysA998.flags = 0x80000000;
}

struct CameraAD04 {
    u8 pad00[0x70];
    u16 w70, w72, w74, w76;
    u8 pad78[4];
    s16 x, y;
    u16 baseX, baseY;
    u8 pad84[4];
    u16 relX, relY;
    u8 pad8C[0x10];
    u32 flags;
};
extern struct CameraAD04 cameraAD04 asm("gUnk_03003170");

u32 sub_0800AD04(u32 *px, u32 *py, u32 alt)
{
    u32 dx = (u16)(*px >> 8);
    u32 dy = (u16)(*py >> 8);

    if (!(cameraAD04.flags & 0x10)) {
        cameraAD04.x = cameraAD04.baseX + ((s32)(dx << 16) >> 16) - 0x78;
        cameraAD04.y = cameraAD04.baseY + ((s32)(dy << 16) >> 16) - 0x60;
    }
    if (alt) {
        if (cameraAD04.x > (cameraAD04.w74 - 0x1e) * 8)
            cameraAD04.x = (cameraAD04.w74 - 0x1e) * 8;
        if (cameraAD04.y > (cameraAD04.w76 - 0x14) * 8)
            cameraAD04.y = (cameraAD04.w76 - 0x14) * 8;
    } else {
        if (cameraAD04.x > (cameraAD04.w70 - 0x1e) * 8)
            cameraAD04.x = (cameraAD04.w70 - 0x1e) * 8;
        if (cameraAD04.y > (cameraAD04.w72 - 0x14) * 8)
            cameraAD04.y = (cameraAD04.w72 - 0x14) * 8;
    }
    if (cameraAD04.x < 0)
        cameraAD04.x = 0;
    if (cameraAD04.y < 0)
        cameraAD04.y = 0;
    if (!(cameraAD04.flags & 0x10)) {
        cameraAD04.relX = cameraAD04.x - cameraAD04.baseX;
        cameraAD04.relY = cameraAD04.y - cameraAD04.baseY;
    } else {
        cameraAD04.x = cameraAD04.baseX + cameraAD04.relX;
        cameraAD04.y = cameraAD04.baseY + cameraAD04.relY;
    }
    {
        u32 lowX = (u8)*px;
        u32 lowY = (u8)*py;
        *px = lowX + ((s16)dx << 8);
        *py = lowY + ((s16)dy << 8);
    }
}
extern u32 t06_resourcesAE50[] asm("gUnk_0847846C");
static inline u32 t06_resourceAE50(u32 index,u16 offset)
{
    u8 *table=(u8 *)t06_resourcesAE50;
    return *(u32 *)(table+offset+index*4);
}
static inline u32 t06_decodeAE50(u32 value,u8 type)
{
    register u32 v asm("r0")=value;
    register u32 t asm("r1")=type;
    if(t==1)return v|t;
    return (u8)v;
}
u32 sub_0800AE50(s32 x,s32 y,u32 resourceId)
{
    s32 width;
    register u8 *data asm("r2");
    u8 *cell;
    register u32 word asm("r0");
    register u32 low asm("r1");
    u32 result;
    u8 type;
    if(resourceId) {
        u8 *resource=(u8 *)sub_08007290(t06_resourceAE50(resourceId&~32,16));
        register s16 *header asm("r2")=(s16 *)(resource+16);
        register s32 height asm("r0");
        register s32 count asm("r1");
        register s32 offset asm("r0");
        width=*(s16 *)(resource+16);
        height=header[1];
        count=width;
        count*=height;
        offset=count*6+16;
        data=(u8 *)header+offset;
    } else {
        if(gUnk_03003170.curLevel==8 && gUnk_03003170.f90==18)width=90;
        else if(gUnk_03003170.curLevel==8 && (gUnk_03003170.f90==2 || gUnk_03003170.f90==12))width=60;
        else width=gUnk_03003170.mapW;
        data=(u8 *)gUnk_03003170.map0;
    }
    cell=data+2*((x>>11)+width*(y>>11));
    word=*(u32 *)cell;
    low=(word<<20)>>28;
    result=(((word<<19)>>31)<<4)|low;
    type=*cell;
    return t06_decodeAE50(result,type);
}
#ifdef NONMATCHING
struct T06CellAEF4 {u8 type,flags;} __attribute__((packed));
extern u16 t06_widthAEF4 asm("gUnk_030031E8");
void sub_0800AEF4(s32 arg0, s32 arg1, u32 arg2, s32 arg3, s32 arg4) {
    u32 a, b;
    s32 sp0;
    struct T06CellAEF4 *sp4;
    u32 sp8;
    register u32 spC asm("r9");
    u32 sp10;
    register u32 sp14 asm("r9");
    u32 sp18;
    s16 temp_r4;
    s32 temp_r1_5;
    s32 var_r2;
    s32 var_r2_2;
    struct T06CellAEF4 *temp_r3;
    struct T06CellAEF4 *temp_r3_2;
    u16 var_r4;
    register u32 temp_r0 asm("sl");
    register u32 temp_r1 asm("r1");
    u32 temp_r1_2;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 temp_r2_2;
    register u32 var_r3 asm("r3");
    register u32 var_r3_2 asm("r3");
    u32 var_r4_2;
    register u8 temp_r0_2 asm("r0");
    u8 temp_r1_3;
    u8 var_r0;

    sp0 = arg3;
    a = (u32)arg0 << 0x10; b = (u32)arg1 << 0x10;
    asm("" : "+r"(a), "+r"(b));
    temp_r0 = a >> 0x13;
    asm("" : "+r"(temp_r0));
    temp_r1 = b >> 0x13;
    if ((s32) temp_r0 > (s32) gUnk_03003170.mapW) {
        return;
    }
    if (temp_r0 & 0x8000) {
        return;
    }
    sp18 = temp_r1 << 0x10;
    temp_r4 = (s32)sp18 >> 16;
    if ((s32) temp_r4 > (s32) gUnk_03003170.mapH) {
        return;
    }
    if (temp_r4 & 0x8000) {
        return;
    }
    if (arg2 == 0) {
        return;
    }
    if (arg3 == 0) {
        return;
    }
    sp4 = (struct T06CellAEF4 *)gUnk_03003170.map0;
    if (arg4 != 0) {
        var_r3 = sp18 >> 0x10;
        if (var_r3 >= (u32) (temp_r4 + sp0)) {
            return;
        }
        temp_r2 = arg2 >> 1;
        sp8 = temp_r2;
        spC = temp_r0 + temp_r2;
        do {
            var_r4 = temp_r0 - sp8;
            var_r2 = var_r4 << 0x10;
            if ((u32) (s16) var_r4 < (u32) (sp8 + temp_r0)) {
                do {
                    temp_r3 = &sp4[(var_r2 >> 0x10) + (gUnk_03003170.mapW * (s16) var_r3)];
                    if ((0xF & temp_r3->flags) && (temp_r1_3 = temp_r3->type, ((temp_r1_3 & 0xF) != 0xC))) {
                        if (gUnk_03003170.curLevel == 0xB) {
                            if (temp_r1_3 != 8) {
                                temp_r3->type = 0xAU;
                                var_r0 = (((u32) (*(u32 *)temp_r3 << 0x14) >> 0x1C) * 0x10) | 0xA;
                                goto block_28;
                            }
                        } else {
                            temp_r3->type = 0xAU;
                            var_r0 = (((u32) (*(u32 *)temp_r3 << 0x14) >> 0x1C) * 0x10) | 0xA;
                            goto block_28;
                        }
                    } else if (gUnk_03003170.curLevel == 0xB) {
                        if (temp_r3->type != 8) {
                            temp_r3->type = 0xCU;
                        }
                    } else {
                        var_r0 = 0xC;
block_28:
                        temp_r3->type = var_r0;
                    }
                    temp_r3->flags = (u8) ((-0x10 & temp_r3->flags) | 1);
                    var_r4 = (u16) ((u32) ((var_r4 << 0x10) + 0x10000) >> 0x10);
                    var_r2 = var_r4 << 0x10;
                } while ((u32) (s16) var_r4 < spC);
            }
            temp_r1_2 = (var_r3 << 0x10) + 0x10000;
            var_r3 = temp_r1_2 >> 0x10;
        } while ((u32) ((s32) temp_r1_2 >> 0x10) < (u32) (((s32) sp18 >> 0x10) + sp0));
        return;
    }
    var_r3_2 = sp18 >> 0x10;
    if (var_r3_2 < (u32) (temp_r4 + sp0)) {
        temp_r2_2 = arg2 >> 1;
        sp14 = temp_r0 + temp_r2_2;
        sp10 = (temp_r0 - temp_r2_2) << 0x10;
        do {
            var_r4_2 = sp10 >> 0x10;
            var_r2_2 = var_r4_2 << 0x10;
            if ((u32) (s16) var_r4_2 < (u32) (temp_r0 + temp_r2_2)) {
                do {
                    temp_r3_2 = &sp4[(var_r2_2 >> 0x10) + (t06_widthAEF4 * (s16) var_r3_2)];
                    temp_r0_2 = temp_r3_2->type;
                    temp_r1_5 = temp_r0_2 & 0xF;
                    if (temp_r1_5 == 0xC) {
                        temp_r3_2->flags = (u8) (-0x10 & temp_r3_2->flags);
                        temp_r3_2->type = 0U;
                    } else if (temp_r1_5 == 0xA) {
                        temp_r3_2->flags = (u8) ((-0x10 & temp_r3_2->flags) | ((temp_r0_2 >> 4) & 0xF));
                        temp_r3_2->type = 0U;
                    } else if (temp_r0_2 == 8) {
                        temp_r3_2->flags = (u8) (-0x10 & temp_r3_2->flags);
                    }
                    var_r4_2 = (u32) ((var_r4_2 << 0x10) + 0x10000) >> 0x10;
                    var_r2_2 = var_r4_2 << 0x10;
                } while ((u32) (s16) var_r4_2 < sp14);
            }
            temp_r1_4 = (var_r3_2 << 0x10) + 0x10000;
            var_r3_2 = temp_r1_4 >> 0x10;
        } while ((u32) ((s32) temp_r1_4 >> 0x10) < (u32) (((s32) sp18 >> 0x10) + sp0));
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800AEF4);
#endif
#ifdef NONMATCHING
extern u16 t06_width1B118 asm("gUnk_030031E4");
extern u16 t06_heightB118 asm("gUnk_030031EA");
s32 sub_0800B118(u8 direction,s32 x,s32 y,s32 flags)
{
    u32 cells[3][3];
    s32 centerX=x>>11;
    s32 centerY=(y+0x200)>>11;
    s32 i,j,xx,yy,nextI,nextJ;
    u16 width;
    u16 *map;
    u32 value;
    u8 *cell;
    if(flags&1) {
        map=gUnk_03003170.map1;
        i=-1;
        do {
            xx=centerX+i;
            j=-1;
            nextI=i+1;
            do {
                yy=centerY+j;
                if(xx<=0 || yy<=0 || xx>=t06_width1B118 || yy>=gUnk_03003170.pad76) {
                    nextJ=j+1;
                    cells[nextJ][nextI]=1;
                } else {
                    nextJ=j+1;
                    cells[nextJ][nextI]=(*(u32 *)&map[xx+t06_width1B118*yy]<<20)>>28;
                }
                j=nextJ;
            }while(j<=1);
            i=nextI;
        }while(i<=1);
    } else {
        if(gUnk_03003170.curLevel==8 && gUnk_03003170.f90==18)width=90;
        else if(gUnk_03003170.curLevel==8 && (gUnk_03003170.f90==2 || gUnk_03003170.f90==12))width=60;
        else width=gUnk_03003170.mapW;
        map=gUnk_03003170.map0;
        i=-1;
        do {
            xx=centerX+i;
            j=-1;
            nextI=i+1;
            do {
                yy=centerY+j;
                if(xx<=0 || yy<=0 || xx>=width || yy>=t06_heightB118) {
                    nextJ=j+1;
                    cells[nextJ][nextI]=1;
                } else {
                    cell=(u8 *)&map[xx+yy*width];
                    nextJ=j+1;
                    value=(*(u32 *)cell<<20)>>28;
                    cells[nextJ][nextI]=value;
                    if((flags&2) && cell[0]==1)cells[nextJ][nextI]=value|cell[0];
                    if((flags&4) && (cell[1]&16))cells[nextJ][nextI]=0;
                }
                j=nextJ;
            }while(j<=1);
            i=nextI;
        }while(i<=1);
    }
    switch(cells[1][1]) {
    case 0:goto L_B63C;
    case 1:goto L_B304;
    case 2:goto L_B47C;
    case 3:goto L_B47C;
    case 4:goto L_B4B0;
    case 5:goto L_B4B0;
    case 6:goto L_B4E4;
    case 7:goto L_B4E4;
    case 8:goto L_B51C;
    case 9:goto L_B51C;
    case 10:goto L_B550;
    case 11:goto L_B588;
    case 12:goto L_B5C4;
    case 13:goto L_B5FC;
    default:goto L_B63C;
    }
L_B304:
    switch(direction) {
    case 0:goto L_B338;
    case 1:goto L_B434;
    case 2:goto L_B368;
    case 3:goto L_B446;
    case 4:goto L_B3AC;
    case 5:goto L_B458;
    case 6:goto L_B3F4;
    case 7:goto L_B468;
    default:goto L_B63C;
    }
L_B338:
    switch(cells[0][1]-6) {
    case 0:goto L_B4E4;
    case 1:goto L_B4E4;
    case 2:goto L_B51C;
    case 3:goto L_B51C;
    case 4:goto L_B550;
    case 5:goto L_B588;
    default:goto L_B638;
    }
L_B368:
    switch(cells[1][2]-2) {
    case 0:goto L_B47C;
    case 1:goto L_B47C;
    case 2:goto L_B638;
    case 3:goto L_B638;
    case 4:goto L_B638;
    case 5:goto L_B638;
    case 6:goto L_B51C;
    case 7:goto L_B51C;
    case 8:goto L_B638;
    case 9:goto L_B588;
    case 10:goto L_B5C4;
    default:goto L_B638;
    }
L_B3AC:
    switch(cells[2][1]-2) {
    case 0:goto L_B47C;
    case 1:goto L_B47C;
    case 2:goto L_B4B0;
    case 3:goto L_B4B0;
    case 4:goto L_B638;
    case 5:goto L_B638;
    case 6:goto L_B638;
    case 7:goto L_B638;
    case 8:goto L_B638;
    case 9:goto L_B638;
    case 10:goto L_B5C4;
    case 11:goto L_B5FC;
    default:goto L_B638;
    }
L_B3F4:
    switch(cells[1][0]-4) {
    case 0:goto L_B4B0;
    case 1:goto L_B4B0;
    case 2:goto L_B4E4;
    case 3:goto L_B4E4;
    case 4:goto L_B638;
    case 5:goto L_B638;
    case 6:goto L_B550;
    case 7:goto L_B638;
    case 8:goto L_B638;
    case 9:goto L_B5FC;
    default:goto L_B638;
    }
L_B434:
    if(cells[0][0]==0)goto L_B584;
    if(cells[2][2]==0)goto L_B634;
    goto L_B638;
L_B446:
    if(cells[2][0]==0)goto L_B584;
    if(cells[0][2]==0)goto L_B5BC;
    goto L_B638;
L_B458:
    if(cells[0][0]==0)goto L_B5BC;
    if(cells[2][2]==0)goto L_B478;
    goto L_B638;
L_B468:
    if(cells[2][0]==0)goto L_B634;
    if(cells[0][2]==0)goto L_B478;
    goto L_B638;
L_B478:return 7;
L_B47C:
    switch(direction) {
    case 0:goto L_B63C;
    case 1:goto L_B63C;
    case 2:goto L_B518;
    case 3:goto L_B518;
    case 4:goto L_B5F8;
    case 5:goto L_B63C;
    case 6:goto L_B63C;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B4B0:
    switch(direction) {
    case 0:goto L_B63C;
    case 1:goto L_B63C;
    case 2:goto L_B63C;
    case 3:goto L_B63C;
    case 4:goto L_B630;
    case 5:goto L_B5C0;
    case 6:goto L_B5C0;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B4E4:
    switch(direction) {
    case 0:goto L_B518;
    case 1:goto L_B63C;
    case 2:goto L_B63C;
    case 3:goto L_B63C;
    case 4:goto L_B63C;
    case 5:goto L_B63C;
    case 6:goto L_B5F8;
    case 7:goto L_B5F8;
    default:goto L_B63C;
    }
L_B51C:
    switch(direction) {
    case 0:goto L_B5C0;
    case 1:goto L_B630;
    case 2:goto L_B630;
    case 3:goto L_B63C;
    case 4:goto L_B63C;
    case 5:goto L_B63C;
    case 6:goto L_B63C;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B550:
    switch(direction) {
    case 0:goto L_B584;
    case 1:goto L_B63C;
    case 2:goto L_B63C;
    case 3:goto L_B63C;
    case 4:goto L_B63C;
    case 5:goto L_B5BC;
    case 6:goto L_B5BC;
    case 7:goto L_B638;
    default:goto L_B63C;
    }
L_B588:
    switch(direction) {
    case 0:goto L_B5C0;
    case 1:goto L_B638;
    case 2:goto L_B5BC;
    case 3:goto L_B5BC;
    case 4:goto L_B63C;
    case 5:goto L_B63C;
    case 6:goto L_B63C;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B5C4:
    switch(direction) {
    case 0:goto L_B63C;
    case 1:goto L_B634;
    case 2:goto L_B634;
    case 3:goto L_B638;
    case 4:goto L_B5F8;
    case 5:goto L_B63C;
    case 6:goto L_B63C;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B5FC:
    switch(direction) {
    case 0:goto L_B63C;
    case 1:goto L_B63C;
    case 2:goto L_B63C;
    case 3:goto L_B63C;
    case 4:goto L_B630;
    case 5:goto L_B638;
    case 6:goto L_B634;
    case 7:goto L_B634;
    default:goto L_B63C;
    }
L_B518:return 2;
L_B584:return 3;
L_B5BC:return 5;
L_B5C0:return 8;
L_B5F8:return 6;
L_B630:return 4;
L_B634:return 1;
L_B638:return 0;
L_B63C:return direction+1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B118);
#endif
extern u8 t06_displayB650 asm("gUnk_0300129C");
extern u16 t06_doneB650 asm("gUnk_03001F40");
void sub_0800B650(s32 a,s32 b,s32 c,u16 d,u16 e)
{
    u8 *map;
    u32 palettes=e;
    u32 *header=(u32 *)sub_08007290(a);
    u8 *graphics=(u8 *)sub_08007290(*header);
    void *palette=(void *)sub_08007290((u16)*header|0x70000);
    u16 i;
    register u32 offset asm("r1");
    u32 flag=0x40000000&a;
    if(flag)map=(u8 *)header+4;
    else {map=(u8 *)flag;map=sub_08000BC8(header+1,(void **)&map);}
    if(!(t06_displayB650&128)) {
        if(*header&0x10000000) {
            if(*header&0x20000000) {
                i=0;b<<=11;
                do {
                    register const void *source asm("r0");
                    offset=i<<10;
                    source=graphics+offset;
                    offset+=0x4000;
                    sub_08001348(source,(void *)(c+offset),0x400);
                    sub_080003F0();i++;
                }while(i<=15);
            } else {
                i=0;b<<=11;
                do {
                    offset=i<<10;
                    sub_08001348(graphics+offset,(void *)(c+offset),0x400);
                    sub_080003F0();i++;
                }while(i<=15);
            }
        } else {
            i=0;b<<=11;
            do {
                offset=i<<11;
                sub_08001348(graphics+offset,(void *)(c+offset),0x800);
                sub_080003F0();i++;
            }while(i<=15);
        }
        sub_08001348(map,(void *)(VRAM+b),0x800);
        sub_080003F0();
    } else {
        if(*header&0x10000000) {
            if(*header&0x20000000)CpuFastSet(graphics,(void *)(c+0x4000),0x1000);
            else CpuFastSet(graphics,(void *)c,0x1000);
        } else CpuFastSet(graphics,(void *)c,0x2000);
        CpuFastSet(map,(void *)(VRAM+(b<<11)),0x200);
    }
    if(!(a&0x40000000))sub_08001538((s32)map);
    sub_08000AF0(d,palette,palettes);
    t06_doneB650=0;
}
extern u8 t06_displayB7DC asm("gUnk_0300129C");
extern u16 t06_doneB7DC asm("gUnk_03001F40");
void sub_0800B7DC(s32 a,s32 b,s32 c,u16 d,u16 e)
{
    u8 *map;
    u32 palettes=e;
    u32 *header=(u32 *)sub_08007290(a);
    u8 *graphics=(u8 *)sub_08007290(*header+gUnk_03003470);
    void *palette=(void *)sub_08007290((u16)*header|0x70000);
    u16 i;
    register u32 offset asm("r1");
    u32 flag=0x40000000&a;
    if(flag)map=(u8 *)header+4;
    else {map=(u8 *)flag;map=sub_08000BC8(header+1,(void **)&map);}
    if(!(t06_displayB7DC&128)) {
        if(*header&0x10000000) {
            if(*header&0x20000000) {
                i=0;b<<=11;
                do {
                    register const void *source asm("r0");
                    offset=i<<10;
                    source=graphics+offset;
                    offset+=0x4000;
                    sub_08001348(source,(void *)(c+offset),0x400);
                    sub_080003F0();i++;
                }while(i<=15);
            } else {
                i=0;b<<=11;
                do {
                    offset=i<<10;
                    sub_08001348(graphics+offset,(void *)(c+offset),0x400);
                    sub_080003F0();i++;
                }while(i<=15);
            }
        } else {
            i=0;b<<=11;
            do {
                offset=i<<11;
                sub_08001348(graphics+offset,(void *)(c+offset),0x800);
                sub_080003F0();i++;
            }while(i<=15);
        }
        sub_08001348(map,(void *)(VRAM+b),0x800);
        sub_080003F0();
    } else {
        if(*header&0x10000000) {
            if(*header&0x20000000)CpuFastSet(graphics,(void *)(c+0x4000),0x1000);
            else CpuFastSet(graphics,(void *)c,0x1000);
        } else CpuFastSet(graphics,(void *)c,0x2000);
        CpuFastSet(map,(void *)(VRAM+(b<<11)),0x200);
    }
    if(!(a&0x40000000))sub_08001538((s32)map);
    sub_08000AF0(d,palette,palettes);
    t06_doneB7DC=0;
}
void sub_0800B974(u32 a, u32 b) {
    void *tmp;
    void *p;
    u8 *sh;
    p = (void *) sub_08007290(a);
    if (a & 0x40000000) {
        tmp = (char *) p + 4;
    } else {
        tmp = 0;
        tmp = sub_08000BC8((u32 *) ((char *) p + 4), (void **) &tmp);
    }
    sh = (u8 *) &gUnk_0300129C;
    if ((*(volatile u8 *) sh & 0x80) == 0) {
        sub_08001348(tmp, (void *) (0x06000000 + (b << 11)), 0x800);
    } else {
        CpuFastSet(tmp, (void *) (0x06000000 + (b << 11)), 0x200);
    }
    if ((a & 0x40000000) == 0) {
        sub_080003F0();
        sub_08001538((s32) tmp);
    }
}
void sub_0800B9F0(u32 a, u32 b) {
    void *tmp;
    void *p;
    u8 *sh;
    p = (void *) sub_08007290(a);
    if (a & 0x40000000) {
        tmp = (char *) p + 4;
    } else {
        tmp = 0;
        tmp = sub_08000BC8((u32 *) ((char *) p + 4), (void **) &tmp);
    }
    sh = (u8 *) &gUnk_0300129C;
    if ((*(volatile u8 *) sh & 0x80) == 0) {
        sub_08001348(tmp, (void *) (0x06000000 + (b << 11)), 0x1000);
    } else {
        CpuFastSet(tmp, (void *) (0x06000000 + (b << 11)), 0x400);
    }
    if ((a & 0x40000000) == 0) {
        sub_080003F0();
        sub_08001538((s32) tmp);
    }
}
u32 sub_0800BA6C(void)
{
    return (gUnk_03003170.flags >> 6) & 1;
}
void sub_0800BA80(u16 i)
{
    struct Layer *l = &gUnk_03003170.layers[i];
    if (l->data != 0)
    {
        l->s12 = 0;
        l->s10 = 0;
        l->y = 0;
        l->x = 0;
    }
}
void *sub_0800BAA4(s16 x, s16 y) {
    struct TileSys *t = &gUnk_03003170;
    u16 *m = t->map0;
    s32 a = x;
    s32 b = y;
    s32 idx = (a >> 3) + (b >> 3) * t->width0;
    return m + idx;
}
s32 sub_0800BAC4(s32 arg0, s32 arg1) {
    register s32 index asm("r4") = arg1;
    register u8 *table asm("r2") = (u8 *)gUnk_0847846C;
    s32 offset;
    u32 *entry;
    s32 temp_r2;
    void *var_r2;
    offset = index * 4 + arg0 * 0x74;
    asm volatile("" : "+r" (offset));
    table += 0x10;
    entry = (u32 *)((u32)offset + (u32)table);
    temp_r2 = sub_08007290(*entry);
    if (*entry & 0x40000000) {
        var_r2 = temp_r2 + 0x10;
    } else {
        var_r2 = sub_08000BC8(temp_r2 + 0x10, &gUnk_030031D4);
    }
    gUnk_03003170.map0 = var_r2 + ((M2C_FIELD(var_r2, s16 *, 0) * M2C_FIELD(var_r2, s16 *, 2) * 6) + 0x10);
    gUnk_03003170.mapW = (u16)M2C_FIELD(var_r2, s16 *, 0);
    gUnk_03003170.mapH = (u16)M2C_FIELD(var_r2, s16 *, 2);
    gUnk_03003170.flags = 0x40;
    return 1;
}
void sub_0800BB40(void)
{
    gUnk_03003170.flags |= 2;
}
void sub_0800BB54(void)
{
    gUnk_03003170.flags |= 0xC;
}
u32 sub_0800BB68(void)
{
    u32 r = gUnk_03003170.flags & 0xC;
    if (r != 0)
        r = 1;
    return r;
}
void sub_0800BB80(u16 a, u16 b)
{
    gUnk_03003170.f80 = a;
    gUnk_03003170.f82 = b;
}
void sub_0800BB94(u16 a, u16 b)
{
    gUnk_03003170.offX = a;
    gUnk_03003170.offY = b;
}
void sub_0800BBA8(u16 i, u16 a, u16 b)
{
    if (sub_0800CCCC() == 0)
    {
        gUnk_03003170.layers[i].w2 = a;
        gUnk_03003170.layers[i].w3 = b;
    }
}
void sub_0800BBD8(u16 i, u16 a, u16 b)
{
    if (sub_0800CCCC() == 0)
    {
        gUnk_03003170.layers[i].w0 = a;
        gUnk_03003170.layers[i].w1 = b;
    }
}
u32 sub_0800BC08(s16 x, s16 y, s16 *out_x, s16 *out_y) {
    *out_x = (s16)x - (gUnk_03003170.scrollX + gUnk_03003170.offX);
    *out_y = (s16)y - (gUnk_03003170.scrollY + gUnk_03003170.offY);
    return 1;
}
u32 sub_0800BC44(u32 x, u32 y, u32 alternate)
{
    u8 *map;
    u16 *w;
    register u32 r asm("r0");

    x >>= 3;
    y >>= 3;
    if (alternate != 0) {
        map = (u8 *)gUnk_03003170.map1;
        w = &gUnk_03003170.width1;
    } else {
        map = (u8 *)gUnk_03003170.map0;
        w = &gUnk_03003170.width0;
    }
    {
        u32 idx = (x + y * *w) * 2;
        asm("" : "+r"(idx));
        switch ((s32)(*(u32 *)(map + idx) << 16 >> 30)) {
        case 0: r = 2; break;
        case 1: r = 1; break;
        case 2: r = 3; break;
        }
    }
    return r;
}
u32 sub_0800BCA0(s32 x, s32 y, s32 which)
{
    register u16 *map asm("r3"); u16 *w; register s32 ix asm("r1"); register s32 iy asm("r2");
    if (which != 0) { map = gUnk_03003170.map1; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width1; }
    else { map = gUnk_03003170.map0; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width0; }
    {
        register u8 *cell asm("r0");
        ix = (ix + iy * *w) * 2;
        asm("" : "+r"(ix));
        cell = (u8 *)map + ix;
        return *cell;
    }
}
void sub_0800BCDC(s32 a, s32 b, s32 c, u16 d, u16 e) {
    sub_0800B650(a, b + 0x1c, c, d, e);
}
void sub_0800BCFC(s32 a, s32 b, s32 c, u16 d, u16 e) {
    sub_0800B7DC(a, b + 0x1c, c, d, e);
}
u32 sub_0800BD1C(void)
{
  u16 lv;
  if ((gUnk_0847846C[gUnk_03003170.curLevel].count - 1) == gUnk_03003170.f90)
  {
    return 1;
  }
  return 0;
}
void sub_0800BD48(s32 i, u16 v)
{
    gUnk_03003170.layers[i].s16 = v;
}
void sub_0800BD5C(s32 arg) {
    u32 t;
    u32 i;
    u32 buf[3];
    t = sub_08000464();
    sub_080020F4();
    sub_08065CA8();
    sub_08016114();
    sub_08057624(5);
    i = 0;
    while (i < sub_08002164()) {
        sub_080135C4((u16) i);
        i++;
    }
    if (arg == 1) {
        gUnk_03003478 |= 2;
    } else {
        gUnk_03003478 &= ~2;
    }
    sub_08006E64(1);
    sub_0805F07C();
    sub_080090B0();
    sub_0805B21C();
    sub_08022630();
    sub_08021D88();
    sub_08021C6C();
    sub_08065B58();
    sub_080658A0();
    sub_080922B4();
    sub_0805F1B0();
    gUnk_03003474 = 0;
    sub_080003F0();
    while (sub_080021A8() == 0 && sub_0800CD00() == 0 && sub_0800CB78() == 0) {
        sub_080003F0();
    }
    sub_08006DAC();
    while (sub_0801AAE0() == 0) {
        sub_080003F0();
    }
    if (sub_080021A8() != 0) {
        sub_08061910();
        sub_08002304();
        sub_080020E0();
    }
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0800CBAC();
    sub_080161A4();
    sub_08021DAC();
    sub_08021C70();
    sub_08065B84();
    sub_080658CC();
    sub_08092344();
    if (sub_0801AAF8() == 0) {
        sub_0801ABE8();
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    sub_08000420(0x000514C8);
    sub_08000420(0x11201100);
    sub_0805F07C();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    if (sub_08002228() == 0) {
        sub_080020E0();
        sub_080003F0();
    }
    while (t < sub_08000464()) {
        sub_080003F0();
    }
}
#ifdef NONMATCHING
// sub_0800BEC0 (world-map/destination select): ~66 diff lines, exact block layout and frame;
// left: `movs r5, #0` (zero) placed after active = 0 in ROM (draft sets it earlier), which shifts
// reload-register rotation in later loops (draw / 24-loop / count loop), and a few local regs.
struct CurBEC0 {
    u16 lo:4; u16 x:12;
    u16 y:12; u16 dir:4;
    u32 b0:6; u32 st:4; u32 b10:1; u32 sel:8; u32 b19:5; u32 mode:4; u32 b28:4;
};
struct PlayerBEC0 {
    u16 f0;
    u8 p2[0x1A];
    u16 f1C;
    u8 p1E[0x10];
    u16 f2E;
    u8 p30[0x80];
    u16 fB0;
    u16 fB2;
    s16 fB4;
    u8 pB6[0x8E];
    struct CurBEC0 *p144;
    struct CurBEC0 *p148;
};
struct SprABEC0 { u8 p0[0xC]; u8 *fC; u8 p10[0x18]; u8 f28; u8 p29[0xB]; };
struct SprBBEC0 { u8 b[0x44]; };
struct PairBEC0 { u32 id, key; };
struct StateBEC0 { u16 f0; u8 p2[0x34]; u16 f36; };

extern struct PlayerBEC0 playersBEC0[] asm("gUnk_03003CE0");
extern u32 flagsBEC0 asm("gUnk_03003478");
extern struct { u8 b0, b1, b2, b3; } flagBytesBEC0 asm("gUnk_03003478");
extern struct StateBEC0 *stateBEC0 asm("gUnk_03005CF4");
extern u16 regsBEC0[] asm("gUnk_03001250");
extern u16 posTblBEC0[][2] asm("gUnk_08478F9A");
extern u16 rngTblBEC0[][2] asm("gUnk_08479054");
extern u16 dirTblBEC0[] asm("gUnk_08479044");
extern s16 sinBEC0[] asm("gUnk_080B9704");
extern u16 vofsBEC0 asm("gUnk_03001308");
extern u16 heldBEC0 asm("gUnk_0300130C");
extern u16 pressBEC0 asm("gUnk_03001324");
extern u32 optBEC0 asm("gUnk_03002344");

s32 waitBEC0(void) asm("sub_0801AAE0");
void initBEC0(void *, s32, s32, s32, s32) asm("sub_08065158");
void animBEC0(void *, u16, u16 *, s16 *, s32) asm("sub_08065370");
void drawABEC0(void *, s32, s32, u16, u16) asm("sub_08065230");
void drawBBEC0(void *, s32, s32, u16, u16) asm("sub_08065264");
void selBEC0(void *, s32, s32, u16, u16, s32) asm("sub_080652E0");
void unselBEC0(void *, s32, s32, u32, u16, s32) asm("sub_080659BC");
s32 hasBEC0(u32) asm("sub_08057C34");
s32 itemBEC0(s32, s32) asm("sub_0805813C");
void setBEC0(s32) asm("sub_08057CAC");
void clrBEC0(s32) asm("sub_08057C6C");
void sndBEC0(s32) asm("sub_0805865C");
void bgmBEC0(s32) asm("sub_08058688");
s32 taskBEC0(s32, void *) asm("sub_08057328");
void fillBEC0(s32, s32, s32, u16, s32, s32) asm("sub_0800903C");
void gfxBEC0(s32, s32, s32, u16, u16) asm("sub_0800BCDC");
u32 nBEC0(void) asm("sub_08002164");
s32 strBEC0(s32) asm("sub_08007290");
s32 lenBEC0(s32) asm("sub_0801A638");
void textBEC0(s32, s32, s32) asm("sub_0801A3D0");
void msgBEC0(s32, s32) asm("sub_0801A664");
void goBEC0(u32, s32) asm("sub_08022E60");
void sub_0800D164(void);

void sub_0800BEC0(void)
{
    struct SprABEC0 sprA;
    struct SprBBEC0 sprB;
    u16 arr80[4];
    u16 a88[24];
    s16 aB8[24];
    struct PairBEC0 pairs[4];
    union { struct { u32 cnt:16; u32 spare:16; } bits; u16 half; u32 word; } bg;
    u32 sel;
    s32 active;
    s32 me;
    u32 cnt1, cnt2;
    u32 n;
    s32 posX, posY;
    s32 speed;
    s16 phase;
    s32 inRange;
    s32 flagA, flagB;
    s32 handle;
    u32 i, j;
    s32 d;
    u8 dir;
    s16 cnt;
    struct CurBEC0 *c;
    struct PlayerBEC0 *p;
    struct CurBEC0 **pc;
    s32 s;
    s32 zero;
    s32 dbg;
    u8 t;

    while (waitBEC0() == 0)
        sub_080003F0();
    zero = 0;
    dbg = 0;
    if ((flagsBEC0 >> 3) & 1)
        sel = 0;
    else
        sel = stateBEC0->f0;
    active = 0;
    flagsBEC0 |= 0x20;
    sub_08068384();
    initBEC0(&sprA, 0x50006, 4, -1, zero);
    sprA.f28 = zero;
    sub_08000AF0(0x10, sprA.fC + 0x180, 1);
    me = sub_080020F4();
    n = (u16)nBEC0();
    sub_0801A508();
    sub_080003F0();
    gfxBEC0(0x34, 1, 0x06000000, 0, 0xF);
    sub_0800B974(0x48, 0x1E);
    sub_080009F8(0xF00, 0, 1);
    sub_080009C0(0x1300, 0, 1);
    bg.bits.cnt = 0x1C08;
    sub_08000AA8(0, &bg.half);
    bg.half = 0x1E00;
    sub_08000AA8(2, &bg.half);
    if (hasBEC0(5) == 0) {
        sub_080009C0(0x400, 0, 1);
        fillBEC0(4, 2, 1, 0xE, 0xC, zero);
    }
    regsBEC0[4] = zero;
    regsBEC0[5] = zero;
    regsBEC0[6] = zero;
    regsBEC0[7] = zero;
    regsBEC0[2] = zero;
    regsBEC0[3] = zero;
    initBEC0(&sprB, 0x500C3, 4, 0xC, zero);
    sub_080003F0();
    sub_080003F0();
    sub_080003F0();
    sub_0801AB50(3);
    for (i = 0; i < 4; i++) {
        arr80[i] = 0x300;
        pairs[i].id = i;
        pairs[i].key = 0;
    }
    playersBEC0[me].p144->lo = 0;
    for (i = 0; i < n; i++)
        playersBEC0[i].fB0 = i + 0x1B;
    bgmBEC0(0x70);
    posX = posTblBEC0[sel][0] << 8;
    posY = posTblBEC0[sel][1] << 8;
    speed = 0;
    inRange = 0;
    cnt2 = 0;
    cnt1 = 0;
    flagB = 0;
    flagA = 0;
    handle = taskBEC0(0, sub_0800D164);

while (1) {
    if (hasBEC0(5) == 0) {
        phase++;
        phase &= 0x7F;
        fillBEC0(4, 0x32, 1, sinBEC0[phase] / 32 + 8, 0xC, 0);
    }
    if (active)
        vofsBEC0 = 0;
    if (waitBEC0() != 0 && dbg == 0) {
        if (itemBEC0(1, 0x31))
            cnt1++;
        else
            setBEC0(0x11);
        if (itemBEC0(1, 0x2C))
            cnt2++;
        else
            setBEC0(0x17);
        if (cnt1 > 0x28) {
            clrBEC0(0x11);
            if (flagA == 0) {
                sndBEC0(0x3A);
                flagA = 1;
            }
        }
        if (cnt2 > 0x3C) {
            clrBEC0(0x17);
            if (flagB == 0) {
                sndBEC0(0x3B);
                flagB = 1;
            }
        }
        sel = 0xFF;
        for (i = 0; i < 24; i++) {
            if (i != 0 && hasBEC0(i) == 0)
                continue;
            if (i == 14 && ((flagsBEC0 >> 1) & 1))
                continue;
            d = posTblBEC0[i][0] - (posX >> 8);
            if (d < 0)
                d = -d;
            if (d >= rngTblBEC0[i][0])
                continue;
            d = posTblBEC0[i][1] - (posY >> 8);
            if (d < 0)
                d = -d;
            if (d >= rngTblBEC0[i][1])
                continue;
            sel = i;
            if (inRange == 0) {
                if (i > 14)
                    sndBEC0(0x3B);
                else
                    sndBEC0(0x3A);
                inRange = 1;
            }
        }
        if (sel == 0xFF && inRange) {
            sndBEC0(0x3C);
            inRange = 0;
        }
        if (!(pressBEC0 & 0x200)) if (!(pressBEC0 & 0x100)) {
            if (pressBEC0 & 1) {
                if (active == 0) {
                    if (sel != 0xFF) {
                        sndBEC0(0xF);
                        active = 1;
                        if (sel == 0)
                            goto done;
                    } else {
                        sndBEC0(0x61);
                    }
                }
            } else if ((pressBEC0 & 2) && active) {
                sndBEC0(0x10);
                active = 0;
            }
        }
    }
    playersBEC0[me].p144->st = 0xF;
    if (active) {
        playersBEC0[me].p144->mode = 1;
        heldBEC0 = 0;
        posX = posTblBEC0[sel][0] << 8;
        posY = posTblBEC0[sel][1] << 8;
    } else {
        playersBEC0[me].p144->mode = 0;
    }
    for (i = 0; i < n; i++) {
        p = &playersBEC0[i];
        pairs[i].id = i;
        pairs[i].key = 0;
        pc = &playersBEC0[i].p144;
        if (p->p148->st != 0xF)
            continue;
        if (p->f0 == me) {
            switch (playersBEC0[p->f0].p148->lo) {
            case 0:
                if (heldBEC0 & 0xF0)
                    playersBEC0[p->f0].p144->lo = 1;
                speed -= 0x80;
                if (speed < 0)
                    speed = 0;
                break;
            case 1:
                dir = 0;
                if (heldBEC0 & 0x40)
                    dir = 5;
                else if (heldBEC0 & 0x80)
                    dir = 1;
                if (heldBEC0 & 0x20) {
                    t = dir;
                    dir = 4;
                    if (t != 5) {
                        dir = 3;
                        if (t == 1)
                            dir = 2;
                    }
                } else if (heldBEC0 & 0x10) {
                    t = dir;
                    dir = 6;
                    if (t != 5) {
                        dir = 7;
                        if (t == 1)
                            dir = 8;
                    }
                }
                s = dir;
                if (s != 0) {
                    playersBEC0[me].p144->dir = s - 1;
                    speed += 0x80;
                    if (speed >= 0x1E0)
                        speed = 0x1E0;
                } else {
                    playersBEC0[me].p144->lo = 0;
                }
                break;
            }
            {
                u32 v;
                posY += sinBEC0[v = dirTblBEC0[playersBEC0[me].p148->dir]] * speed / 256;
                posX += sinBEC0[v + 0x40] * speed / 256;
            }
            if ((posX >> 8) < 8)
                posX = 0x800;
            if ((posX >> 8) > 0xE8)
                posX = 0xE800;
            if ((posY >> 8) < 8)
                posY = 0x800;
            if ((posY >> 8) > 0x98)
                posY = 0x9800;
            pc[0]->x = posX >> 8;
            pc[0]->y = posY >> 8;
            pc[0]->sel = sel;
        }
        animBEC0(&sprA, p->fB0, &p->fB2, &p->fB4, 1);
        pairs[i].id = i;
        pairs[i].key = pc[1]->y;
    }
    for (i = 0; i < n; i++) {
        for (j = i + 1; j < n; j++) {
            if (pairs[i].key < pairs[j].key) {
                pairs[i].id ^= pairs[j].id;
                pairs[j].id ^= pairs[i].id;
                pairs[i].id ^= pairs[j].id;
                pairs[i].key ^= pairs[j].key;
                pairs[j].key ^= pairs[i].key;
                pairs[i].key ^= pairs[j].key;
            }
        }
    }
    i = 0;
    goto chk;
    do {
        p = &playersBEC0[pairs[i].id];
        c = p->p148;
        if (c->st != 0xF)
            goto next;
        if (me != pairs[i].id) {
            if (!(optBEC0 & 1))
                goto next;
            if (c->mode == 0)
                drawABEC0(&sprA, c->x, c->y, p->fB0, p->fB2);
            else
                drawBBEC0(&sprA, c->x, c->y, p->fB0, p->fB2);
        } else {
            if (c->mode == 0)
                drawABEC0(&sprA, c->x, c->y, p->fB0, p->fB2);
            else
                drawBBEC0(&sprA, c->x, c->y, p->fB0, p->fB2);
        }
    next:
        i++;
    chk:;
    } while (i < n);
    for (i = 0; i < 24; i++) {
        if (i != 0 && hasBEC0(i) == 0)
            continue;
        if (i == 14 && ((flagsBEC0 >> 1) & 1))
            continue;
        animBEC0(&sprB, i, &a88[i], &aB8[i], 1);
        if (i == sel)
            selBEC0(&sprB, posTblBEC0[i][0], posTblBEC0[i][1], i, a88[i], 1);
        else
            unselBEC0(&sprB, posTblBEC0[i][0], posTblBEC0[i][1], i, a88[i], 1);
    }
    if (!((flagsBEC0 >> 8) & 1)) {
        if (sel != 0xFF) {
            s = strBEC0((sel + 0x4A9) | 0x140000);
            s += 2;
            textBEC0(s, 0xF - lenBEC0(s) / 2, 0x12);
        } else {
            msgBEC0(0x12, 2);
        }
    }
    sub_080003F0();
    if (sub_08002204() != 0) {
        cnt = 0;
        for (i = 0; i < n; i++) {
            p = &playersBEC0[i];
            if (p->p148->mode != 0 && sel == p->p148->sel)
                cnt++;
        }
        if (cnt != n)
            continue;
        playersBEC0[0].p148->mode = 2;
        break;
    } else if (playersBEC0[0].p148->mode == 2) {
        break;
    }
    }
    if (sel != 0 && sub_08002204() != 0) {
        playersBEC0[0].p144->mode = 2;
        sub_08057624(5);
    }
done:
    msgBEC0(0, 0x14);
    if (sel != 0) {
        sub_08067C18();
        while (sub_08067C08() == 0)
            sub_080003F0();
        sub_08067BF8();
    } else {
        while (flagBytesBEC0.b3 & 1)
            sub_080003F0();
    }
    goBEC0(sel, 1);
    sub_080003F0();
    msgBEC0(2, 0xC);
    sub_080003F0();
    msgBEC0(2, 0xC);
    sub_080003F0();
    sub_080586D0(2);
    sub_0801ABE8(6);
    playersBEC0[me].p144->mode = 0;
    playersBEC0[me].p144->st = 0;
    sub_08058404(handle);
    if (stateBEC0->f0 != 0) {
        flagsBEC0 &= ~0x400000;
        sub_08056E64();
        sub_0805A66C();
        for (i = 0; i < 20; i++)
            sub_080003F0();
        playersBEC0[me].f2E = 0;
        sub_08057170();
        sub_080572A4();
        sub_080169C8();
        sub_0805D4F4();
        sub_080003F0();
    } else {
        stateBEC0->f36 = 0;
        playersBEC0[me].f1C = 4;
    }
    sub_08056E78();
    flagsBEC0 &= ~0x20;
    initBEC0(&sprB, 0x50006, 9, 4, 0);
    fillBEC0(0, 0, 0, 0, 0, 0);
    flagsBEC0 &= ~0x10000;
    sub_08000420(0xBBA);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BEC0);
#endif
struct Rgb0C9F4 { u16 r:5, g:5, b:5, x:1; };
struct RgbWord0C9F4 { u32 r:5, g:5, b:5, x:1; };
/* Pulse a palette range: scale each color of a saved copy by a sine
 * brightness until *done becomes non-zero, then free the copy. */
void sub_0800C9F4(u32 range, s32 *done)
{
    u16 start = range;
    u32 count = range >> 16;
    u16 *copy;
    u16 *dst;
    u16 *src;
    u32 i, n, v;
    s64 w;
    u16 scale, phase;

    while ((copy = sub_08001494(count << 5)) == 0)
        sub_080003F0();
    CpuSet((u8 *)&gUnk_03001F40 + start * 32, copy, (count * 8) | 0x04000000);
    n = count * 16;
    scale = 100;
    phase = 0;
    while (*done == 0) {
        dst = (u16 *)((u8 *)&gUnk_03001F40 + start * 32);
        src = copy;
        for (i = 0; i < n; i++, dst++, src++) {
            v = (u32)(scale * ((struct RgbWord0C9F4 *)src)->r) >> 10;
            if (v > 31)
                v = 31;
            /* `count` is dead here; reusing it for the scale keeps ROM regalloc */
            count = scale;
            ((struct Rgb0C9F4 *)dst)->r = v;
            v = (u32)(count * ((struct RgbWord0C9F4 *)src)->g) >> 10;
            if (v > 31)
                v = 31;
            ((struct Rgb0C9F4 *)dst)->g = v;
            w = count * ((struct RgbWord0C9F4 *)src)->b;
            v = (u32)w >> 10;
            if (v > 31)
                v = 31;
            ((struct Rgb0C9F4 *)dst)->b = v;
        }
        sub_08000B38();
        sub_080003F0();
        scale = ((gUnk_080B9704[phase] * 200) >> 8) + 0x464;
        phase += 4;
        if (phase > 0x100)
            phase = 0;
    }
    sub_08001538(copy);
}
void sub_0800CB30(void) {
    gUnk_03003478 = 0;
}
void sub_0800CB3C(s32 a) {
    gUnk_030034B0[3] = (s32) sub_0800BD5C;
    gUnk_030034B0[8] = (s32) sub_08001494(0x400);
    gUnk_030034B0[4] = gUnk_030034B0[8] + 0x3FC;
    gUnk_030034B0[2] = 0x64;
    gUnk_030034B0[9] = 0;
    sub_08000274(gUnk_030034B0, a);
}
s32 sub_0800CB78(void) {
    return gUnk_03003478 & 1;
}
void sub_0800CB88(void) {
    gUnk_03003478 &= ~1;
}
s32 sub_0800CB9C(void) {
    return ((u32) gUnk_03003478 >> 1) & 1;
}
void sub_0800CBAC(void) {
    gUnk_03003478 |= 1;
}
