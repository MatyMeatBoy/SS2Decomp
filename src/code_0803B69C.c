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

extern u8 *gStateD454 asm("gUnk_03005CF4");
void sub_0803D454(s32 arg0) {
 register s32 offset asm("r2");
 u8 *p;
 u32 dialog;
 register u8 *state asm("r1");
 register u8 *state2 asm("r2");
 register u32 mask2 asm("r2");
 register u32 mask1 asm("r1");
 register u32 bit asm("r4");
 register u32 flags asm("r0");


 offset=sub_080020F4(); offset*=0x14C;
 p=(u8 *)gUnk_03003CE0+offset;
 *(u32 *)(p+0x30)|=1;
 sub_0800D0F4(); sub_0802949C(arg0,0);
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404FB);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 bit=2;
 if(sub_0800CE30()!=0) *(u32 *)(gStateD454+0x80)|=bit; else *(u32 *)(gStateD454+0x78)|=bit;
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404FC);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x4; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x4; *(u32 *)(state2+0x78)|=mask1;}
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404FD);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x8; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x8; *(u32 *)(state2+0x78)|=mask1;}
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404FE);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x10; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x10; *(u32 *)(state2+0x78)|=mask1;}
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x1404FF);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 flags=gUnk_030027D0; bit=0x20;
 if(!(flags&bit)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) *(u32 *)(gStateD454+0x80)|=bit; else *(u32 *)(gStateD454+0x78)|=bit;
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x140500);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x40; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x40; *(u32 *)(state2+0x78)|=mask1;}
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x140501);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x80; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x80; *(u32 *)(state2+0x78)|=mask1;}
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x140502);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x100; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x100; *(u32 *)(state2+0x78)|=mask1;}
 while(sub_0805F184()!=0) sub_080003F0();
 dialog=sub_0805DF38(1,15,2,0,-2,0x140503);
 while(sub_0805EEFC((void *)dialog)==0) sub_080003F0();
 if(sub_0805EF14((u8 *)dialog)==0) goto end;
 if(!(gUnk_030027D0&0x20)) sub_08006D08(0x32);
 if(sub_0800CE30()!=0) {state=gStateD454; state+=0x80; mask2=0x200; *(u32 *)state|=mask2;} else {state2=gStateD454; mask1=0x200; *(u32 *)(state2+0x78)|=mask1;}
end:
 sub_0805C7B8(0);
 sub_08029788(arg0);
 offset=sub_080020F4(); offset*=0x14C;
 p=(u8 *)gUnk_03003CE0+offset;
 *(u32 *)(p+0x30)&=~1;
 sub_0800D108();
}
struct CmdD99C {u16 one,kind; u8 data[12];};
struct PlayerD99C {u8 pad[32];u16 value;};
struct TaskD99C {u32 f0,f4,f8,fC;void *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
extern u8 *gStateD99C asm("gUnk_03005CF4");
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080290E4(s32,s32);
extern void sub_08029174(s32,s32);
extern void sub_080576A8(void);
extern void sub_08059250(void);
static inline u8 *findD99C(u32 arg) {
 register u32 key asm("r5")=arg;
 register u32 off asm("r2");
 u8 *p;
 u32 i;
 off=0x7A4; p=gStateD99C+off;
 for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==key) return p;
 sub_080003F0(); return 0;
}
void sub_0803D99C(void) {
    struct CmdD99C cmd;
    register s32 offset asm("r2");
    register u8 *var_r0 asm("r0");
    u32 callback;
    register struct TaskD99C *start asm("r0");
    register u32 taskArg asm("r1");
    u8 *var_r2_2;
    s32 temp_r0;
    s32 temp_r0_2;
    register s32 temp_r5 asm("r5");
    u32 var_r4;
    u16 var_r5;
    u16 var_r5_10;
    u16 var_r5_11;
    u16 var_r5_12;
    u16 var_r5_13;
    u16 var_r5_2;
    u16 var_r5_3;
    u16 var_r5_4;
    u16 var_r5_5;
    u16 var_r5_7;
    u16 var_r5_8;
    u16 var_r5_9;
    u32 temp_r4;
    u32 temp_r5_2;
    u32 temp_r5_3;
    u32 var_r1_3;
    u16 one,kind;
    u32 var_r4_2;
    struct TaskD99C *var_r5_6;
    u8 *temp_r0_3;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;


    offset=sub_080020F4(); offset*=0x14C; temp_r2=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2+0x30) = (s32) (*(u32 *)(temp_r2+0x30) | 1);
    sub_0800D0F4();
    temp_r5 = sub_080289C0(0x6000D, 0x101, 0x4E);
    var_r2_2=findD99C(temp_r5);
    if (var_r2_2 != NULL) {
        *(u16 *)(var_r2_2+0x18) = 8;
        *(u16 *)(var_r2_2+0x1A) = 4;
        *(u32 *)(var_r2_2+0x3C) = (s32) (*(u32 *)(var_r2_2+0x3C) | 0x10);
    }
    callback=(u32)sub_08059250;
    var_r0=findD99C(temp_r5);
    if (var_r0 != NULL) {
        *(u32 *)(var_r0+0x44) = callback;
    }
    temp_r0 = sub_080020F4();
    switch (temp_r0) {
    case 0:
        var_r4 = 0x12C;
        break;
    case 1:
        var_r4 = 0x121;
        break;
    case 2:
        var_r4 = 0x137;
        break;
    case 3:
        var_r4 = 0x116;
        break;
    }
    sub_08028AAC(0, (u16)var_r4, 0x52, 0);
    offset=sub_080020F4(); offset*=0x14C; temp_r2_2=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_2+0x30) = (s32) (*(u32 *)(temp_r2_2+0x30) & ~2);
    sub_08067D74();
    sub_080290E4(0, 0);
    sub_08029174(0, 0x25);
    var_r5 = 2;

    while(var_r5!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5--;}
    if (sub_0800CC98() == 0) {
        temp_r0_2 = sub_0801AB24();
        switch (temp_r0_2) {
        case 0:
            sub_080576A8();
            break;
        case 1:
            sub_0801AB50(6);
            break;
        case 2:
            sub_0801AB90(6);
            break;
        }
        while(sub_0801AAE0() == 0) sub_080003F0();
    }
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    temp_r5_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401E1U);
    while(sub_0805EEFC((void *) temp_r5_2)==0) { if(sub_0800CDF8()!=0) {sub_0805EFBC();break;} sub_080003F0();}
    sub_08029174(0, 0x26);
    var_r5_2 = 8;
    while(var_r5_2!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_2--;}
    sub_08029174(0, 0x22);
    var_r5_3 = 8;
    while(var_r5_3!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_3--;}
    sub_08029174(0, 0x23);
    var_r5_4 = 8;
    while(var_r5_4!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_4--;}
    sub_08029174(0, 0x24);
    var_r5_5 = 0x50;
    while(var_r5_5!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_5--;}
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    temp_r5_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401E1U);
    while(sub_0805EEFC((void *) temp_r5_3)==0) { if(sub_0800CDF8()!=0) {sub_0805EFBC();break;} sub_080003F0();}
    callback=(u32)sub_0805A9F4;
    var_r5_6 = (struct TaskD99C *)(gStateD99C + 0xE34);
    var_r4_2=0; goto taskCheck;
taskNext: var_r4_2++; var_r5_6++;
taskCheck:
    if(var_r4_2<=29) {
        if(sub_08000470((u32)var_r5_6)!=0) goto taskNext;
        while((var_r5_6->f20=(u8 *)sub_08001494(0x400))==0) sub_080003F0();
        temp_r0_3=var_r5_6->f20;
        var_r5_6->f8=0x3C;
        var_r5_6->fC=callback;
        var_r5_6->f10=temp_r0_3+0x3FC;
        var_r5_6->f24=0;
        start=var_r5_6; taskArg=0x1E00043;
        sub_08000274(start,taskArg);
    }
    sub_08029174(0, 0x26);
    var_r5_7 = 7;
    while(var_r5_7!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_7--;}
    sub_08029174(0, 0x23);
    var_r5_8 = 7;
    while(var_r5_8!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_8--;}
    sub_08029174(0, 0x26);
    var_r5_9 = 7;
    while(var_r5_9!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_9--;}
    sub_08029174(0, 0x23);
    var_r5_10 = 7;
    while(var_r5_10!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_10--;}
    sub_08029174(0, 0x26);
    var_r5_11 = 7;
    while(var_r5_11!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_11--;}
    sub_08029174(0, 0x23);
    var_r5_12 = 0x28;
    while(var_r5_12!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_12--;}
    sub_08029174(0, 0);
    sub_080290E4(0, 1);
    sub_08028AAC(0, (u16)var_r4, 0x4C, 0);
    var_r5_13 = 3;
    while(var_r5_13!=0) {sub_080003F0(); if(sub_080021A8()!=0) break; var_r5_13--;}
    sub_08028AAC(0, (u16)var_r4, 0x4E, 0);
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1401E2U);
    while(sub_0805EEFC((void *) temp_r4)==0) { if(sub_0800CDF8()!=0) {sub_0805EFBC();break;} sub_080003F0();}
    one=1; kind=6; cmd.one=one;cmd.kind=kind;
    var_r1_3 = 0;
    do {
        cmd.data[var_r1_3] = 0;
        var_r1_3 += 1;
    } while (var_r1_3 <= 0xBU);
    while(sub_08067B9C(0x3B00U, 0x7D00U, &cmd) == 0) sub_080003F0();
    offset=sub_080020F4(); offset*=0x14C; temp_r2_3=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_3+0x30) = (s32) (*(u32 *)(temp_r2_3+0x30) & ~1);
    sub_0800D108();
    ((struct PlayerD99C *)((u8 *)gUnk_03003CE0+0x14C*sub_080020F4()))->value=0;
}

struct PlayerDE84 {u8 pad[32];u16 value;};
struct TaskDE84 {u32 f0,f4,f8,fC;void *f10;u32 f14,f18,f1C;u8 *f20;u32 f24;};
extern u8 *gStateDE84 asm("gUnk_03005CF4");
extern void sub_08019EB8(u16,s32);
extern void sub_0801AA34(s32);
extern void sub_0801AA8C(s32);
extern s32 sub_08021FE0(void *,s32 *,s32 *,s32 *);
extern void sub_0802926C(s32,s32);
extern void sub_0802939C(s32,s32);
extern void sub_0802A228(s32,s32);
extern void sub_08059890(void);
extern void sub_0803E510(s32);
extern void musicDE84(u32) asm("sub_08006CD0");
extern u32 dialogDE84(u32,u32,u32,u32,s32,u32) asm("sub_0805DF38");
static inline u8 *findDE84(u32 key) {
 u8 *p=gStateDE84+0x7A4;u32 i;
 for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==key) return p;
 sub_080003F0();return 0;
}
static inline u8 *findSetDE84(u32 arg) {
    register u32 key asm("r2")=arg;
    u8 *p=gStateDE84+0x7A4;
    u32 i;
    for(i=0;i<15;i++,p+=0x70) if(*(u32 *)p==key) return p;
    sub_080003F0(); return 0;
}
static inline void setDE84(u32 arg) {
    register u32 value asm("r4");
    register u32 key asm("r2")=arg;
    register u8 *p asm("r0");
    u32 idx;
    value=3;
    if(arg>0x100000) {p=findSetDE84(key);if(p) *(u16 *)(p+0x42)=value;}
    else if(arg!=0) {
        register u8 **address asm("r1");
        register u8 *entry asm("r1");
        register u32 off asm("r0");
        idx=arg-1;
        if(idx<5) {address=(u8 **)&gUnk_030056F4;off=idx*0x2E0;entry=*address;entry+=off;sub_08019EB8(*(u16 *)(entry+2),3);}
    }
    else {register u32 off asm("r0");off=sub_080020F4()*0x14C;p=(u8 *)gUnk_03003CE0+off;*(u16 *)(p+0x11E)=value;}
}
void sub_0803DE84(void) {
    register s32 offset asm("r2");
    s32 sp14;
    s32 sp10;
    struct {s32 x,y;} pos;
    u32 callback;
    u32 taskCallback;
    u8 *var_r1_5;
    u8 *var_r2_2;
    s32 temp_r0;
    s32 temp_r7;
    u16 var_r4;
    u16 var_r4_3;
    u32 temp_r0_2;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    register u32 var_r0 asm("r0");
    struct TaskDE84 *var_r4_2;
    u32 var_r5;
    u32 var_r5_2;
    u8 *var_r0_4;
    u8 *temp_r0_3;
    u8 *temp_r2;
    u8 *temp_r2_3;
    u8 *temp_r2_4;
    u8 *temp_r2_5;
    u8 *temp_r2_6;
    u8 *temp_r2_7;
    u8 *temp_r4_4;
    register u32 loopOne asm("r6");
    u32 loopZero;
    register volatile u32 *flagsAddress asm("r5");
    register u32 musicValue asm("r1");

    offset=sub_080020F4();offset*=0x14C;temp_r2=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2+0x30) = (s32) (*(u32 *)(temp_r2+0x30) | 1);
    sub_0800D0F4();
    temp_r7 = sub_080289C0(0xF, 0x42, 0xC0);
    var_r2_2=findDE84(temp_r7);
    if (var_r2_2 != NULL) {
        *(u16 *)(var_r2_2+0x18) = 8;
        *(u16 *)(var_r2_2+0x1A) = 4;
        *(u32 *)(var_r2_2+0x3C) = (s32) (*(u32 *)(var_r2_2+0x3C) | 0x10);
    }
    sub_0802939C(temp_r7, 0x14);
    sub_080290E4(temp_r7, 7);
    sub_08028AAC(1, 0x270F, 0x270F, 0);
    temp_r0 = sub_080020F4();
    switch(temp_r0) {
    case 0: sub_08028AAC(0,0x10A,0xC0,0);break;
    case 1: sub_08028AAC(0,0x11A,0xB0,0);break;
    case 2: sub_08028AAC(0,0x11A,0xD0,0);break;
    case 3: sub_08028AAC(0,0x12A,0xC0,0);break;
    }
    sub_0801AA34(0x1E);
    while(sub_0801AAE0() == 0) sub_080003F0();
    temp_r0_2 = sub_08002164();
    if (temp_r0_2 == 1) {
        while(sub_0805F184() != 0) sub_080003F0();
        while(sub_0805EF90() != 0) sub_080003F0();
        var_r0 = dialogDE84(1U, 0xFU, 2U, 0U, 0x2D, 0x1404E4U);
    } else {
        while(sub_0805F184() != 0) sub_080003F0();
        while(sub_0805EF90() != 0) sub_080003F0();
        var_r0 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x1404E5U);
    }
    temp_r4=var_r0;
    while(sub_0805EEFC((u8 *) temp_r4) == 0) sub_080003F0();
    sub_0802939C(0, 8);
    sub_080290E4(0, 2);
    sub_08028D98(0, -0xA6, 0, 0x96);
    sub_0802939C(0, 0);
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x1404E6U);
    while(sub_0805EEFC((u8 *) temp_r4) == 0) sub_080003F0();
    sub_08028AAC(1, 0xB5, 0xA8, 0);
    sub_0802926C(1, 0x18);
    sub_0802939C(1, 0);
    sub_080290E4(temp_r7, 5);
    setDE84(temp_r7);
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x1404E7U);
    while(sub_0805EEFC((u8 *) temp_r4_2) == 0) sub_080003F0();
    musicValue=0xA5;gUnk_03005CF8=musicValue;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xA5U);
    }
    offset=sub_080020F4();offset*=0x14C;temp_r2_3=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_3+0x30) = (s32) (*(u32 *)(temp_r2_3+0x30) & ~1);
    sub_0800D108();
    ((struct PlayerDE84 *)((u8 *)gUnk_03003CE0+0x14C*sub_080020F4()))->value = 0;
    {
    u8 *var_r2_4;
    u32 var_r3_2;
    register u32 loopMask asm("r1");
    register u32 stride asm("r0");
    var_r2_4 = gUnk_030056F4;
    var_r3_2=0;flagsAddress=(volatile u32 *)&gUnk_030056FC;loopOne=1;loopZero=0;
    do {
        loopMask=loopOne<<var_r3_2;
        if ((*flagsAddress & loopMask) && (*(u16 *)(var_r2_4+0xC) == 0xC)) {
            *(u16 *)(var_r2_4+0xC) = loopZero;
        }
        var_r3_2 += 1;
        stride=0x2E0;var_r2_4+=stride;
    } while (var_r3_2 <= 4U);
    }
    sub_08019F04();
    do {
        var_r4 = 1;
        while(var_r4!=0) {sub_080003F0();if(sub_080021A8()!=0) break;var_r4--;}
        if (!(((u16) *(u16 *)(gStateDE84+4) >> 4) & 1)) {
            var_r5 = sub_08019C3C();
        } else {
            var_r5 = 1;
        }
    } while (var_r5 != 0);
    musicDE84(gUnk_03005CF8);
    gUnk_03005CF8 = (s32) var_r5;
    sub_08015D74();
    offset=sub_080020F4();offset*=0x14C;temp_r2_4=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_4+0x30) = (s32) (*(u32 *)(temp_r2_4+0x30) | 1);
    sub_0800D0F4();
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    temp_r4_3 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1404E8U);
    while(sub_0805EEFC((u8 *) temp_r4_3)==0) {if(sub_0800CDF8()!=0) {sub_0805EFBC();break;}sub_080003F0();}
    {
    register u8 *var_r0_3 asm("r0");
    callback=(u32)sub_0803E510;
    var_r0_3=findDE84(temp_r7);
    if (var_r0_3 != NULL) {
        *(u32 *)(var_r0_3+0x44) = callback;
    }
    }
    offset=sub_080020F4();offset*=0x14C;temp_r2_5=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_5+0x30) = (s32) (*(u32 *)(temp_r2_5+0x30) & ~1);
    sub_0800D108();
    sp10 = 0;
    pos.x = 0x7E00;
    pos.y = 0x8600;
    sp14 = 0x100040;
    temp_r4_4 = (u8 *)gUnk_03003CE0+0x14C*sub_080020F4();
    while(sub_08021FE0(temp_r4_4 + 0x8C, &pos.x, &sp10, &sp14) == 0) sub_080003F0();
    offset=sub_080020F4();offset*=0x14C;temp_r2_6=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_6+0x30) = (s32) (*(u32 *)(temp_r2_6+0x30) | 1);
    sub_0800D0F4();
    taskCallback=(u32)sub_08059890;
    var_r4_2 = (struct TaskDE84 *)(gStateDE84 + 0xE34);
    var_r5_2=0;goto taskCheck;
taskNext: var_r5_2++;var_r4_2++;
taskCheck:
    if(var_r5_2<=29) {
        if(sub_08000470((u32)var_r4_2)!=0) goto taskNext;
        while((var_r4_2->f20=(u8 *)sub_08001494(0x400))==0) sub_080003F0();
        temp_r0_3=var_r4_2->f20;
        var_r4_2->f8=0x3C;
        var_r4_2->fC=taskCallback;
        var_r4_2->f10=temp_r0_3+0x3FC;
        var_r4_2->f24=0;
        sub_08000274(var_r4_2,0);
    }
    while(sub_0805F184() != 0) sub_080003F0();
    while(sub_0805EF90() != 0) sub_080003F0();
    sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x1404EAU);
    sub_0802939C(0, 8);
    sub_080290E4(0, 4);
    sub_08028AAC(0, 0x79, 0x6D, 0xFA);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0x65U);
    }
    offset=sub_080020F4();offset*=0x14C;temp_r2_7=(u8 *)gUnk_03003CE0+offset;
    *(u32 *)(temp_r2_7+0x30) = (s32) (*(u32 *)(temp_r2_7+0x30) | 2);
    sub_08067D74();
    sub_08068070((u32) sub_0803E5D8, 0U);
    do {
        var_r4_3 = 1;
        while(var_r4_3!=0) {sub_080003F0();if(sub_080021A8()!=0) break;var_r4_3--;}
        if (sub_0800CE30() != 0) {
            var_r0_4 = gStateDE84 + 0x1C1;
        } else {
            var_r0_4 = gStateDE84 + 0x1B5;
        }
    } while (*var_r0_4 != temp_r0_2);
    sub_0801AA8C(0x1E);
    while(sub_0801AAE0() == 0) sub_080003F0();
    sub_08015D98();
    var_r1_5=findDE84(temp_r7);
    if (var_r1_5 != NULL) {
        *(u16 *)(var_r1_5+0x36) = 4;
    }
    sub_0802A228(0xC, 1);
    ((struct PlayerDE84 *)((u8 *)gUnk_03003CE0+0x14C*sub_080020F4()))->value = 0;
}

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
struct T43Slot1b7c { s32 id; u8 p04[0x14]; u16 f18,f1a; u8 p1c[0x1a]; u16 f36; u32 f38,f3c,f40; void (*f44)(void); u8 p48[0x28]; };
struct T43Tile1b7c { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile1b7c t43_tile1b7c asm("gUnk_03003170");
extern void t43_bb801b7c(s32,s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */
extern void sub_080308B4(void);

static inline struct T43Slot1b7c *t43_find1b7c(s32 id) {
    struct T43Slot1b7c *p = (struct T43Slot1b7c *)((u8 *)gUnk_03005CF4 + 0x7A4);
    u32 i;
    for (i=0; i<=14; i++,p++) if (p->id == id) return p;
    sub_080003F0();
    return 0;
}
static inline void t43_schedule1b7c(s32 id) {
    switch (id) {
    case 0: sub_08028AAC(0,0x6C,0x80,0); break;
    case 1: sub_08028AAC(0,0x84,0x80,0); break;
    case 2: sub_08028AAC(0,0x54,0x80,0); break;
    case 3: sub_08028AAC(0,0x9C,0x80,0); break;
    }
}

static inline void t43_move1b7c(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile1b7c.x;
 s32 y=t43_tile1b7c.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb801b7c((s16)a,(s16)b);
  sub_080003F0();
 }
}
static inline void t43_callback1b7c(s32 id, void (*cb)(void)) {
 struct T43Slot1b7c *p=t43_find1b7c(id);
 if (p != 0) p->f44=cb;
}
static inline void t43_flag1b7c(u8 *p, u32 mask) {
 register u32 value asm("r0") = *(u32 *)(p+0x3c);
 register u32 bits asm("r1") = mask;
 *(u32 *)(p+0x3c) = value | bits;
}
void sub_08041B7C(s32 arg0) {
    struct T43Slot1b7c *var_r1_2;
    struct T43Slot1b7c *var_r2_3;
    s32 temp_r0_2;
    s32 temp_r4;
    u16 var_r4;
    u32 temp_r4_2;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    t43_schedule1b7c(sub_080020F4());
    sub_080290E4(0, 4);
    var_r1_2 = t43_find1b7c(arg0);
    if (var_r1_2 != 0) var_r1_2->f36 = 4;
    temp_r4 = sub_080289C0(0x1003B, 0x78, 0x52);
    var_r2_3 = t43_find1b7c(temp_r4);
    if (var_r2_3 != 0) {
        var_r2_3->f18 = 8; { register u32 value asm("r0") = 16; var_r2_3->f1a=value; } t43_flag1b7c((u8 *)var_r2_3,16);
    }
    t43_callback1b7c(temp_r4, sub_080308B4);
    {
        s32 selected = sub_0800CE30();
        if (selected != 0) *((u8 *)gUnk_03005CF4+0x1BE)=0;
        else *((u8 *)gUnk_03005CF4+0x1B2)=selected;
    }
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
    t43_move1b7c(10,0,-24);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x1400FFU);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    t43_move1b7c(34,0,0);
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_3 + 0x30) &= ~1;
    sub_0800D108();
}
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
struct T43Tile20c8 { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile20c8 t43_tile20c8 asm("gUnk_03003170");
extern void t43_bb8020c8(s32, s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */

static inline void t43_move20c8(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile20c8.x;
 s32 y=t43_tile20c8.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb8020c8((s16)a,(s16)b);
  sub_080003F0();
 }
}
static inline u8 *t43_select20c8(void) {
 if (sub_0800CE30() != 0) return (u8 *)gUnk_03005CF4 + 0x1C4;
 return (u8 *)gUnk_03005CF4 + 0x1B8;
}
static inline s32 t43_test20c8(void) {
 register u32 one asm("r4") = 1;
 register s32 value asm("r0") = *t43_select20c8();
 return (value >> 7) & one;
}
void sub_080420C8(void) {
    s32 temp_r0_2;
    u16 var_r4;
    u32 temp_r4;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    switch (sub_080020F4()) {
    case 0: sub_08028AAC(0,0x6C,0x80,0); break;
    case 1: sub_08028AAC(0,0x84,0x80,0); break;
    case 2: sub_08028AAC(0,0x54,0x80,0); break;
    case 3: sub_08028AAC(0,0x9C,0x80,0); break;
    }
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
    t43_move20c8(10,0,-24);
    if (t43_test20c8()) {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140102);
    while (sub_0805EEFC((void *)temp_r4) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    } else {
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140101);
    while (sub_0805EEFC((void *)temp_r4) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    }
    t43_move20c8(34,0,0);
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_3 + 0x30) = (s32) (*(s32 *)(temp_r2_3 + 0x30) & ~1);
    sub_0800D108();
}
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
struct T43Slot25cc { s32 id; u8 p04[0x14]; u16 f18,f1a; u8 p1c[0x1a]; u16 f36; u32 f38,f3c,f40; void (*f44)(void); u8 p48[0x28]; };
struct T43Tile25cc { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile25cc t43_tile25cc asm("gUnk_03003170");
extern void t43_bb8025cc(s32,s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */
extern void sub_080308B4(void);

static inline struct T43Slot25cc *t43_find25cc(s32 id) {
    struct T43Slot25cc *p = (struct T43Slot25cc *)((u8 *)gUnk_03005CF4 + 0x7A4);
    u32 i;
    for (i=0; i<=14; i++,p++) if (p->id == id) return p;
    sub_080003F0();
    return 0;
}
static inline void t43_schedule25cc(s32 id) {
    switch (id) {
    case 0: sub_08028AAC(0,0x6C,0x80,0); break;
    case 1: sub_08028AAC(0,0x84,0x80,0); break;
    case 2: sub_08028AAC(0,0x54,0x80,0); break;
    case 3: sub_08028AAC(0,0x9C,0x80,0); break;
    }
}

static inline void t43_move25cc(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile25cc.x;
 s32 y=t43_tile25cc.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb8025cc((s16)a,(s16)b);
  sub_080003F0();
 }
}
static inline void t43_callback25cc(s32 id, void (*cb)(void)) {
 struct T43Slot25cc *p=t43_find25cc(id);
 if (p != 0) p->f44=cb;
}
static inline void t43_flag25cc(u8 *p, u32 mask) {
 register u32 value asm("r0") = *(u32 *)(p+0x3c);
 register u32 bits asm("r1") = mask;
 *(u32 *)(p+0x3c) = value | bits;
}
static inline u8 *t43_select25cc(void) {
 if (sub_0800CE30() != 0) return (u8 *)gUnk_03005CF4+0x1BE;
 return (u8 *)gUnk_03005CF4+0x1B2;
}
void sub_080425CC(s32 arg0) {
    struct T43Slot25cc *var_r1_2;
    struct T43Slot25cc *var_r2_3;
    s32 temp_r0_2;
    s32 temp_r4;
    u16 var_r4;
    u32 temp_r4_2;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    t43_schedule25cc(sub_080020F4());
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
    t43_move25cc(10,0,-24);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140104U);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    var_r1_2 = t43_find25cc(arg0);
    if (var_r1_2 != 0) var_r1_2->f36 = 4;
    temp_r4 = sub_080289C0(0x2003C, 0x78, 0x52);
    var_r2_3 = t43_find25cc(temp_r4);
    if (var_r2_3 != 0) {
        var_r2_3->f18 = 8; { register u32 value asm("r0") = 16; var_r2_3->f1a=value; } t43_flag25cc((u8 *)var_r2_3,16);
    }
    t43_callback25cc(temp_r4, sub_080308B4);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4_2 = sub_0805DF38(1U, 0xFU, 2U, 0U, -1, 0x140105U);
    while (sub_0805EEFC((void *)temp_r4_2) == 0) {
        if (sub_0800CDF8() != 0) { sub_0805EFBC(); break; }
        sub_080003F0();
    }
    t43_move25cc(34,0,0);
    { register u32 value asm("r4")=2; *t43_select25cc()=value; }
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_3 + 0x30) &= ~1;
    sub_0800D108();
}
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
struct T43Task2bb0 { u32 f0,f4,f8; void (*fc)(void); u8 *f10; u32 f14,f18,f1c; u8 *f20; u32 f24; };
struct T43Slot2bb0 { s32 id; u8 p04[0x14]; u16 f18,f1a; u8 p1c[0x1a]; u16 f36; u32 f38,f3c,f40; void (*f44)(void); u8 p48[0x28]; };
struct T43Tile2bb0 { u8 pad[0x80]; s16 x,y; };
extern struct T43Tile2bb0 t43_tile2bb0 asm("gUnk_03003170");
extern void t43_bb802bb0(s32,s32) asm("sub_0800BB80");
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */
extern void sub_080308B4(void);

static inline struct T43Slot2bb0 *t43_find2bb0(s32 id) {
    struct T43Slot2bb0 *p = (struct T43Slot2bb0 *)((u8 *)(u8 *)gUnk_03005CF4 + 0x7A4);
    u32 i;
    for (i=0; i<=14; i++,p++) if (p->id == id) return p;
    sub_080003F0();
    return 0;
}
static inline void t43_move2bb0(s16 step, s16 tx, s16 ty) {
 s32 a,b;
 s32 delta=step;
 s32 x=t43_tile2bb0.x;
 s32 y=t43_tile2bb0.y;
 s32 i;
 for(i=0;i<=0x400;i+=delta) {
  sub_080659F4(&a,x,tx,i);
  sub_080659F4(&b,y,ty,i);
  t43_bb802bb0((s16)a,(s16)b);
  sub_080003F0();
 }
}
static inline void t43_callback2bb0(s32 id, void (*cb)(void)) {
 struct T43Slot2bb0 *p=t43_find2bb0(id);
 if (p != 0) p->f44=cb;
}
static inline void t43_flag2bb0(u8 *p, u32 mask) {
 register u32 value asm("r0") = *(u32 *)(p+0x3c);
 register u32 bits asm("r1") = mask;
 *(u32 *)(p+0x3c) = value | bits;
}
void sub_0801A664(s32, s32);                           /* extern */
void sub_0801AA34(s32);                                /* extern */
void sub_0801AA8C(s32);                                /* extern */
s32 sub_0801AB24();                                 /* extern */
void sub_0801AB50(s32);                                /* extern */
void sub_0801AB90(s32);                                /* extern */
void sub_080290E4(s32, s32);                           /* extern */
void sub_0802939C(s32, s32);                           /* extern */
void sub_080576A8();                                   /* extern */
extern void sub_080435C4(void);
extern void sub_08043664(void);
extern void sub_08043A4C(void);
extern void sub_08043B20(void);
extern void sub_08043BF4(void);
extern void sub_08043CC8(void);
extern void sub_08043D9C(void);
extern void sub_08043E70(void);
extern void sub_08043F44(void);
extern void sub_08044018(void);
extern void sub_080440EC(void);
extern void sub_080441C0(void);
extern void sub_08044318(void);
extern void sub_080443EC(void);

static inline void t43_music2bb0(u32 track) {
 gUnk_03005CF8=track;
 if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(track);
}
static inline u8 *t43_select2bb0(u32 a,u32 b) {
 if (sub_0800CE30() != 0) return (u8 *)gUnk_03005CF4+a;
 return (u8 *)gUnk_03005CF4+b;
}
static inline void t43_clear2bb0(u8 *p, u32 bits) { *p &= ~bits; }
static inline s32 t43_byte2bb0(u8 *p) { return *p; }
static inline void t43_finish2bb0(s32 arg) {
 register s32 index asm("r1") = arg;
 asm("" : "+r"(index));
 if(index != 0) {
  sub_0805EFBC();
  do { sub_080003F0(); } while(sub_0805F184() != 0);
 }
}
static inline s32 t43_testBit22bb0(s32 value, u32 one) {
 register s32 shifted asm("r1");
 register s32 input asm("r0")=value;
 register u32 mask asm("r0");
 /* Preserve the signed extraction input; emits no CPU instruction. */
 asm("" : "+r"(input));
 shifted=input >> 2;
 mask=one;
 return shifted & mask;
}
static inline s32 t43_testBit42bb0(s32 value, u32 one) {
 register s32 shifted asm("r1");
 register s32 input asm("r0")=value;
 /* Preserve the signed extraction input; emits no CPU instruction. */
 asm("" : "+r"(input));
 shifted=input >> 4;
 return shifted & one;
}
static inline s32 t43_cond2bb0(void) {
 return t43_testBit22bb0(*t43_select2bb0(0x1C5,0x1B9),1);
}
static inline void t43_task2bb0(void (*callback)(void)) {
 struct T43Task2bb0 *p=(struct T43Task2bb0 *)((u8 *)gUnk_03005CF4+0xE34);
 register u32 i asm("r5");
 u8 *mem;
 i=0;
 goto check;
next:
 i++; p++;
check:
 if(i>29) return;
 if(sub_08000470((u32)p) != 0) goto next;
 while((p->f20=mem=sub_08001494(0x400)) == 0) sub_080003F0();
 p->f8=60; p->fc=callback; p->f10=mem+0x3fc; p->f24=0;
 sub_08000274((u32)p,0);
}
void sub_08042BB0(void) {
    struct T43Slot2bb0 *var_r2_11;
    struct T43Slot2bb0 *var_r2_14;
    struct T43Slot2bb0 *var_r2_18;
    struct T43Slot2bb0 *var_r2_21;
    struct T43Slot2bb0 *var_r2_24;
    struct T43Slot2bb0 *var_r2_27;
    struct T43Slot2bb0 *var_r2_2;
    struct T43Slot2bb0 *var_r2_30;
    struct T43Slot2bb0 *var_r2_33;
    struct T43Slot2bb0 *var_r2_36;
    struct T43Slot2bb0 *var_r2_39;
    struct T43Slot2bb0 *var_r2_5;
    struct T43Slot2bb0 *var_r2_8;
    s32 temp_r0_2;
    s32 temp_r4;
    s32 temp_r4_10;
    s32 temp_r4_11;
    s32 temp_r4_12;
    s32 temp_r4_13;
    s32 temp_r4_14;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r4_7;
    s32 temp_r4_8;
    s32 temp_r4_9;
    register s32 var_r0_13 asm("r0");
    u16 var_r4;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_5;
    u16 var_r4_8;
    u32 temp_r4_6;
    u8 *temp_r2;
    u8 *temp_r2_2;
    u8 *temp_r2_3;

    sub_0800CF90();
    var_r4 = 1;
    while (var_r4 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4--;
    }
    sub_0801A664(0, 2);
    var_r4_2 = 1;
    while (var_r4_2 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4_2--;
    }
    t43_music2bb0(0x189);
    temp_r4 = sub_080289C0(0x20, 0x5D, 0x52);
    var_r2_2 = t43_find2bb0(temp_r4);
    if (var_r2_2 != NULL) {
        var_r2_2->f18 = 8;
        var_r2_2->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_2, 0x10);
    }
    t43_callback2bb0(temp_r4, sub_08043A4C);
    temp_r4_2 = sub_080289C0(0x1F, 0x93, 0x52);
    var_r2_5 = t43_find2bb0(temp_r4_2);
    if (var_r2_5 != NULL) {
        var_r2_5->f18 = 8;
        var_r2_5->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_5, 0x10);
    }
    t43_callback2bb0(temp_r4_2, sub_08043B20);
    temp_r4_3 = sub_080289C0(0x13, 0xA0, 0x64);
    var_r2_8 = t43_find2bb0(temp_r4_3);
    if (var_r2_8 != NULL) {
        var_r2_8->f18 = 8;
        var_r2_8->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_8, 0x10);
    }
    t43_callback2bb0(temp_r4_3, sub_08043BF4);
    temp_r4_4 = sub_080289C0(0xA, 0x48, 0x64);
    var_r2_11 = t43_find2bb0(temp_r4_4);
    if (var_r2_11 != NULL) {
        var_r2_11->f18 = 8;
        var_r2_11->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_11, 0x10);
    }
    t43_callback2bb0(temp_r4_4, sub_08043CC8);
    temp_r4_5 = sub_080289C0(0x3A, 0x78, 0x52);
    var_r2_14 = t43_find2bb0(temp_r4_5);
    if (var_r2_14 != NULL) {
        var_r2_14->f18 = 8;
        var_r2_14->f1a = 0x10;
        t43_flag2bb0((u8 *)var_r2_14, 0x10);
    }
    t43_callback2bb0(temp_r4_5, sub_080443EC);
    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2 + 0x30) = (s32) (*(s32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    { register s32 index asm("r1")=sub_080020F4();
    switch (index) {
    case 0: sub_08028AAC(0,0x6C,0x90,0); break;
    case 1: sub_08028AAC(0,0x84,0x90,0); break;
    case 2: sub_08028AAC(0,0x54,0x90,0); break;
    case 3: sub_08028AAC(0,0x9C,0x90,0); break;
    }
    }
    sub_080290E4(0, 4);
    temp_r2_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_2 + 0x30) = (s32) (*(s32 *)(temp_r2_2 + 0x30) & ~2);
    sub_08067D74();
    var_r4_3 = 2;
    while (var_r4_3 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4_3--;
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
    t43_move2bb0(10,0,-24);
    t43_clear2bb0(t43_select2bb0(0x1C6,0x1BA),16);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4_6 = sub_0805DF38(1U, 0xFU, 2U, 0U, 45, 0x140206);
    while (sub_0805EEFC((void *) temp_r4_6) == 0) sub_080003F0();
    sub_0801AA8C(0x1E);
    while (sub_0801AAE0() == 0) sub_080003F0();
    var_r4_5 = 0x1E;
    while (var_r4_5 != 0) {
        sub_080003F0();
        if (sub_080021A8() != 0) break;
        var_r4_5--;
    }
    temp_r4_7 = sub_080289C0(0x9000C, 0xA0, 0x7C);
    var_r2_18 = t43_find2bb0(temp_r4_7);
    if (var_r2_18 != NULL) {
        var_r2_18->f18 = 8;
        var_r2_18->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_18, 0x10);
    }
    t43_callback2bb0(temp_r4_7, sub_08043D9C);
    temp_r4_8 = sub_080289C0(0xD, 0xB0, 0x7C);
    var_r2_21 = t43_find2bb0(temp_r4_8);
    if (var_r2_21 != NULL) {
        var_r2_21->f18 = 8;
        var_r2_21->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_21, 0x10);
    }
    t43_callback2bb0(temp_r4_8, sub_08043E70);
    temp_r4_9 = sub_080289C0(0x36, 0x54, 0x78);
    var_r2_24 = t43_find2bb0(temp_r4_9);
    if (var_r2_24 != NULL) {
        var_r2_24->f18 = 8;
        var_r2_24->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_24, 0x10);
    }
    t43_callback2bb0(temp_r4_9, sub_08044318);
    temp_r4_10 = sub_080289C0(0x40007, 0x38, 0x80);
    var_r2_27 = t43_find2bb0(temp_r4_10);
    if (var_r2_27 != NULL) {
        var_r2_27->f18 = 8;
        var_r2_27->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_27, 0x10);
    }
    t43_callback2bb0(temp_r4_10, sub_08044018);
    temp_r4_11 = sub_080289C0(0x50008, 0x48, 0x80);
    var_r2_30 = t43_find2bb0(temp_r4_11);
    if (var_r2_30 != NULL) {
        var_r2_30->f18 = 8;
        var_r2_30->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_30, 0x10);
    }
    t43_callback2bb0(temp_r4_11, sub_080440EC);
    temp_r4_12 = sub_080289C0(0x30006, 0x40, 0x74);
    var_r2_33 = t43_find2bb0(temp_r4_12);
    if (var_r2_33 != NULL) {
        var_r2_33->f18 = 8;
        var_r2_33->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_33, 0x10);
    }
    t43_callback2bb0(temp_r4_12, sub_08043F44);
    if (t43_cond2bb0()) var_r0_13=0x14000F;
    else var_r0_13=15;
    temp_r4_13 = sub_080289C0(var_r0_13, 0x94, 0x76);
    var_r2_36 = t43_find2bb0(temp_r4_13);
    if (var_r2_36 != NULL) {
        var_r2_36->f18 = 8;
        var_r2_36->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_36, 0x10);
    }
    t43_callback2bb0(temp_r4_13, sub_080441C0);
    temp_r4_14 = sub_080289C0(0x41, 0x78, 0xC8);
    var_r2_39 = t43_find2bb0(temp_r4_14);
    if (var_r2_39 != NULL) {
        var_r2_39->f18 = 8;
        var_r2_39->f1a = 4;
        t43_flag2bb0((u8 *)var_r2_39, 0x10);
    }
    t43_callback2bb0(temp_r4_14, sub_08043664);
    sub_0802939C(temp_r4_14, 4);
    sub_080289C0(0x41, 0x78, 0xC4);
    sub_0801AA34(0x1E);
    while (sub_0801AAE0() == 0) sub_080003F0();
    t43_move2bb0(34,0,0);
    t43_task2bb0(sub_080435C4);
    temp_r2_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(s32 *)(temp_r2_3 + 0x30) = (s32) (*(s32 *)(temp_r2_3 + 0x30) & ~1);
    sub_0800D108();
    {
        register u32 *base asm("r6") = (u32 *)&gUnk_03005CF4;
        register u32 one asm("r5") = 1;
        register s32 result asm("r1");
        do {
            var_r4_8 = 1;
            while (var_r4_8 != 0) {
                sub_080003F0();
                if (sub_080021A8() != 0) break;
                var_r4_8--;
            }
            {
                u8 *p;
                register s32 value asm("r0");
                register s32 bits asm("r1");
                if (sub_0800CE30() != 0) p=(u8 *)*base+0x1C6;
                else p=(u8 *)*base+0x1BA;
                value=t43_byte2bb0(p);
                result=t43_testBit42bb0(value,one);
            }
        } while (!result);
    }
    t43_finish2bb0(sub_080020F4());
}
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
