#include "global.h"

extern void *gUnk_030031D4;

/* [SetMosaicBlockSizeShadow] Writes a | (b << 4) | (c << 8) | (d << 12) to display shadow +0x3C. The display
 * copier sends it to MOSAIC at 0x0400004C. Byte inputs are not individually masked to four bits before the
 * halfword store. */
void sub_08009088(u8 a, u8 b, u8 c, u8 d)
{
    gUnk_03001250[0x3c / 2] = a | (b << 4) | (c << 8) | (d << 12);
}
extern void *buffersInit005[4] asm("gUnk_03003460");
struct InitState005 { struct Layer layers[4]; u32 field60; void *field64; void *field68; u8 rest[0x20]; u16 level; u16 pad8E; u16 field90; };
extern struct InitState005 stateInit005 asm("gUnk_03003170");
extern u16 finishInit005(u16 *) asm("sub_0805700C");
/* [InitializeWorldMapResources] Initializes shared world-map state at 0x03003170. Allocates a 0x20000-byte
 * decoded-map buffer and three 0x800-byte background tilemap buffers, clears the primary map/layer pointers
 * and layer source-scroll fields, and enables camera-relative scrolling for layers 1..3. Sets the initial area
 * index to zero and stores sub_0805700C's return value as the map-set index. The callee counts set bits 0..22
 * at options 03004210+4, ignores the passed area address and does not write an output there. It does not start
 * the map update task or guard allocation failure. */
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
/* [LoadWorldMapBackgroundGraphics] Configures display/background control state for the selected map set,
 * resolves graphics and palette resource keys from the map record, submits 16 chunks of 0x800 graphics bytes
 * to background VRAM and loads 15 palette banks. Certain map sets select a palette at +0x200 or different
 * display enables. Checks two scene-stop predicates before each graphics chunk and cancels pending transfers
 * on that exit. Original successful path frees the incoming r9 value, which is not initialized within this
 * function; this is preserved ABI behavior, not a newly inferred argument or safe-allocation contract. */
void sub_08009138(s32 *arg0, s32 arg1) {
    union Bg9138 bg;
    u32 *tiles;
    u32 *palette;
    u16 i;
    s32 level = arg1;
    u32 alloc; /* Original reads incoming r9 before freeing it. */
    mode9138(0,0);
    enable9138(0x1f00,0,1);
    bg.bits.value = 0x1c08;
    bg9138(0,&bg.raw);
    if (level == 6) {
        u8 *base = (u8 *)levels9138;
        u32 off = 0x2b8;
        
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
/* [InitializeMapBackgroundLayer] Selects one of three tile planes after the map header using (3 - layer) *
 * width * height * 2, records its dimensions/index and clears layer scroll/offset fields. Enables
 * camera-relative source scrolling, updates the camera from the input tile coordinates, fills the circular
 * tilemap through the row-copy helper and submits 0x800 bytes to the selected background screen block. The
 * original row loop retains its unsigned starting coordinate and signed comparison; this name does not imply
 * input validation. */
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
/* [CopyMapColumnToCircularTilemap] Copies 21 halfword entries from a source map column into the layer's
 * 32-by-32 background tilemap buffer. Clamps negative signed pixel coordinates to zero, converts them to tile
 * coordinates, and wraps destination row positions at 32 while continuing sequential source rows. Source map
 * bounds are not checked. */
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
/* [CopyMapRowToCircularTilemap] Copies a 32-entry source map row to the layer's circular background tilemap.
 * Clamps negative signed pixel coordinates to zero, uses low eight pixel bits for the destination tile
 * position, and splits the halfword copy at the right edge before continuing at the left edge. Source map
 * bounds are not checked. */
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
/* Identity helper: an opaque s16 round trip that keeps sign extensions the ROM performs. */
static inline s16 S16_8009594(s16 v) { return v; }
/* Separate C name: later callers in this file keep the implicit int prototype they were matched with. */
s32 sub_08009594_(u16 index, u16 x, u16 y, s32 force) asm("sub_08009594");
/* Returns nothing useful; the original epilogue keeps r0 (pop {r1}), so it is non-void. */
/* [UpdateMapBackgroundLayerScroll] Updates one loaded background layer from camera pixel scroll. Chooses
 * camera-relative or absolute source scroll using layer +0x16 and +8/+0xA, copies newly exposed source
 * rows/columns into the circular tilemap, and submits the tilemap when tile movement or force requires it.
 * Several map-set/area exceptions bypass or adjust source updates. Finally writes the background scroll shadow
 * using scene draw offsets and layer display offsets, masked to eight bits. Missing layer data returns
 * immediately; the return register is not a documented success value. */
s32 sub_08009594_(u16 index, u16 x, u16 y, s32 force)
{
    u16 *offsets = gUnk_03001250;
    struct Layer *layer = &gUnk_03003170.layers[index];
    s16 tileDX;
    s16 tileDY;
    u16 pos;
    s32 t, u;
    s16 p;
    s16 i;
    s16 n, n2, n3;
    s16 sy;
    s32 t1, t2;
    u32 update;
    u32 vram;

    if (layer->s16) {
        s32 t;
        t = (s16)x; t += layer->w2; x = t;
        t = (s16)y; t += layer->w3; y = t;
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
                update = 0;
                goto done;
            }
        }
        update = 1;
        break;
    case 10:
        if ((u16)(index - 1) <= 1) {
            s16 t = (s16)y / 8 - layer->y;
            if (t <= -30)
                layer->y = 21;
            else if (t > 29)
                layer->y = 20;
            update = 1;
        } else
            update = 1;
        break;
    default:
        update = 1;
        break;
    }
done:
    if (!update)
        goto skip;
    tileDX = (s16)x / 8 - layer->x;
    tileDY = (s16)y / 8 - layer->y;
    if ((s16)tileDX > 0) {
        t1 = (s16)x + 0xF1;
        p = t1;
        sub_080093E4(layer, p, y);
        pos = p - 8;
        n2 = tileDX;
        for (i = 0; i < n2; i++)
            sub_080093E4(layer, S16_8009594(pos) - (i << 3), y);
    } else if ((s16)tileDX < 0) {
        t2 = (s16)x - 8;
        p = t2;
        sub_080093E4(layer, p, y);
        n3 = -tileDX;
        pos = p + 8;
        for (i = 0; i < n3; i++)
            sub_080093E4(layer, S16_8009594(pos) + (i << 3), y);
    }
    if ((s16)tileDY > 0) {
        n = tileDY;
        t = (s16)y + 0xA1;
        p = t;
        u = (s16)x - 8;
        sub_080094CC(layer, u, p);
        for (i = 0; i < n; i++)
            sub_080094CC(layer, u, p - (i << 3));
    } else if ((s16)tileDY < 0) {
        u = (s16)x - 8;
        sy = y;
        sub_080094CC(layer, u, sy);
        n = -tileDY;
        for (i = 0; i < n; i++)
            sub_080094CC(layer, u, sy - i * -8);
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
        s32 a, b, c, d;
        a = (s16)x + gUnk_03003170.offX;
        b = (s16)y + gUnk_03003170.offY;
        c = (s16)a + layer->w0;
        d = (s16)b + layer->w1;
        offsets += layer->pad14 * 2;
        offsets[0] = (s16)S16_8009594(c) & 0xFF;
        offsets[1] = (s16)S16_8009594(d) & 0xFF;
    }
}
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
/* [LoadWorldMapArea] Rejects while the map running flag or its task control is active. Stores map-set/area
 * indices, sets callback sub_0800A998, resolves/decompresses the map record and its cell-plane
 * pointer/dimensions, clears camera offsets and starts task 0x03003430. A guarded map-set 5/area 13 path
 * instead constructs a 30-by-32 cell plane and loads special background assets. Returns 0 when busy and 1
 * after scheduling. It does not validate resource indices or establish peer synchronization by itself. */
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
/* [UpdateWorldMapTileAnimationsAndBlend] Applies map-set/area-specific blend profiles and updates four
 * background tile-animation streams. Enabled period entries increment 16-bit timers; when the prior timer
 * reaches its period, reset it and advance/wrap the frame counter. When a timer is zero, submits the selected
 * graphics frame to VRAM 0x06007000 plus stream *0x400. Frame limits select a normal/alternate animation
 * layout from the map set. Numerous map/scene conditions bypass parts or all of the update; periods count
 * calls rather than guaranteeing elapsed video frames. */
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
/* [AdvanceWorldMapTileAnimationCounters] Advances the same four map tile-animation frame/timer pairs used by
 * sub_08009B84, retaining the map-set/area and scene-flag exclusions. Uses the prior 16-bit timer value for
 * the period comparison, resets/advances when it reaches the period, and wraps at the selected frame limit.
 * This sibling performs no graphics transfer or blend update. Matched world-scene logic calls it while the map
 * background task is waiting on signal 0x514C8. */
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
        u32 index = 0;
        register struct MapAnim005 *base asm("ip") = &animState005;
        struct MapPeriods005 *periods;
        u16 *limitBase;
        u16 *frames;
        u16 *limit;
        register u32 temp asm("r0");
        u32 value;
        u32 offset;
        u16 *entry;
        u16 *timer;
        u32 limitCount;
        register struct MapAnim005 *state asm("r5") = &animState005;
        asm("" : "+r"(index), "+r"(base) : "r"(state));
        temp = (u32)animPeriods005;
        
        periods = (struct MapPeriods005 *)temp;
        
        limitBase = animLimits005;
        
        frames = base->frames;
        
        temp = alternate << 1;
        limit = (u16 *)(temp + (u32)limitBase);
        
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
    struct T06SysA298 *sys=&t06_sysA298;
    struct T06HeaderA298 *map=sys->header;
    sys->previous=sys->data;
    sys->data=(u8 *)map+16+map->w*map->h*6;
    sys->w=map->w;
    {u16 height=map->h;
    u16 *out=&sys->h;
    *out=height;}
    {u16 *out=&sys->y;
    *out=0;out--;*out=0;}
}
/* [SwitchWorldMapAreaCellData] Changes the current area index within the selected map set, resolves its
 * resource and selects raw or decompressed map data. Saves the old primary cell-plane pointer as the alternate
 * pointer, installs the new primary plane after the header and three tile planes, updates primary width/height
 * and clears camera scroll. Does not reconfigure display backgrounds, schedule a new map task, validate
 * indices or update alternate dimensions. Stores the area low halfword; the first resource lookup still uses
 * the full input index. */
void sub_0800A298(u32 index)
{
    u8 *resource;
    struct T06HeaderA298 *map;
    struct T06SysA298 *sys=&t06_sysA298;
    sys->current=index;
    resource=(u8 *)sub_08007290(t06_levelsA298[sys->level].resources[index]);
    sys->resource=resource;
    {u16 *current=&sys->current;
    if(t06_levelsA298[sys->level].resources[*current]&0x40000000)
        map=(struct T06HeaderA298 *)(resource+16);
    else map=sub_08000BC8((u32 *)(resource+16),&sys->allocation);
    sys->header=map;}
    t06_updateA298();
}
extern s32 t06_musicA34C(u32) asm("sub_08058688");
extern s32 t06_stopA34C(s32) asm("sub_080586B4");
extern s32 t06_checkA34C(s32) asm("sub_08057AE8");
/* [UpdateWorldMapMusic] Updates world-map music from the supplied map-set/context, current world-map
 * level/area fields and scene/event queries. Depending on its branch it leaves tracked music unchanged,
 * requests a song through 58688, or stops tracked music through 586B4. The ordinary matched C was read
 * completely. Witnessed non-multiplayer dispatch includes map-set 11 requesting song 0x187, map-set 14
 * requesting 0x186 and map-set 21 requesting 3. These numeric IDs are not assigned track titles or location
 * names. */
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
/* [TaskUpdateWorldMapBackgrounds] Task callback for the loaded world-map backgrounds. Initializes layers from
 * the local player position, selects map audio, handles reload requests by waiting on signal 0x514C8 and
 * rebuilding display/layer state, updates layers 1..3 and animated tiles, and yields. Stops on the local
 * map-stop bit or the shared world-scene stop request, then writes terminal state 0x80000000. Initial
 * force-update state is incoming r10 until the first update; no fixed elapsed-frame guarantee is asserted. */
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
        { s16 *sy; register s16 *sx asm("r5"); i = 1; sy = &t06_sysA998.scrollY; sx = sy - 1;
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

/* [UpdateCameraFromWorldPosition] Updates camera scroll from Q8 world-position words, centering at pixel
 * offsets (120,96) with the stored tracking offsets. Selects primary/alternate map dimensions for upper bounds
 * and clamps negative scroll to zero. When map flag 0x10 is set, skips target tracking and restores
 * tracking-offset plus saved relative position after the clamp; therefore that mode does not guarantee the
 * final camera position remains clamped. Rewrites the input words using signed 16-bit pixel components while
 * preserving each low fractional byte. */
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
    s16 t=type;
    if(t==1)return v|t;
    return (u8)v;
}
/* [DecodeMapCellAttributeAtPosition] Uses two-byte map-cell stride at Q8 world position (x >> 11, y >> 11),
 * but loads a 32-bit word at the cell address to extract bits 8..11 and bit 12; separately reads the cell's
 * low byte as type. For a nonzero resourceId, obtains the selected map resource, reads signed-halfword
 * width/height at +0x10/+0x12, and uses cell base resource+0x20+6*width*height. Otherwise uses current map
 * state map0/mapW, with widths 90 and 60 for level 8 sub-areas 18 and 2/12. Forms a five-bit value from the
 * extracted bits; type 1 ORs bit 0, other types preserve its low byte. No collision/terrain meaning or
 * bounds/alignment safety is claimed. */
u32 sub_0800AE50(s32 x,s32 y,u32 resourceId)
{
    s32 width;
    register u8 *data asm("r2");
    u8 *cell;
    u32 word;
    u32 low;
    u32 result;
    u8 type;
    if(resourceId) {
        u8 *resource=(u8 *)sub_08007290(t06_resourceAE50(resourceId&~32,16));
        s16 *header=(s16 *)(resource+16);
        s32 height;
        s32 count;
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
union CellAEF4u { u8 raw; struct { u16 lo:4; u16 hi:4; u16 flo:4; u16 fhi:4; } __attribute__((packed)) b; } __attribute__((packed));
struct CellAEF4 { union CellAEF4u u; } __attribute__((packed));
/* [UpdateMapFootprintOccupancy] Converts pixelu16x/y totile coordinates, rejects start beyond map dimensions
 * and zerow/h, then loops ty..ty+h and tx-w/2..tx+w/2. Mark mode writes typesA/C with floor1, preserving
 * level11 type8; remove mode clears floor/typeC, restores floor from upper nibble forA, or clears floor on8.
 * Entire rectangle is not clipped. */
void sub_0800AEF4(u16 x, u16 y, u32 w, u32 h, s32 mode) {
    s16 tx = x >> 3;
    s16 ty = y >> 3;
    s16 i, j;
    struct CellAEF4 *cell;
    struct CellAEF4 *map;
    u8 t;
    u8 lo;
    u32 t2;

    if (tx > gUnk_03003170.mapW || (tx & 0x8000))
        return;
    if (ty > gUnk_03003170.mapH || (ty & 0x8000))
        return;
    if (w == 0 || h == 0)
        return;
    map = (struct CellAEF4 *)gUnk_03003170.map0;
    if (mode != 0) {
        u32 m = 0xF;
        for (j = ty; j < ty + h; j++) {
            for (i = tx - w / 2; i < tx + w / 2; i++) {
                cell = &map[i + j * gUnk_03003170.mapW];
                if (cell->u.b.flo && (t = cell->u.raw, (t & m) != 0xC)) {
                    if (gUnk_03003170.curLevel == 0xB) {
                        if (cell->u.raw != 8) {
                            cell->u.raw = 0xA;
                            cell->u.raw |= ((*(u32 *)cell << 20) >> 28) << 4;
                        }
                    } else {
                        cell->u.raw = 0xA;
                        cell->u.raw |= ((*(u32 *)cell << 20) >> 28) << 4;
                    }
                } else if (gUnk_03003170.curLevel == 0xB) {
                    if (cell->u.raw != 8)
                        cell->u.raw = 0xC;
                } else {
                    cell->u.raw = 0xC;
                }
                cell->u.b.flo = 1;
            }
        }
    } else {
        for (j = ty; j < ty + h; j++) {
            cell = map;
            for (i = tx - w / 2; i < tx + w / 2; i++) {
                cell = map; cell += i + gUnk_03003170.mapW * j;
                t2 = cell->u.raw;
                lo = (u8)t2 & 0xF;
                if (lo == 0xC) {
                    cell->u.b.flo = 0;
                    cell->u.raw = 0;
                } else if (lo == 0xA) {
                    cell->u.b.flo = (u8)t2 >> 4;
                    cell->u.raw = 0;
                } else if ((u8)t2 == 8) {
                    cell->u.b.flo = 0;
                }
            }
        }
    }
}
/* [ResolveMapCollisionDirection] Adds0x200 to fixed-point y and samples3x3 collision nibbles at
 * coordinate>>11. Flags bit0 selects map1 and bypasses the extra map0 flag transforms. Otherwise level8
 * variants select map widths90/60/default; coordinates at or outside the excluded zero-edge/bounds yield
 * code1. Flags bit1 ORs collision-code bit0 when the complete low byte equals1; flags bit2 clears a sample
 * when high-byte bit0x10 is set. Codes0..13 and neighbors redirect or block; default preserves direction.
 * Returns0 or input/redirected direction+1 without map or coordinate writes. */
s32 sub_0800B118(u8 direction, s32 x, s32 y, s32 flags)
{
    u32 cells[3][3];
    s32 centerX;
    s32 centerY;
    s32 i, j, nextI, nextJ, xx, yy;
    u16 *map;
    u16 width;
    u8 *cell;
    u32 t;

    y += 0x200;
    centerX = x >> 11;
    centerY = y >> 11;
    if (flags & 1) {
        map = gUnk_03003170.map1;
        i = -1;
        do {
            xx = centerX + i;
            j = -1;
            nextI = i + 1;
            do {
                yy = centerY + j;
                if (xx <= 0 || yy <= 0 || xx >= gUnk_03003170.width1 || yy >= gUnk_03003170.pad76) {
                    do {
                        cells[j + 1][i + 1] = 1;
                    } while (0);
                    nextJ = j + 1;
                } else {
                    cell = (u8 *)&map[xx + yy * gUnk_03003170.width1];
                    cells[j + 1][i + 1] = (*(u32 *)cell << 20) >> 28;
                    nextJ = j + 1;
                }
                j = nextJ;
            } while (j <= 1);
            i = nextI;
        } while (i <= 1);
    } else {
        do {
            if (gUnk_03003170.curLevel == 8 && gUnk_03003170.f90 == 18)
                width = 90;
            else if (gUnk_03003170.curLevel == 8 && (gUnk_03003170.f90 == 2 || gUnk_03003170.f90 == 12))
                width = 60;
            else
                width = gUnk_03003170.mapW;
            map = gUnk_03003170.map0;
        } while (0);
        i = -1;
        do {
            xx = centerX + i;
            j = -1;
            nextI = i + 1;
            do {
                yy = centerY + j;
                if (xx <= 0 || yy <= 0 || xx >= width || yy >= gUnk_03003170.mapH) {
                    nextJ = j + 1;
                    cells[nextJ][i + 1] = 1;
                } else {
                    cell = (u8 *)&map[xx + yy * width];
                    cells[j + 1][i + 1] = (*(u32 *)cell << 20) >> 28;
                    nextJ = j + 1;
                    if (flags & 2) {
                        t = cell[0];
                        if (t == 1)
                            cells[nextJ][i + 1] |= t;
                    }
                    if ((flags & 4) && (cell[1] & 0x10))
                        cells[nextJ][i + 1] = 0;
                }
                j = nextJ;
            } while (j <= 1);
            i = nextI;
        } while (i <= 1);
    }
    switch(cells[1][1]) {
    case 0:return direction + 1;
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
    default:return direction + 1;
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
    default:return direction + 1;
    }
L_B338:
    switch(cells[0][1]-6) {
    case 0:goto L_B4E4;
    case 1:goto L_B4E4;
    case 2:goto L_B51C;
    case 3:goto L_B51C;
    case 4:goto L_B550;
    case 5:goto L_B588;
    default:return 0;
    }
L_B368:
    switch(cells[1][2]-2) {
    case 0:goto L_B47C;
    case 1:goto L_B47C;
    case 2:return 0;
    case 3:return 0;
    case 4:return 0;
    case 5:return 0;
    case 6:goto L_B51C;
    case 7:goto L_B51C;
    case 8:return 0;
    case 9:goto L_B588;
    case 10:goto L_B5C4;
    default:return 0;
    }
L_B3AC:
    switch(cells[2][1]-2) {
    case 0:goto L_B47C;
    case 1:goto L_B47C;
    case 2:goto L_B4B0;
    case 3:goto L_B4B0;
    case 4:return 0;
    case 5:return 0;
    case 6:return 0;
    case 7:return 0;
    case 8:return 0;
    case 9:return 0;
    case 10:goto L_B5C4;
    case 11:goto L_B5FC;
    default:return 0;
    }
L_B3F4:
    switch(cells[1][0]-4) {
    case 0:goto L_B4B0;
    case 1:goto L_B4B0;
    case 2:goto L_B4E4;
    case 3:goto L_B4E4;
    case 4:return 0;
    case 5:return 0;
    case 6:goto L_B550;
    case 7:return 0;
    case 8:return 0;
    case 9:goto L_B5FC;
    default:return 0;
    }
L_B434:
    if(cells[0][0]==0)return 3;
    if(cells[2][2]==0)return 1;
    return 0;
L_B446:
    if(cells[2][0]==0)return 3;
    if(cells[0][2]==0)return 5;
    return 0;
L_B458:
    if(cells[0][0]==0)return 5;
    if(cells[2][2]==0)return 7;
    return 0;
L_B468:
    if(cells[2][0]==0)return 1;
    if(cells[0][2]==0)return 7;
    return 0;
L_B47C:
    switch(direction) {
    case 0:return direction + 1;
    case 1:return direction + 1;
    case 2:return 2;
    case 3:return 2;
    case 4:return 6;
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
    case 4:return 4;
    case 5:return 8;
    case 6:return 8;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B4E4:
    switch(direction) {
    case 0:return 2;
    case 1:goto L_B63C;
    case 2:goto L_B63C;
    case 3:goto L_B63C;
    case 4:goto L_B63C;
    case 5:goto L_B63C;
    case 6:return 6;
    case 7:return 6;
    default:goto L_B63C;
    }
L_B51C:
    switch(direction) {
    case 0:return 8;
    case 1:return 4;
    case 2:return 4;
    case 3:goto L_B63C;
    case 4:goto L_B63C;
    case 5:goto L_B63C;
    case 6:goto L_B63C;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B550:
    switch(direction) {
    case 0:return 3;
    case 1:goto L_B63C;
    case 2:goto L_B63C;
    case 3:goto L_B63C;
    case 4:goto L_B63C;
    case 5:return 5;
    case 6:return 5;
    case 7:return 0;
    default:goto L_B63C;
    }
L_B588:
    switch(direction) {
    case 2:return 5;
    case 3:return 5;
    case 0:return 8;
    case 1:return 0;
    case 4:goto L_B63C;
    case 5:goto L_B63C;
    case 6:goto L_B63C;
    case 7:goto L_B63C;
    default:goto L_B63C;
    }
L_B5C4:
    switch(direction) {
    case 0:goto L_B63C;
    case 1:return 1;
    case 2:return 1;
    case 3:return 0;
    case 4:return 6;
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
    case 4:return 4;
    case 6:return 1;
    case 7:return 1;
    case 5:return 0;
    default:goto L_B63C;
    }
L_B63C:return direction+1;
}
extern u8 t06_displayB650 asm("gUnk_0300129C");
extern u16 t06_doneB650 asm("gUnk_03001F40");
/* [LoadBackgroundAsset] Resolves a background asset header, graphics and palette. Uses raw tilemap bytes at
 * header +4 when resource bit 30 is set, otherwise decompresses and later frees a temporary tilemap. Copies
 * graphics to the supplied destination, a 0x800-byte tilemap to VRAM + screenBlock * 0x800, and the requested
 * palette banks. Graphics header flags choose a 0x4000- or 0x8000-byte transfer and optional destination
 * +0x4000. Display-shadow bit 7 chooses direct CpuFastSet copies versus submitted chunks with scheduler waits.
 * It does not check transfer bounds or promise exact elapsed frames. */
void sub_0800B650(s32 a,s32 b,s32 c,u16 d,u16 e)
{
    u8 *map;
    u32 palettes=e;
    u32 *header=(u32 *)sub_08007290(a);
    u8 *graphics=(u8 *)sub_08007290(*header);
    void *palette=(void *)sub_08007290((u16)*header|0x70000);
    u16 i;
    u32 offset;
    u32 flag=0x40000000&a;
    if(flag)map=(u8 *)header+4;
    else {map=(u8 *)flag;map=sub_08000BC8(header+1,(void **)&map);}
    if(!(t06_displayB650&128)) {
        if(*header&0x10000000) {
            if(*header&0x20000000) {
                i=0;b<<=11;
                do {
                    const void *source;
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
/* [LoadBackgroundAssetWithGraphicsKeyOffset] Background asset loader with the same raw/decompressed tilemap,
 * graphics-size/destination branches, palette loading and cleanup as sub_0800B650. Its distinguishing behavior
 * adds global 0x03003470 to the header graphics key before resolving graphics. The tilemap and palette keys
 * are not offset. The meaning or allowed range of the global offset is not inferred as a character/class
 * identifier. */
void sub_0800B7DC(s32 a,s32 b,s32 c,u16 d,u16 e)
{
    u8 *map;
    u32 palettes=e;
    u32 *header=(u32 *)sub_08007290(a);
    u8 *graphics=(u8 *)sub_08007290(*header+gUnk_03003470);
    void *palette=(void *)sub_08007290((u16)*header|0x70000);
    u16 i;
    u32 offset;
    u32 flag=0x40000000&a;
    if(flag)map=(u8 *)header+4;
    else {map=(u8 *)flag;map=sub_08000BC8(header+1,(void **)&map);}
    if(!(t06_displayB7DC&128)) {
        if(*header&0x10000000) {
            if(*header&0x20000000) {
                i=0;b<<=11;
                do {
                    const void *source;
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
/* [LoadBackgroundTilemapScreenBlock] Loads exactly 0x800 tilemap bytes into VRAM + screenBlock * 0x800. Uses
 * resource +4 directly when bit 30 is set, otherwise decompresses that data to temporary memory, waits once
 * after transfer and frees the temporary. Display-shadow bit 7 selects direct CpuFastSet versus the submitted
 * transfer helper. Graphics and palettes are not loaded by this helper. */
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
/* [LoadBackgroundTilemapScreenBlockPair] Sibling tilemap loader copying exactly 0x1000 bytes, covering two
 * consecutive 0x800-byte screen blocks starting at the supplied screenBlock. Uses raw resource +4 or a
 * decompressed temporary, and chooses direct versus submitted copies from display-shadow bit 7. Waits and
 * frees the temporary only when the resource was decompressed; does not load graphics or palettes. */
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
/* [IsWorldMapReadyFlagSet] Returns bit 6 of the world-map flags word, as 0 or 1. Matched map-update task
 * initializes flags to 1, sets this bit after its first completed update iteration and scheduler wait, and
 * replaces flags with 0x80000000 on exit. Cell-plane loader BAC4 also sets flags to 0x40. Readiness here is
 * this event/activity gate: the bit can coexist with pending reload bits and does not prove graphics-upload
 * completion or that every map resource has finished loading. */
u32 sub_0800BA6C(void)
{
    return (gUnk_03003170.flags >> 6) & 1;
}
/* [ClearLoadedMapLayerDimensionsAndTileOrigin] If the indexed layer has a nonzero data pointer, clears its
 * width, height and cached tile X/Y origin. Leaves the data pointer, layer offsets and camera-relative mode
 * intact. Does not validate the layer index. */
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
/* [GetPrimaryMapCellPointerAtPixelPosition] Returns a halfword-cell pointer into the primary map at 0x030031D8
 * using signed 16-bit pixel coordinates, arithmetic shift by 3 and primary-map width. Returns the pointer
 * without reading the cell or checking coordinates against map bounds. */
void *sub_0800BAA4(s16 x, s16 y) {
    struct TileSys *t = &gUnk_03003170;
    u16 *m = t->map0;
    s32 a = x;
    s32 b = y;
    s32 idx = (a >> 3) + (b >> 3) * t->width0;
    return m + idx;
}
/* [LoadWorldMapCellPlane] Looks up a cell resource key at ROM 0847846C + first index*0x74 + 0x10 + second
 * index*4 and resolves it. If key bit 0x40000000 is set, uses resource +0x10 directly; otherwise decompresses
 * resource +0x10 through 00BC8 using shared buffer pointer 030031D4. Stores the cell-plane pointer at body
 * +0x10 + 6*signed_width*signed_height, copies the two header halfwords to map-state +0x78/+0x7A, overwrites
 * all map flags with 0x40 and returns 1. Does not rebuild background layers, update every map-header field,
 * validate indices/dimensions or report a separate failure result. */
s32 sub_0800BAC4(s32 arg0, s32 arg1) {
    s32 index = arg1;
    u8 *table = (u8 *)gUnk_0847846C;
    s32 offset;
    u32 *entry;
    s32 temp_r2;
    void *var_r2;
    offset = index * 4 + arg0 * 0x74;
    
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
/* [RequestMapUpdateTaskStop] Sets bit 1 of map state 0x03003170 +0x9C. The matched map update task tests it at
 * its outer-loop boundary and exits to terminal state. The setter itself does not synchronously cancel or wait
 * for the task. */
void sub_0800BB40(void)
{
    gUnk_03003170.flags |= 2;
}
/* [RequestMapBackgroundReload] Sets map flags 0xC while retaining other state. The update task responds by
 * waiting on signal 0x514C8, then rebuilding background state and clearing these bits after wakeup. It
 * requests a deferred reload rather than reloading immediately. */
void sub_0800BB54(void)
{
    gUnk_03003170.flags |= 0xC;
}
/* [IsMapBackgroundReloadPending] Returns 1 when either of map flags 0x4 or 0x8 is set, otherwise 0. These are
 * the deferred background-reload flags tested and cleared by the map update task. The helper reduces their
 * combined value to a boolean. */
u32 sub_0800BB68(void)
{
    u32 r = gUnk_03003170.flags & 0xC;
    if (r != 0)
        r = 1;
    return r;
}
/* [SetCameraTrackingOffset] Stores the low 16 bits of the two inputs at map state +0x80/+0x82. The camera
 * updater adds these values to the target pixel coordinates before centering and subtracts them when caching
 * relative position. Scene effects also vary these fields for camera movement/shake. This setter does not
 * directly write final scroll or perform bounds checks. */
void sub_0800BB80(u16 a, u16 b)
{
    gUnk_03003170.f80 = a;
    gUnk_03003170.f82 = b;
}
/* [SetSceneDrawOffset] Stores the input low halfwords at map state +0x84/+0x86. Background scrolling adds
 * these offsets, while world-pixel-to-screen projection subtracts them together with camera scroll. These
 * fields are distinct from the camera-tracking offsets at +0x80/+0x82. */
void sub_0800BB94(u16 a, u16 b)
{
    gUnk_03003170.offX = a;
    gUnk_03003170.offY = b;
}
/* [SetMapLayerSourceScroll] When scene flag query sub_0800CCCC is zero, stores the two low halfwords in
 * indexed layer +8/+0xA. The layer updater adds them to camera scroll in camera-relative mode and uses them
 * directly as source scroll in absolute mode. Leaves the values unchanged when the predicate is nonzero; no
 * map/layer range validation is performed. */
void sub_0800BBA8(u16 i, u16 a, u16 b)
{
    if (sub_0800CCCC() == 0)
    {
        gUnk_03003170.layers[i].w2 = a;
        gUnk_03003170.layers[i].w3 = b;
    }
}
/* [SetMapLayerDisplayScrollOffset] When scene flag query sub_0800CCCC is zero, stores the two low halfwords in
 * indexed layer +4/+6. The updater adds these after camera/source and scene draw offsets when writing the
 * background display-scroll shadow. These fields do not change which source map cells are copied. */
void sub_0800BBD8(u16 i, u16 a, u16 b)
{
    if (sub_0800CCCC() == 0)
    {
        gUnk_03003170.layers[i].w0 = a;
        gUnk_03003170.layers[i].w1 = b;
    }
}
/* [WorldPixelsToSceneDrawPosition] Converts signed 16-bit world-pixel coordinates to two screen draw-position
 * halfwords by subtracting camera scroll plus the scene draw offsets. Returns 1 unconditionally, performs no
 * visibility test, and consumes only the four register arguments; extra stack words at some call sites do not
 * establish extra semantic parameters. */
u32 sub_0800BC08(s16 x, s16 y, s16 *out_x, s16 *out_y) {
    *out_x = (s16)x - (gUnk_03003170.scrollX + gUnk_03003170.offX);
    *out_y = (s16)y - (gUnk_03003170.scrollY + gUnk_03003170.offY);
    return 1;
}
/* [GetMapCellSpritePriority] Reads the primary or alternate map cell at unsigned pixel coordinates shifted
 * right by three. Maps cell bits 14..15 values 0/1/2 to sprite-priority values 2/1/3. Encoding 3 returns the
 * original incoming X value left in r0, not a normalized priority; this path is preserved original-register
 * behavior. Matched actor renderers use the result as the sprite draw priority. It does not check map bounds
 * or guarantee a result in 1..3. */
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
        
        switch ((s32)(*(u32 *)(map + idx) << 16 >> 30)) {
        case 0: r = 2; break;
        case 1: r = 1; break;
        case 2: r = 3; break;
        }
    }
    return r;
}
/* [GetMapCellLowByteAtQ8Position] Chooses primary or alternate map pointer and width from the third argument,
 * converts signed Q8 world coordinates to 8-pixel tile indices by arithmetic right shift 11, and returns only
 * the cell's low byte. Does not return the whole map halfword or check bounds. */
u32 sub_0800BCA0(s32 x, s32 y, s32 which)
{
    register u16 *map asm("r3"); u16 *w; register s32 ix asm("r1"); s32 iy;
    if (which != 0) { map = gUnk_03003170.map1; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width1; }
    else { map = gUnk_03003170.map0; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width0; }
    {
        register u8 *cell asm("r0");
        ix = (ix + iy * *w) * 2;
        
        cell = (u8 *)map + ix;
        return *cell;
    }
}
/* [LoadBackgroundAssetAtRelativeScreenBlock] Forwards the asset key and graphics destination unchanged to
 * 0x0800B650, adding 28 to the caller screen-block parameter before that loader computes VRAM +
 * screenBlock*0x800. Narrows the fourth palette argument and fifth stack argument to u16 and forwards them. No
 * validation restricts the relative block to 0..3 or establishes safe VRAM bounds; no overlay/story/UI title
 * is inferred. The underlying loader retains its decompression, transfer, palette and scheduler behavior. */
void sub_0800BCDC(s32 a, s32 b, s32 c, u16 d, u16 e) {
    sub_0800B650(a, b + 0x1c, c, d, e);
}
/* [LoadBackgroundAssetWithGraphicsKeyOffsetAtRelativeScreenBlock] Forwards the asset key and graphics
 * destination unchanged to 0x0800B7DC, adding 28 to the caller screen-block parameter before that loader
 * computes VRAM + screenBlock*0x800. Narrows the fourth palette argument and fifth stack argument to u16 and
 * forwards them. No validation restricts the relative block to 0..3 or establishes safe VRAM bounds; no
 * overlay/story/UI title is inferred. The underlying loader retains its decompression, transfer, palette and
 * scheduler behavior. */
void sub_0800BCFC(s32 a, s32 b, s32 c, u16 d, u16 e) {
    sub_0800B7DC(a, b + 0x1c, c, d, e);
}
/* [IsLastAreaInCurrentMapSet] Returns whether the current area index at map state +0x90 equals the selected
 * map-set record count minus one. The count comes from the first halfword of a 0x74-byte table record selected
 * by map state +0x8C. This is an index/table query, not proof that the game or dungeon has been completed; it
 * does not validate the count or index. */
u32 sub_0800BD1C(void)
{
  u16 lv;
  if ((gUnk_0847846C[gUnk_03003170.curLevel].count - 1) == gUnk_03003170.f90)
  {
    return 1;
  }
  return 0;
}
/* [SetMapLayerCameraRelativeMode] Stores the input low halfword in indexed layer +0x16. The layer updater uses
 * nonzero to add source-scroll fields to the input camera position, and zero to use those source-scroll fields
 * as absolute coordinates. This is not a layer visibility toggle and does not normalize the stored value to
 * 0/1. */
void sub_0800BD48(s32 i, u16 v)
{
    gUnk_03003170.layers[i].s16 = v;
}
/* [TaskManageWorldSceneLifetime] Captures the starting scheduled-task count, initializes each player and the
 * map, field-item and actor-effect resources, including background task startup. Enables the guarded
 * song-playback flag. Waits for a link error, scene-exit condition or stop request, then stops all music
 * players, requests scene-task termination and releases effect/task pools. Wakes signals 0x514C8 and
 * 0x11201100, then yields until the scheduled-task count is no greater than the entry count. The mode argument
 * controls flag bit 1; its full meaning is not asserted. */
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

/* [TaskSelectWorldMapDestination] Marks world-map selection active before initializing its graphics and player
 * cursor state. */
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
    s16 q;
    s32 dbg;
    u8 t;

    while (waitBEC0() == 0)
        sub_080003F0();
    dbg = 0;
    if ((flagsBEC0 >> 3) & 1)
        sel = 0;
    else
        sel = stateBEC0->f0;
    active = 0;
    cnt = 0;
    flagsBEC0 |= 0x20;
    sub_08068384();
    initBEC0(&sprA, 0x50006, 4, -1, 0);
    sprA.f28 = 0;
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
        fillBEC0(4, 2, 1, 0xE, 0xC, 0);
    }
    regsBEC0[4] = 0;
    regsBEC0[5] = 0;
    regsBEC0[6] = 0;
    regsBEC0[7] = 0;
    regsBEC0[2] = 0;
    regsBEC0[3] = 0;
    initBEC0(&sprB, 0x500C3, 4, 0xC, 0);
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
                q = dir;
                if (q != 0) {
                    playersBEC0[me].p144->dir = q - 1;
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
    for (i = 0; i < n; i++) {
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
    next:;
    }
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
        while ((flagsBEC0 >> 24) & 1)
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
struct Rgb0C9F4 { u16 r:5, g:5, b:5, x:1; };
struct RgbWord0C9F4 { u32 r:5, g:5, b:5, x:1; };
/* Pulse a palette range: scale each color of a saved copy by a sine
 * brightness until *done becomes non-zero, then free the copy. */
/* [PulsePaletteRangeUntilFlag] Uses the low 16 bits of argument 0 as starting palette group and the upper 16
 * bits as group count. Retries allocation of count * 32 bytes with scheduler signal-1 waits, snapshots that
 * palette-shadow range through CpuSet, then repeatedly scales its saved RGB5 channels into the original shadow
 * range until the supplied word flag is nonzero. Each channel is min(31, (scale * originalChannel) >> 10);
 * destination bit 15 is preserved by masked writes. No count/start/pointer validation, allocation retry bound
 * or exclusive palette ownership is established. */
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
/* [ResetWorldSceneFlags] Clears the entire scene-control word at 0x03003478. This includes the scene stop
 * request and pending centroid-area-attack flag; it does not reset the separate participant counter at
 * 0x03003474. The scene setup path sub_0807A4B4 calls it before selecting a saved scene entry. */
void sub_0800CB30(void) {
    gUnk_03003478 = 0;
}
/* [StartWorldSceneLifetimeTask] Initializes task control 0x030034B0 with callback sub_0800BD5C, a 0x400-byte
 * allocated stack, stack pointer base +0x3FC, state/flags field +8 equal to 0x64 and null destructor. Starts
 * it with the input mode. It does not guard stack-allocation failure. Character selection and successful lobby
 * completion call it with modes 0 and 1 respectively. */
void sub_0800CB3C(s32 a) {
    gUnk_030034B0[3] = (s32) sub_0800BD5C;
    gUnk_030034B0[8] = (s32) sub_08001494(0x400);
    gUnk_030034B0[4] = gUnk_030034B0[8] + 0x3FC;
    gUnk_030034B0[2] = 0x64;
    gUnk_030034B0[9] = 0;
    sub_08000274(gUnk_030034B0, a);
}
/* [IsWorldSceneStopRequested] Returns bit 0 of scene flags 0x03003478 as 0 or 1. World-scene lifetime and
 * map/actor tasks use this query to leave their update loops. It is a stop request, not proof that all tasks
 * have completed cleanup. */
s32 sub_0800CB78(void) {
    return gUnk_03003478 & 1;
}
/* [ClearWorldSceneStopRequest] Clears only scene flag bit 0 at 0x03003478, retaining all other bits. The
 * paired query is consumed as the world-scene stop condition. No direct C caller for this clear helper was
 * found at the pinned revision. */
void sub_0800CB88(void) {
    gUnk_03003478 &= ~1;
}
/* [IsMultiplayerWorldScene] Returns bit 1 of scene-flags word 03003478 as 0 or 1 without changing it.
 * World-scene lifetime task BD5C initializes this bit from its start argument. The complete flags word is also
 * reset by CB30 and restored from scene copies elsewhere, so BD5C is not the only operation that can write
 * this bit. */
s32 sub_0800CB9C(void) {
    return ((u32) gUnk_03003478 >> 1) & 1;
}
/* [RequestWorldSceneStop] Sets scene flag bit 0 at 0x03003478 while preserving all other bits. The
 * scene-lifetime task sets it before releasing pools, and map/actor tasks leave their loops when the paired
 * query observes it. Setting the bit does not itself cancel or wait for any task. */
void sub_0800CBAC(void) {
    gUnk_03003478 |= 1;
}
