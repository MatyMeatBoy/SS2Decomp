#include "global.h"

extern void *gUnk_030031D4;

void sub_08009088(u8 a, u8 b, u8 c, u8 d)
{
    gUnk_03001250[0x3c / 2] = a | (b << 4) | (c << 8) | (d << 12);
}
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080090B0);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009138);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080092C8);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080093E4);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_080094CC);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009594);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009930);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_08009B84);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A03C);
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
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A34C);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800A998);
#ifdef NONMATCHING
struct T06SysAD04 {u8 pad[0x70];u16 w,h,w1,h1,mapW,mapH;s16 x,y;u16 offX,offY,pad84,pad86,relX,relY;u8 pad8C[16];u32 flags;};
extern struct T06SysAD04 t06_sysAD04 asm("gUnk_03003170");
static inline void t06_finishAD04(struct T06SysAD04 *base)
{
    register struct T06SysAD04 *saved asm("ip")=base;
    register s16 *x asm("r4")=&saved->x;
    register s16 *y asm("r5");
    if(*x<0)*x=0;
    y=&saved->y;
    if(*y<0)*y=0;
    if(!(saved->flags&16)) {
        saved->relX=(u16)*x-saved->offX;
        saved->relY=(u16)*y-saved->offY;
    } else {
        *x=base->offX+base->relX;
        {register u8 offset asm("r4")=0x82;register u16 *relative asm("r1")=&base->relY;register u32 value asm("r1")=*relative;register u32 other asm("r2")=*(u16 *)((u8 *)base+offset);*y=value+other;}
    }
}
static inline u16 *t06_offsetAD04(u16 *p,u16 offset) {return (u16 *)((u8 *)p+offset);}
s32 sub_0800AD04(s32 *px,s32 *py,s32 layer)
{
    register s32 *result asm("r0")=px;
    u32 x=((u32)*px<<8)>>16;
    u32 y=((u32)*py<<8)>>16;
    register struct T06SysAD04 *sys asm("r3")=&t06_sysAD04;
    register s32 max asm("r1");
    register u16 *height asm("r1");
    register s16 *scroll asm("r4");
    register s32 current asm("r2");
    if(!(sys->flags&16)) {
        register u16 *offset asm("r2")=&sys->offX;
        register u32 temp asm("r5")=x;
        register s32 value asm("r1")=(s16)temp;
        value+=*offset;value-=120;
        offset=(u16 *)&sys->x;
        *offset=value;
        offset=t06_offsetAD04(offset,6);
        temp=y;value=(s16)temp;
        value+=*(volatile u16 *)offset;value-=96;
        offset=(u16 *)&sys->y;
        *offset=value;
    }
    if(layer) {
        scroll=&sys->x;current=*scroll;
        max=(sys->w1-30)*8;
        if(current>max)*scroll=max;
        scroll=&sys->y;current=*scroll;
        height=&sys->h1;
    } else {
        scroll=&sys->x;current=*scroll;
        max=(sys->w-30)*8;
        if(current>max)*scroll=max;
        scroll=&sys->y;current=*scroll;
        height=&sys->h;
    }
    max=(*height-20)*8;
    if(current>max)*scroll=max;
    t06_finishAD04(sys);
    {u32 lowX=(u8)*px;
    u32 lowY=(u8)*py;
    *px=lowX+((s32)(x<<16)>>8);
    *py=lowY+((s32)(y<<16)>>8);}
    return (s32)result;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800AD04);
#endif
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
struct T06CellAEF4 {u8 type,flags;};
extern u16 t06_widthAEF4 asm("gUnk_030031E8");
void sub_0800AEF4(s32 arg0, s32 arg1, u32 arg2, s32 arg3, s32 arg4) {
    s32 sp0;
    struct T06CellAEF4 *sp4;
    u32 sp8;
    u32 spC;
    u32 sp10;
    u32 sp14;
    u32 sp18;
    s16 temp_r4;
    s32 temp_r1_5;
    s32 var_r2;
    s32 var_r2_2;
    struct T06CellAEF4 *temp_r3;
    struct T06CellAEF4 *temp_r3_2;
    u16 var_r4;
    u32 temp_r0;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r1_4;
    u32 temp_r2;
    u32 temp_r2_2;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r4_2;
    u8 temp_r0_2;
    u8 temp_r1_3;
    u8 var_r0;

    sp0 = arg3;
    temp_r0 = (u32) (arg0 << 0x10) >> 0x13;
    temp_r1 = (u32) (arg1 << 0x10) >> 0x13;
    if ((s32) temp_r0 > (s32) gUnk_03003170.mapW) {
        return;
    }
    if (temp_r0 & 0x8000) {
        return;
    }
    temp_r4 = (s16) temp_r1;
    sp18 = temp_r1 << 0x10;
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
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800B118);
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
#ifdef NONMATCHING
u32 sub_0800BC08(s32 x, s32 y, s16 *out_x, s16 *out_y)
{
    u8 *base = (u8 *)&gUnk_03003170;
    s32 ox = *(u16 *)(base + 0x84) + *(u16 *)(base + 0x7C);
    s32 oy = *(u16 *)(base + 0x86) + *(u16 *)(base + 0x7E);
    *out_x = (s16)(x - ox);
    *out_y = (s16)(y - oy);
    return 1;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BC08);
#endif
#ifdef NONMATCHING
u32 sub_0800BC44(u32 x, u32 y, u32 alternate)
{
    u8 *state = (u8 *)0x03003170;
    u32 *map;
    u32 width;
    u32 index;
    u32 tile;

    if (alternate != 0) {
        map = *(u32 **)(state + 0x6C);
        width = *(u16 *)(state + 0x74);
    } else {
        map = *(u32 **)(state + 0x68);
        width = *(u16 *)(state + 0x70);
    }
    index = (x >> 3) + (y >> 3) * width;
    tile = *(u32 *)((u8 *)map + index * 2);
    switch ((tile >> 14) & 3) {
    case 0: return 2;
    case 1: return 1;
    case 2: return 3;
    default: return 0;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BC44);
#endif
#ifdef NONMATCHING
u32 sub_0800BCA0(s32 x, s32 y, s32 which)
{
    u8 *map; u16 *w; s32 ix, iy;
    if (which == 0) { map = (u8 *)gUnk_03003170.map0; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width0; }
    else { map = (u8 *)gUnk_03003170.map1; ix = x >> 11; iy = y >> 11; w = &gUnk_03003170.width1; }
    return map[(ix + iy * *w) * 2];
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BCA0);
#endif
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
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800BEC0);
INCLUDE_ASM("asm/nonmatchings/code_08009088", sub_0800C9F4);
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
