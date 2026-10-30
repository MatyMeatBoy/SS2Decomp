#include "global.h"
extern void sub_08065158(void *,s32,s32,s32,s32);
extern void sub_0805E0C4(void);
extern void sub_0805D854(void);
extern void sub_0805B688(void);
extern u32 gUnk_03005D60;
struct PlayerReset61 {u8 pad[0xC6];u16 reset;u8 tail[0x84];};
extern struct PlayerReset61 gReset61[] asm("gUnk_03003CE0");
extern struct Player61 gParty61[] asm("gUnk_03003CE0");
struct Player61 { u8 pad[0x38]; s16 limit; u8 rest[0x112]; };
extern u32 sub_0805D2E0(void *);
extern u32 sub_0805D278(void *);
extern u32 sub_0805D210(void *);

u32 sub_0805D2E0(void *arg0);

extern u16 gUnk_03005D5C;

extern s32 gUnk_03005D64;
extern u8 gUnk_03005D70;

extern s32 gUnk_03005D68;
extern u8 gUnk_03005D6C;

s32 sub_0805D094(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x100)==4) {
        if(sub_0805D210(base+0x100)!=0) M2C_FIELD((void *)gUnk_030034E0,u8 *,0x109)=1;
        else M2C_FIELD((void *)gUnk_030034E0,u8 *,0x109)=0;
    } else *(u8 *)(base+0x109)=0;
}
s32 sub_0805D0E8(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x110)==3) {
        if(sub_0805D278(base+0x110)!=0) M2C_FIELD((void *)gUnk_030034E0,u8 *,0x119)=1;
        else M2C_FIELD((void *)gUnk_030034E0,u8 *,0x119)=0;
    } else *(u8 *)(base+0x119)=0;
}
s32 sub_0805D13C(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x120)==5) {
        if(sub_0805D2E0(base+0x120)!=0) M2C_FIELD((void *)gUnk_030034E0,u8 *,0x129)=1;
        else M2C_FIELD((void *)gUnk_030034E0,u8 *,0x129)=0;
    } else *(u8 *)(base+0x129)=0;
}
s32 sub_0805D190(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x130)==7) *(u8 *)(base+0x13A)=1;
    else { gReset61[sub_080020F4()].reset=0; M2C_FIELD((void *)gUnk_030034E0,u8 *,0x13A)=0; }
}
s32 sub_0805D1E0(void) {
    u8 *base=(u8 *)gUnk_030034E0;
    if(*(u16 *)(base+0x140)==6) *(u8 *)(base+0x149)=1;
    else *(u8 *)(base+0x149)=0;
}
u32 sub_0805D210(void *state) {
    u8 *resource;
    register s32 offset asm("r1");
    register struct Player61 *player asm("r1");
    if(state!=0 && *(u16 *)state==4 && M2C_FIELD(state,u8 *,8)==0) {
        resource=(u8 *)sub_08007290(M2C_FIELD(state,u16 *,2)|0xD0000);
        if((*(u16 *)(resource+0xA2)>>sub_0801DE60())&1) {
            offset=sizeof(struct Player61)*sub_080020F4();
            asm volatile("" : "+r" (offset));
            player=(void *)((u8 *)gParty61+offset);
            asm volatile("" : "+r" (player));
            if(resource[0xA0]<=player->limit) return 1;
        }
    }
    return 0;
}
u32 sub_0805D278(void *state) {
    u8 *resource;
    register s32 offset asm("r1");
    register struct Player61 *player asm("r1");
    if(state!=0 && *(u16 *)state==3 && M2C_FIELD(state,u8 *,8)==0) {
        resource=(u8 *)sub_08007290(M2C_FIELD(state,u16 *,2)|0xC0000);
        if((*(u16 *)(resource+0xA2)>>sub_0801DE60())&1) {
            offset=sizeof(struct Player61)*sub_080020F4();
            asm volatile("" : "+r" (offset));
            player=(void *)((u8 *)gParty61+offset);
            asm volatile("" : "+r" (player));
            if(resource[0xA0]<=player->limit) return 1;
        }
    }
    return 0;
}
u32 sub_0805D2E0(void *arg0) {
    s32 temp_r4;
    s32 player;
    s16 *limitPtr;
    u8 resourceValue;
    s16 limit;

    if ((arg0 != NULL) && (M2C_FIELD(arg0, u16 *, 0) == 5) && (M2C_FIELD(arg0, u8 *, 8) == 0)) {
        temp_r4 = sub_08007290(M2C_FIELD(arg0, u16 *, 2) | 0xE0000);
        if ((((s32) M2C_FIELD(temp_r4, u16 *, 0xA2) >> sub_0801DE60()) & 1) != 0) {
            player = sub_080020F4();
            limitPtr = (s16 *)((u8 *)gUnk_03003CE0 + player * 0x14C);
            resourceValue = *(u8 *)((u8 *)temp_r4 + 0xA1);
            limit = *(s16 *)((u8 *)limitPtr + 0x38);
            if (resourceValue <= limit) {
                return 1U;
            }
        }
    }
    return 0U;
}
u32 sub_0805D348(void)
{
  u8 *entry = ((u8 *) gUnk_030034E0) + 0x150;
  int i;
  for (i = 0; i <= 0x18; i++, entry += 0x10)
  {
    if (((*((u16 *) entry)) == 0xA) && ((*((u32 *) (entry + 4))) <= 0x1869F))
    {
      return 1;
    }
  }

  return 0;
}
void *sub_0805D37C(s32 x, s32 y, s32 key) {
    u8 *entry;
    u32 i;
    entry = gUnkP_03005D58;
    i = 0;
    do {
        if (*(u16 *)(entry + 0xA) & 1) {
            s32 dx;
            s32 dy;
            dx = (x - *(s32 *)entry) >> 8;
            if (dx < 0) dx = -dx;
            dy = (y - *(s32 *)(entry + 4)) >> 8;
            if (dy < 0) dy = -dy;
            if (dx <= 7 && dy <= 7 && key == *(u16 *)(entry + 8)) return entry;
        }
        i++;
        entry += 0x20;
    } while (i <= 0xF);
    return 0;
}
s32 sub_0805D3D4(void) {
    s32 var_r3;
    u32 var_r2;
    void *var_r1;

    var_r3 = 0;
    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x150;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0) == 0xA) {
            var_r3 += M2C_FIELD(var_r1, s32 *, 4);
        }
        var_r1 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x18U);
    return var_r3;
}
s32 sub_0805D404(void) {
    s32 var_r3;
    u32 var_r2;
    void *var_r1;

    var_r3 = 0;
    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x2E0;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0) == 0xA) {
            var_r3 += M2C_FIELD(var_r1, s32 *, 4);
        }
        var_r1 += 0x10;
        var_r2 += 1;
    } while (var_r2 <= 0x4AU);
    return var_r3;
}
void *sub_0805D434(void)
{
    u8 *entry = gUnk_03005D58;
    u32 i;
    for (i = 0; i < 16; i++, entry += 0x20)
        if ((*(u16 *)(entry + 0xA) & 3) == 0)
            return entry;
    return 0;
}
void *sub_0805D460(unsigned short id)
{
  u8 *entry = gUnk_03005D58;
  u32 i;
  for (i = 0; i < 16; i++, entry += 0x20)
  {
    if ((((*((u16 *) (entry + 0xA))) & 1) != 0) && ((*((u16 *) (entry + 0xC))) == ((u16) id)))
    {
      return entry;
    }
  }

  return 0;
}
void *sub_0805D498(unsigned short id)
{
  u8 *entry = gUnk_03005D58;
  u32 i;
  for (i = 0; i < 16; i++, entry += 0x20)
  {
    if (((*((u16 *) (entry + 0xA))) == 2) && ((*((u16 *) (entry + 0xC))) == ((u16) id)))
    {
      return entry;
    }
  }

  return 0;
}
s32 sub_0805D4C4(u16 arg0) {
    s32 var_r4;
    u32 var_r2;
    void *var_r1;

    var_r4 = 0;
    var_r1 = gUnk_03005D58;
    var_r2 = 0;
    do {
        if (M2C_FIELD(var_r1, u16 *, 0xC) == arg0) {
            M2C_FIELD(var_r1, s16 *, 0xA) = 0;
            M2C_FIELD(var_r1, u16 *, 0xC) = 0U;
            var_r4 = 1;
        }
        var_r2 += 1;
        var_r1 += 0x20;
    } while (var_r2 <= 0xFU);
    return var_r4;
}
void sub_0805D4F4(void) {
    u32 i;
    u8 *entry;
    entry = gUnkP_03005D58;
    gUnk_03005D5C = 1;
    i = 0;
    do {
        *(u16 *)(entry + 0xA) = 0;
        *(u16 *)(entry + 0xC) = 0;
        i++;
        entry += 0x20;
    } while (i <= 0xF);
}
void sub_0805D518(void) {
    u16 temp_r0;
    u32 var_r3;
    void *var_r2;

    var_r2 = gUnk_03005D58;
    var_r3 = 0;
    do {
        temp_r0 = 0x20 & M2C_FIELD(var_r2, u16 *, 8);
        if (temp_r0 == 0) {
            M2C_FIELD(var_r2, u16 *, 0xA) = temp_r0;
            M2C_FIELD(var_r2, u16 *, 0xC) = temp_r0;
        }
        var_r3 += 1;
        var_r2 += 0x20;
    } while (var_r3 <= 0xFU);
}
s32 sub_0805D548(s32 arg0) {
    u32 var_r2;
    void *var_r1;

    var_r2 = 0;
    var_r1 = gUnk_030034E0 + 0x150;
loop_1:
    if ((M2C_FIELD(var_r1, u16 *, 0) == 1) && (M2C_FIELD(var_r1, u16 *, 2) == arg0)) {
        return (s32) var_r2;
    }
    var_r1 += 0x10;
    var_r2 += 1;
    if (var_r2 > 0x18U) {
        return -1;
    }
    goto loop_1;
}
void sub_0805D580(u32 index)
{
  s8 *new_var;
  s32 new_var2;
  if (index <= 0x18)
  {
    new_var2 = gUnk_030034E0;
    new_var = (s8 *) ((((u8 *) new_var2) + (8 * (2 * index))) + 0x150);
    *((u16 *) (new_var + 0)) = 0;
  }
}
u32 sub_0805D5A0(void) {
    register u32 total asm("r3")=0;
    u32 j;
    u32 i;
    u32 result;
    u8 *entry;
    for(j=0,entry=(u8 *)gUnk_030034E0+0x150;j<=24;entry+=16,j++)
        if(*(u16 *)entry==10) total+=*(u32 *)(entry+4);
    result=total>>1;
    for(i=0;i<=24;i++) {
        register u8 *base asm("r0")=(u8 *)gUnk_030034E0;
        register u32 offset asm("r1")=i*16;
        asm volatile("" : "+r" (base), "+r" (offset));
        base+=offset;
        asm volatile("" : "+r" (base) : "r" (offset));
        if(*(u16 *)(base+0x150)==10) sub_0805D580(i);
    }
    return result;
}
s32 sub_0805D5F4(s32 start) {
    u8 *entry;
    s32 bestIndex=start;
    s32 index;
    s32 bestValue;
    if(bestIndex<0) bestIndex=0;
    entry=(u8 *)gUnk_030034E0+(bestIndex*16+0x150);
    bestValue=-1;
    for(index=bestIndex;index<=24;index++,entry+=16)
        if(*(u16 *)entry==10) {
            s32 value=*(s32 *)(entry+4);
            if(bestValue<value && value!=100000) { bestIndex=index; bestValue=value; }
        }
    if(bestValue<0) return -1;
    return bestIndex;
}
s32 sub_0805D650(s32 arg0) {
    register s32 temp_r0 asm("r0");
    s32 temp_r0_2;
    s32 var_r2;
    s32 var_r4;
    s32 var_r5;
    void *var_r3;

    var_r4 = arg0;
    if (var_r4 < 0) {
        var_r4 = 0;
    }
    var_r3 = (u8 *)gUnk_030034E0 + ((var_r4 * 0x10) + 0x2E0);
    var_r5 = -1;
    var_r2 = var_r4;
    temp_r0 = M2C_FIELD((void *)gUnk_030034E0,u16 *,0x6A) * 0xF;
    asm volatile("" : "+r" (temp_r0));
    if (var_r4 < temp_r0) {
        register s32 excluded asm("r6")=100000;
        s32 limit;
        asm volatile("" : "+r" (excluded));
        limit=temp_r0;
        do {
            if (M2C_FIELD(var_r3,u16 *,0) == 0xA) {
                temp_r0_2 = M2C_FIELD(var_r3,s32 *,4);
                if ((var_r5 < temp_r0_2) && (temp_r0_2 != excluded)) {
                    var_r4 = var_r2;
                    var_r5 = temp_r0_2;
                }
            }
            var_r2 += 1;
            var_r3 += 0x10;
        } while (var_r2 < limit);
    }
    if (var_r5<0) return -1;
    return var_r4;
}

void sub_0805D6B8(u16 a,u16 b) {
    u8 *entry=(u8 *)gUnk_03005D60;
    u32 i;
    for(i=0;i<=5;i++,entry+=0x28) {
        u32 result=sub_08000470(entry);
        if(result==0) {
            void *mem;
            M2C_FIELD(entry,u32 *,8)=0x34;
            mem=sub_08001494(0x800);
            M2C_FIELD(entry,void **,0x20)=mem;
            M2C_FIELD(entry,void (**)(void),0xC)=sub_0805B688;
            M2C_FIELD(entry,void **,0x10)=(u8 *)mem+0x7FC;
            M2C_FIELD(entry,u32 *,0x24)=result;
            sub_08000274(entry,a,b);
            break;
        }
    }
}
s32 sub_0805D720(u8 arg0, u8 arg1, u32 arg2, u32 arg3) {
    register u32 center asm("r2");
    register u32 half asm("r1");
    register u32 copy asm("r3");
    register u32 mask asm("r5");
    register u32 value asm("r0");
    u32 temp_r1;
    u32 temp_r1_2;
    u8 temp_r3;
    register u32 temp_r5 asm("r5");
    u32 temp_r6;
    register s32 var_r0 asm("r0");
    u32 var_r0_2;
    u32 var_r0_3;
    register u32 var_r1 asm("r1");
    register u32 flags asm("r2");
    register u32 one asm("r3");
    void *temp_r0;
    void *temp_r4;

    temp_r5=(u8)arg2;
    asm volatile("" : "+r" (temp_r5));
    temp_r6=(u8)arg3;
    var_r1=0;
    flags=gUnk_03005D70;
    one=1;
    asm volatile("" : "+r" (var_r1), "+r" (flags), "+r" (one));
    do {
        if(((s32)flags>>var_r1 & one)==0) { var_r0=var_r1; goto found; }
        var_r0=var_r1+1;
        asm volatile("" : "+r" (var_r0));
        var_r1=(u8)var_r0;
    } while(var_r1<=3);
    var_r0=255;
found:
    asm volatile("" : "+r" (var_r0));
    temp_r3 = var_r0;
    if (temp_r3 == 0xFF) {
        return 0;
    }
    temp_r4 = gUnk_03005D64 + (0x34 * temp_r3);
    M2C_FIELD(temp_r4, u8 *, 0x31) = temp_r3;
    value=(temp_r5>>1)+1;
    asm volatile("" : "+r" (value));
    M2C_FIELD(temp_r4,u16 *,0x28)=arg0-(-value);
    value=(temp_r6>>1)+1;
    asm volatile("" : "+r" (value));
    M2C_FIELD(temp_r4,u16 *,0x2A)=value+arg1;
    if (temp_r5 != 0) {
        var_r0_2 = 0x1C;
        if ((u32) temp_r5 <= 0x1CU) {
            var_r0_2 = temp_r5;
        }
    } else {
        var_r0_2 = 1;
    }
    M2C_FIELD(temp_r4, u16 *, 0x2c) = (u16) var_r0_2;
    if (temp_r6 != 0) {
        var_r0_3 = 0x12;
        if ((u32) temp_r6 <= 0x12U) {
            var_r0_3 = temp_r6;
        }
    } else {
        var_r0_3 = 1;
    }
    M2C_FIELD(temp_r4, u16 *, 0x2e) = (u16) var_r0_3;
    center=M2C_FIELD(temp_r4,u16 *,0x28);
    asm volatile("" : "+r" (center));
    value=M2C_FIELD(temp_r4,u16 *,0x2C);
    asm volatile("" : "+r" (value));
    half=value>>1;
    copy=half;
    asm volatile("" : "+r" (copy));
    value=center+copy;
    if((s32)value>30) M2C_FIELD(temp_r4,u16 *,0x28)=30-half;
    center=M2C_FIELD(temp_r4,u16 *,0x28);
    value=center-copy;
    mask=128;
    asm volatile("" : "+r" (mask));
    if(value&mask) M2C_FIELD(temp_r4,u16 *,0x28)=half;
    center=M2C_FIELD(temp_r4,u16 *,0x2A);
    asm volatile("" : "+r" (center));
    value=M2C_FIELD(temp_r4,u16 *,0x2E);
    asm volatile("" : "+r" (value));
    half=value>>1;
    copy=half;
    asm volatile("" : "+r" (copy));
    value=center+copy;
    if((s32)value>20) M2C_FIELD(temp_r4,u16 *,0x2A)=30-half;
    center=M2C_FIELD(temp_r4,u16 *,0x2A);
    value=center-copy;
    if(value&mask) M2C_FIELD(temp_r4,u16 *,0x2A)=half;
    M2C_FIELD(temp_r4, u8 *, 0x30) = 0;
    M2C_FIELD(temp_r4, void (**)(void), 0xC) = &sub_0805D854;
    while((M2C_FIELD(temp_r4, void **, 0x20)=(temp_r0=sub_08001494(0x400)))==NULL) sub_080003F0();
    M2C_FIELD(temp_r4, void * *, 0x10) = (void *) (temp_r0 + 0x3FC);
    M2C_FIELD(temp_r4, u32 *, 0x8) = 0x14;
    M2C_FIELD(temp_r4, u32 *, 0x0) = 0;
    M2C_FIELD(temp_r4, u32 *, 0x18) = 0;
    M2C_FIELD(temp_r4, u32 *, 0x24) = 0;
    sub_08000274(temp_r4, temp_r4);
    gUnk_03005D70 |= 1 << M2C_FIELD(temp_r4, u8 *, 0x31);
    return (s32) temp_r4;
}

#ifdef NONMATCHING
struct D854Window { u8 data[0x28]; u16 x, y, width, height; u8 state, number; u16 pad32; };
struct D854Video { u16 scrollX, scrollY; u8 pad4[0x2C]; u16 win0H, win1H, win0V, win1V, winIn, winOut; };
struct D854State { u8 pad[0x14A]; u16 palette; };
extern struct D854Video d854_video asm("gUnk_03001250");
extern struct D854State *d854_game asm("gUnk_03005CF4");
extern u16 d854_paletteTable[] asm("gUnk_084EBD38");
extern u16 d854_palette0 asm("gUnk_03001F40");
extern u16 d854_tiles[] asm("gUnk_03005740");
extern u8 gUnk_03005D70;
extern void d854_endTask(void) asm("sub_0800035C");
extern void d854_clearFlags(u16, u16, u16) asm("sub_080009F8");
extern s32 d854_clearRows(u32, u32) asm("sub_0801A664");

/* Animate a window's opening, steady display and closing states. */
void d854_impl(void *arg) asm("sub_0805D854");
void d854_impl(void *arg)
{
    struct D854Window *window = arg;
    u16 width, height;
    u32 delay;
    register s32 initialized asm("r7");
    u16 left, right, top, bottom, column, row;
    s32 leftEdge, rightEdge, topEdge, bottomEdge;
    window->state = 1;
    d854_video.scrollX = 0;
    d854_video.scrollY = 0;
    delay = 0;
    for (;;) {
        switch (window->state) {
        case 0:
            gUnk_03005D70 &= ~(1 << window->number);
            d854_endTask();
            /* The scheduler normally does not return from d854_endTask. */
        case 1:
            width = 0;
            height = 0;
            window->state = 2;
            d854_video.winIn = 0x101;
            d854_video.winOut = 0x3F3F;
            d854_palette0 = d854_paletteTable[d854_game->palette];
            initialized = 0;
            sub_08000B38();
            sub_0805865C(0xDC);
            break;
        case 2:
            if (sub_0800CC98() == 0) {
                if (initialized == 0) {
                    sub_080009C0(0, 0x4000, 1);
                    d854_palette0 = d854_paletteTable[d854_game->palette];
                    sub_08000B38();
                    initialized = 1;
                }
                d854_video.winIn = 0x101;
                d854_video.winOut = 0x3F3F;
            }
            width = (u16)(width + 2);
            if (width >= window->width) {
                width = window->width;
                height = (u16)(height + 2);
                if (height >= window->height) {
                    height = window->height;
                    window->state = 3;
                }
            }
            break;
        case 3:
            if (sub_0800CC98() == 0) {
                if (initialized == 0) {
                    sub_080009C0(0, 0x4000, 1);
                    d854_palette0 = d854_paletteTable[d854_game->palette];
                    initialized = 1;
                }
                d854_palette0 = d854_paletteTable[d854_game->palette];
                d854_video.winIn = 0x101;
                d854_video.winOut = 0x3F3F;
            }
            break;
        case 4:
            height = (u16)(height - 2);
            if (height & 0x8000) height = 0;
            width = (u16)(width - 2);
            if (width & 0x8000) width = 0;
            if (width == 0 && height == 0) {
                if (sub_0800CC98() == 0 && initialized == 1) {
                    d854_clearFlags(0, 0x4000, 1);
                    initialized = 0;
                }
                window->state = 5;
                delay = 0;
                d854_palette0 = 0;
                sub_08000B38();
            }
            break;
        case 5:
            d854_clearRows(~(window->height >> 1) + window->y, window->height + 2);
            if (delay++ > 3) window->state = 0;
            break;
        }
        if (window->state != 5 && window->state != 0) {
            left = window->x - (width >> 1);
            right = (u16)(window->x + (width >> 1)) + (width & 1);
            top = window->y - (height >> 1);
            bottom = (u16)(window->y + (height >> 1)) + (height & 1);
            if (sub_0800CC98() == 0) {
                leftEdge = left - 1;
                rightEdge = right + 1;
                topEdge = top - 1;
                bottomEdge = bottom + 1;
                d854_tiles[leftEdge + topEdge * 32] = 0xF120;
                d854_tiles[leftEdge + bottomEdge * 32] = 0xF126;
                d854_tiles[rightEdge + topEdge * 32] = 0xF122;
                d854_tiles[rightEdge + bottomEdge * 32] = 0xF128;
                for (column = left; column <= right; column++) {
                    d854_tiles[column + topEdge * 32] = 0xF121;
                    d854_tiles[column + bottomEdge * 32] = 0xF127;
                }
                for (row = top; row <= bottom; row++) {
                    d854_tiles[leftEdge + row * 32] = 0xF123;
                    d854_tiles[rightEdge + row * 32] = 0xF125;
                }
                d854_video.win1H = (((leftEdge * 8) + 3) << 8) | (((right + 2) * 8) - 3);
                d854_video.win1V = (((topEdge * 8) + 3) << 8) | (((bottom + 2) * 8) - 3);
                d854_clearRows(~(window->height >> 1) + window->y, window->height + 3);
            }
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D854);
#endif
#ifdef NONMATCHING
struct DC1CWindow { u8 data[0x28]; u16 x, y, width, height; u8 state, number; u16 pad32; };
struct DC1CVideo { u16 scrollX, scrollY; u8 pad4[0x2C]; u16 win0H, win1H, win0V, win1V; };
extern struct DC1CWindow *dc1c_windows asm("gUnk_03005D64");
extern u16 dc1c_tiles[] asm("gUnk_03005740");
extern struct DC1CVideo dc1c_video asm("gUnk_03001250");
extern s32 sub_0801A664(u32, u32);

/* Draw the border for the first free window and update its pixel bounds. */
void sub_0805DC1C(u8 x, u8 y, u8 width, u8 height)
{
    struct DC1CWindow *window;
    u8 index, limit;
    u16 left, right, top, bottom, column, row;
    u32 halfWidth, halfHeight;
    s32 leftEdge, rightEdge, topEdge, bottomEdge;
    u16 horizontal, vertical;
    index = 0;
    while ((gUnk_03005D70 >> index) & 1) {
        index++;
        if (index > 3) {
            index = 0xFF;
            break;
        }
    }
    if (index == 0xFF) return;
    window = &dc1c_windows[index];
    window->state = 1;
    dc1c_video.scrollX = 0;
    dc1c_video.scrollY = 0;
    window->x = x + (width >> 1) + 1;
    window->y = y + (height >> 1) + 1;
    if (width != 0) {
        limit = 28;
        if (width <= 28) limit = width;
    } else limit = 1;
    window->width = limit;
    if (height != 0) {
        limit = 18;
        if (height <= 18) limit = height;
    } else limit = 1;
    window->height = limit;
    halfWidth = window->width >> 1;
    if ((s32)(window->x + halfWidth) > 30) window->x = 30 - halfWidth;
    if ((window->x - halfWidth) & 0x80) window->x = halfWidth;
    halfHeight = window->height >> 1;
    if ((s32)(window->y + halfHeight) > 20) window->y = 30 - halfHeight;
    if ((window->y - halfHeight) & 0x80) window->y = halfHeight;
    left = window->x - halfWidth;
    right = (u16)(window->x + halfWidth) + (window->width & 1);
    top = window->y - halfHeight;
    bottom = (u16)(window->y + halfHeight) + (window->height & 1);
    leftEdge = left - 1;
    rightEdge = right + 1;
    topEdge = top - 1;
    bottomEdge = bottom + 1;
    dc1c_tiles[leftEdge + topEdge * 32] = 0xF120;
    dc1c_tiles[leftEdge + bottomEdge * 32] = 0xF126;
    dc1c_tiles[rightEdge + topEdge * 32] = 0xF122;
    dc1c_tiles[rightEdge + bottomEdge * 32] = 0xF128;
    for (column = left; column <= right; column++) {
        dc1c_tiles[column + topEdge * 32] = 0xF121;
        dc1c_tiles[column + bottomEdge * 32] = 0xF127;
    }
    for (row = top; row <= bottom; row++) {
        dc1c_tiles[leftEdge + row * 32] = 0xF123;
        dc1c_tiles[rightEdge + row * 32] = 0xF125;
    }
    horizontal = (((leftEdge * 8) + 3) << 8) | (((right + 2) * 8) - 3);
    vertical = (((topEdge * 8) + 3) << 8) | (((bottom + 2) * 8) - 3);
    if (window->number == 0) {
        dc1c_video.win1H = horizontal;
        dc1c_video.win1V = vertical;
    } else {
        dc1c_video.win0H = horizontal;
        dc1c_video.win0V = vertical;
    }
    sub_0801A664(~(window->height >> 1) + window->y, window->height + 3);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805DC1C);
#endif
void sub_0805DE98(void) {
    s32 temp_r4;
    s32 var_r6;
    register u32 var_r5 asm("r5");
    u32 var_r5_2;
    register u8 *flags asm("r7");
    register u32 one asm("r8");

    var_r5 = 0;
    do {
        if (((s32) gUnk_03005D70 >> var_r5) & 1) {
            register s32 *pool asm("r6")=&gUnk_03005D64;
            asm volatile("" : "+r" (pool));
            temp_r4 = 0x34 * var_r5;
            if (sub_08000470(*pool + temp_r4) != 0) {
                sub_080003A8(*pool + temp_r4);
            }
            gUnk_03005D70 &= ~(1 << var_r5);
        }
        var_r5 += 1;
    } while (var_r5 <= 3U);
    var_r5_2 = 0;
    flags=&gUnk_03005D6C;
    one=1;
    asm volatile("" : "+r" (one) : "r" (flags));
    var_r6 = 0;
    do {
        if (((s32)gUnk_03005D6C >> var_r5_2) & one) {
            if (sub_08000470(gUnk_03005D68 + var_r6) != 0) {
                sub_080003A8(gUnk_03005D68 + var_r6);
            }
            gUnk_03005D6C &= ~(one << var_r5_2);
        }
        var_r6 += 0x88;
        var_r5_2 += 1;
    } while (var_r5_2 <= 3U);
}

u32 sub_0805DF38(u32 unused0,u32 unused1,u32 unused2,u32 unused3,s32 duration,u32 resource)
{
    register u32 index asm("r2");
    register u32 counter asm("r1");
    register u32 flags asm("r2");
    register u32 bit asm("r3");
    register s32 found asm("r0");
    register u32 zero asm("r4");
    register u32 one asm("r5");
    register u8 *task asm("r6");
    void *memory;
    register u16 *cursor asm("r0");
    register u8 *address asm("r0");
    register u32 offset asm("r0");
    register u8 *base asm("r1");
    register s32 *basePtr asm("r1");
    counter=0;
    flags=gUnk_03005D6C;
    bit=1;
    asm volatile("" : "+r" (counter), "+r" (flags), "+r" (bit));
    do {
        if(((s32)flags>>counter & bit)==0) { found=counter; goto slot_found; }
        found=counter+1;
        asm volatile("" : "+r" (found));
        counter=(u8)found;
    } while(counter<=3);
    found=255;
slot_found:
    asm volatile("" : "+r" (found));
    index=(u8)found;
    if(index==255) return 0;
    basePtr=&gUnk_03005D68;
    asm volatile("" : "+r" (basePtr));
    offset=index*0x88;
    base=(u8 *)*basePtr;
    asm volatile("" : "+r" (offset), "+r" (base));
    task=base+offset;
    task[0x70]=index;
    M2C_FIELD(task,u32 *,0x28)=sub_0805D720(0,14,27,3);
    if(duration==-2) {
        switch(gUnk_03003470) {
        case 0: sub_08065158(task+0x2C,0x50002,0,0x80000000,0); break;
        case 1: sub_08065158(task+0x2C,0x5015B,0,0x80000000,0); break;
        case 2: sub_08065158(task+0x2C,0x5015C,0,0x80000000,0); break;
        case 3: sub_08065158(task+0x2C,0x5015D,0,0x80000000,0); break;
        case 4: sub_08065158(task+0x2C,0x5015E,0,0x80000000,0); break;
        }
    } else if(duration>0) duration=140;
    if(M2C_FIELD(task,u32 *,0x28)==0) return 0;
    address=task+0x69;
    asm volatile("" : "+r" (address));
    zero=0;
    one=1;
    asm volatile("" : "+r" (zero), "+r" (one));
    *address=one;
    task[0x6A]=15;
    task[0x68]=2;
    M2C_FIELD(task,u32 *,0x60)=sub_08007290(resource);
    cursor=(u16 *)(task+0x6C);
    *cursor++=zero;
    *cursor=zero;
    M2C_FIELD(task,u32 *,0x74)=one;
    cursor+=11;
    *(s32 *)cursor=duration;
    cursor-=2;
    *cursor=zero;
    cursor-=4;
    *cursor++=zero;
    *cursor++=zero;
    *cursor++=zero;
    asm volatile("" : "+r" (cursor));
    *cursor=zero;
    M2C_FIELD(task,u32 *,0x64)=zero;
    M2C_FIELD(task,void (**)(void),0xC)=sub_0805E0C4;
    M2C_FIELD(task,u32 *,0x24)=zero;
    while((M2C_FIELD(task,void **,0x20)=(memory=sub_08001494(0x800)))==0) sub_080003F0();
    M2C_FIELD(task,void **,0x10)=(u8 *)memory+0x7FC;
    M2C_FIELD(task,u32 *,8)=0x15;
    M2C_FIELD(task,u32 *,0)=0;
    M2C_FIELD(task,u32 *,0x18)=0;
    sub_08000274(task,task);
    gUnk_03005D6C|=1<<task[0x70];
    return (u32)task;
}
#ifdef NONMATCHING
struct Asset0C4 { s32 unk0; u32 unk4; s32 unk8; u8 *unkC; u32 unk10; u32 unk14; s32 unk18; u8 remap[16]; u8 tail[8]; };
struct Window0C4 { u8 pad[0x30]; u8 state; u8 index; };
struct Task0C4 {
    u8 header[0x28];
    struct Window0C4 *window;
    struct Asset0C4 text;
    u8 *script;
    u16 *str;
    u8 maxLines;
    u8 x;
    u8 y;
    u8 pad6B;
    u16 unk6C;
    u16 col;
    u8 index;
    u8 pad71[3];
    u32 state;
    u16 unk78;
    u16 unk7A;
    u16 unk7C;
    u16 unk7E;
    u16 cursor;
    u16 pad82;
    s32 timer;
};

extern s32 sub_08000498(s32 *, u32);
extern void text0C4(u8 *, u16, u32) asm("sub_0801A3D0");
extern void sub_08065264(void *, s32, s32, u16, u16);
extern s32 anim0C4(void *, u16, u16 *, u16 *, s32) asm("sub_08065370");
extern u16 keys0C4 asm("gUnk_03001324");
extern u8 name0C4[] asm("gUnk_03003CE2");
extern u8 name1C4[] asm("gUnk_03003E2E");
extern u8 name2C4[] asm("gUnk_03003F7A");
extern u8 name3C4[] asm("gUnk_030040C6");
extern u8 gUnk_084EBD48[];
extern void draw0C4(void *, s32, s32, u32, s32) asm("sub_08065230");

void e0c4Impl(struct Task0C4 *task) asm("sub_0805E0C4");
void e0c4Impl(struct Task0C4 *task)
{
    u8 lines[2][30];
    struct Asset0C4 asset;
    u8 numBuf[12];
    u8 nameBuf[16];
    s32 value;
    u32 skip;
    u16 scroll;
    u16 line;
    u32 drawFlag;
    u16 sfx;
    u8 delay;
    u8 speed;
    u32 hold;
    u32 blink;
    /* Original first reads uninitialized frame slot SP+0xB8 at 0805EA88. */
    u8 blinkTimer;
    u16 numIdx;
    u16 strIdx;
    u16 idx0;
    u16 idx1;
    u16 idx2;
    u16 idx3;
    u16 nameIdx;
    u8 *playerName;
    u32 voice;
    u8 *num;
    u8 *name;
    register u8 *script asm("r8");
    register u32 portrait asm("sl");
    s32 *pValue;
    s32 i;
    s32 j;
    s32 k;
    s32 first;
    u32 started;
    u8 *s;
    u8 c;
    struct Window0C4 *w;

    script = task->script;
    drawFlag = 0;
    sfx = 0;
    idx1 = 0;
    idx2 = 0;
    idx3 = 0;
    pValue = &value;
    num = numBuf;
    name = nameBuf;
    k = 0;
    j = 0;
    do {
        line = 0;
        do {
            lines[j][line] = 0xFD;
            line++;
        } while (line < 18);
        k += 30;
        j++;
    } while (j < 2);
    c = *script;
    if (c != 0)
        portrait = (u8)(c - 1);
    else
        portrait = 0xFF;
    script++;
    voice = *script;
    script++;
    if (sub_0800CE30() != 0) {
        if (portrait != 0xFF) {
            if (portrait < 0x10) {
                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
            } else if (portrait < 0x20) {
                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x10);
            } else {
                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x20);
            }
        }
    } else {
        if (portrait != 0xFF) {
            if (portrait < 0x10) {
                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
            } else if (portrait < 0x20) {
                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x10);
            } else {
                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                portrait = (u8)(portrait - 0x20);
            }
        }
    }
    *pValue = sub_0801E4B0();
    s = num;
    s[0] = sub_08000498(&value, 10000000);
    s[1] = sub_08000498(&value, 1000000);
    s[2] = sub_08000498(&value, 100000);
    s[3] = sub_08000498(&value, 10000);
    s[4] = sub_08000498(&value, 1000);
    s[5] = sub_08000498(&value, 100);
    s[6] = sub_08000498(&value, 10);
    s[7] = value;
    s[8] = 0;
    numIdx = 0;
    first = 0;
    for (i = 0, s = num; i <= 8; i++, s++) {
        if (*s == 0 && numIdx == 0) {
            *s |= 0xFF;
        } else {
            *s += 0x41;
            if (numIdx == 0)
                first = i;
            numIdx = 1;
        }
    }
    for (i = 0; first <= 7; first++, i++)
        num[i] = num[first];
    num[i] = 0xFD;
    i++;
    num[i] = 0;

    playerName = &name0C4[sub_080020F4() * 0x14C];
    i = 0;
    if ((name[i] = name0C4[i]) != 0xFD) {
        do {
            if (++i > 9)
                break;
        } while ((name[i] = name0C4[i]) != 0xFD);
    }
    if (sub_08002204() == 0) {
        s = (u8 *)sub_08007290(0x1404DF) + 2;
        for (; i <= 12; i++, s++) {
            if ((name[i] = *s) > 0xF1)
                goto found;
        }
        goto done;
    found:
        name[i] = 0xFD;
        i++;
        name[i] = 0;
    } else {
        i++;
        name[i] = 0;
    }
done:
    strIdx = 0;
    numIdx = 0;
    idx0 = 0;
    nameIdx = 0;
    delay = 1;
    hold = 0;
    blink = 0;
    skip = 0;
    speed = 1;
    sub_080653CC();

    for (;;) {
        switch (task->state) {
        case 0:
            gUnk_03005D6C &= ~(1 << task->index);
            sub_0800035C();
        case 1:
        {
            u32 r = 0;
            if (task->window->state == 3)
                r = 1;
            if (r) {
                line = 0;
                drawFlag = 1;
                scroll = 0;
                task->state = 3;
            }
            break;
        }
        case 2:
            break;
        case 3:
            c = *script;
            if (c == 0xFE) {
                task->state = 4;
                break;
            }
            if (c == 0xFF) {
                if (line >= task->maxLines) {
                    task->state = 4;
                    script++;
                    break;
                }
                line++;
                task->col = 0;
                script++;
                break;
            }
            if (c == 0xFA) {
                speed = 10;
                script++;
            } else if (c == 0xF9) {
                speed = 20;
                script++;
            } else if (c == 0xF8) {
                speed = 1;
                script++;
            } else if (c == 0xFD) {
                task->state = 6;
                break;
            }
            if (--delay != 0xFF && (keys0C4 & 3) == 0)
                break;
            if ((sfx++ & 3) == 0) {
                if (voice != 0)
                    sub_0805865C(voice + 0xC7);
                else
                    sub_0805865C(0xC8);
            }
            c = *script;
            if (c == 0xFC) {
                lines[line][task->col] = playerName[strIdx];
                strIdx++;
                if (playerName[strIdx] == 0) {
                    script++;
                    strIdx = 0;
                    task->col--;
                }
            } else if (c == 0xF6) {
                lines[line][task->col] = name0C4[idx0];
                idx0++;
                if (name0C4[idx0] == 0) {
                    script++;
                    idx0 = 0;
                    task->col--;
                }
            } else if (c == 0xF4) {
                lines[line][task->col] = name1C4[idx1];
                idx1++;
                if (name1C4[idx1] == 0) {
                    script++;
                    idx1 = 0;
                    task->col--;
                }
            } else if (c == 0xF3) {
                lines[line][task->col] = name2C4[idx2];
                idx2++;
                if (name2C4[idx2] == 0) {
                    script++;
                    idx2 = 0;
                    task->col--;
                }
            } else if (c == 0xF2) {
                lines[line][task->col] = name3C4[idx3];
                idx3++;
                if (name3C4[idx3] == 0) {
                    script++;
                    idx3 = 0;
                    task->col--;
                }
            } else if (c == 0xF5) {
                lines[line][task->col] = name[nameIdx];
                nameIdx++;
                if (name[nameIdx] == 0) {
                    script++;
                    nameIdx = 0;
                    task->col--;
                }
            } else if (c == 0xFB) {
                lines[line][task->col] = num[numIdx];
                numIdx++;
                if (num[numIdx] == 0) {
                    script++;
                    numIdx = 0;
                    task->col--;
                }
            } else if (c == 0xFA) {
                script++;
            } else if (c == 0xF9) {
                script++;
            } else if (c == 0xF8) {
                script++;
            } else if (task->str != 0) {
                lines[line][task->col] = task->str[strIdx];
                strIdx++;
                if (task->str[strIdx] == 0) {
                    task->str = 0;
                    strIdx = 0;
                    task->col--;
                }
            } else {
                lines[line][task->col] = c;
                script++;
            }
            task->col++;
            lines[line][task->col] = 0xFD;
            if (task->timer < 0 && (keys0C4 & 3) != 0) {
                c = *script;
                while ((u8)(c + 3) > 2) {
                    if (c == 0xFC || strIdx != 0) {
                        lines[line][task->col] = playerName[strIdx];
                        strIdx++;
                        if (playerName[strIdx] == 0) {
                            script++;
                            strIdx = 0;
                            task->col--;
                        }
                    } else if (c == 0xF6 || idx0 != 0) {
                        lines[line][task->col] = name0C4[idx0];
                        idx0++;
                        if (playerName[idx0] == 0) {
                            script++;
                            idx0 = 0;
                            task->col--;
                        }
                    } else if (c == 0xF5 || nameIdx != 0) {
                        lines[line][task->col] = name[nameIdx];
                        nameIdx++;
                        if (name[nameIdx] == 0) {
                            script++;
                            nameIdx = 0;
                            task->col--;
                        }
                    } else if (c == 0xFB || numIdx != 0) {
                        lines[line][task->col] = num[numIdx];
                        numIdx++;
                        if (num[numIdx] == 0) {
                            script++;
                            numIdx = 0;
                            task->col--;
                        }
                    } else if (task->str != 0) {
                        lines[line][task->col] = task->str[strIdx];
                        strIdx++;
                        if (task->str[strIdx] == 0) {
                            task->str = 0;
                            strIdx = 0;
                            task->col--;
                        }
                    } else {
                        if (c > 0xF1)
                            script++;
                        lines[line][task->col] = *script;
                        script++;
                    }
                    task->col++;
                    c = *script;
                }
                lines[line][task->col] = 0xFD;
                delay = speed;
            } else {
                delay = speed;
            }
            break;
        case 4:
            if (task->timer >= 0) {
                skip = 1;
            } else if (task->timer == -2) {
                if (keys0C4 & 1) {
                    hold = 0x8D;
                    skip = 1;
                }
            } else {
                if (keys0C4 & 1) {
                    skip = 1;
                    hold = 0x8D;
                }
            }
            if (skip != 0 && hold++ > 0x8C) {
                if (*script == 0xFE) {
                    script++;
                    c = *script;
                    if (c == 0)
                        portrait = 0xFF;
                    else
                        portrait = (u8)(c - 1);
                    script++;
                    voice = *script;
                    if (sub_0800CE30() != 0) {
                        if (portrait != 0xFF) {
                            if (portrait < 0x10) {
                                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
                            } else if (portrait < 0x20) {
                                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x10);
                            } else {
                                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x20);
                            }
                        }
                    } else {
                        if (portrait != 0xFF) {
                            if (portrait < 0x10) {
                                sub_08065158(&asset, 0x500A8, 0xF, -1, 0);
                            } else if (portrait < 0x20) {
                                sub_08065158(&asset, 0x500A7, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x10);
                            } else {
                                sub_08065158(&asset, 0x500C1, 0xF, -1, 0);
                                portrait = (u8)(portrait - 0x20);
                            }
                        }
                    }
                }
                skip = 0;
                hold = 0;
                lines[0][0] = 0xFD;
                lines[1][0] = 0xFD;
                line = 0;
                task->state = 3;
                scroll = 0;
                script++;
                task->col = line;
                delay = speed;
                blink = 0;
                break;
            }
            if (task->timer < 0) {
                if (blinkTimer++ <= 0x1D)
                    blink = 1;
                else if (blinkTimer > 0x1D)
                    blink = 0;
                if (blinkTimer > 0x28)
                    blinkTimer = 0;
            }
            break;
        case 5:
            if (--scroll == 0)
                task->state = 3;
            break;
        case 6:
            if (task->timer == -1) {
                if (keys0C4 & 1) {
                    drawFlag = 0;
                    task->state = 7;
                    w = task->window;
                    if ((gUnk_03005D70 >> w->index) & 1) {
                        if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                            w->state = 4;
                            sub_0805865C(0xDD);
                        }
                    }
                    blink = 0;
                    break;
                }
                if (blinkTimer++ <= 0x1D)
                    blink = 1;
                else if (blinkTimer > 0x1D)
                    blink = 0;
                if (blinkTimer > 0x28)
                    blinkTimer = 0;
                break;
            }
            if (task->timer == -2) {
                if (sub_08058DB0() == 0 && (keys0C4 & 0x20)) {
                    if (task->cursor != 0)
                        sub_0805865C(0xC6);
                    task->cursor = 0;
                    break;
                }
                if (sub_08058DB0() == 0 && (keys0C4 & 0x10)) {
                    if (task->cursor != 1)
                        sub_0805865C(0xC7);
                    task->cursor = 1;
                    break;
                }
                if (sub_08058DB0() == 0 && (keys0C4 & 1)) {
                    sub_0805865C(0xF);
                    drawFlag = 0;
                    task->state = 7;
                    w = task->window;
                    if ((gUnk_03005D70 >> w->index) & 1) {
                        if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                            w->state = 4;
                            sub_0805865C(0xDD);
                        }
                    }
                    break;
                }
                if (sub_08058DB0() == 0 && (keys0C4 & 2)) {
                    sub_0805865C(0x10);
                    task->cursor = 1;
                    drawFlag = 0;
                    task->state = 7;
                    w = task->window;
                    if ((gUnk_03005D70 >> w->index) & 1) {
                        if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                            w->state = 4;
                            sub_0805865C(0xDD);
                        }
                    }
                    break;
                }
                break;
            }
            if (task->timer-- <= 0) {
                drawFlag = 0;
                blink = 0;
                w = task->window;
                if ((gUnk_03005D70 >> w->index) & 1) {
                    if (w->state == 1 || w->state == 3 || w->state == 4 || w->state == 2) {
                        w->state = 4;
                        sub_0805865C(0xDD);
                    }
                }
                task->state = 7;
            }
            break;
        case 7:
        {
            u32 r;
            drawFlag = 0;
            r = 0;
            if (task->window->state == 0)
                r = 1;
            if (r)
                task->state = drawFlag;
            break;
        }
        }
        if (sub_0800CC98() == 0 && drawFlag != 0) {
            for (i = 0; i <= line; i++)
                text0C4(lines[i], task->x | 0, (u16)(scroll + task->y + i * 2));
            if (blink != 0)
                text0C4(gUnk_084EBD48, 0x1C, 0x11);
            if (portrait != 0xFF) {
                sub_08000AF0(0x1F, asset.unkC + portrait * 32, 1);
                asset.remap[portrait] = 0xF;
                draw0C4(&asset, task->x * 8 + 0x18, task->y * 8 - 0x28, portrait, 0);
            }
            if (task->state == 6 && task->timer == -2) {
                if (task->cursor != 0) {
                    anim0C4(&task->text, 5, &task->unk7A, &task->unk7E, 1);
                    sub_08065230(&task->text, 0x78, task->y * 8 - 0x18, 9, 0);
                    sub_08065264(&task->text, 0x88, task->y * 8 - 0x18, 5, task->unk7A);
                    sub_08065230(&task->text, 0x68, task->y * 8 - 0x18, 4, task->unk78);
                } else {
                    anim0C4(&task->text, 4, &task->unk78, &task->unk7C, 1);
                    sub_08065230(&task->text, 0x78, task->y * 8 - 0x18, 8, 0);
                    sub_08065230(&task->text, 0x88, task->y * 8 - 0x18, 5, task->unk7A);
                    sub_08065264(&task->text, 0x68, task->y * 8 - 0x18, 4, task->unk78);
                }
            }
        }
        sub_080003F0();
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805E0C4);
#endif
s32 sub_0805EE6C(void *arg0) {
    s32 var_r0;
    register s32 var_r3 asm("r3");
    register u32 temp_r2 asm("r2");
    register void *temp_r1 asm("r1");

    if (arg0 != NULL) {
        temp_r1 = M2C_FIELD(arg0,void **,0x28);
        var_r3 = 0;
        temp_r2 = M2C_FIELD(temp_r1,u8 *,0x30);
        if (temp_r2 == 3) {
            var_r3 = 1;
        }
        if (var_r3 != 0) {
            register void *saved asm("r3")=temp_r1;
            asm volatile("" : "+r" (saved));
            if ((((s32) gUnk_03005D70 >> M2C_FIELD(temp_r1,u8 *,0x31)) & 1) && ((temp_r2 == 1) || (temp_r2 == 3) || (temp_r2 == 4) || (temp_r2 == 2))) {
                register u8 *writePtr asm("r1")=saved;
                asm volatile("" : "+r" (writePtr));
                writePtr+=0x30;
                *writePtr=4;
                sub_0805865C(0xDD);
            }
            M2C_FIELD(arg0,u32 *,0x74) = 7;
            goto block_15;
        }
        var_r0 = 0;
        if (temp_r2 == 0) {
            var_r0 = 1;
        }
        if (var_r0 == 0) {
            return 0;
        }
        goto block_15;
    }
block_15:
    return 1;
}

u32 sub_0805EEDC(u8 *p)
{
    u32 r = 0;
    if (p[0x30] == 3)
        r = 1;
    return r;
}
u32 sub_0805EEEC(u8 *p)
{
    u32 r = 0;
    if (p[0x30] == 0)
        r = 1;
    return r;
}
s32 sub_0805EEFC(void *arg0)
{
    s32 r;
    if (arg0 == 0)
        return 0;
    r = 0;
    if (*(s32 *)((u8 *)arg0 + 0x74) == 0)
        r = 1;
    return r;
}
u32 sub_0805EF14(u8 *arg0)
{
    u32 r;
    if (arg0 == NULL) return 0;
    r = 0;
    if (*(u16 *)(arg0 + 0x80) == 0) r = 1;
    return r;
}
void sub_0805EF2C(void) {
    s32 temp_r4;
    s32 var_r6;
    register u32 var_r5 asm("r5");
    u32 var_r5_2;
    register u8 *flags asm("r7");
    register u32 one asm("r8");

    var_r5 = 0;
    do {
        if (((s32) gUnk_03005D70 >> var_r5) & 1) {
            register s32 *pool asm("r6")=&gUnk_03005D64;
            asm volatile("" : "+r" (pool));
            temp_r4 = 0x34 * var_r5;
            if (sub_08000470(*pool + temp_r4) != 0) {
                sub_080003A8(*pool + temp_r4);
            }
            gUnk_03005D70 &= ~(1 << var_r5);
        }
        var_r5 += 1;
    } while (var_r5 <= 3U);
}
void sub_0805EF84(u8 *p, u32 v)
{
    if (p != 0)
        *(u16 *)(p + 0x80) = v;
}
u32 sub_0805EF90(void)
{
  char i;
  for (i = 0; i < 4; i++)
  {
    if ((gUnk_03005D70 >> i) & 1)
    {
      return 1;
    }
  }

  return 0;
}
extern u8 *efbcBase62 asm("gUnk_03005D68");
void sub_0805EFBC_impl(void) asm("sub_0805EFBC");
void sub_0805EFBC_impl(void)
{
    u8 i;
    u8 *base = efbcBase62;
    for (i = 0; i <= 3; i++) {
        if ((gUnk_03005D6C >> i) & 1) {
            while (sub_0805EE6C(base + i * 0x88) == 0)
                sub_080003F0();
            while (sub_0805EEFC(base + i * 0x88) == 0)
                sub_080003F0();
        }
    }
}
void sub_0805F020(void)
{
    void *src = sub_08007290((u8 *)(uintptr_t)gUnk_03003470 + 0x10010003);
    CpuFastSet(src, (void *)0x06008000, 0x1000);
    {
        register u8 *palette asm("r1")=sub_08007290((void *)0x70003);
        asm volatile("" : "+r" (palette));
        palette+=0x1E0;
        asm volatile("" : "+r" (palette));
        sub_08000AF0(15,palette,1);
    }
    gUnk_03005D64 = sub_08001494(0xD0);
    gUnk_03005D70 = 0;
}
void sub_0805F07C(void) {
    sub_08001348(sub_08007290(gUnk_03003470 + 0x10010003), 0x06008000, 0x4000);
    sub_08000AF0(0xF, sub_08007290(0x70003) + 0x1E0, 1);
    sub_080003F0();
}
u32 sub_0805F0C4(void)
{
  unsigned char i;
  for (i = 0; i < 4; i++)
  {
    if (((gUnk_03005D70 >> i) & 1) == 0)
    {
      return i;
    }
  }

  return 0xFF;
}
void sub_0805F0F0(void *arg0) {
    u8 temp_r1;

    if ((((s32) gUnk_03005D70 >> M2C_FIELD(arg0, u8 *, 0x31)) & 1) && ((temp_r1 = M2C_FIELD(arg0, u8 *, 0x30), (temp_r1 == 1)) || (temp_r1 == 3) || (temp_r1 == 4) || (temp_r1 == 2))) {
        M2C_FIELD(arg0, u8 *, 0x30) = 4U;
        sub_0805865C(0xDD);
    }
}
void sub_0805F134(void)
{
    gUnk_03005D68 = sub_08001494(0x220);
    gUnk_03005D6C = 0;
}
u32 sub_0805F158(void)
{
  char i;
  for (i = 0; i < 4; i++)
  {
    if (((gUnk_03005D6C >> i) & 1) == 0)
    {
      return i;
    }
  }

  return 0xFF;
}
u32 sub_0805F184(void)
{
  char i;
  for (i = 0; i < 4; i++)
  {
    if ((gUnk_03005D6C >> i) & 1)
    {
      return 1;
    }
  }

  return (long long) 0;
}
struct Asset62 { s32 unk0; u32 unk4; s32 unk8; s32 unkC; u32 unk10; u32 unk14; s32 unk18; u8 remap[16]; u8 tail[8]; };
extern struct Asset62 asset62_03005D80 asm("gUnk_03005D80");
extern struct Asset62 asset62_03005DC0 asm("gUnk_03005DC0");
extern struct Asset62 asset62_03005DF4 asm("gUnk_03005DF4");
extern struct Asset62 asset62_03005E28 asm("gUnk_03005E28");
extern struct Asset62 asset62_03005E5C asm("gUnk_03005E5C");
extern struct Asset62 asset62_03005E90 asm("gUnk_03005E90");
extern struct Asset62 asset62_03005EC4 asm("gUnk_03005EC4");
extern struct Asset62 asset62_03005EF8 asm("gUnk_03005EF8");
extern struct Asset62 asset62_03005F2C asm("gUnk_03005F2C");
extern struct Asset62 asset62_03005F60 asm("gUnk_03005F60");
extern struct Asset62 asset62_03005F94 asm("gUnk_03005F94");
extern struct Asset62 asset62_03005FC8 asm("gUnk_03005FC8");
extern struct Asset62 asset62_03006040 asm("gUnk_03006040");
extern struct Asset62 asset62_03006074 asm("gUnk_03006074");
extern struct Asset62 asset62_030060A8 asm("gUnk_030060A8");
extern struct Asset62 asset62_030060DC asm("gUnk_030060DC");
static inline void load62(u32 id,struct Asset62 *p,s32 a,s32 b,void *t) {
    u32 i;
    s32 data;
    p->unk10=id;
    p->unk14=a;
    p->unk18=b;
    p->unk8=data=sub_08006EE0(id,t);
    if(data!=0) {
        id&=0xFFFF;
        p->unk0=data=sub_08006EE0(id|0x60000,t);
        if(data!=0) {
            p->unkC=data=sub_08006EE0(id|0x80000,t);
            if(data!=0) {
                if(b>=0)
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                for(i=0;i<=15;i++) p->remap[i]=i;
                sub_080653B8(p,0x120,0xE0,8);
            }
        }
    }
}
void sub_0805F1B0_void(void) asm("sub_0805F1B0");
void sub_0805F1B0_void(void) {
    load62(0x5000B,&asset62_03006040,9,-1,&gUnk_08518938);
    load62(0x50003,&asset62_03006074,9,-1,&gUnk_08518938);
    load62(0x50004,&asset62_030060A8,9,-1,&gUnk_08518938);
    load62(0x50005,&asset62_030060DC,9,-1,&gUnk_08518938);
    switch(gUnk_03003470) {
    case 0:
        load62(0x50006,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 1:
        load62(0x50007,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 2:
        load62(0x50008,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 3:
        load62(0x50009,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    case 4:
        load62(0x5000a,&asset62_03005D80,9,4,&gUnk_08518938);
        break;
    }
    load62(0x500A3,&asset62_03005DC0,9,-1,&gUnk_08518938);
    load62(0x500A1,&asset62_03005DF4,9,-1,&gUnk_08518938);
    load62(0x500A4,&asset62_03005E28,9,-1,&gUnk_08518938);
    load62(0x500A2,&asset62_03005E5C,9,-1,&gUnk_08518938);
    load62(0x500DB,&asset62_03005E90,9,-1,&gUnk_08518938);
    load62(0x500DC,&asset62_03005EC4,9,-1,&gUnk_08518938);
    load62(0x500DE,&asset62_03005EF8,9,-1,&gUnk_08518938);
    load62(0x500DD,&asset62_03005F2C,9,-1,&gUnk_08518938);
    load62(0x500BD,&asset62_03005F60,9,-1,&gUnk_08518938);
    load62(0x500AF,&asset62_03005F94,9,-1,&gUnk_08518938);
    load62(0x500F1,&asset62_03005FC8,9,-1,&gUnk_08518938);
}
struct NumAsset63 { u32 f0, f4, f8; u8 data[40]; };
extern struct NumAsset63 numAssets63[] asm("gUnk_03006040");
void sub_0805FAC0(s32 x, s32 y, u32 value, u8 style)
{
    u8 digits[2];
    struct NumAsset63 *asset;
    if (value > 999) value = 999;
    asset = &numAssets63[style];
    digits[0] = sub_08000498(&value, 100);
    digits[1] = value;
    if (digits[0] != 0)
        sub_08007CF0(x - 12, y, 0, digits[0], 0, (s32)((u8 *)asset + 0x1C), asset->f8, asset->f0);
    if (digits[1] <= 9 && digits[0] != 0)
        sub_08007CF0(x - 6, y, 0, 0, 0, (s32)((u8 *)asset + 0x1C), asset->f8, asset->f0);
    sub_08007CF0(x, y, 0, digits[1], 0, (s32)((u8 *)asset + 0x1C), asset->f8, asset->f0);
}
