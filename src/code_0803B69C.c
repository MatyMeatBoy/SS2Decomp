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
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D1F8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D36C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D454);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803D99C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803DE84);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_0803E510);
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
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08041E8C);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080420C8);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08042390);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_080425CC);
INCLUDE_ASM("asm/nonmatchings/code_0803B69C", sub_08042938);
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
