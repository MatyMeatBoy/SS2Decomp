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

INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805D854);
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805DC1C);
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
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805E0C4);
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
#ifdef NONMATCHING
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
s32 sub_0805F1B0(void) {
    {
        struct Asset62 *p=&asset62_03006040;
        u32 id=0x5000B;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03006074;
        u32 id=0x50003;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_030060A8;
        u32 id=0x50004;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_030060DC;
        u32 id=0x50005;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    switch(gUnk_03003470) {
    case 0:
    {
        struct Asset62 *p=&asset62_03005D80;
        u32 id=0x50006;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=4;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
        break;
    case 1:
    {
        struct Asset62 *p=&asset62_03005D80;
        u32 id=0x50007;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=4;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
        break;
    case 2:
    {
        struct Asset62 *p=&asset62_03005D80;
        u32 id=0x50008;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=4;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
        break;
    case 3:
    {
        struct Asset62 *p=&asset62_03005D80;
        u32 id=0x50009;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=4;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
        break;
    case 4:
    {
        struct Asset62 *p=&asset62_03005D80;
        u32 id=0x5000a;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=4;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {
                    sub_08000AF0(p->unk14+16,(void *)(data+(p->unk14<<5)),p->unk18);
                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
        break;
    }
    {
        struct Asset62 *p=&asset62_03005DC0;
        u32 id=0x500A3;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005DF4;
        u32 id=0x500A1;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005E28;
        u32 id=0x500A4;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005E5C;
        u32 id=0x500A2;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005E90;
        u32 id=0x500DB;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005EC4;
        u32 id=0x500DC;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005EF8;
        u32 id=0x500DE;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005F2C;
        u32 id=0x500DD;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005F60;
        u32 id=0x500BD;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005F94;
        u32 id=0x500AF;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
    {
        struct Asset62 *p=&asset62_03005FC8;
        u32 id=0x500F1;
        u32 i;
        u8 *map;
        s32 data;
        p->unk10=id;
        p->unk14=9;
        p->unk18=-1;
        data=sub_08006EE0(id,&gUnk_08518938);
        p->unk8=data;
        if(data!=0) {
            id&=0xFFFF;
            data=sub_08006EE0(id|0x60000,&gUnk_08518938);
            p->unk0=data;
            if(data!=0) {
                data=sub_08006EE0(id|0x80000,&gUnk_08518938);
                p->unkC=data;
                if(data!=0) {

                    map=p->remap;
                    for(i=0;i<=15;i++) map[i]=i;
                    sub_080653B8(p,0x120,0xE0,8);
                }
            }
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0805D094", sub_0805F1B0);
#endif
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
