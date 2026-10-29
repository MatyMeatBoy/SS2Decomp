#include "global.h"

void sub_0803B69C(s32 arg0) {
    u16 n;
    for (;;) {
        sub_0802939C(arg0, 8);
        sub_08028D98(arg0, -10, 0, 600);
        sub_08029174(arg0, 8);
        sub_08028D98(arg0, -4, 0, 10);
        sub_0802939C(arg0, 9);
        n = 100;
        while (n != 0) {
            sub_080003F0();
            if (sub_080021A8() != 0) break;
            n--;
        }
        sub_0802926C(arg0, 10);
        n = 30;
        while (n != 0) {
            sub_080003F0();
            if (sub_080021A8() != 0) break;
            n--;
        }
        sub_08028D98(arg0, 14, 0, 20);
    }
}
void sub_0803B720(s32 arg0) {
    register u32 offset asm("r2");
    u8 *p;
    u32 flags;
    u32 msg;
    register u32 off asm("r1");
    register u8 *base asm("r0");
    register s32 raw asm("r0");
    s32 shifted;
    register u32 one asm("r0");
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)|=1;
    sub_0800D0F4();
    sub_0802949C(arg0,0);
    if(sub_0800CE30()) flags=*(u32 *)((u8 *)gUnk_03005CF4+0x7C);
    else flags=*(u32 *)((u8 *)gUnk_03005CF4+0x74);
    if(sub_0800CE30()) {base=(u8 *)gUnk_03005CF4;off=0x1C6;}
    else {base=(u8 *)gUnk_03005CF4;off=0x1BA;}
    raw=*(base+off);shifted=raw >> 2;one=1;
    if(shifted & one) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140158);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 0x200) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140157);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 256) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140156);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 128) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140155);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 64) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140154);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 32) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140153);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 16) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140152);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 8) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140151);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 4) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x140150);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 2) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014F);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else if(flags & 1) {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014E);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    } else {
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        msg=sub_0805DF38(1,15,2,0,-1,0x14014D);
        while(sub_0805EEFC((void *)msg)==0) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    sub_08029788(arg0);
    offset=sub_080020F4();offset*=0x14C;
    p=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(p+0x30)&=~1;
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803BC3C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C008);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C3C8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C4C0);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803C698);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803CC50);
extern void sub_0802949C(s32,s32);
extern void sub_08029788(s32);
extern u8 *gStateD1F8 asm("gUnk_03005CF4");
void sub_0803D1F8(s32 arg0) {
 register s32 offset asm("r2");
 u8 *p;
 u32 dialog;
 register u8 *state asm("r1");
 register u32 field asm("r0");
 register u32 raw asm("r2");
 register u32 mask asm("r0");
 offset=sub_080020F4(); offset*=0x14C;
 p=(u8 *)gUnk_03003CE0+offset;
 *(u32 *)(p+0x30)|=1;
 sub_0800D0F4(); sub_0802949C(arg0,0);
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404F8);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)!=0) {
 if(sub_0800CE30()!=0) {state=gStateD1F8;field=0x1C4;} else {state=gStateD1F8;field=0x1B8;}
 state+=field;
 raw=*state; mask=0x40;
 *state=mask|raw;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 }
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404F9);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)!=0) {
 if(sub_0800CE30()!=0) {state=gStateD1F8;field=0x1C4;} else {state=gStateD1F8;field=0x1B8;}
 state+=field;
 mask=0x80; raw=*state;
 *state=mask|raw;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 }
 sub_08029788(arg0);
 offset=sub_080020F4(); offset*=0x14C;
 p=(u8 *)gUnk_03003CE0+offset;
 *(u32 *)(p+0x30)&=~1;
 sub_0800D108();
}
extern void sub_0802949C(s32, s32);
extern void sub_08029788(s32);
extern u8 *gStateD36C asm("gUnk_03005CF4");
void sub_0803D36C(s32 arg0) {
    register s32 offset asm("r2");
    u8 *p;
    u32 dialog;
    register u32 value asm("r4");
    register u8 *state asm("r0");
    register u32 field asm("r1");
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) |= 1;
    sub_0800D0F4();
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -2, 0x1404FA);
    while (sub_0805EEFC((void *)dialog) == 0) sub_080003F0();
    if (sub_0805EF14((u8 *)dialog) != 0) {
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x32);
        value = 10;
        if (sub_0800CE30() != 0) {
            state = gStateD36C;
            field = 0x1BF;
        } else {
            state = gStateD36C;
            field = 0x1B3;
        }
        state += field;
        *state = value;
    }
    sub_08029788(arg0);
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) &= ~1;
    sub_0800D108();
}

INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D454);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D99C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803DE84);
struct E510Player { u8 pad[0x20]; u16 value; };
extern void sub_08029174(s32, s32);
void sub_0803E510(s32 arg0) {
    register s32 offset asm("r2");
    u8 *p;
    u32 dialog;
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) |= 1;
    sub_0800D0F4();
    sub_08029174(0, 0);
    sub_0802949C(arg0, 0);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    dialog = sub_0805DF38(1, 15, 2, 0, -1, 0x1404E9);
    while (sub_0805EEFC((void *)dialog) == 0) {
        if (sub_0800CDF8() != 0) {
            sub_0805EFBC();
            break;
        }
        sub_080003F0();
    }
    sub_08029788(arg0);
    offset = sub_080020F4();
    offset *= 0x14C;
    p = (u8 *)gUnk_03003CE0 + offset;
    *(u32 *)(p + 0x30) &= ~1;
    sub_0800D108();
    ((struct E510Player *)((u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C))->value = 0;
}


void sub_0803E5D8(void)
{
    u8 next;
    if (sub_0800CE30() != 0)
        next = *((u8 *) gUnk_03005CF4 + 0x1C1) + 1;
    else
        next = *((u8 *) gUnk_03005CF4 + 0x1B5) + 1;
    if (sub_0800CE30() != 0)
        *((u8 *) gUnk_03005CF4 + 0x1C1) = next;
    else
        *((u8 *) gUnk_03005CF4 + 0x1B5) = next;
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803E638);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803EE88);
void sub_0803F18C(s32 arg0) {
    u16 n;
    u8 *q;

    n = 0x1E;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_0802939C(0, 8);
    switch (arg0) {
    case 0:
        sub_08028D98(0, 0, -0x12C, 0x12C);
        break;
    case 1:
        sub_08028D98(0, 0, -0x12C, 0x12C);
        break;
    case 2:
        sub_08028D98(0, 0, -0x12C, 0x12C);
        break;
    case 3:
        sub_08028D98(0, 0, -0x12C, 0x12C);
        break;
    }
    q = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    *(u16 *)(q + 0x20) = 0;
}
void sub_0803F210(s32 arg0) {
    u16 n;

    n = 20;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x55);
    }
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0xA);
    n = 58;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x55);
    }
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0xA);
    n = 58;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x55);
    }
    n = 10;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
    sub_08029174(arg0, 0xA);
    n = 40;
    while (n != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) {
            break;
        }
        n--;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803F348);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803F454);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803FE34);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080400D4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080402F4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08040530);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0804076C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08041030);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08041B7C);
struct T43Tile { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile t43_tile asm("gUnk_03003170");
extern void t43_bb80(s32, s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */

static inline void t43_schedule1e8c(s32 id) {
 switch(id) {
 case 0: sub_08028AAC(0,0x6C,0x80,0); break;
 case 1: sub_08028AAC(0,0x84,0x80,0); break;
 case 2: sub_08028AAC(0,0x54,0x80,0); break;
 case 3: sub_08028AAC(0,0x9C,0x80,0); break;
 }
}
static inline void t43_move1e8c(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile.x;
 s32 y=t43_tile.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb80((s16)a,(s16)b);
  sub_080003F0();
 }
}
void sub_08041E8C(void) {
    s32 temp_r0_2;
    u16 var_r4;
    u32 temp_r4;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    t43_schedule1e8c(sub_080020F4());
    sub_080290E4(0, 4);
    temp_r2_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_2 + 0x30) = (s32) (*(s32 *)(temp_r2_2 + 0x30) & ~2);
    sub_08067D74();
    var_r4 = 2;
    while (var_r4 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4--;
    }
    if (sub_0800CC98() == 0) {
        temp_r0_2 = sub_0801AB24();
        switch (temp_r0_2) {                        /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 2 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 2 */
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    t43_move1e8c(10,0,-24);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140100);
    while (sub_0805EEFC((void *)temp_r4) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    t43_move1e8c(34,0,0);
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_3 + 0x30) = (s32) (*(s32 *)(temp_r2_3 + 0x30) & ~1);
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080420C8);
struct T43Tile2390 { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile2390 t43_tile2390 asm("gUnk_03003170");
extern void t43_bb802390(s32, s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */

static inline void t43_schedule2390(s32 id) {
 switch(id) {
 case 0: sub_08028AAC(0,0x6C,0x80,0); break;
 case 1: sub_08028AAC(0,0x84,0x80,0); break;
 case 2: sub_08028AAC(0,0x54,0x80,0); break;
 case 3: sub_08028AAC(0,0x9C,0x80,0); break;
 }
}
static inline void t43_move2390(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile2390.x;
 s32 y=t43_tile2390.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb802390((s16)a,(s16)b);
  sub_080003F0();
 }
}
void sub_08042390(void) {
    s32 temp_r0_2;
    u16 var_r4;
    u32 temp_r4;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    t43_schedule2390(sub_080020F4());
    sub_080290E4(0, 4);
    temp_r2_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_2 + 0x30) = (s32) (*(s32 *)(temp_r2_2 + 0x30) & ~2);
    sub_08067D74();
    var_r4 = 2;
    while (var_r4 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4--;
    }
    if (sub_0800CC98() == 0) {
        temp_r0_2 = sub_0801AB24();
        switch (temp_r0_2) {                        /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 2 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 2 */
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    t43_move2390(10,0,-24);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140103);
    while (sub_0805EEFC((void *)temp_r4) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    t43_move2390(34,0,0);
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_3 + 0x30) = (s32) (*(s32 *)(temp_r2_3 + 0x30) & ~1);
    sub_0800D108();
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080425CC);
struct T43Slot2938 { s32 id; u8 p04[0x14]; u16 f18,f1a; u8 p1c[0x1a]; u16 f36; u32 f38,f3c,f40; void (*f44)(void); u8 p48[0x28]; };
struct T43Tile2938 { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile2938 t43_tile2938 asm("gUnk_03003170");
extern void t43_bb802938(s32,s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */
extern void sub_080308B4(void);

static inline struct T43Slot2938 *t43_find2938(s32 id) {
    struct T43Slot2938 *p = (struct T43Slot2938 *)((u8 *)gUnk_03005CF4 + 0x7A4);
    u32 i;
    for (i=0; i<=14; i++,p++) if (p->id == id) return p;
    sub_080003F0();
    return 0;
}
static inline void t43_schedule2938(s32 id) {
    switch (id) {
    case 0: sub_08028AAC(0,0x6C,0x80,0); break;
    case 1: sub_08028AAC(0,0x84,0x80,0); break;
    case 2: sub_08028AAC(0,0x54,0x80,0); break;
    case 3: sub_08028AAC(0,0x9C,0x80,0); break;
    }
}

static inline void t43_move2938(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile2938.x;
 s32 y=t43_tile2938.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb802938((s16)a,(s16)b);
  sub_080003F0();
 }
}
static inline void t43_callback2938(s32 id, void (*cb)(void)) {
 struct T43Slot2938 *p=t43_find2938(id);
 if (p != 0) p->f44=cb;
}
static inline void t43_flag2938(u8 *p, u32 mask) {
 register u32 value asm("r0") = *(u32 *)(p+0x3c);
 register u32 bits asm("r1") = mask;
 *(u32 *)(p+0x3c) = value | bits;
}
static inline u8 *t43_select2938(void) {
 if (sub_0800CE30() != 0) return (u8 *)gUnk_03005CF4+0x1BE;
 return (u8 *)gUnk_03005CF4+0x1B2;
}
void sub_08042938(s32 arg0) {
    struct T43Slot2938 *var_r0;
    struct T43Slot2938 *var_r1_2;
    struct T43Slot2938 *var_r1_3;
    struct T43Slot2938 *var_r1_4;
    struct T43Slot2938 *var_r2_3;
    s32 temp_r0_2;
    s32 temp_r4;
    s8 *var_r0_2;
    u16 var_r4;
    u32 temp_r4_2;
    u8 *temp_r2;
    u8 *temp_r2_2;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    t43_schedule2938(sub_080020F4());
    sub_080290E4(0, 4);
    var_r1_2 = t43_find2938(arg0);
    if (var_r1_2 != 0) var_r1_2->f36 = 4;
    temp_r4 = sub_080289C0(0x3A, 0x78, 0x52);
    var_r2_3 = t43_find2938(temp_r4);
    if (var_r2_3 != 0) {
        var_r2_3->f18 = 8; { register u32 value asm("r0") = 16; var_r2_3->f1a=value; } t43_flag2938((u8 *)var_r2_3,16);
    }
    t43_callback2938(temp_r4, sub_080308B4);
    { register u32 value asm("r4") = 1; *t43_select2938() = value; }
    temp_r2_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_2 + 0x30) = (s32) (*(s32 *)(temp_r2_2 + 0x30) & ~2);
    sub_08067D74();
    var_r4 = 2;
    while (var_r4 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4--;
    }
    if (sub_0800CC98() == 0) {
        temp_r0_2 = sub_0801AB24();
        switch (temp_r0_2) {                        /* switch 2; irregular */
        case 0:                                     /* switch 2 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 2 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 2 */
            sub_0801AB90(6);
            break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    t43_move2938(10,0,-24);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140106U);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) sub_080003F0();
}
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08042BB0);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080435C4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043664);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043850);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043A4C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043B20);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043BF4);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043CC8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043D9C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043E70);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08043F44);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08044018);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080440EC);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080441C0);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08044318);
