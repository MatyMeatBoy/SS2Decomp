#include "global.h"

extern void sub_08019EB8(u16,s32);
extern void sub_0802949C(s32,s32);
extern void cameraMove50D3(s16,s16) asm("sub_0800BB80");
struct Entity50D3 {u16 f0,kind;u8 pad[0x2DC];};
extern struct Entity50D3 *entities50D3 asm("gUnk_030056F4");
struct Task50D3 {u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24;};
extern void taskStart50D3(void *,u32) asm("sub_08000274");
struct Command50D3 {u16 one,kind;u8 data[12];};
union Fixed50D3 {s32 whole;struct{u16 lo;s16 hi;}part;};
void sub_0804D330(u32 arg0) {
    s32 camY,camX;
    struct Command50D3 cmd; struct Command50D3 *cmdp;
    u32 cmdOne;register u32 cmdKind asm("r2");
    u8 *bytes;u32 cmdZero;
    u8 *sp20;
    struct Task50D3 *task;u32 i,mem;s32 callback,step;
    union Fixed50D3 targetX,targetY;
    s32 temp_r7;
    s32 temp_r8;
    s32 var_r0;
    s32 var_r4;
    u32 temp_r4;
    u32 temp_r4_10;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 temp_r4_6;
    u32 temp_r4_7;
    u32 temp_r4_8;
    u32 temp_r4_9;
    u32 var_r1;
    u32 var_r1_2;
    u32 var_r1_3;
    u32 var_r1_4;
    u32 var_r4_2;
    u32 var_r4_3;
    u32 var_r4_4;
    u32 var_r4_5;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_4;
    struct Player *temp_r2;

    switch (arg0) {                                 /* irregular */
    case 0:
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1,15,2,0,45,0x14004E);
while(sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
        step=0x22;
        targetX.whole=0;targetY.whole=0xFFE20000;
        temp_r8 = (s16) gUnk_03003170.f80;
        temp_r7 = (s16) gUnk_03003170.f82;
        var_r4 = 0;
        do {
            sub_080659F4(&camX, (s32) temp_r8, targetX.part.hi, var_r4);
            sub_080659F4(&camY, (s32) temp_r7, targetY.part.hi, var_r4);
            cameraMove50D3((s16)camX,(s16)camY);
            sub_080003F0();
            var_r4 += step;
        } while (var_r4 <= 0x400);
        temp_r2 = &gUnk_03003CE0[sub_080020F4()];
        temp_r2->flags = (s32) (temp_r2->flags & ~1);
        sub_0800D108();
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1,15,2,0,45,0x14004F);
while(sub_0805EEFC((void *) temp_r4_2) == 0) sub_080003F0();
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_3 = sub_0805DF38(1,15,2,0,45,0x140050);
        cmdOne=1;cmdKind=0x1C;cmdp=&cmd;cmdp->one=cmdOne;cmdp->kind=cmdKind;
        var_r1=0;bytes=cmd.data;cmdZero=0;
        do {
            bytes[var_r1] = cmdZero;
            var_r1 += 1;
        } while (var_r1 <= 0xBU);
while(sub_08067B9C(0xE800U, 0x8C00U, &cmd) == 0) sub_080003F0();
while(sub_0805EEFC((void *) temp_r4_3) == 0) sub_080003F0();
    callback = (s32)sub_0804D330;
    task = (struct Task50D3 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D3(task,6);
        break;
    }
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1,15,2,0,45,0x140051);
while(sub_0805EEFC((void *) temp_r4_4) == 0) sub_080003F0();
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_5 = sub_0805DF38(1,15,2,0,45,0x140052);
        sub_0805D37C(0xE800, 0x8C00, 6);
        sub_080687A8();
        cmdOne=1;cmdKind=2;cmdp=&cmd;cmdp->one=cmdOne;cmdp->kind=cmdKind;
        var_r1_2=0;bytes=cmd.data;cmdZero=0;
        do {
            bytes[var_r1_2] = cmdZero;
            var_r1_2 += 1;
        } while (var_r1_2 <= 0xBU);
while(sub_08067B9C(0xE800U, 0x8C00U, &cmd) == 0) sub_080003F0();
while(sub_0805EEFC((void *) temp_r4_5) == 0) sub_080003F0();
    callback = (s32)sub_0804D330;
    task = (struct Task50D3 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D3(task,6);
        break;
    }
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_6 = sub_0805DF38(1,15,2,0,45,0x140053);
while(sub_0805EEFC((void *) temp_r4_6) == 0) sub_080003F0();
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_7 = sub_0805DF38(1,15,2,0,45,0x140054);
        sub_0805D37C(0xE800, 0x8C00, 6);
        sub_080687A8();
        cmdOne=1;cmdKind=0x2F;cmdp=&cmd;cmdp->one=cmdOne;cmdp->kind=cmdKind;
        var_r1_3=0;bytes=cmd.data;cmdZero=0;
        do {
            bytes[var_r1_3] = cmdZero;
            var_r1_3 += 1;
        } while (var_r1_3 <= 0xBU);
while(sub_08067B9C(0xE800U, 0x8C00U, &cmd) == 0) sub_080003F0();
while(sub_0805EEFC((void *) temp_r4_7) == 0) sub_080003F0();
    callback = (s32)sub_0804D330;
    task = (struct Task50D3 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D3(task,6);
        break;
    }
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_8 = sub_0805DF38(1,15,2,0,45,0x140055);
while(sub_0805EEFC((void *) temp_r4_8) == 0) sub_080003F0();
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_9 = sub_0805DF38(1,15,2,0,45,0x140056);
        sub_0805D37C(0xE800, 0x8C00, 6);
        sub_080687A8();
        cmdOne=1;cmdKind=0x1A;cmdp=&cmd;cmdp->one=cmdOne;cmdp->kind=cmdKind;
        var_r1_4=0;bytes=cmd.data;cmdZero=0;
        do {
            bytes[var_r1_4] = cmdZero;
            var_r1_4 += 1;
        } while (var_r1_4 <= 0xBU);
while(sub_08067B9C(0xE800U, 0x8C00U, &cmd) == 0) sub_080003F0();
while(sub_0805EEFC((void *) temp_r4_9) == 0) sub_080003F0();
    callback = (s32)sub_0804D330;
    task = (struct Task50D3 *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart50D3(task,6);
        break;
    }
while(sub_0805F184() != 0) sub_080003F0();
while(sub_0805EF90() != 0) sub_080003F0();
        temp_r4_10 = sub_0805DF38(1,15,2,0,45,0x140057);
while(sub_0805EEFC((void *) temp_r4_10) == 0) sub_080003F0();
        sub_0805D37C(0xE800, 0x8C00, 6);
        sub_080687A8();
        return;
    case 1:
        sub_08019EB8(entities50D3[0].kind, 3);
        var_r0 = 1;goto block_149;
    case 2:
        sub_08019EB8(entities50D3[1].kind, 3);
        var_r0 = 2;
        goto block_149;
    case 3:
        sub_08019EB8(entities50D3[2].kind, 3);
        var_r0 = 3;
        goto block_149;
    case 4:
        sub_08019EB8(entities50D3[3].kind, 3);
        var_r0 = 4;
        goto block_149;
    case 5:
        sub_08019EB8(entities50D3[4].kind, 3);
        var_r0 = 5;
block_149:
        sub_0802949C(var_r0,0);return;
    case 6:
        sub_08028D98(1, 0, -4, 4);
        sub_08028D98(1, 0, 4, 4);
        sub_08028D98(2, 0, -4, 4);
        sub_08028D98(2, 0, 4, 4);
        sub_08028D98(4, 0, -4, 4);
        sub_08028D98(4, 0, 4, 4);
        sub_08028D98(5, 0, -4, 4);
        sub_08028D98(5, 0, 4, 4);
        return;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0805664C(s32);
struct Task51DA { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51DA(void *,u32) asm("sub_08000274");
void sub_0804DA44(void) {
    struct Task51DA *task;
    u32 i,mem;
    s32 callback;
    s32 r;
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
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
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DA *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DA(task,12);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DA *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DA(task,13);
        break;
    }
}
struct Task51DB { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51DB(void *,u32) asm("sub_08000274");
void sub_0804DB48(void) {
    struct Task51DB *task;
    u32 i,mem;
    s32 callback;
    s32 r;
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
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
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DB(task,6);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DB(task,7);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DB(task,8);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DB(task,9);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DB(task,10);
        break;
    }
    callback = (s32)sub_0805664C;
    task = (struct Task51DB *)(gUnk_03005CF4 + 0xE34);
    for (i=0; i<=29; i++,task++) {
        if (sub_08000470((u32)task)) continue;
        while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        task->f8 = 0x3C;
        task->fC = callback;
        task->f10 = mem + 0x3FC;
        task->f24 = 0;
        taskStart51DB(task,11);
        break;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0802939C(s32,s32);
extern void cameraMove51DD(s16,s16) asm("sub_0800BB80");
union Fixed51DD { s32 whole; struct { u16 lo; s16 hi; } part; };
struct Task51DD { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51DD(void *,u32) asm("sub_08000274");
struct HalfDD {u32 pad; u16 flags;};
void sub_0804DDBC(void) {
    s32 out[6];
    s32 *sp20,*sp24;
    union Fixed51DD xa,ya,xb,yb,xc,yc;
    s32 status1,status2,step3;
    s32 *statusptr1,*statusptr2;
    u32 *word;
    u32 mask;
    u32 *word2,mask2; u16 *half,halfmask;
    u8 *entry;
    s32 *entryFlags;
    u32 one,zero;
    s32 bitTemp;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r7;
    s32 temp_r8;
    s32 temp_r8_2;
    s32 temp_r9;
    s32 *var_r1;
    s32 *var_r1_2;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 var_r4;
    s32 var_r4_4;
    s32 var_r4_6;
    s32 var_r4_8;
    s32 var_r6;
    u16 var_r4_3;
    u16 var_r4_5;
    u16 var_r4_7;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    u32 temp_r4_5;
    u32 var_r2;
    u32 var_r2_2;
    u32 var_r3;
    struct Task51DD *var_r4_2;
    s32 callback;
    u32 var_r5;
    u32 temp_r0_2;
    struct Player *temp_r2;
    struct Player *temp_r2_2;
    void *var_r2_3;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_08002164() == 1) {
        var_r4 = 0;
    } else {
        var_r6 = sub_080020F4();
        switch (var_r6) {                           /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r4 = -0xC;
            break;
        case 1:                                     /* switch 1 */
            var_r4 = 0xC;
            break;
        case 2:                                     /* switch 1 */
            var_r4 = -0x24;
            break;
        case 3:                                     /* switch 1 */
            var_r4 = 0x24;
            break;
        }
    }
    sub_08028AAC(0, (s32) (u16) (var_r4 + 0x78), 0xC0, 0);
    temp_r0 = sub_080289C0(0x11, 0x78, 0x96);
    sub_0802939C(temp_r0, 0);
    sub_08028AAC(1, 0x78, 0, 0);
    callback = (s32)sub_0805A194;
    var_r4_2 = (struct Task51DD *)(gUnk_03005CF4+0xE34);
    var_r5 = 0;
    sp20 = &out[4];
    sp24 = &out[5];
    goto taskcheck51DD;
tasknext51DD: var_r5++; var_r4_2++;
taskcheck51DD: if(var_r5<=29) {
        if (sub_08000470((u32)var_r4_2)) goto tasknext51DD;
        while ((var_r4_2->f20 = temp_r0_2 = sub_08001494(0x400)) == 0) sub_080003F0();
        var_r4_2->f8 = 0x3C;
        var_r4_2->fC = callback;
        var_r4_2->f10 = temp_r0_2+0x3FC;
        var_r4_2->f24 = 0;
        taskStart51DD(var_r4_2,temp_r0);
        var_r6 = (s32)var_r4_2;
    }
    for (var_r4_3=1;var_r4_3;var_r4_3--) { sub_080003F0(); if(sub_080021A8())break; }
    if (sub_0800CC98() == 0) {
        temp_r0_3 = sub_0801AB24();
        switch (temp_r0_3) {                        /* switch 2; irregular */
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
    status1=0xD9; statusptr1=&gUnk_03005CF8; *statusptr1=status1;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xD9U);
    }
    word=(u32 *)(gUnk_03005CF4+0x38); mask=2;
    if (!(*word & mask)) {
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_3 = sub_0805DF38(1,15,2,0,45,0x140048);
        while (sub_0805EEFC((void *) temp_r4_3) == 0) sub_080003F0();
        temp_r8_2 = (s16) gUnk_03003170.f80;
        temp_r7 = (s16) gUnk_03003170.f82;
        var_r4_6 = 0;
        xa.whole=0; ya.whole=0xFFA60000;
    do {
            sub_080659F4(&out[0], (s32) temp_r8_2, xa.part.hi, var_r4_6);
            sub_080659F4(&out[1], (s32) temp_r7, ya.part.hi, var_r4_6);
            cameraMove51DD((s16) out[0], (s16) out[1]);
            sub_080003F0();
            var_r4_6 += 0x11;
        } while (var_r4_6 <= 0x400);
        sub_08028AAC(1, 0x78, 0x5A, 0xB4);
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_4 = sub_0805DF38(1,15,2,0,45,0x140049);
        while (sub_0805EEFC((void *) temp_r4_4) == 0) sub_080003F0();
        if ((var_r6 != 0) && (sub_08000470((u32) var_r6) != 0)) {
            sub_080003A8(var_r6);
        }
        sub_08028AAC(temp_r0, 0x78, 0x50, 0x2D);
        var_r1_2=(s32 *)(gUnk_03005CF4+0x7A4);
        var_r2_2=0;
        do {
            if (*var_r1_2==temp_r0) goto found2;
            var_r2_2++; var_r1_2+=0x1C;
        } while(var_r2_2<=14);
        sub_080003F0(); var_r1_2=NULL;
found2:
        if (var_r1_2 != NULL) {
            *(u16 *)((u8 *)var_r1_2+0x36) = 4;
        }
        for (var_r4_7=60;var_r4_7;var_r4_7--) { sub_080003F0(); if(sub_080021A8())break; }
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_5 = sub_0805DF38(1,15,2,0,45,0x14004A);
        while (sub_0805EEFC((void *) temp_r4_5) == 0) sub_080003F0();
        word2=(u32 *)(gUnk_03005CF4+0x38); mask2=2; *word2=mask2 | *word2;
        } else {
        temp_r9 = (s16) gUnk_03003170.f80;
        temp_r8 = (s16) gUnk_03003170.f82;
        var_r4_4 = 0;
        xb.whole=0; yb.whole=0xFFA60000;
    do {
            sub_080659F4(&out[2], (s32) temp_r9, xb.part.hi, var_r4_4);
            sub_080659F4(&out[3], (s32) temp_r8, yb.part.hi, var_r4_4);
            cameraMove51DD((s16) out[2], (s16) out[3]);
            sub_080003F0();
            var_r4_4 += 0x11;
        } while (var_r4_4 <= 0x400);
        sub_08028AAC(1, 0x78, 0x5A, 0xB4);
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1,15,2,0,45,0x14004C);
        while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
        if ((var_r6 != 0) && (sub_08000470((u32) var_r6) != 0)) {
            sub_080003A8(var_r6);
        }
        sub_08028AAC(temp_r0, 0x78, 0x50, 0x2D);
        var_r1=(s32 *)(gUnk_03005CF4+0x7A4);
        var_r2=0;
        do {
            if (*var_r1==temp_r0) goto found1;
            var_r2++; var_r1+=0x1C;
        } while(var_r2<=14);
        sub_080003F0(); var_r1=NULL;
found1:
        if (var_r1 != NULL) {
            *(u16 *)((u8 *)var_r1+0x36) = 4;
        }
        for (var_r4_5=60;var_r4_5;var_r4_5--) { sub_080003F0(); if(sub_080021A8())break; }
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4_2 = sub_0805DF38(1,15,2,0,45,0x14004D);
        while (sub_0805EEFC((void *) temp_r4_2) == 0) sub_080003F0();
        }
    step3=0x22;
    temp_r6 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_8 = 0;
    xc.whole=0; yc.whole=0;
    do {
        sub_080659F4(sp20, (s32) temp_r6, xc.part.hi, var_r4_8);
        sub_080659F4(sp24, (s32) temp_r5, yc.part.hi, var_r4_8);
        cameraMove51DD((s16) out[4], (s16) out[5]);
        sub_080003F0();
        var_r4_8 += step3;
    } while (var_r4_8 <= 0x400);
    status2=0xB; statusptr2=&gUnk_03005CF8; *statusptr2=status2;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xBU);
    }
    entry=gUnk_030056F4;
    var_r3=0;
    entryFlags=&gUnk_030056FC;
    one=1; zero=0;
entry_loop:
    if ((*entryFlags & (bitTemp=one<<var_r3)) && *(u16 *)(entry+0xC)==0xC) *(u16 *)(entry+0xC)=zero;
    var_r3++; entry+=0x2E0;
    if(var_r3<=4)goto entry_loop;
    sub_08019F04();
    ((struct HalfDD *)gUnk_03005CF4)->flags |= 32;
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0804E7B8(s32);
extern void sub_0804E628(s32);
struct Task51E3 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51E3(void *,u32) asm("sub_08000274");
static inline u8 testMask51E3(u32 value,u32 mask) { u32 result=value & mask; if(result)result=1; return result; }
struct WrapperTask51E3 { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
struct Args51E3 { u32 a,b,c; void (*callback)(s32); void *data; u32 f; };
void sub_0804E360(void) {
    struct Args51E3 args;
    struct WrapperTask51E3 *firstTask;
    struct Task51E3 *secondTask;
    u32 firstIndex,secondIndex,mem,firstMem; register u32 zero asm("r5"); register u32 data asm("r0");
    s32 firstCallback,secondCallback;
    s32 r;
    u32 flags,bit,yes;
    s32 hidden;
    struct Player *player;
    u8 *state;
    state = (u8 *)gUnk_03005CF4;
    bit = 1;
    flags = *(u32 *)(state+0x38);
    yes = testMask51E3(flags,bit);
    if (yes) {
        hidden = 0x270F;
        sub_08028AAC(6,hidden,hidden,0);
        sub_08028AAC(7,hidden,hidden,0);
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
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
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
        return;
    }
    if (!(flags & 2)) {
    player=&gUnk_03003CE0[sub_080020F4()];
    player->flags |= bit;
    sub_0800D0F4();
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
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
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    firstCallback = (s32)sub_0804E7B8;
    firstTask = (struct WrapperTask51E3 *)(gUnk_03005CF4 + 0xE34);
    firstIndex=0;
    goto wrapper_check1;
wrapper_next1:
    firstIndex++;
    firstTask++;
wrapper_check1:
    if (firstIndex<=29) {
        zero = sub_08000470((u32)firstTask);
        if (zero) goto wrapper_next1;
        args.callback = (void (*)(s32))firstCallback;
        data = 0;
        args.data = (void *)data;
        firstTask->f8 = 0x3C;
        firstTask->f20 = sub_08001494(0x400);
        firstTask->fC = (u32)sub_0802A104;
        firstTask->f10 = firstTask->f20 + 0x3FC;
        firstTask->f24 = zero;
        sub_08000274(firstTask,&args,6);
        sub_080003F0();
        sub_080003F0();
    }
    secondCallback = (s32)sub_0804E628;
    secondTask = (struct Task51E3 *)(gUnk_03005CF4 + 0xE34);
    for (secondIndex=0;secondIndex<=29;secondIndex++,secondTask++) {
        if (sub_08000470((u32)secondTask)) continue;
        while ((secondTask->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        secondTask->f8 = 0x3C;
        secondTask->fC = secondCallback;
        secondTask->f10 = mem + 0x3FC;
        secondTask->f24 = 0;
        taskStart51E3(secondTask,0);
        break;
    }
    } else {
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
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
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    firstCallback = (s32)sub_0804E7B8;
    firstTask = (struct WrapperTask51E3 *)(gUnk_03005CF4 + 0xE34);
    firstIndex=0;
    goto wrapper_check2;
wrapper_next2:
    firstIndex++;
    firstTask++;
wrapper_check2:
    if (firstIndex<=29) {
        zero = sub_08000470((u32)firstTask);
        if (zero) goto wrapper_next2;
        args.callback = (void (*)(s32))firstCallback;
        data = 0;
        args.data = (void *)data;
        firstTask->f8 = 0x3C;
        firstTask->f20 = sub_08001494(0x400);
        firstTask->fC = (u32)sub_0802A104;
        firstTask->f10 = firstTask->f20 + 0x3FC;
        firstTask->f24 = zero;
        sub_08000274(firstTask,&args,6);
        sub_080003F0();
        sub_080003F0();
    }
    secondCallback = (s32)sub_0804E628;
    secondTask = (struct Task51E3 *)(gUnk_03005CF4 + 0xE34);
    for (secondIndex=0;secondIndex<=29;secondIndex++,secondTask++) {
        if (sub_08000470((u32)secondTask)) continue;
        while ((secondTask->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
        secondTask->f8 = 0x3C;
        secondTask->fC = secondCallback;
        secondTask->f10 = mem + 0x3FC;
        secondTask->f24 = 0;
        taskStart51E3(secondTask,1);
        break;
    }
    }
}
void sub_0804E628(s32 arg0) {
    u16 timer;
    u32 handle, current;
    s32 neg, negLoop;
    struct Player *player;
    u32 *word;
    u32 bit;
    switch(arg0) {
    case 0:
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x14005B);
        sub_08028D98(6,2,0,5);
        current = -2;
        sub_08028D98(6,current,0,5);
        sub_08028D98(6,2,0,5);
        sub_08028D98(6,current,0,5);
        current = handle;
        while(!sub_0805EEFC((void *)current)) sub_080003F0();
        while(sub_0805F184()) sub_080003F0();
        while(sub_0805EF90()) sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x14005C);
        sub_08028D98(6,2,0,5);
        current = -2;
        sub_08028D98(6,current,0,5);
        sub_08028D98(6,2,0,5);
        sub_08028D98(6,current,0,5);
        current = handle;
        while(!sub_0805EEFC((void *)current)) sub_080003F0();
        word = (u32 *)(gUnk_03005CF4 + 0x38);
        bit = 2;
        *word = bit | *word;
        player = &gUnk_03003CE0[sub_080020F4()];
        player->flags &= ~1;
        sub_0800D108();
    case 1:
        negLoop = -2;
        for (;;) {
            for(timer=120;timer;timer--) {
                sub_080003F0();
                if(sub_080021A8()) break;
            }
            sub_08028D98(6,2,0,5);
            sub_08028D98(6,negLoop,0,5);
            sub_08028D98(6,2,0,5);
            sub_08028D98(6,negLoop,0,5);
        }
    }
}
extern void sub_080290E4(s32,s32);
extern void sub_08029174(s32,s32);
extern void sub_0802939C(s32,s32);
struct State51E7 { u8 pad[0x38]; u32 flags; };
extern struct State51E7 *state51E7 asm("gUnk_03005CF4");
static inline void firstEffect51E7(s32 value){sub_08073E2C(value,value,0x29,1);}
void sub_0804E7B8(s32 arg0) {
    s32 x,y;
    s32 *var_r1;
    s32 temp_r0;
    s32 temp_r2;
    struct Player *temp_r1;
    u16 var_r4;
    u16 var_r4_2;
    u16 var_r4_3;

    u32 var_r2;
    struct Player *temp_r2_2;
    struct State51E7 *state;

    switch (arg0) {                                 /* irregular */
    case 0:
        sub_08068070((u32) sub_0804E7B8, 1U);
        return;
    case 1:
        state = state51E7;
        temp_r2 = state->flags;
        y=temp_r2 & arg0;
        if (y) {
            return;
        }
        state->flags = (s32) (temp_r2 | arg0);
        if (sub_0800CCCC() != 0) {
            return;
        }
        temp_r1 = &gUnk_03003CE0[sub_080020F4()];
        temp_r1->flags |= arg0;
        sub_0800D0F4();
        firstEffect51E7(0x4000);
        for (var_r4=2;var_r4;var_r4--) {
            sub_080003F0();
            if (sub_080021A8()) break;
        }
        x=0x3800; y=0x4000; sub_08073E2C(x,y,0x29,1);
        x=0x4400; y=0x3800; sub_08073E2C(x,y,0x29,1);
        for (var_r4_2=2;var_r4_2;var_r4_2--) {
            sub_080003F0();
            if (sub_080021A8()) break;
        }
        x=0x4800; y=0x4000; sub_08073E2C(x,y,0x29,1);
        x=0x3C00; y=0x3800; sub_08073E2C(x,y,0x29,1);
        for (var_r4_3=8;var_r4_3;var_r4_3--) {
            sub_080003F0();
            if (sub_080021A8()) break;
        }
        temp_r0 = sub_080289C0(0x2F, 0x40, 0x40);
        arg0 = -10;
        sub_08028D98(temp_r0, 0, arg0, 2);
        sub_08028D98(temp_r0, 0, arg0, 3);
        sub_08028D98(temp_r0, 0, arg0, 4);
        sub_08028D98(temp_r0, 0, arg0, 5);
        sub_08028D98(temp_r0, 0, 0xC, 5);
        sub_08028D98(temp_r0, 0, 0xC, 4);
        sub_08028D98(temp_r0, 0, 0xC, 3);
        sub_08028D98(temp_r0, 0, 0xC, 2);
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        arg0 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140059U);
        while (sub_0805EEFC((void *) arg0) == 0) sub_080003F0();
        sub_0802939C(temp_r0, 8);
        sub_080290E4(temp_r0, 6);
        sub_08028AAC(temp_r0, 0x72, 0x48, 0x28);
        sub_08029174(temp_r0, 0);
        sub_080290E4(temp_r0, 4);
        arg0 = -2;
        sub_08028D98(temp_r0, 0, arg0, 4);
        sub_08028D98(temp_r0, 0, 2, 4);
        sub_08028D98(temp_r0, 0, arg0, 4);
        sub_08028D98(temp_r0, 0, 2, 4);
        while (sub_0805F184() != 0) sub_080003F0();
        while (sub_0805EF90() != 0) sub_080003F0();
        arg0 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x14005AU);
        while (sub_0805EEFC((void *) arg0) == 0) sub_080003F0();
        temp_r2=0x270F;
        sub_08028AAC(7,temp_r2,temp_r2,0);
        temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
        temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
        sub_0800D108();
        sub_0802939C(temp_r0, 8);
        sub_080290E4(temp_r0, 0);
        sub_08028AAC(temp_r0, 0x72, 0x72, 0x14);
        sub_080290E4(temp_r0, 6);
        sub_08028AAC(temp_r0, 0xB0, 0x90, 0x1E);
        sub_080290E4(temp_r0, 4);
        sub_08028AAC(temp_r0, 0xAC, 0, 0x3C);
        var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
        var_r2=0;
        do {
            if (*var_r1 == temp_r0) goto found;
            var_r2++;
            var_r1+=0x1C;
        } while(var_r2<=14);
        sub_080003F0();
        var_r1=NULL;
found:
        if (var_r1 != NULL) {
            *(u16 *)((u8 *)var_r1 + 0x36) = 4;
        }
        return;
    }
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0804ED18(s32);
extern void sub_0805A1B4(s32);
struct Entity51EA { u8 pad[0x30]; u32 f30,f34,f38,f3C; };
extern struct Entity51EA *entities51EA asm("gUnk_030056F4");
void sub_0804EABC(void) {
    s32 *var_r0_3;
    s32 *var_r1;
    s32 *var_r1_2;
    s32 *var_r1_3;
    s32 *var_r2_2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r4;
    s32 var_r7;
    s32 raw, bit2;
    s32 masked;
    register u8 byteOne asm("r0");
    u32 one; u32 firstId;
    s32 callback, callback2;
    s32 secondRaw;
    u32 fieldOne, waitOne, zero, topMask;
    s32 *flagsaddr, *waitFlags; s32 *loopBase;
    register u32 loopOne asm("r5");
    u8 *state; u8 **searchBase;
    struct Entity51EA *entity;
    u16 var_r4;
    u32 var_r2;
    u32 var_r2_3;
    u32 var_r2_4;
    u8 *var_r0;
    u8 *var_r0_2;
    u8 *var_r0_4;

    state = (u8 *)gUnk_03005CF4;
    topMask = 4;
    raw = *(u32 *)(state + 0x38);
    if (!(raw & topMask)) {
        one = 1;
        temp_r4 = one & ((sub_0800CE30() ? (s32)*(u8 *)(gUnk_03005CF4 + 0x1C3) : (s32)*(u8 *)(gUnk_03005CF4 + 0x1B7)) >> 1);
        if (sub_0800CE30() != 0) {
            var_r0_2 = (u8 *)gUnk_03005CF4 + 0x1C3;
        } else {
            var_r0_2 = (u8 *)gUnk_03005CF4 + 0x1B7;
        }
        secondRaw = *var_r0_2;
        bit2 = secondRaw >> 2;
        byteOne=1; bit2 &= byteOne;
        masked=bit2;
        if (!masked && (temp_r4 != 0)) {
            firstId=1;
            sub_08028AAC(firstId, 0x80, 0x50, 0);
            var_r7 = (s32)sub_0804ED18;
            fieldOne = 1;
            flagsaddr = &gUnk_030056FC;
            if (!(*flagsaddr & fieldOne)) {
                waitFlags = flagsaddr;
                waitOne = 1;
                do { sub_080003F0(); } while (!(*waitFlags & waitOne));
            }
            entity = entities51EA;
            entity->f38 = var_r7;
            entity->f3C = fieldOne;
            zero = 0;
            entity->f30 = zero;
            entity->f34 = zero;
            var_r7 = sub_080289C0(0x20039, 0x80, 0x50);
            var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
            var_r2 = 0;
    do {
        if (*var_r1 == var_r7) { var_r2_2 = var_r1; goto found1; }
        var_r2++;
        var_r1 += 0x1C;
    } while (var_r2<=14);
    sub_080003F0();
    var_r2_2 = NULL;
found1:
    if (var_r2_2 != NULL) {
                *(u16 *)((u8 *)var_r2_2 + 0x18) = 8;
                *(u16 *)((u8 *)var_r2_2 + 0x1A) = 4;
                var_r2_2[15] = (s32) (var_r2_2[15] | 0x10);
            }
            callback2 = (s32)sub_0805A1B4;
            var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
            var_r2_3 = 0;
    do {
        if (*var_r1_2 == var_r7) { var_r0_3 = var_r1_2; goto found2; }
        var_r2_3++;
        var_r1_2 += 0x1C;
    } while (var_r2_3<=14);
    sub_080003F0();
    var_r0_3 = NULL;
found2:
    if (var_r0_3 != NULL) {
                var_r0_3[17] = callback2;
            }
        } else {
            sub_08028AAC(1, 0x270F, 0x270F, 0);
            sub_08068070((u32) sub_08059954, 2U);
        }
        if (sub_0800CC98() == 0) {
            temp_r0_2 = sub_0801AB24();
            switch (temp_r0_2) {                    /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 1 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 1 */
                sub_0801AB90(6);
                break;
            }
            while (!sub_0801AAE0()) sub_080003F0();
        }
        loopBase = &gUnk_03005CF4;
        loopOne = 1;
        do {
            for(var_r4=1;var_r4;var_r4--) {
                sub_080003F0();
                if (sub_080021A8()) break;
            }
            if (sub_0800CE30() != 0) {
                var_r0_4 = (u8 *)*loopBase + 0x1C3;
            } else {
                var_r0_4 = (u8 *)*loopBase + 0x1B7;
            }
            secondRaw = *var_r0_4;
            bit2 = secondRaw >> 2;
            bit2 &= loopOne;
            searchBase=(u8 **)&gUnk_03005CF4;
        } while (!bit2);
        var_r1_3 = (s32 *)(*searchBase + 0x7A4);
        var_r2_4 = 0;
    do {
        if (*var_r1_3 == var_r7) { var_r1_3 = var_r1_3; goto found3; }
        var_r2_4++;
        var_r1_3 += 0x1C;
    } while (var_r2_4<=14);
    sub_080003F0();
    var_r1_3 = NULL;
found3:
    if (var_r1_3 != NULL) {
            *(u16 *)((u8 *)var_r1_3 + 0x36) = 4;
        }
    } else {
        if (sub_0800CC98() == 0) {
            temp_r0 = sub_0801AB24();
            switch (temp_r0) {                      /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 2 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 2 */
                sub_0801AB90(6);
                break;
            }
            while (!sub_0801AAE0()) sub_080003F0();
        }
    }
}
extern void sub_080290E4(s32,s32);
extern void sub_0804EE20(void);
struct Task51ED { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51ED(void *,u32) asm("sub_08000274");
void sub_0804ED18(s32 arg0) {
    u8 *p;
    register u8 **stateAddr asm("r2");
    register u8 *stateBase asm("r0");
    u32 offset; register u32 taskOffset asm("r2");
    register u32 byteMask asm("r0");
    u8 **savedAddr;
    s32 value;
    s32 mask; register s32 raw asm("r1");
    u8 *state;
    struct Task51ED *task;
    u32 i,mem;
    s32 callback;
    u16 timer;
    if(sub_0800CE30()) {
        stateAddr=(u8 **)&gUnk_03005CF4;
        stateBase=*stateAddr;
        offset=0x1C3;
    } else {
        stateAddr=(u8 **)&gUnk_03005CF4;
        stateBase=*stateAddr;
        offset=0x1B7;
    }
    p=stateBase+offset;
    raw=*p;
    byteMask=4;
    *p=byteMask|raw;
    savedAddr=stateAddr;
    state=*savedAddr;
    mask = 8;
    value = *(u32 *)(state + 0x38);
    if (!(value & mask)) {
        *(u32 *)(state + 0x38) = value | mask;
        if (sub_0800CCCC() == 0) {
            callback = (s32)sub_0804EE20;
            stateBase=*savedAddr;
            /* Retain the split assignment for agbcc's address allocation. */
            if(arg0) taskOffset=0xE34;
            else taskOffset=0xE34;
            task = (struct Task51ED *)(stateBase + taskOffset);
            for (i=0; i<=29; i++,task++) {
                if (sub_08000470((u32)task)) continue;
                while ((task->f20 = mem = sub_08001494(0x400)) == 0) sub_080003F0();
                task->f8 = 0x3C;
                task->fC = callback;
                task->f10 = mem + 0x3FC;
                task->f24 = 0;
                taskStart51ED(task,0);
                break;
            }
            for (timer=1;timer!=0;timer--) {
                sub_080003F0();
                if (sub_080021A8()) break;
            }
            if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x75);
            sub_080290E4(arg0,0);
            sub_08028D98(arg0,0,-0xC8,0xC8);
            sub_08006D5C(0x75);
        } else sub_08028D98(arg0,0,-0xC8,0xC8);
    }
}
void sub_0804EE20(void) {
    s32 *var_r1;
    s32 *var_r1_2;
    s32 temp_r4;
    s32 temp_r5;
    u32 var_r2;
    u32 var_r2_2;

    temp_r4 = sub_080289C0(0x24, 0x80, 0x38);
    temp_r5 = sub_080289C0(0x10024, 0x80, 0x50);
    sub_08028D98(temp_r4, 0, -0xC8, 0xC8);
    var_r1 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2 = 0;
    do {
        if (*var_r1 == temp_r4) goto found_var_r1;
        var_r2++;
        var_r1 += 0x1C;
    } while (var_r2 <= 0xE);
    sub_080003F0();
    var_r1 = NULL;
found_var_r1:
    if (var_r1 != NULL) {
        *(u16 *)((u8 *)var_r1 + 0x36) = 4;
    }
    var_r1_2 = (s32 *)(gUnk_03005CF4 + 0x7A4);
    var_r2_2 = 0;
    do {
        if (*var_r1_2 == temp_r5) goto found_var_r1_2;
        var_r2_2++;
        var_r1_2 += 0x1C;
    } while (var_r2_2 <= 0xE);
    sub_080003F0();
    var_r1_2 = NULL;
found_var_r1_2:
    if (var_r1_2 != NULL) {
        *(u16 *)((u8 *)var_r1_2 + 0x36) = 4;
    }
}

extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void cameraMove51(s16,s16) asm("sub_0800BB80");
union Fixed51EE { s32 whole; struct { u16 lo; s16 hi; } part; };
struct Flag51EE { u32 pad; u16 flags; };
void sub_0804EEA8(void) {
    s32 out[4];
    s32 *px2, *py2;
    s32 startX,startY;
    s32 t,step,step2;
    union Fixed51EE targetX,targetY,targetX2,targetY2;
    u16 timer;
    u32 handle;
    s32 message, status, status2;
    s32 *statusptr, *statusptr2;
    struct Player *player,*player2;
    u32 *word,mask;
    u32 *word2,mask2;
    s32 r;
    player = &gUnk_03003CE0[sub_080020F4()];
    player->flags |= 1;
    sub_0800D0F4();
    status = 0xC4;
    statusptr = &gUnk_03005CF8;
    *statusptr = status;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xC4);
    timer = 1;
    for(;timer;timer--) { sub_080003F0(); if(sub_080021A8())break; }
    if (sub_0800CC98() == 0) {
        r = sub_0801AB24();
        switch (r) {
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
        while (sub_0801AAE0() == 0) {
            sub_080003F0();
        }
    }
    for(timer=20;timer;timer--) { sub_080003F0(); if(sub_080021A8())break; }
    step = 0x11;
    startX = (s16)gUnk_03003170.f80;
    startY = (s16)gUnk_03003170.f82;
    targetX.whole = 0x680000;
    targetY.whole = 0xFF880000;
    for(t=0;t<=0x400;t+=step) {
        sub_080659F4(&out[0],startX,targetX.part.hi,t);
        sub_080659F4(&out[1],startY,targetY.part.hi,t);
        cameraMove51((s16)out[0],(s16)out[1]);
        sub_080003F0();
    }
    word = (u32 *)(gUnk_03005CF4 + 0x38);
    mask = 0x10;
    if (!(*word & mask)) {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x14005E);
    } else {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        handle = sub_0805DF38(1,15,2,0,45,0x14005F);
    }
    word2 = (u32 *)(gUnk_03005CF4 + 0x38);
    mask2 = 0x10;
    *word2 = mask2 | *word2;
    t = handle;
    while(!sub_0805EEFC((void *)t))sub_080003F0();
    step2 = 0x22;
    startX = (s16)gUnk_03003170.f80;
    startY = (s16)gUnk_03003170.f82;
    targetX2.whole = 0;
    targetY2.whole = 0;
    for(t=0;t<=0x400;t+=step2) {
        sub_080659F4(&out[2],startX,targetX2.part.hi,t);
        sub_080659F4(&out[3],startY,targetY2.part.hi,t);
        cameraMove51((s16)out[2],(s16)out[3]);
        sub_080003F0();
    }
    status2 = 0xA5;
    statusptr2 = &gUnk_03005CF8;
    *statusptr2 = status2;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xA5);
    ((struct Flag51EE *)gUnk_03005CF4)->flags |= 32;
    player2 = &gUnk_03003CE0[sub_080020F4()];
    player2->flags &= ~1;
    sub_0800D108();
}
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_08029174(s32,s32);
extern void callback51F128(s32) asm("sub_0804F390");
struct Task51F1 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51F1(void *,u32) asm("sub_08000274");
struct Player51F1 { u8 a[0x11E]; u16 f11E; u8 b[0x14C-0x120]; };
extern struct Player51F1 players51F1[] asm("gUnk_03003CE0");
struct Flag51F1 { u32 pad; u16 flags; };
void sub_0804F128(void) {
    s32 var_r4;
    s32 temp_r0;
    s32 temp_r0_2;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_5;
    u32 temp_r4;
    struct Task51F1 *var_r4_4;
    s32 callback;
    u32 zero, mask;
    s32 rawFlag;
    u8 *state;
    s32 status;
    s32 *statusptr;
    struct Player51F1 *q;
    u32 var_r5;
    u32 temp_r0_3;
    struct Player *temp_r2;
    struct Player *temp_r2_2;

    temp_r2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_08002164() == 1) {
        var_r4 = 0;
    } else {
        temp_r0 = sub_080020F4();
        switch (temp_r0) {                          /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r4 = -0xC;
            break;
        case 1:                                     /* switch 1 */
            var_r4 = 0xC;
            break;
        case 2:                                     /* switch 1 */
            var_r4 = -0x24;
            break;
        case 3:                                     /* switch 1 */
            var_r4 = 0x24;
            break;
        }
    }
    sub_08028D98(0, (s16) var_r4, 0, 0);
    sub_08028AAC(1, 0x78, 0xF0, 0);
    for (var_r4_2=1; var_r4_2; var_r4_2--) {
        sub_080003F0();
        if (sub_080021A8()) break;
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
    for (var_r4_3=60; var_r4_3; var_r4_3--) {
        sub_080003F0();
        if (sub_080021A8()) break;
    }
    callback = (s32)callback51F128;
    var_r4_4 = (struct Task51F1 *)(gUnk_03005CF4 + 0xE34);
    for (var_r5=0; var_r5<=29; var_r5++,var_r4_4++) {
        if (sub_08000470((u32)var_r4_4)) continue;
        while ((var_r4_4->f20 = temp_r0_3 = sub_08001494(0x400)) == 0) sub_080003F0();
        var_r4_4->f8 = 0x3C;
        var_r4_4->fC = callback;
        var_r4_4->f10 = temp_r0_3 + 0x3FC;
        var_r4_4->f24 = 0;
        taskStart51F1(var_r4_4,0);
        break;
    }
    for (var_r4_5=80; var_r4_5; var_r4_5--) {
        sub_080003F0();
        if (sub_080021A8()) break;
    }
    var_r4 = 4;
    q = (struct Player51F1 *)&gUnk_03003CE0[sub_080020F4()];
    q->f11E = var_r4;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0xB7U);
    }
    sub_08028AAC(1, 0x78, 0x50, 0x190);
    sub_08029174(0, 0x10);
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006D08(0xBDU);
    }
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x14005DU);
    while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
    status = 11;
    statusptr = &gUnk_03005CF8;
    *statusptr = status;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xBU);
    }
    ((struct Flag51F1 *)gUnk_03005CF4)->flags |= 32;
    zero=0;
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
    gUnk_03003CE0[sub_080020F4()].state = zero;
}
extern s16 cameraYF390 asm("gUnk_030031F2");
extern void localF390_BB94(s16,s16) asm("sub_0800BB94");
extern void localF390_97D18(s32,s32) asm("sub_08097D18");
struct PrefixF390 { s32 out[20]; struct TileSys *level; s32 *p0,*p1,*p2,*p3; u32 iteration; };
void sub_0804F390(void) {
    struct PrefixF390 L;
    register u32 progress0 asm("r0");
    register u32 chain1 asm("r1");
    register u32 chain2 asm("r2");
    register u32 chain3 asm("r3");
    register s32 step asm("r10");
    register s32 limit asm("r9");
    register s32 zeroX asm("r8");
    register s32 yFixed asm("r7");
    register s32 repeatX asm("r6");
    register s32 repeatY asm("r5");
    register s32 *firstY asm("r5");
    register s32 *a0 asm("r0");
    register s32 a1 asm("r1");
    register s32 a2 asm("r2");
    register s32 a3 asm("r3");
    s32 *cache4;
    s32 *cache5;
    s32 *cache6;
    s32 *cache7;
    s32 *cache8;
    s32 *cache9;
    s32 *cache10;
    s32 *cache11;
    s32 *cache12;
    s32 *cache13;
    s32 *cache14;
    s32 *cache15;
    s32 *cache16;
    s32 *cache17;

    register s32 temp_r4_10 asm("r4");
    register s32 temp_r4_12 asm("r4");
    register s32 temp_r4_14 asm("r4");
    register s32 temp_r4_16 asm("r4");
    register s32 temp_r4_18 asm("r4");
    register s32 temp_r4_20 asm("r4");
    register s32 temp_r4_2 asm("r4");
    register s32 temp_r4_4 asm("r4");
    register s32 temp_r4_6 asm("r4");
    register s32 temp_r4_8 asm("r4");
    s32 temp_r5;
    s32 temp_r5_2;
    s32 temp_r5_3;
    s32 temp_r5_4;
    s32 temp_r5_5;
    s32 temp_r5_6;
    s32 temp_r5_7;
    s32 temp_r5_8;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r6_3;
    s32 temp_r6_4;
    s32 temp_r6_5;
    s32 temp_r6_6;
    s32 temp_r6_7;
    s32 temp_r6_8;
    s32 temp_r6_9;
    s32 temp_r7;
    s32 temp_r7_2;
    s32 temp_r8;
    u32 temp_r4;
    u32 temp_r4_11;
    u32 temp_r4_13;
    u32 temp_r4_15;
    u32 temp_r4_17;
    u32 temp_r4_19;
    u32 temp_r4_3;
    u32 temp_r4_5;
    u32 temp_r4_7;
    register u32 temp_r4_9 asm("r4");
    u16 var_r1;
    u16 var_r4;
    u16 var_r4_10;
    u16 var_r4_2;
    u16 var_r4_3;
    u16 var_r4_4;
    u16 var_r4_5;
    u16 var_r4_6;
    u16 var_r4_7;
    u16 var_r4_8;
    u16 var_r4_9;

    step=0x200;
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    progress0 = 0; firstY=&L.out[1];
    chain1=(u32)&L.out[0]; asm("" : "+r"(chain1)); chain1+=8;
    L.p0=(s32 *)chain1;
    chain2=(u32)&L.out[0]; asm("" : "+r"(chain2)); chain2+=12;
    L.p1=(s32 *)chain2;
    chain3=(u32)&L.out[0]; asm("" : "+r"(chain3)); chain3+=16;
    L.p2=(s32 *)chain3;
    chain1+=12;
    L.p3=(s32 *)chain1;
    chain2+=12;
    cache4=(s32 *)chain2;
    chain3+=12;
    cache5=(s32 *)chain3;
    chain1+=12;
    cache6=(s32 *)chain1;
    chain2+=12;
    cache7=(s32 *)chain2;
    chain3+=12;
    cache8=(s32 *)chain3;
    chain1+=12;
    cache9=(s32 *)chain1;
    chain2+=12;
    cache10=(s32 *)chain2;
    chain3+=12;
    cache11=(s32 *)chain3;
    chain1+=12;
    cache12=(s32 *)chain1;
    chain2+=12;
    cache13=(s32 *)chain2;
    chain3+=12;
    cache14=(s32 *)chain3;
    chain1+=12;
    cache15=(s32 *)chain1;
    chain2+=12;
    cache16=(s32 *)chain2;
    chain3+=12;
    cache17=(s32 *)chain3; limit=0x400; zeroX=0;
    do {
        temp_r4_2=progress0; temp_r4_2=(u32)temp_r4_2<<16; temp_r4_2 >>=16;
        a0=&L.out[0]; a1=(s32) temp_r7; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_2;
        sub_080659F4(a0,a1,a2,a3);
        progress0=(u32)-1; asm("" : "+r"(progress0)); a2=progress0<<16;
        a0=firstY; a1=(s32) temp_r6; a2 >>=16; a3=(s32) temp_r4_2;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[0], (s16) L.out[1]);
        localF390_97D18(0 - L.out[0], 0 - L.out[1]);
        sub_080003F0();
        temp_r4 = temp_r4_2 + step;
        progress0 = (u16) temp_r4;
    } while ((s32) (s16) temp_r4 <= limit);
    var_r4 = 2;
goto wait4;
dec4:
var_r4--; if (var_r4 == 0) goto after4;
wait4:
sub_080003F0(); if (sub_080021A8() == 0) goto dec4;
after4:
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=0;
    do {
        temp_r4_4=progress0; temp_r4_4=(u32)temp_r4_4<<16; temp_r4_4 >>=16;
        a0=L.p0; a1=(s32) temp_r6_2; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_4;
        sub_080659F4(a0,a1,a2,a3);
        a0=L.p1; a1=(s32) temp_r5; a2=yFixed>>16; a3=(s32) temp_r4_4;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[2], (s16) L.out[3]);
        localF390_97D18(0 - L.out[2], 0 - L.out[3]);
        sub_080003F0();
        temp_r4_3 = temp_r4_4 + step;
        progress0 = (u16) temp_r4_3;
    } while ((s32) (s16) temp_r4_3 <= limit);
    var_r4_2 = 2;
goto wait9;
dec9:
var_r4_2--; if (var_r4_2 == 0) goto after9;
wait9:
sub_080003F0(); if (sub_080021A8() == 0) goto dec9;
after9:
    temp_r6_3 = (s16) gUnk_03003170.f80;
    temp_r5_2 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=-131072;
    do {
        temp_r4_6=progress0; temp_r4_6=(u32)temp_r4_6<<16; temp_r4_6 >>=16;
        a0=L.p2; a1=(s32) temp_r6_3; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_6;
        sub_080659F4(a0,a1,a2,a3);
        a0=L.p3; a1=(s32) temp_r5_2; a2=yFixed>>16; a3=(s32) temp_r4_6;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[4], (s16) L.out[5]);
        localF390_97D18(0 - L.out[4], 0 - L.out[5]);
        sub_080003F0();
        temp_r4_5 = temp_r4_6 + step;
        progress0 = (u16) temp_r4_5;
    } while ((s32) (s16) temp_r4_5 <= limit);
    var_r4_3 = 2;
goto wait14;
dec14:
var_r4_3--; if (var_r4_3 == 0) goto after14;
wait14:
sub_080003F0(); if (sub_080021A8() == 0) goto dec14;
after14:
    temp_r6_4 = (s16) gUnk_03003170.f80;
    temp_r5_3 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=0;
    do {
        temp_r4_8=progress0; temp_r4_8=(u32)temp_r4_8<<16; temp_r4_8 >>=16;
        a0=cache4; a1=(s32) temp_r6_4; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_8;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache5; a1=(s32) temp_r5_3; a2=yFixed>>16; a3=(s32) temp_r4_8;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[6], (s16) L.out[7]);
        localF390_97D18(0 - L.out[6], 0 - L.out[7]);
        sub_080003F0();
        temp_r4_7 = temp_r4_8 + step;
        progress0 = (u16) temp_r4_7;
    } while ((s32) (s16) temp_r4_7 <= limit);
    var_r4_4 = 2;
goto wait19;
dec19:
var_r4_4--; if (var_r4_4 == 0) goto after19;
wait19:
sub_080003F0(); if (sub_080021A8() == 0) goto dec19;
after19:
    var_r1 = 1;
    L.level = &gUnk_03003170;
loop_21:
    temp_r8 = (s16) L.level->f80;
    temp_r7_2 = cameraYF390;
    progress0=0; L.iteration=var_r1+1;
    limit=0x400; asm("" : "+r"(progress0), "+r"(limit) : "m"(L.iteration));
    repeatX=progress0<<16; a1=-3; asm("" : "+r"(a1)); repeatY=(u32)a1<<16;
    do {
        temp_r4_10=progress0; temp_r4_10=(u32)temp_r4_10<<16; temp_r4_10 >>=16;
        a0=cache6; a1=(s32) temp_r8; a2=repeatX>>16; a3=(s32) temp_r4_10;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache7; a1=(s32) temp_r7_2; a2=repeatY>>16; a3=(s32) temp_r4_10;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[8], (s16) L.out[9]);
        localF390_97D18(0 - L.out[8], 0 - L.out[9]);
        sub_080003F0();
        a2=0x200; asm("" : "+r"(a2)); temp_r4_10+=a2;
        temp_r4_10=(u32)temp_r4_10<<16; progress0=(u32)temp_r4_10>>16; temp_r4_10 >>=16;
    } while (temp_r4_10 <= limit);
    var_r4_5 = 2;
goto wait25;
dec25:
var_r4_5--; if (var_r4_5 == 0) goto after25;
wait25:
sub_080003F0(); if (sub_080021A8() == 0) goto dec25;
after25:
    asm volatile("" : "=r"(a1), "=r"(a2) : : "memory");
    temp_r6_5=(s16)L.level->f80;
    asm volatile("" : : "r"(a1), "r"(a2), "r"(temp_r6_5));
    asm volatile("" : "=r"(a2), "=r"(a3) : : "memory");
    temp_r5_4=cameraYF390;
    asm volatile("" : : "r"(a2), "r"(a3), "r"(temp_r5_4));
    progress0=0; a2=0x200; asm("" : "+r"(a2)); step=a2;
    a3=0x400; asm("" : "+r"(a3)); limit=a3; zeroX=progress0; yFixed=0;
    do {
        temp_r4_12=progress0; temp_r4_12=(u32)temp_r4_12<<16; temp_r4_12 >>=16;
        a0=cache8; a1=(s32) temp_r6_5; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_12;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache9; a1=(s32) temp_r5_4; a2=yFixed>>16; a3=(s32) temp_r4_12;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[10], (s16) L.out[11]);
        localF390_97D18(0 - L.out[10], 0 - L.out[11]);
        sub_080003F0();
        temp_r4_11 = temp_r4_12 + step;
        progress0 = (u16) temp_r4_11;
    } while ((s32) (s16) temp_r4_11 <= limit);
    var_r4_6 = 2;
goto wait30;
dec30:
var_r4_6--; if (var_r4_6 == 0) goto after30;
wait30:
sub_080003F0(); if (sub_080021A8() == 0) goto dec30;
after30:
    chain1=L.iteration; asm("" : "+r"(chain1));
    progress0=chain1<<16; asm("" : "+r"(progress0)); var_r1=progress0>>16;
    if ((u32) var_r1 <= 0x3BU) {
        goto loop_21;
    }
    temp_r6_6 = (s16) gUnk_03003170.f80;
    temp_r5_5 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=-131072;
    do {
        temp_r4_14=progress0; temp_r4_14=(u32)temp_r4_14<<16; temp_r4_14 >>=16;
        a0=cache10; a1=(s32) temp_r6_6; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_14;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache11; a1=(s32) temp_r5_5; a2=yFixed>>16; a3=(s32) temp_r4_14;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[12], (s16) L.out[13]);
        localF390_97D18(0 - L.out[12], 0 - L.out[13]);
        sub_080003F0();
        temp_r4_13 = temp_r4_14 + step;
        progress0 = (u16) temp_r4_13;
    } while ((s32) (s16) temp_r4_13 <= limit);
    var_r4_7 = 2;
goto wait37;
dec37:
var_r4_7--; if (var_r4_7 == 0) goto after37;
wait37:
sub_080003F0(); if (sub_080021A8() == 0) goto dec37;
after37:
    temp_r6_7 = (s16) gUnk_03003170.f80;
    temp_r5_6 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=0;
    do {
        temp_r4_16=progress0; temp_r4_16=(u32)temp_r4_16<<16; temp_r4_16 >>=16;
        a0=cache12; a1=(s32) temp_r6_7; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_16;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache13; a1=(s32) temp_r5_6; a2=yFixed>>16; a3=(s32) temp_r4_16;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[14], (s16) L.out[15]);
        localF390_97D18(0 - L.out[14], 0 - L.out[15]);
        sub_080003F0();
        temp_r4_15 = temp_r4_16 + step;
        progress0 = (u16) temp_r4_15;
    } while ((s32) (s16) temp_r4_15 <= limit);
    var_r4_8 = 2;
goto wait42;
dec42:
var_r4_8--; if (var_r4_8 == 0) goto after42;
wait42:
sub_080003F0(); if (sub_080021A8() == 0) goto dec42;
after42:
    temp_r6_8 = (s16) gUnk_03003170.f80;
    temp_r5_7 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=-65536;
    do {
        temp_r4_18=progress0; temp_r4_18=(u32)temp_r4_18<<16; temp_r4_18 >>=16;
        a0=cache14; a1=(s32) temp_r6_8; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_18;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache15; a1=(s32) temp_r5_7; a2=yFixed>>16; a3=(s32) temp_r4_18;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[16], (s16) L.out[17]);
        localF390_97D18(0 - L.out[16], 0 - L.out[17]);
        sub_080003F0();
        temp_r4_17 = temp_r4_18 + step;
        progress0 = (u16) temp_r4_17;
    } while ((s32) (s16) temp_r4_17 <= limit);
    var_r4_9 = 2;
goto wait47;
dec47:
var_r4_9--; if (var_r4_9 == 0) goto after47;
wait47:
sub_080003F0(); if (sub_080021A8() == 0) goto dec47;
after47:
    temp_r6_9 = (s16) gUnk_03003170.f80;
    temp_r5_8 = (s16) gUnk_03003170.f82;
    progress0 = 0; step=0x200; limit=0x400; zeroX=0; yFixed=0;
    do {
        temp_r4_20=progress0; temp_r4_20=(u32)temp_r4_20<<16; temp_r4_20 >>=16;
        a0=cache16; a1=(s32) temp_r6_9; a3=zeroX; a2=a3>>16; a3=(s32) temp_r4_20;
        sub_080659F4(a0,a1,a2,a3);
        a0=cache17; a1=(s32) temp_r5_8; a2=yFixed>>16; a3=(s32) temp_r4_20;
        sub_080659F4(a0,a1,a2,a3);
        localF390_BB94((s16) L.out[18], (s16) L.out[19]);
        localF390_97D18(0 - L.out[18], 0 - L.out[19]);
        sub_080003F0();
        temp_r4_19 = temp_r4_20 + step;
        progress0 = (u16) temp_r4_19;
    } while ((s32) (s16) temp_r4_19 <= limit);
    var_r4_10 = 2;
goto wait52;
dec52:
var_r4_10--; if (var_r4_10 == 0) goto after52;
wait52:
sub_080003F0(); if (sub_080021A8() == 0) goto dec52;
after52:
}

extern void sub_0804FA68(s32);
extern void sub_08050524(s32);
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
struct TaskF998 { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
struct StateF998 { u8 pad0[0x38]; u32 flags; u8 pad3C[0xE34-0x3C]; struct TaskF998 tasks[30]; };
extern struct StateF998 *stateF998 asm("gUnk_03005CF4");
void sub_0804F998(void) {
    u32 args[6];
    struct TaskF998 *task;
    register u32 i asm("r6");
    register u32 zero asm("r5");
    register u32 bit asm("r1");
    register struct StateF998 *state asm("r2");
    register u32 data asm("r0");
    void (*callback)(s32);
    state = stateF998;
    bit = 1;
    if (!(state->flags & bit)) {
        callback = sub_0804FA68;
        task = state->tasks;
        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i <= 29) {
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            args[3] = (u32)callback;
            data = 0;
            args[4] = data;
            task->f8 = 0x3C;
            task->f20 = sub_08001494(0x400);
            task->fC = (u32)sub_0802A104;
            task->f10 = task->f20 + 0x3FC;
            task->f24 = zero;
            sub_08000274(task, args, 6);
            sub_080003F0();
            sub_080003F0();
        }
    } else {
        sub_08028AAC(7, 0x88, 0xC8, 0);
    }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
struct StateFA68 { u8 pad[0x38]; u32 flags38; };
extern struct StateFA68 *stateFA68 asm("gUnk_03005CF4");
void sub_0804FA68(s32 arg0) {
    u16 ticks;
    register s32 x asm("r0");
    register s32 y asm("r1");
    register struct StateFA68 *state asm("r2");
    register u32 bit asm("r1");
    switch (arg0) {
    case 0:
        sub_08068820(sub_0804FA68, (void *)1, 0);
        break;
    case 1:
        sub_08073E2C(0x8800, 0xC800, 0x29, 1);
        ticks = 4;
        goto wait;
decrement:
        ticks--;
        if (ticks == 0) goto after;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto decrement;
after:
        x = 0x8000;
        y = 0xC800;
        sub_08073E2C(x, y, 0x29, 1);
        x = 0x9000;
        y = 0xC800;
        sub_08073E2C(x, y, 0x29, 1);
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x17B);
        sub_08028AAC(7, 0x88, 0xC8, 0);
        state = stateFA68;
        bit = 1;
        state->flags38 |= bit;
        break;
    }
}
struct PlayerFB0C { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct StateFB0C { u8 pad[4]; u16 flags; };
extern struct PlayerFB0C playersFB0C[] asm("gUnk_03003CE0");
extern struct StateFB0C *stateFB0C asm("gUnk_03005CF4");
extern void sub_080586B4(s32);
void sub_0804FB0C(void) {
    s32 temp_r0;
    u16 var_r4;
    u32 temp_r4;
    struct PlayerFB0C *temp_r2;
    struct PlayerFB0C *temp_r2_2;

    temp_r2 = &playersFB0C[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_0800CB9C() == 0) {
        if (!(gUnk_030027D0 & 0x20)) {
            gUnk_03005CF8 = 0xA5;
            sub_08006CB4(0xA5U);
        }
    } else {
        sub_080586B4(0);
    }
    if (sub_0800CC98() == 0) {
        temp_r0 = sub_0801AB24();
        switch (temp_r0) {                          /* irregular */
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
while (sub_0801AAE0() == 0) sub_080003F0();
    }
    var_r4 = 0x14;
    goto wait;
decrement:
    var_r4--;
    if (var_r4 == 0) goto after;
wait:
    sub_080003F0();
    if (sub_080021A8() == 0) goto decrement;
after:
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
    temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140064U);
while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
    stateFB0C->flags = (u16) (0x20 | stateFB0C->flags);
    temp_r2_2 = &playersFB0C[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

struct PlayerFC3C { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct StateFC3C { u8 pad[4]; u16 flags; u8 pad6[0x38-6]; u32 eventFlags; };
extern struct PlayerFC3C playersFC3C[] asm("gUnk_03003CE0");
extern struct StateFC3C *stateFC3C asm("gUnk_03005CF4");
extern void localFC3C_BB80(s16,s16) asm("sub_0800BB80");
void sub_0804FC3C(void) {
    struct { s32 x,y,nextX,nextY; s32 *nextXp,*nextYp; } L;
    s32 sp0;
    s32 sp4;
    register s32 temp_r5 asm("r5");
    register s32 temp_r6 asm("r6");
    register s32 temp_r6_2 asm("r6");
    s32 temp_r7;
    register s32 var_r5 asm("r5");
    register s32 firstStep asm("r10");
    register s32 firstYFixed asm("r9");
    register s32 *firstY asm("r8");
    register s32 secondStep asm("r9");
    register s32 secondXFixed asm("r8");
    register s32 secondYFixed asm("r7");
    register s32 shift0 asm("r0");
    register s32 *a0 asm("r0");
    register s32 a1 asm("r1");
    register s32 a2 asm("r2");
    register s32 a3 asm("r3");
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r4_3;
    s32 var_r4_4;
    register u32 var_r4 asm("r4");
    u16 var_r4_2;
    register u32 temp_r3 asm("r3");
    register u32 handle asm("r4");
    register struct StateFC3C *state2 asm("r2");
    struct PlayerFC3C *temp_r2;
    struct PlayerFC3C *temp_r2_2;

    temp_r2 = &playersFC3C[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_08002164() == 1) {
        var_r5 = 0;
    } else {
        temp_r0 = sub_080020F4();
        switch (temp_r0) {                          /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r5 = -0xC;
            break;
        case 1:                                     /* switch 1 */
            var_r5 = 0xC;
            break;
        case 2:                                     /* switch 1 */
            var_r5 = -0x24;
            break;
        case 3:                                     /* switch 1 */
            var_r5 = 0x24;
            break;
        }
    }
    sub_08028D98(0, (s16) var_r5, 0, 0);
    var_r4 = 1;
    var_r5 = -var_r5;
    firstY = &L.y;
    a1=(u32)&L.x-8; asm("" : "+r"(a1), "+r"(var_r4), "+r"(var_r5), "+r"(firstY) : : "r0", "r2", "r3", "r6", "r7", "r9", "r10", "r12"); a1+=16; L.nextXp=(s32 *)a1;
    a2=(u32)&L.x-8; asm("" : "+r"(a2)); a2+=20; L.nextYp=(s32 *)a2;
goto wait15;
dec15:
shift0=var_r4-1; var_r4=(u16)shift0; if (var_r4 == 0) goto after15;
wait15:
sub_080003F0(); if (sub_080021A8() == 0) goto dec15;
after15:
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
    a1=0xD9; a0=(s32 *)&gUnk_03005CF8; *a0=a1;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xD9U);
    }
    var_r4_2 = 0x14;
goto wait32;
dec32:
var_r4_2--; if (var_r4_2 == 0) goto after32;
wait32:
sub_080003F0(); if (sub_080021A8() == 0) goto dec32;
after32:
    a3=0x11; asm("" : "+r"(a3)); firstStep=a3;
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r4_3 = 0;
    shift0 = var_r5; var_r5 = shift0 << 16;
    firstYFixed = 0xFF900000;
    do {
        a0=&L.x; a1=(s32) temp_r7; a2=var_r5 >> 16; a3=var_r4_3;
        sub_080659F4(a0,a1,a2,a3);
        a0=firstY; a1=(s32) temp_r6; a2=firstYFixed >> 16; a3=var_r4_3;
        sub_080659F4(a0,a1,a2,a3);
        localFC3C_BB80((s16) L.x, (s16) L.y);
        sub_080003F0();
        var_r4_3 += firstStep;
    } while (var_r4_3 <= 0x400);
    a0=(s32 *)stateFC3C; a1=2;
    if (!( ((struct StateFC3C *)a0)->eventFlags & a1)) {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        temp_r3=sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140062);
    } else {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        temp_r3=sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140063);
    }

    state2=stateFC3C; a1=2;
    state2->eventFlags |= a1;
    handle=temp_r3;
while (sub_0805EEFC((void *) handle) == 0) sub_080003F0();
    shift0=0x22; secondStep=shift0;
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_4 = 0;
    secondXFixed = 0;
    secondYFixed = 0;
    do {
        a0=L.nextXp; a1=(s32) temp_r6_2; a2=secondXFixed >> 16; a3=var_r4_4;
        sub_080659F4(a0,a1,a2,a3);
        a0=L.nextYp; a1=(s32) temp_r5; a2=secondYFixed >> 16; a3=var_r4_4;
        sub_080659F4(a0,a1,a2,a3);
        localFC3C_BB80((s16) L.nextX, (s16) L.nextY);
        sub_080003F0();
        var_r4_4 += secondStep;
    } while (var_r4_4 <= 0x400);
    a1=0xB; a0=(s32 *)&gUnk_03005CF8; *a0=a1;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xBU);
    }
    stateFC3C->flags = (u16) (0x20 | stateFC3C->flags);
    temp_r2_2 = &playersFC3C[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

struct PlayerFF04 { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct EntityFF04 { u8 pad[0xC]; u16 state; u8 tail[0x2E0-0xE]; };
struct StateFF04 { u8 pad[0x38]; u32 events; };
extern struct PlayerFF04 playersFF04[] asm("gUnk_03003CE0");
extern struct EntityFF04 *entitiesFF04 asm("gUnk_030056F4");
extern struct StateFF04 *stateFF04 asm("gUnk_03005CF4");
extern void localFF04_BB80(s16,s16) asm("sub_0800BB80");
extern void sub_080502DC(void);
void sub_0804FF04(void) {
    register s32 *a0 asm("r0");
    register s32 a1 asm("r1");
    register s32 a2 asm("r2");
    register s32 a3 asm("r3");
    register s32 firstYFixed asm("r10");
    register s32 secondXFixed asm("r10");
    register s32 secondYFixed asm("r7");
    register s32 *firstY asm("r5");
    register s32 *secondX asm("r9");
    register s32 *secondY asm("r8");
    struct { s32 x,y,nextX,nextY; } L;
    register s32 initialOne asm("r4");
    register s32 flag0 asm("r0");
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 temp_r0;
    s32 temp_r0_2;
    register s32 temp_r2_2 asm("r2");
    register struct StateFF04 *event0 asm("r0");
    register s32 test1 asm("r1");
    register u32 *entityFlags asm("r5");
    register u32 entityOne asm("r6");
    register u32 entityZero asm("r4");
    s32 var_r4_2;
    s32 var_r4_3;
    u16 var_r4;
    u32 temp_r4;
    register u32 var_r3 asm("r3");
    register u32 var_r3_2 asm("r3");
    register u32 var_r3_3 asm("r3");
    u8 *var_r0;
    struct PlayerFF04 *temp_r2;
    struct PlayerFF04 *temp_r2_3;
    struct PlayerFF04 *temp_r2_4;
    register struct EntityFF04 *var_r2 asm("r2");
    register struct EntityFF04 *var_r2_2 asm("r2");
    register struct EntityFF04 *var_r2_3 asm("r2");

    initialOne=1;
    if (sub_0800CE30() != 0) {
        var_r0 = (u8 *)stateFF04 + 0x1C4;
    } else {
        var_r0 = (u8 *)stateFF04 + 0x1B8;
    }
    flag0=*var_r0; asm("" : "+r"(flag0)); flag0 >>=7;
    if (flag0 & initialOne) goto special;
    temp_r2 = &playersFF04[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_0800CC98() == 0) {
        temp_r0_2 = sub_0801AB24();
        switch (temp_r0_2) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 1 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 1 */
            sub_0801AB90(6);
            break;
        }
while (sub_0801AAE0() == 0) sub_080003F0();
    }
    event0=stateFF04; a3=1; temp_r2_2=event0->events;
    test1=temp_r2_2; test1 &= a3;
    if (!test1) {
        temp_r2_2 |= a3; event0->events=temp_r2_2;
        a1=0xC4; a0=(s32 *)&gUnk_03005CF8; *a0=a1;
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006CB4(0xC4U);
        }
        var_r4 = 0x1E;
        firstY=&L.y; secondX=&L.nextX; secondY=&L.nextY;
goto wait;
dec:
var_r4--; if (var_r4 == 0) goto after;
wait:
sub_080003F0(); if (sub_080021A8() == 0) goto dec;
after:
        temp_r7 = (s16) gUnk_03003170.f80;
        temp_r6 = (s16) gUnk_03003170.f82;
        var_r4_2 = 0; firstYFixed=0x280000;
        do {
            a0=&L.x; a1=temp_r7; a3=0xC00000; asm("" : "+r"(a3)); a2=a3>>16; a3=var_r4_2;
            sub_080659F4(a0,a1,a2,a3);
            a0=firstY; a1=temp_r6; a3=firstYFixed; a2=a3>>16; a3=var_r4_2;
            sub_080659F4(a0,a1,a2,a3);
            localFF04_BB80((s16) L.x, (s16) L.y);
            sub_080003F0();
            var_r4_2 += 0x11;
        } while (var_r4_2 <= 0x400);
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140068U);
while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
        temp_r6_2 = (s16) gUnk_03003170.f80;
        temp_r5 = (s16) gUnk_03003170.f82;
        var_r4_3 = 0; secondXFixed=0; secondYFixed=0;
        do {
            a0=secondX; a1=temp_r6_2; a3=secondXFixed; a2=a3>>16; a3=var_r4_3;
            sub_080659F4(a0,a1,a2,a3);
            a0=secondY; a1=temp_r5; a2=secondYFixed>>16; a3=var_r4_3;
            sub_080659F4(a0,a1,a2,a3);
            localFF04_BB80((s16) L.nextX, (s16) L.nextY);
            sub_080003F0();
            var_r4_3 += 0x22;
        } while (var_r4_3 <= 0x400);
        temp_r2_4 = &playersFF04[sub_080020F4()];
        temp_r2_4->flags = (s32) (temp_r2_4->flags & ~1);
        sub_0800D108();
        if (sub_0800CB9C() == 0) {
            if (!(gUnk_030027D0 & 0x20)) {
                gUnk_03005CF8 = 7;
                sub_08006CB4(7U);
            }
        } else {
            sub_080586B4(0);
        }
        var_r2_3 = entitiesFF04;
        var_r3_3 = 0; entityFlags=&gUnk_030056FC; entityOne=1; entityZero=0;
        do {
            a1=entityOne; a1 <<= var_r3_3; flag0=*entityFlags;
            if ((flag0 & a1) && (var_r2_3->state == 0xC)) {
                var_r2_3->state = entityZero;
            }
            var_r3_3 += 1;
            flag0=0x2E0; var_r2_3=(struct EntityFF04 *)((u8 *)var_r2_3+flag0);
        } while (var_r3_3 <= 4U);
        } else {
        temp_r2_3 = &playersFF04[sub_080020F4()];
        temp_r2_3->flags = (s32) (temp_r2_3->flags & ~1);
        sub_0800D108();
        if (sub_0800CB9C() == 0) {
            if (!(gUnk_030027D0 & 0x20)) {
                gUnk_03005CF8 = 7;
                sub_08006CB4(7U);
            }
        } else {
            sub_080586B4(0);
        }
        var_r2_2 = entitiesFF04;
        var_r3_2 = 0; entityFlags=&gUnk_030056FC; entityOne=1; entityZero=0;
        do {
            a1=entityOne; a1 <<= var_r3_2; flag0=*entityFlags;
            if ((flag0 & a1) && (var_r2_2->state == 0xC)) {
                var_r2_2->state = entityZero;
            }
            var_r3_2 += 1;
            a1=0x2E0; var_r2_2=(struct EntityFF04 *)((u8 *)var_r2_2+a1);
        } while (var_r3_2 <= 4U);
        }
    sub_08019F04();
    sub_080502DC();
    goto done;
special:

        sub_08028AAC(1, 0x270F, 0x270F, 0);
        if (sub_0800CC98() == 0) {
            temp_r0 = sub_0801AB24();
            switch (temp_r0) {                      /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 2 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 2 */
                sub_0801AB90(6);
                break;
            }
while (sub_0801AAE0() == 0) sub_080003F0();
        }
        if (sub_0800CB9C() == 0) {
            if (!(gUnk_030027D0 & 0x20)) {
                gUnk_03005CF8 = 7;
                sub_08006CB4(7U);
            }
        } else {
            sub_080586B4(0);
        }
        var_r2 = entitiesFF04;
        var_r3 = 0; entityFlags=&gUnk_030056FC; entityOne=1; entityZero=0;
        do {
            a1=entityOne; a1 <<= var_r3; flag0=*entityFlags;
            if ((flag0 & a1) && (var_r2->state == 0xC)) {
                var_r2->state = entityZero;
            }
            var_r3 += 1;
            flag0=0x2E0; var_r2=(struct EntityFF04 *)((u8 *)var_r2+flag0);
        } while (var_r3 <= 4U);
        sub_08019F04();


done:
    return;
}

struct Player502DC { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct Slot502DC { s32 id; u8 pad[0x32]; u16 state; u8 tail[0x38]; };
struct State502DC { u8 pad0[4]; u16 flags; u8 pad6[0x7A4-6]; struct Slot502DC slots[15]; };
extern struct State502DC *state502DC asm("gUnk_03005CF4");
extern struct Player502DC players502DC[] asm("gUnk_03003CE0");
extern void sub_0802939C(s32,s32);
extern void sub_0802A01C(void);
extern void sub_0805990C(void);
void sub_080502DC(void) {
    struct Slot502DC *slot;
    struct Player502DC *player;
    u16 ticks;
    register u32 offset asm("r2");
    register u32 waitHandle asm("r4");
    u32 wait, handle, i;
    s32 ui;
    do {
        ticks = 1;
        goto wait1;
dec1:
        ticks--;
        if (ticks == 0) goto after1;
wait1:
        sub_080003F0();
        if (sub_080021A8() == 0) goto dec1;
after1:
        if (!((state502DC->flags >> 4) & 1)) wait = sub_08019C3C();
        else wait = 1;
    } while (wait != 0);
    offset = sub_080020F4();
    offset *= 0x14C;
    player = (struct Player502DC *)((u8 *)players502DC + offset);
    player->flags |= 1;
    sub_0800D0F4();
    sub_08068070((u32)sub_0805990C, 15);
    while (sub_0805F184() != 0) sub_080003F0();
    while (sub_0805EF90() != 0) sub_080003F0();
    handle = sub_0805DF38(1,15,2,0,0x2D,0x140069);
    ticks = 30;
    goto wait2;
dec2:
    ticks--;
    if (ticks == 0) goto after2;
wait2:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec2;
after2:
    ui = sub_080289C0(0x13,0x170,0x88);
    ticks = 1;
    goto wait3;
dec3:
    ticks--;
    if (ticks == 0) goto after3;
wait3:
    sub_080003F0();
    if (sub_080021A8() == 0) goto dec3;
after3:
    sub_08028AAC(1,0x270F,0x270F,0);
    sub_0802A01C();
    waitHandle = handle;
    while (sub_0805EEFC((void *)waitHandle) == 0) sub_080003F0();
    sub_0802939C(ui,10);
    sub_08028AAC(ui,0x99,0x5D,0x64);
    slot = state502DC->slots;
    i = 0;
    while (slot->id != ui) {
        i++;
        slot++;
        if (i > 14) {
            sub_080003F0();
            slot = 0;
            break;
        }
    }
    if (slot != 0) slot->state = 4;
    offset = sub_080020F4();
    offset *= 0x14C;
    player = (struct Player502DC *)((u8 *)players502DC + offset);
    player->flags &= ~1;
    sub_0800D108();
}
struct TaskF50454 { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
struct StateF50454 { u8 pad0[0x38]; u32 flags; u8 pad3C[0xE34-0x3C]; struct TaskF50454 tasks[30]; };
extern struct StateF50454 *stateF50454 asm("gUnk_03005CF4");
void sub_08050454(void) {
    u32 args[6];
    struct TaskF50454 *task;
    register u32 i asm("r6");
    register u32 zero asm("r5");
    register u32 bit asm("r1");
    register struct StateF50454 *state asm("r2");
    register u32 data asm("r0");
    void (*callback)(s32);
    state = stateF50454;
    bit = 2;
    if (!(state->flags & bit)) {
        callback = sub_08050524;
        task = state->tasks;
        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i <= 29) {
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            args[3] = (u32)callback;
            data = 0;
            args[4] = data;
            task->f8 = 0x3C;
            task->f20 = sub_08001494(0x400);
            task->fC = (u32)sub_0802A104;
            task->f10 = task->f20 + 0x3FC;
            task->f24 = zero;
            sub_08000274(task, args, 6);
            sub_080003F0();
            sub_080003F0();
        }
    } else {
        sub_08028AAC(7, 0x378, 0xA0, 0);
    }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
struct State50524 { u8 pad[0x38]; u32 flags38; };
extern struct State50524 *state50524 asm("gUnk_03005CF4");
void sub_08050524(s32 arg0) {
    u16 ticks;
    register s32 x asm("r0");
    register s32 y asm("r1");
    register struct State50524 *state asm("r2");
    register u32 bit asm("r1");
    switch (arg0) {
    case 0:
        sub_08068820(sub_08050524, (void *)1, 0);
        break;
    case 1:
        sub_08073E2C(0x37800, 0xA000, 0x29, 1);
        ticks = 4;
        goto wait;
decrement:
        ticks--;
        if (ticks == 0) goto after;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto decrement;
after:
        x = 0x37000;
        y = 0xA000;
        sub_08073E2C(x, y, 0x29, 1);
        x = 0x38000;
        y = 0xA000;
        sub_08073E2C(x, y, 0x29, 1);
        if (!(gUnk_030027D0 & 0x20)) sub_08006D08(0x17B);
        sub_08028AAC(7, 0x378, 0xA0, 0);
        state = state50524;
        bit = 2;
        state->flags38 |= bit;
        break;
    }
}
struct State505C8 { u8 pad[0x38]; u32 flags; };
struct Entity505C8 { u8 pad[0xC]; u16 state; u8 tail[0x2E0-0xE]; };
extern struct State505C8 *state505C8 asm("gUnk_03005CF4");
extern struct Entity505C8 *entities505C8 asm("gUnk_030056F4");
void sub_080505C8(void) {
    register u32 ticks asm("r4");
    register u32 stride asm("r0");
    register u32 i asm("r3");
    register u32 bit asm("r1");
    register u32 one asm("r6");
    u16 zero;
    register s32 *bits asm("r5");
    register struct State505C8 *state asm("r0");
    register struct State505C8 *state2 asm("r2");
    register struct Entity505C8 *entity asm("r2");
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    state = state505C8;
    bit = 4;
    if (!(state->flags & bit)) {
        ticks = 30;
        goto wait;
decrement:
        stride = ticks - 1;
        ticks = (u16)stride;
        if (ticks == 0) goto after;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto decrement;
after:
        state2 = state505C8;
        bit = 4;
        state2->flags |= bit;
    }
    entity = entities505C8;
    i = 0;
    bits = &gUnk_030056FC;
    one = 1;
    zero = 0;
    do {
        bit = one << i;
        if ((*bits & bit) && entity->state == 12) entity->state = zero;
        i++;
        stride = 0x2E0;
        entity = (struct Entity505C8 *)((u8 *)entity + stride);
    } while (i <= 4);
    sub_08019F04();
}
struct PlayerF50688 { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct SlotF50688 { s32 id; u8 pad[0x32]; u16 state; u8 tail[0x38]; };
struct StateF50688 { u8 pad[4]; u16 flags; u8 pad6[0x38-6]; u32 eventFlags; u8 pad3C[0x7A4-0x3C]; struct SlotF50688 slots[15]; };
extern struct PlayerF50688 playersF50688[] asm("gUnk_03003CE0");
extern struct StateF50688 *stateF50688 asm("gUnk_03005CF4");
extern void localF50688_BB80(s16,s16) asm("sub_0800BB80");
void sub_08050688(void) {
    struct { s32 x,y,nextX,nextY,ui; s32 *nextXp,*nextYp; } L;
    register struct SlotF50688 *slot asm("r1");
    register u32 i asm("r2");
    s32 sp0;
    s32 sp4;
    register s32 temp_r5 asm("r5");
    register s32 temp_r6 asm("r6");
    register s32 temp_r6_2 asm("r6");
    s32 temp_r7;
    register s32 var_r5 asm("r5");
    register s32 firstStep asm("r10");
    register s32 firstYFixed asm("r9");
    register s32 *firstY asm("r8");
    register s32 secondStep asm("r9");
    register s32 secondXFixed asm("r8");
    register s32 secondYFixed asm("r7");
    register s32 shift0 asm("r0");
    register s32 *a0 asm("r0");
    register s32 a1 asm("r1");
    register s32 a2 asm("r2");
    register s32 a3 asm("r3");
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r4_3;
    s32 var_r4_4;
    register u32 var_r4 asm("r4");
    u16 var_r4_2;
    register u32 temp_r3 asm("r3");
    register u32 handle asm("r4");
    register struct StateF50688 *state2 asm("r2");
    struct PlayerF50688 *temp_r2;
    struct PlayerF50688 *temp_r2_2;

    temp_r2 = &playersF50688[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags | 1);
    sub_0800D0F4();
    if (sub_08002164() == 1) {
        var_r5 = 0;
    } else {
        temp_r0 = sub_080020F4();
        switch (temp_r0) {                          /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            var_r5 = -0xC;
            break;
        case 1:                                     /* switch 1 */
            var_r5 = 0xC;
            break;
        case 2:                                     /* switch 1 */
            var_r5 = -0x24;
            break;
        case 3:                                     /* switch 1 */
            var_r5 = 0x24;
            break;
        }
    }
    sub_08028D98(0, (s16) var_r5, 0, 0);
    L.ui = sub_080289C0(0x12,0xF0,0xA0);
    sub_0802939C(L.ui,0);
    sub_08028AAC(1,0x270F,0x270F,0);
    var_r4 = 1;
    var_r5 = -var_r5;
    firstY = &L.y;
    a1=(u32)&L.x-8; asm("" : "+r"(a1), "+r"(var_r4), "+r"(var_r5), "+r"(firstY) : : "r0", "r2", "r3", "r6", "r7", "r9", "r10", "r12"); a1+=16; L.nextXp=(s32 *)a1;
    a2=(u32)&L.x-8; asm("" : "+r"(a2)); a2+=20; L.nextYp=(s32 *)a2;
goto wait15;
dec15:
shift0=var_r4-1; var_r4=(u16)shift0; if (var_r4 == 0) goto after15;
wait15:
sub_080003F0(); if (sub_080021A8() == 0) goto dec15;
after15:
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
    a1=0xD9; a0=(s32 *)&gUnk_03005CF8; *a0=a1;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xD9U);
    }
    var_r4_2 = 0x14;
goto wait32;
dec32:
var_r4_2--; if (var_r4_2 == 0) goto after32;
wait32:
sub_080003F0(); if (sub_080021A8() == 0) goto dec32;
after32:
    a3=0x11; asm("" : "+r"(a3)); firstStep=a3;
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r4_3 = 0;
    shift0=var_r5; var_r5=shift0<<16;
    firstYFixed = 0xFFC00000;
    do {
        a0=&L.x; a1=(s32) temp_r7; a2=var_r5 >> 16; a3=var_r4_3;
        sub_080659F4(a0,a1,a2,a3);
        a0=firstY; a1=(s32) temp_r6; a2=firstYFixed >> 16; a3=var_r4_3;
        sub_080659F4(a0,a1,a2,a3);
        localF50688_BB80((s16) L.x, (s16) L.y);
        sub_080003F0();
        var_r4_3 += firstStep;
    } while (var_r4_3 <= 0x400);
    a0=(s32 *)stateF50688; a1=8;
    if (!( ((struct StateF50688 *)a0)->eventFlags & a1)) {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        temp_r3=sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140066);
    } else {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        temp_r3=sub_0805DF38(1U,0xFU,2U,0U,0x2D,0x140067);
    }

    state2=stateF50688; a1=8;
    state2->eventFlags |= a1;
    handle=temp_r3;
while (sub_0805EEFC((void *) handle) == 0) sub_080003F0();
    shift0=0x22; secondStep=shift0;
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_4 = 0;
    secondXFixed = 0;
    secondYFixed = 0;
    do {
        a0=L.nextXp; a1=(s32) temp_r6_2; a2=secondXFixed >> 16; a3=var_r4_4;
        sub_080659F4(a0,a1,a2,a3);
        a0=L.nextYp; a1=(s32) temp_r5; a2=secondYFixed >> 16; a3=var_r4_4;
        sub_080659F4(a0,a1,a2,a3);
        localF50688_BB80((s16) L.nextX, (s16) L.nextY);
        sub_080003F0();
        var_r4_4 += secondStep;
    } while (var_r4_4 <= 0x400);
    a0=(s32 *)stateF50688; a2=0x7A4; asm("" : "+r"(a2) : "r"(a0));
    slot=(struct SlotF50688 *)((u8 *)a0+a2);
    i = 0;
    for (;;) {
        register s32 slotID asm("r0");
        slotID=slot->id; asm("" : : "r"(slotID) : "memory");
        a3=L.ui; if (slotID==a3) break;
        i++;
        slot++;
        if (i > 14) { sub_080003F0(); slot = 0; break; }
    }
    if (slot != 0) slot->state = 4;
    sub_08028AAC(1,0xF0,0x90,0);
    a1=0xB; a0=(s32 *)&gUnk_03005CF8; *a0=a1;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xBU);
    }
    stateF50688->flags = (u16) (0x20 | stateF50688->flags);
    temp_r2_2 = &playersF50688[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}

struct Player509A8 { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct Entity509A8 { u8 pad[0xC]; u16 state; u8 tail[0x2E0-0xE]; };
struct Task509A8 { u32 f0,f4,flags; void (*callback)(void); u8 *stack; u32 f14,f18,f1C; u8 *memory; u32 data; };
struct State509A8 { u8 pad0[0x38]; u32 events; u8 pad3C[0xE34-0x3C]; struct Task509A8 tasks[30]; };
extern struct Player509A8 players509A8[] asm("gUnk_03003CE0");
extern struct Entity509A8 *entities509A8 asm("gUnk_030056F4");
extern struct State509A8 *state509A8 asm("gUnk_03005CF4");
extern void local509A8_BB80(s16,s16) asm("sub_0800BB80");
extern void sub_0802A080(s32,s32,s32,s32);
extern void sub_08050E48(void);
extern void sub_08051A78(void);
void sub_080509A8(void) {
    void (*callback)(void);
    struct {s32 x,y,nextX,nextY; s32 *nextXP,*nextYP;} L;
    register s32 *firstY asm("r5");
    register s32 firstXFixed asm("r10");
    register s32 firstYFixed asm("r8");
    register s32 secondXFixed asm("r8");
    register s32 secondYFixed asm("r7");
    register s32 secondStep asm("r10");
    register s32 initialOne asm("r4");
    register s32 flag0 asm("r0");
    register s32 *a0 asm("r0");
    register s32 a1 asm("r1");
    register s32 a2 asm("r2");
    register s32 a3 asm("r3");
    s32 temp_r5;
    register s32 temp_r6 asm("r6");
    s32 temp_r6_2;
    s32 temp_r7;
    register struct State509A8 *event2 asm("r2");
    register u32 *entityFlags asm("r5");
    register u32 entityOne asm("r6");
    register u32 entityZero asm("r4");
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r0_3;
    register s32 var_r4_2 asm("r4");
    s32 var_r4_5;
    register struct Player509A8 *temp_r1 asm("r1");
    u16 var_r4_4;
    u16 var_r4_6;
    u32 var_r0_2;
    register u32 var_r3 asm("r3");
    register u32 var_r3_2 asm("r3");
    struct Task509A8 *var_r4;
    struct Task509A8 *var_r4_3;
    struct Task509A8 *var_r4_7;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    register u32 var_r9 asm("r9");
    u8 *var_r0;
    u8 *temp_r0_2;
    u8 *temp_r0_5;
    u8 *temp_r0_6;
    struct Player509A8 *temp_r1_2;
    struct Player509A8 *temp_r2;
    register struct Entity509A8 *var_r2 asm("r2");
    register struct Entity509A8 *var_r2_2 asm("r2");

    initialOne=1;
    if (sub_0800CE30() != 0) {
        var_r0 = (u8 *)state509A8 + 0x1C5;
    } else {
        var_r0 = (u8 *)state509A8 + 0x1B9;
    }
    flag0=*var_r0; asm("" : "+r"(flag0)); flag0 >>=1; if (flag0 & initialOne) goto special;
    if (sub_080020F4() == 0) {
        callback = sub_08051A78;
        var_r4 = state509A8->tasks;
        var_r5 = 0; goto loop_8;
next_8: var_r5++; var_r4++;
loop_8:
        if (var_r5 <= 0x1DU) {
            if (sub_08000470((u32)var_r4) == 0) {
while ((temp_r0_2 = sub_08001494(0x400U), var_r4->memory = temp_r0_2, temp_r0_2 == NULL)) sub_080003F0();
                var_r4->flags = 0x3C;
                var_r4->callback = callback;
                var_r4->stack = (void *) (temp_r0_2 + 0x3FC);
                var_r4->data = 0;
                sub_08000274(var_r4, 0);
            } else {
                goto next_8;
            }
        }
    }
    a0=(s32 *)state509A8; initialOne=1; flag0=((struct State509A8 *)a0)->events; flag0 &= initialOne;
    var_r0_2=flag0;
    if (var_r0_2 != 0) {
        var_r0_2 = 1;
    }
    var_r9 = var_r0_2;
    if (var_r0_2 != 0) goto already;
    flag0=sub_080020F4(); a1=0x14C; a1 *= flag0;
    a0=(s32 *)players509A8; temp_r1=(struct Player509A8 *)(a1+(u32)a0);
    temp_r1->flags |= initialOne;
    sub_0800D0F4();
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r4_2 = 0; firstY=&L.y;
    a2=(u32)&L.x; asm("" : "+r"(a2) : "r"(var_r4_2), "r"(firstY), "r"(temp_r6), "r"(temp_r7), "r"(var_r9) : "r0", "r1", "r3", "r8", "r10", "r12"); a2+=8; L.nextXP=(s32 *)a2;
    a3=(u32)&L.x; asm("" : "+r"(a3)); a3+=12; L.nextYP=(s32 *)a3; firstXFixed=0;
    flag0=0xFF8C0000; asm("" : "+r"(flag0)); firstYFixed=flag0;
    do {
        a0=&L.x; a1=temp_r7; a3=firstXFixed; a2=a3>>16; a3=var_r4_2;
        sub_080659F4(a0,a1,a2,a3);
        a0=firstY; a1=temp_r6; a3=firstYFixed; a2=a3>>16; a3=var_r4_2;
        sub_080659F4(a0,a1,a2,a3);
        local509A8_BB80((s16) L.x, (s16) L.y);
        sub_080003F0();
        flag0=0x400; var_r4_2 += flag0;
    } while (var_r4_2 <= 0x400);
    if (sub_0800CC98() == 0) {
        temp_r0_4 = sub_0801AB24();
        switch (temp_r0_4) {                        /* switch 1; irregular */
        case 0:                                     /* switch 1 */
            sub_080576A8();
            break;
        case 1:                                     /* switch 1 */
            sub_0801AB50(6);
            break;
        case 2:                                     /* switch 1 */
            sub_0801AB90(6);
            break;
        }
while (sub_0801AAE0() == 0) sub_080003F0();
    }
    event2=state509A8; a1=1; flag0=event2->events; flag0 |= a1; event2->events=flag0;
    a1=0xC4; a0=(s32 *)&gUnk_03005CF8; *a0=a1;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xC4U);
    }
    callback = sub_08050E48;
    var_r4_3 = state509A8->tasks;
    var_r5_2 = 0; goto loop_36;
next_36: var_r5_2++; var_r4_3++;
loop_36:
    if (var_r5_2 <= 0x1DU) {
        if (sub_08000470((u32)var_r4_3) == 0) {
while ((temp_r0_5 = sub_08001494(0x400U), var_r4_3->memory = temp_r0_5, temp_r0_5 == NULL)) sub_080003F0();
            var_r4_3->flags = 0x3C;
            var_r4_3->callback = callback;
            var_r4_3->stack = (void *) (temp_r0_5 + 0x3FC);
            var_r4_3->data = 0;
            sub_08000274(var_r4_3, 0);
            var_r9 = (u32)var_r4_3;
        } else {
            goto next_36;
        }
    }
    var_r4_4 = 0x320;
goto wait44;
dec44:
var_r4_4--; if (var_r4_4 == 0) goto after44;
wait44:
sub_080003F0(); if (sub_080021A8() == 0) goto dec44;
after44:
    secondStep=0x22;
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_5 = 0; secondXFixed=0; secondYFixed=0xFFE20000;
    do {
        a0=L.nextXP; a1=temp_r6_2; a3=secondXFixed; a2=a3>>16; a3=var_r4_5;
        sub_080659F4(a0,a1,a2,a3);
        a0=L.nextYP; a1=temp_r5; a2=secondYFixed>>16; a3=var_r4_5;
        sub_080659F4(a0,a1,a2,a3);
        local509A8_BB80((s16) L.nextX, (s16) L.nextY);
        sub_080003F0();
        var_r4_5 += secondStep;
    } while (var_r4_5 <= 0x400);
    temp_r2 = &players509A8[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags & ~1);
    sub_0800D108();
    sub_0802A080(0x80, 0x80, 0x100, 0x64);
    a0=(s32 *)state509A8; a1=2; flag0=((struct State509A8 *)a0)->events; flag0 &= a1;
    var_r0_3=flag0;
    if (var_r0_3 != 0) {
        var_r0_3 = 1;
    }
    asm("" : "+r"(var_r0_3));
    if (var_r0_3 != 0) {
        return;
    }
    temp_r1_2 = &players509A8[sub_080020F4()];
    temp_r1_2->flags = (s32) (temp_r1_2->flags | 1);
    sub_0800D0F4();
    if ((var_r9 != 0) && (sub_08000470(var_r9) != 0)) {
        sub_080003A8((s32) var_r9);
    }
    var_r4_6 = 1;
goto wait56;
dec56:
var_r4_6--; if (var_r4_6 == 0) goto after56;
wait56:
sub_080003F0(); if (sub_080021A8() == 0) goto dec56;
after56:
    sub_0805EFBC();
    do {
        sub_080003F0();
    } while (sub_0805F184() != 0);
    callback = sub_08050E48;
    var_r4_7 = state509A8->tasks;
    var_r5_3 = 0; goto loop_61;
next_61: var_r5_3++; var_r4_7++;
loop_61:
    if (var_r5_3 > 0x1DU) {
        return;
    }
    if (sub_08000470((u32)var_r4_7) == 0) {
while ((temp_r0_6 = sub_08001494(0x400U), var_r4_7->memory = temp_r0_6, temp_r0_6 == NULL)) sub_080003F0();
        var_r4_7->flags = 0x3C;
        var_r4_7->callback = callback;
        var_r4_7->stack = (void *) (temp_r0_6 + 0x3FC);
        var_r4_7->data = 0;
        sub_08000274(var_r4_7, 1);
        return;
    }
    goto next_61;
    return;
already:

        if (sub_0800CC98() == 0) {
            temp_r0_3 = sub_0801AB24();
            switch (temp_r0_3) {                    /* switch 2; irregular */
            case 0:                                 /* switch 2 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 2 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 2 */
                sub_0801AB90(6);
                break;
            }
while (sub_0801AAE0() == 0) sub_080003F0();
        }
        var_r2_2 = entities509A8;
        var_r3_2 = 0; entityFlags=&gUnk_030056FC; entityOne=1; entityZero=0;
        do {
            a1=entityOne; a1 <<= var_r3_2; flag0=*entityFlags;
            if ((flag0 & a1) && (var_r2_2->state == 0xC)) {
                var_r2_2->state = entityZero;
            }
            var_r3_2 += 1;
            a1=0x2E0; var_r2_2=(struct Entity509A8 *)((u8 *)var_r2_2+a1);
        } while (var_r3_2 <= 4U);
        sub_08019F04();
        return;

special:

        sub_08028AAC(6, 0x270F, 0x270F, 0);
        if (sub_0800CC98() == 0) {
            temp_r0 = sub_0801AB24();
            switch (temp_r0) {                      /* switch 3; irregular */
            case 0:                                 /* switch 3 */
                sub_080576A8();
                break;
            case 1:                                 /* switch 3 */
                sub_0801AB50(6);
                break;
            case 2:                                 /* switch 3 */
                sub_0801AB90(6);
                break;
            }
while (sub_0801AAE0() == 0) sub_080003F0();
        }
        var_r2 = entities509A8;
        var_r3 = 0; entityFlags=&gUnk_030056FC; entityOne=1; entityZero=0;
        do {
            a1=entityOne; a1 <<= var_r3; flag0=*entityFlags;
            if ((flag0 & a1) && (var_r2->state == 0xC)) {
                var_r2->state = entityZero;
            }
            var_r3 += 1;
            flag0=0x2E0; var_r2=(struct Entity509A8 *)((u8 *)var_r2+flag0);
        } while (var_r3 <= 4U);
        sub_08019F04();
        return;
    }
struct T53Entity0E48 { u16 f0,id; u8 pad[8]; u16 state; u8 tail[0x2D2]; };
extern struct T53Entity0E48 *t53_entities0E48 asm("gUnk_030056F4");
struct T53Task0E48 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
extern u8 *t53_gs0E48 asm("gUnk_03005CF4");
extern void t53_cb0E48(void) asm("sub_08050E48");
static inline void t53_start0E48(void *callback, u32 arg)
{
    struct T53Task0E48 *task = (struct T53Task0E48 *)(t53_gs0E48 + 0xE34);
    u32 i = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
static inline void t53_wait0E48(u16 value)
{
    register u32 timer asm("r4")=value;
    register u32 nextValue asm("r0");
    goto wait;
next: nextValue=timer-1;timer=(u16)nextValue;if(timer==0)return;
wait: sub_080003F0();if(sub_080021A8()==0)goto next;
}
static inline void t53_clear0E48(u16 one)
{
    register struct T53Entity0E48 *p asm("r2")=t53_entities0E48;
    register u32 i asm("r3")=0;
    register s32 *active asm("r5")=&gUnk_030056FC;
    u32 bit=one;
    u16 zero=0;
    do {
        if((*active&(bit<<i)) && p->state==12)p->state=zero;
        i++;p++;
    }while(i<=4);
    sub_08019F04();
}
static inline void t53_lock0E48(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t53_unlock0E48(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
union T53Packet0E48 {
    struct {u16 type,id;s32 value;u32 tail[2];} effect;
    struct {u16 type,id;u8 args[12];} request;
};
static inline u32 t53_open0E48(u32 id)
{
    while(sub_0805F184())sub_080003F0();
    while(sub_0805EF90())sub_080003F0();
    return sub_0805DF38(1,15,2,0,45,id);
}
static inline void t53_dialogWait0E48(u32 dialog)
{while(!sub_0805EEFC((void *)dialog))sub_080003F0();}
static inline void t53_dialog0E48(u32 id)
{u32 dialog=t53_open0E48(id);t53_dialogWait0E48(dialog);}
static inline void t53_flag0E48(u8 *base,u32 mask)
{*(u32 *)(base+0x38)|=mask;}
static inline void t53_scene0E48(s32 arg0,u16 px,u16 py)
{
    union T53Packet0E48 packet;
    u32 dialog;
    u32 i;
    switch(arg0) {
    case 0:
        sub_0800CC48(0);
        t53_wait0E48(60);
        sub_080290E4(1,4);
        t53_wait0E48(4);
        sub_080290E4(1,5);
        t53_wait0E48(100);
        sub_080290E4(1,4);
        t53_wait0E48(4);
        sub_080290E4(1,3);
        t53_wait0E48(100);
        sub_080290E4(1,4);
        t53_wait0E48(4);
        sub_080290E4(1,5);
        sub_08028AAC(2,96,0,0);
        sub_0802939C(2,16);
        sub_08028D98(2,0,100,120);
        sub_0802939C(2,17);
        t53_dialog0E48(0x14006B);
        dialog=t53_open0E48(0x14006C);
        sub_080290E4(1,2);
        t53_dialogWait0E48(dialog);
        t53_dialog0E48(0x14006D);
        t53_dialog0E48(0x14006E);
        t53_dialog0E48(0x14006F);
        t53_dialog0E48(0x140070);
        t53_dialog0E48(0x140071);
        t53_dialog0E48(0x140072);
        t53_dialog0E48(0x140073);
        t53_dialog0E48(0x140074);
        t53_dialog0E48(0x140075);
        t53_dialog0E48(0x140076);
        t53_dialog0E48(0x140077);
        t53_dialog0E48(0x140078);
        t53_dialog0E48(0x140079);
        t53_dialog0E48(0x14007A);
        {register u16 type asm("r0")=10;
        register u32 value asm("r2")=300;
        register union T53Packet0E48 *ptr asm("r1")=&packet;
        ptr->effect.type=type;
        packet.effect.value=value;}
        goto packetRetry;
packetWait: sub_080003F0();
packetRetry:
        if(!sub_08067B9C(px,py,&packet))goto packetWait;
        t53_dialog0E48(0x14007B);
        t53_dialog0E48(0x14007C);
        t53_dialog0E48(0x14007D);
        t53_dialog0E48(0x14007E);
        sub_0805D37C(0x7800,0x7800,0);
        sub_080687A8();
        t53_dialog0E48(0x14007F);
        t53_start0E48(t53_cb0E48,2);
        t53_dialog0E48(0x140080);
    case 1:
        if(sub_0800CB9C()==0) {
            if(!(gUnk_030027D0&32)) {gUnk_03005CF8=8;sub_08006CB4(8);}
        } else sub_080586B4(0);
        t53_lock0E48();
        sub_0800D0F4();
        sub_08019EB8(t53_entities0E48->id,3);
        sub_0802949C(1,0);
        t53_dialog0E48(0x140081);
        t53_dialog0E48(0x140082);
        t53_dialog0E48(0x140083);
        t53_dialog0E48(0x140084);
        t53_dialog0E48(0x140085);
        t53_dialog0E48(0x140086);
        t53_dialog0E48(0x140087);
        t53_dialog0E48(0x140088);
        dialog=t53_open0E48(0x140089);
        {register u16 type asm("r1")=1;
        register u16 id asm("r2")=6;
        register union T53Packet0E48 *ptr asm("r0")=&packet;
        ptr->request.type=type;
        ptr->request.id=id;}
        for(i=0;i<=11;i++)packet.request.args[i]=0;
        while(!sub_08067B9C(0x5C00,0x6400,&packet))sub_080003F0();
        sub_0802939C(2,16);
        {register s32 dy asm("r2")=-100;sub_08028D98(2,0,dy,120);}
        {register u32 pos asm("r2")=9999;sub_08028AAC(2,pos,pos,0);}
        sub_0800CC68();
        t53_dialogWait0E48(dialog);
        t53_dialog0E48(0x14008A);
        t53_flag0E48(t53_gs0E48,2);
        t53_unlock0E48();
        sub_0800D108();
        t53_clear0E48(1);
        break;
    case 2:
        t53_wait0E48(60);
        sub_080290E4(1,0);
        sub_0802939C(1,8);
        sub_08028D98(1,0,40,80);
        sub_0802939C(1,0);
        break;
    }
}

void t53_impl0E48(s32 arg0) asm("sub_08050E48");
void t53_impl0E48(s32 arg0) {t53_scene0E48(arg0,0x7800,0x7800);}
extern u8 *t53_gsA78 asm("gUnk_03005CF4");
extern s32 t53_transformA78(void *,void *,void *,void *) asm("sub_08021FE0");
extern void t53_cb1A78(void) asm("sub_0805A474");
extern void t53_cb2A78(void) asm("sub_0805990C");
extern void t53_scheduleA78(void *,u32) asm("sub_08068070");
static inline void t53_unlockA78(void)
{struct Player *p=&gUnk_03003CE0[sub_080020F4()];p->flags&=~1;}
static inline u32 t53_selectA78(u16 mask)
{
    u8 *p;
    s32 value;
    if(sub_0800CE30())p=t53_gsA78+0x1C4;
    else p=t53_gsA78+0x1B8;
    value=*p;
    return (value>>7)&mask;
}
void sub_08051A78(void)
{
    struct {s32 x,y,zero;u32 packed;} pos;
    struct Player *p;
    u32 dialog;
    u32 value;
    register u32 one asm("r4");
    pos.zero=0;
    pos.x=0x7800;
    pos.y=0x5800;
    pos.packed=0x180010;
    p=&gUnk_03003CE0[sub_080020F4()];
    while(!t53_transformA78((u8 *)p+0x8C,&pos.x,&pos.zero,&pos.packed))sub_080003F0();
    {struct Player *q=&gUnk_03003CE0[sub_080020F4()];
    value=q->flags;
    one=1;
    q->flags=value|one;}
    sub_0800D0F4();
    if(t53_selectA78(one)) {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        dialog=sub_0805DF38(1,15,2,0,-1,0x14008E);
        while(!sub_0805EEFC((void *)dialog)) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
        t53_scheduleA78(t53_cb1A78,6);
        t53_scheduleA78(t53_cb2A78,17);
    } else {
        while(sub_0805F184())sub_080003F0();
        while(sub_0805EF90())sub_080003F0();
        dialog=sub_0805DF38(1,15,2,0,-1,0x14008F);
        while(!sub_0805EEFC((void *)dialog)) {
            if(sub_0800CDF8()) {sub_0805EFBC();break;}
            sub_080003F0();
        }
    }
    t53_unlockA78();
    sub_0800D108();
}
struct T53EntityBFC { u16 f0,id; u8 pad[8]; u16 state; u8 tail[0x2D2]; };
extern struct T53EntityBFC *t53_entitiesBFC asm("gUnk_030056F4");
extern u8 *t53_gsBFC asm("gUnk_03005CF4");
static inline void t53_waitBFC(u16 value)
{
    register u32 timer asm("r4")=value;
    register u32 nextValue asm("r0");
    goto wait;
next: nextValue=timer-1;timer=(u16)nextValue;if(timer==0)return;
wait: sub_080003F0();if(sub_080021A8()==0)goto next;
}
static inline void t53_clearBFC(u16 one)
{
    register struct T53EntityBFC *p asm("r2")=t53_entitiesBFC;
    register u32 i asm("r3")=0;
    register s32 *active asm("r5")=&gUnk_030056FC;
    u32 bit=one;
    u16 zero=0;
    do {
        if((*active&(bit<<i)) && p->state==12)p->state=zero;
        i++;p++;
    }while(i<=4);
    sub_08019F04();
}
void sub_08051BFC(void)
{
    if(sub_0800CC98()==0) {
        switch(sub_0801AB24()) {
        case 0:sub_080576A8();break;
        case 1:sub_0801AB50(6);break;
        case 2:sub_0801AB90(6);break;
        }
        while(sub_0801AAE0()==0)sub_080003F0();
    }
    {
    register u8 *base asm("r0")=t53_gsBFC;
    register u32 mask asm("r3")=4;
    register u32 value asm("r2")=*(u32 *)(base+0x38);
    register u32 test asm("r1")=value&mask;
    if(!test) {
        *(u32 *)(base+0x38)=value|mask;
        t53_waitBFC(60);
        sub_0802949C(1,0);
        sub_08019EB8(t53_entitiesBFC->id,3);
        t53_waitBFC(60);
    }
    }
    t53_clearBFC(1);
}
struct T53TaskCE4 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };

struct T53ReqCE4 { u32 a, b, c; void *callback; u32 arg, unused; };
extern u8 *t53_gsCE4 asm("gUnk_03005CF4");
extern void sub_08051DF0(s32);

static inline u32 t53_hasCE4(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline void t53_startCE4(void *cb, u32 value, u32 mode)
{
    struct T53ReqCE4 req;
    struct T53TaskCE4 *task;
    u32 i;
    register u32 zero asm("r5");

        task = (struct T53TaskCE4 *)(t53_gsCE4 + 0xE34);

        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) return;
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            req.callback = cb;
            req.arg = value;
            task->flags = 60;
            task->memory = sub_08001494(0x400);
            task->callback = (u32)sub_0802A104;
            task->stack = task->memory + 0x3FC;
            task->arg = zero;
            sub_08000274(task, &req, mode);
            sub_080003F0();
            sub_080003F0();
}
struct T53EntityCE4 { u16 f0,id; u8 pad[8]; u16 state; u8 tail[0x2D2]; };
extern struct T53EntityCE4 *t53_entitiesCE4 asm("gUnk_030056F4");
static inline void t53_clearCE4(u16 one)
{
    register struct T53EntityCE4 *p asm("r2")=t53_entitiesCE4;
    register u32 i asm("r3")=0;
    register s32 *active asm("r5")=&gUnk_030056FC;
    u32 bit=one;
    u16 zero=0;
    do {
        if((*active&(bit<<i)) && p->state==12)p->state=zero;
        i++;p++;
    }while(i<=4);
    sub_08019F04();
}
void sub_08051CE4(void)
{
    if (t53_hasCE4(t53_gsCE4, 8) == 0) {
        t53_startCE4(sub_08051DF0, 0, 6);
    } else {
        sub_08028AAC(7, 0x108, 0x158, 0);
    }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    t53_clearCE4(1);
}
extern u8 *t53_gsDF0 asm("gUnk_03005CF4");
extern void t53_spawnDF0(void *, s32, s32) asm("sub_08068820");
static inline void t53_flagDF0(u8 *ptr, u32 mask)
{ *(u32 *)(ptr + 0x38) |= mask; }
static inline void t53_effectDF0(s32 x, s32 y)
{ sub_08073E2C(x, y, 41, 1); }
void sub_08051DF0(s32 arg0)
{
    u16 timer;
    switch (arg0) {
    case 0:
        t53_spawnDF0(sub_08051DF0, 1, 1);
        break;
    case 1:
        t53_effectDF0(0x10800, 0x15800);
        timer = 4;
        goto wait;
next:
        if (--timer == 0) goto done;
wait:
        sub_080003F0();
        if (sub_080021A8() == 0) goto next;
done:
        t53_effectDF0(0x10000, 0x15800);
        t53_effectDF0(0x11000, 0x15800);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(0x17B);
        sub_08028AAC(7, 0x108, 0x158, 0);
        t53_flagDF0(t53_gsDF0, 8);
        break;
    }
}
struct T53EntryE98 {u32 id,kind;u8 pad[0x2E];u16 duration;u8 tail[0x38];};
extern u8 *t53_gsE98 asm("gUnk_03005CF4");
static inline void t53_lockE98(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags |= 1; }
static inline void t53_unlockE98(void)
{ struct Player *p = &gUnk_03003CE0[sub_080020F4()]; p->flags &= ~1; }
void sub_08051E98(void)
{
    u32 actor,dialog;
    struct T53EntryE98 *p;
    u32 i;
    actor=sub_080289C0(9,88,70);
    sub_0802939C(actor,17);
    t53_lockE98();
    sub_0800D0F4();
    if(sub_0800CC98()==0) {
        switch(sub_0801AB24()) {
        case 0:sub_080576A8();break;
        case 1:sub_0801AB50(6);break;
        case 2:sub_0801AB90(6);break;
        }
        while(sub_0801AAE0()==0)sub_080003F0();
    }
    {register u32 song asm("r1")=217;gUnk_03005CF8=song;}
    if(!(gUnk_030027D0&32))sub_08006CB4(217);
    while(sub_0805F184())sub_080003F0();
    while(sub_0805EF90())sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,45,0x14008C);
    while(!sub_0805EEFC((void *)dialog))sub_080003F0();
    while(sub_0805F184())sub_080003F0();
    while(sub_0805EF90())sub_080003F0();
    dialog=sub_0805DF38(1,15,2,0,45,0x14008D);
    sub_0802939C(actor,16);
    sub_08028D98(actor,0,-80,60);
    p=(struct T53EntryE98 *)(t53_gsE98+0x7A4);
    i=0;
    do {
        if(p->id==actor)goto found;
        i++;p++;
    }while(i<=14);
    sub_080003F0();p=0;
found:
    if(p)p->duration=4;
    while(!sub_0805EEFC((void *)dialog))sub_080003F0();
    t53_unlockE98();
    sub_0800D108();
    {register u32 song asm("r1")=165;gUnk_03005CF8=song;}
    if(!(gUnk_030027D0&32))sub_08006CB4(165);
    {register u8 *base asm("r2")=t53_gsE98;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
}
struct T53Task2060 { u32 f0, f4, flags, callback, stack, f14, f18, f1C, memory, arg; };
extern u8 *t53_gs2060 asm("gUnk_03005CF4");
extern void t53_cb2060(void) asm("sub_0805664C");
static inline void t53_start2060(void *callback, u32 arg)
{
    struct T53Task2060 *task = (struct T53Task2060 *)(t53_gs2060 + 0xE34);
    register u32 i asm("r5") = 0;
    u32 memory;
    goto check;
next:
    i++;
    task++;
check:
    if (i > 29) return;
    if (sub_08000470((u32)task) != 0) goto next;
    while ((task->memory = sub_08001494(0x400)) == 0) sub_080003F0();
    memory = task->memory;
    task->flags = 60;
    task->callback = (u32)callback;
    task->stack = memory + 0x3FC;
    task->arg = 0;
    sub_08000274(task, arg);
}
struct T53Req2060 {u32 a,b,c;void *callback;u32 arg,unused;};
extern void t53_cbReq2060(void) asm("sub_080523D8");
static inline void t53_request2060(void *cb, u32 value, u32 mode)
{
    struct T53Req2060 req;
    struct T53Task2060 *task;
    u32 i;
    register u32 zero asm("r5");

        task = (struct T53Task2060 *)(t53_gs2060 + 0xE34);

        i = 0;
        goto check;
next:
        i++;
        task++;
check:
        if (i > 29) return;
            zero = sub_08000470((u32)task);
            if (zero != 0) goto next;
            req.callback = cb;
            req.arg = value;
            task->flags = 60;
            task->memory = sub_08001494(0x400);
            task->callback = (u32)sub_0802A104;
            task->stack = task->memory + 0x3FC;
            task->arg = zero;
            sub_08000274(task, &req, mode);
            sub_080003F0();
            sub_080003F0();
}
static inline u8 t53_has2060(u8 *ptr,u16 mask)
{
    u32 value=*(u32 *)(ptr+0x38)&mask;
    if(value!=0)value=1;
    return value;
}
void sub_08052060(void)
{
    t53_start2060(t53_cb2060,59);
    t53_start2060(t53_cb2060,60);
    t53_start2060(t53_cb2060,61);
    switch(sub_080020F4()) {
    case 0:t53_start2060(t53_cb2060,62);break;
    case 1:t53_start2060(t53_cb2060,63);break;
    case 2:t53_start2060(t53_cb2060,64);break;
    case 3:t53_start2060(t53_cb2060,65);break;
    }
    if(t53_has2060(t53_gs2060,16)==0)t53_request2060(t53_cbReq2060,0,6);
    if(sub_0800CC98()==0) {
        switch(sub_0801AB24()) {
        case 0:sub_080576A8();break;
        case 1:sub_0801AB50(6);break;
        case 2:sub_0801AB90(6);break;
        }
        while(sub_0801AAE0()==0)sub_080003F0();
    }
}
void sub_080523D8(s32 arg0)
{
    u16 timer;
    switch (arg0) {
    case 0:
        t53_spawnDF0(sub_080523D8, 1, 2);
        break;
    case 1:
        t53_effectDF0(0xC800, 0x6800);
        for (timer = 4; timer != 0; timer--) {
            sub_080003F0();
            if (sub_080021A8() != 0)
                break;
        }
        t53_effectDF0(0xC000, 0x6800);
        t53_effectDF0(0xD000, 0x6800);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(0x17B);
        sub_08028AAC(7, 0xC8, 0x68, 0);
        t53_flagDF0(t53_gsDF0, 16);
        break;
    }
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0805247C);
static inline u32 t53_test3060(u8 *ptr, u32 mask)
{ return *(u32 *)(ptr + 0x38) & mask; }
static inline u32 t53_open37DC(u32 id, u32 bit)
{
    u32 d;
    while(sub_0805F184())sub_080003F0();
    while(sub_0805EF90())sub_080003F0();
    d = sub_0805DF38(1,15,2,0,45,id);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 mask asm("r1")=bit;
    register u32 value asm("r0")=*(u32 *)(base+0x38);
    *(u32 *)(base+0x38)=value|mask;}
    return d;
}
extern void t53_cam37DC(s32, s32) asm("sub_0800BB80");
struct Signed37DC { u8 pad[0x80]; s16 x, y; };
void sub_080526B4(void)
{
    s32 out[4];
    s32 sx, sy, sx2, sy2;
    s32 i, i2, step, step2;
    u16 n;
    s32 off;
    u32 dialog;
    s32 k;
    u8 flag;
    union { s32 all; struct {u16 low; s16 high;} half;} targetX, targetY, targetX2, targetY2;
    t53_lock0E48();
    sub_0800D0F4();
    if (sub_08002164() == 1) off = 0;
    else switch (sub_080020F4()) {
    case 0: off = -12; break;
    case 1: off = 12; break;
    case 2: off = -36; break;
    case 3: off = 36; break;
    }
    sub_08028D98(0, (s16)off, 0, 0);
    k = sub_0805A318();
    for (n = 1; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    {register u32 song asm("r1")=0xD9;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0xD9);
    for (n = 20; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    step = 17;
    sx = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX.all = -off << 16; targetY.all = 0xFFC00000;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&out[0], sx, targetX.half.high, i);
        sub_080659F4(&out[1], sy, targetY.half.high, i);
        t53_cam37DC((s16)out[0], (s16)out[1]);
        sub_080003F0();
    }
    flag = t53_has2060(t53_gs0E48, 2);
    if (k && flag == 0) dialog = t53_open37DC(0x140099, 2);
    else if (k == 0 && flag == 0) dialog = t53_open37DC(0x140093, 2);
    else if (k) dialog = t53_open37DC(0x14009A, 2);
    else dialog = t53_open37DC(0x140094, 2);
    t53_dialogWait0E48(dialog);
    step2 = 34;
    sx2 = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy2 = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX2.all = 0; targetY2.all = 0;
    for (i2 = 0; i2 <= 1024; i2 += step2) {
        sub_080659F4(&out[2], sx2, targetX2.half.high, i2);
        sub_080659F4(&out[3], sy2, targetY2.half.high, i2);
        t53_cam37DC((s16)out[2], (s16)out[3]);
        sub_080003F0();
    }
    {register u32 song asm("r1")=0xA5;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0xA5);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
    t53_unlock0E48();
    sub_0800D108();
}
void sub_080529E0(void)
{
    s32 out[4];
    s32 sx, sy, sx2, sy2;
    s32 i, i2, step, step2;
    u16 n;
    s32 off;
    u32 dialog;
    s32 k;
    u8 flag;
    union { s32 all; struct {u16 low; s16 high;} half;} targetX, targetY, targetX2, targetY2;
    t53_lock0E48();
    sub_0800D0F4();
    if (sub_08002164() == 1) off = 0;
    else switch (sub_080020F4()) {
    case 0: off = -12; break;
    case 1: off = 12; break;
    case 2: off = -36; break;
    case 3: off = 36; break;
    }
    sub_08028D98(0, (s16)off, 0, 0);
    k = sub_0805A318();
    for (n = 1; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    {register u32 song asm("r1")=0xD9;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0xD9);
    for (n = 20; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    step = 17;
    sx = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX.all = -off << 16; targetY.all = 0xFFC00000;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&out[0], sx, targetX.half.high, i);
        sub_080659F4(&out[1], sy, targetY.half.high, i);
        t53_cam37DC((s16)out[0], (s16)out[1]);
        sub_080003F0();
    }
    flag = t53_has2060(t53_gs0E48, 4);
    if (k && flag == 0) dialog = t53_open37DC(0x14009C, 4);
    else if (k == 0 && flag == 0) dialog = t53_open37DC(0x140096, 4);
    else if (k) dialog = t53_open37DC(0x14009D, 4);
    else dialog = t53_open37DC(0x140097, 4);
    t53_dialogWait0E48(dialog);
    step2 = 34;
    sx2 = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy2 = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX2.all = 0; targetY2.all = 0;
    for (i2 = 0; i2 <= 1024; i2 += step2) {
        sub_080659F4(&out[2], sx2, targetX2.half.high, i2);
        sub_080659F4(&out[3], sy2, targetY2.half.high, i2);
        t53_cam37DC((s16)out[2], (s16)out[3]);
        sub_080003F0();
    }
    {register u32 song asm("r1")=0xA5;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0xA5);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
    t53_unlock0E48();
    sub_0800D108();
}
void sub_08052D0C(void)
{
    s32 out[4];
    s32 sx, sy, sx2, sy2;
    s32 i, i2, step, step2;
    u16 n;
    u32 dialog;
    union { s32 all; struct {u16 low; s16 high;} half;} targetX, targetY, targetX2, targetY2;
    t53_lock0E48();
    sub_0800D0F4();
    if (sub_08002164() == 1) sub_08028AAC(0, 0xA0, 0xD8, 0);
    else switch (sub_080020F4()) {
    case 0: sub_08028AAC(0, 0xA0, 0xD0, 0); break;
    case 1: sub_08028AAC(0, 0xAE, 0xD6, 0); break;
    case 2: sub_08028AAC(0, 0x94, 0xD6, 0); break;
    case 3: sub_08028AAC(0, 0xA0, 0xDC, 0); break;
    }
    sub_080290E4(0, 5);
    for (n = 1; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    {register u32 song asm("r1")=0xD9;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0xD9);
    for (n = 20; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    step = 17;
    sx = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX.all = 0xA0 << 16; targetY.all = 0xFFB00000;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&out[0], sx, targetX.half.high, i);
        sub_080659F4(&out[1], sy, targetY.half.high, i);
        t53_cam37DC((s16)out[0], (s16)out[1]);
        sub_080003F0();
    }
    if (t53_test3060(t53_gs0E48, 1) == 0) dialog = t53_open37DC(0x140091, 1);
    else dialog = t53_open37DC(0x140092, 1);
    t53_dialogWait0E48(dialog);
    step2 = 34;
    sx2 = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy2 = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX2.all = 0; targetY2.all = 0;
    for (i2 = 0; i2 <= 1024; i2 += step2) {
        sub_080659F4(&out[2], sx2, targetX2.half.high, i2);
        sub_080659F4(&out[3], sy2, targetY2.half.high, i2);
        t53_cam37DC((s16)out[2], (s16)out[3]);
        sub_080003F0();
    }
    {register u32 song asm("r1")=11;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(11);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
    t53_unlock0E48();
    sub_0800D108();
}
extern u8 *gGS2FE8 asm("gUnk_03005CF4");
extern void sub_0805990C();
extern void sub_0803E5D8();
static inline u8 *Sel2FE8(void)
{
    if (sub_0800CE30())
        return gGS2FE8 + 0x1C7;
    return gGS2FE8 + 0x1BB;
}
void sub_08052FE8(void)
{
    u8 mode;
    u32 a, b;
    {
        u8 *q = Sel2FE8();
        s32 m = ~1;
        *q = m & *q;
    }
    mode = sub_0801DE60();
    b = sub_0800CCCC();
    a = 0;
    if (mode == 6)
        a = 1;
    {
        u32 c = 0;
        if (b == 0)
            c = 1;
        if (a & c)
            sub_08068070((u32)sub_0805990C, 0x20);
    }
    sub_08068070((u32)sub_0803E5D8, 0);
}
extern void t53_cb3060(void) asm("sub_08053120");
void sub_08053060(void)
{
    if (t53_test3060(t53_gs2060, 4) == 0) t53_request2060(t53_cb3060, 0, 6);
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
}
void sub_08053120(s32 arg0)
{
    u16 timer;
    switch (arg0) {
    case 0:
        t53_spawnDF0(sub_08053120, 1, 1);
        break;
    case 1:
        t53_effectDF0(0x10800, 0x5800);
        for (timer = 4; timer != 0; timer--) {
            sub_080003F0();
            if (sub_080021A8() != 0)
                break;
        }
        t53_effectDF0(0x10000, 0x5800);
        t53_effectDF0(0x11000, 0x5800);
        if ((gUnk_030027D0 & 32) == 0) sub_08006D08(0x17B);
        sub_08028AAC(7, 0x108, 0x58, 0);
        t53_flagDF0(t53_gsDF0, 4);
        break;
    }
}
struct P31C4 { u8 pad[0x64]; u16 state; u8 rest[0x14C - 0x66]; };
extern struct P31C4 t53_players31C4[] asm("gUnk_03003CE0");
static inline u8 t53_busy31C4(void)
{
    u32 n = sub_08002164();
    u32 i;
    for (i = 0; i < n; i++) {
        u16 st = t53_players31C4[i].state;
        if (st == 6 || st == 8) return 1;
    }
    return 0;
}
void sub_080531C4(void)
{
    s32 out[4];
    s32 sx, sy, sx2, sy2;
    s32 i, i2, step, step2;
    u16 n;
    s32 off;
    u32 dialog;
    s32 k;
    u8 flag;
    union { s32 all; struct {u16 low; s16 high;} half;} targetX, targetY, targetX2, targetY2;
    t53_lock0E48();
    sub_0800D0F4();
    if (sub_08002164() == 1) off = 0;
    else switch (sub_080020F4()) {
    case 0: off = -12; break;
    case 1: off = 12; break;
    case 2: off = -36; break;
    case 3: off = 36; break;
    }
    sub_08028D98(0, (s16)off, 0, 0);
    k = t53_busy31C4();
    for (n = 1; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    {register u32 song asm("r1")=0xD9;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0xD9);
    for (n = 20; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    step = 17;
    sx = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX.all = -off << 16; targetY.all = 0xFFC00000;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&out[0], sx, targetX.half.high, i);
        sub_080659F4(&out[1], sy, targetY.half.high, i);
        t53_cam37DC((s16)out[0], (s16)out[1]);
        sub_080003F0();
    }
    flag = t53_has2060(t53_gs0E48, 1);
    if (k && flag == 0) dialog = t53_open37DC(0x1400A5, 1);
    else if (k == 0 && flag == 0) dialog = t53_open37DC(0x1400A2, 1);
    else if (k) dialog = t53_open37DC(0x1400A3, 1);
    else dialog = t53_open37DC(0x1400A3, 1);
    t53_dialogWait0E48(dialog);
    step2 = 34;
    sx2 = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy2 = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX2.all = 0; targetY2.all = 0;
    for (i2 = 0; i2 <= 1024; i2 += step2) {
        sub_080659F4(&out[2], sx2, targetX2.half.high, i2);
        sub_080659F4(&out[3], sy2, targetY2.half.high, i2);
        t53_cam37DC((s16)out[2], (s16)out[3]);
        sub_080003F0();
    }
    {register u32 song asm("r1")=11;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(11);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
    t53_unlock0E48();
    sub_0800D108();
}
void sub_08053510(void)
{
    s32 out[4];
    s32 sx, sy, sx2, sy2;
    s32 i, i2, step, step2;
    u16 n;
    s32 off;
    u32 dialog;
    union { s32 all; struct {u16 low; s16 high;} half;} targetX, targetY, targetX2, targetY2;
    t53_lock0E48();
    sub_0800D0F4();
    if (sub_08002164() == 1) off = 0;
    else switch (sub_080020F4()) {
    case 0: off = -12; break;
    case 1: off = 12; break;
    case 2: off = -36; break;
    case 3: off = 36; break;
    }
    sub_08028D98(0, (s16)off, 0, 0);
    for (n = 1; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    {register u32 song asm("r2")=0x193;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0x193);
    for (n = 20; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    step = 17;
    sx = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX.all = -off << 16; targetY.all = 0xFFC00000;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&out[0], sx, targetX.half.high, i);
        sub_080659F4(&out[1], sy, targetY.half.high, i);
        t53_cam37DC((s16)out[0], (s16)out[1]);
        sub_080003F0();
    }
    if (t53_test3060(t53_gs0E48, 2) == 0) dialog = t53_open37DC(0x1400A0, 2);
    else dialog = t53_open37DC(0x1400A1, 2);
    t53_dialogWait0E48(dialog);
    step2 = 34;
    sx2 = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy2 = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX2.all = 0; targetY2.all = 0;
    for (i2 = 0; i2 <= 1024; i2 += step2) {
        sub_080659F4(&out[2], sx2, targetX2.half.high, i2);
        sub_080659F4(&out[3], sy2, targetY2.half.high, i2);
        t53_cam37DC((s16)out[2], (s16)out[3]);
        sub_080003F0();
    }
    {register u32 song asm("r1")=12;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(12);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
    t53_unlock0E48();
    sub_0800D108();
}
void sub_080537DC(void)
{
    s32 out[4];
    s32 sx, sy, sx2, sy2;
    s32 i, i2, step, step2;
    u16 n;
    s32 off;
    u32 dialog;
    union { s32 all; struct {u16 low; s16 high;} half;} targetX, targetY, targetX2, targetY2;
    t53_lock0E48();
    sub_0800D0F4();
    if (sub_08002164() == 1) off = 0;
    else switch (sub_080020F4()) {
    case 0: off = -12; break;
    case 1: off = 12; break;
    case 2: off = -36; break;
    case 3: off = 36; break;
    }
    sub_08028D98(0, (s16)off, 0, 0);
    for (n = 1; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
        case 0: sub_080576A8(); break;
        case 1: sub_0801AB50(6); break;
        case 2: sub_0801AB90(6); break;
        }
        while (sub_0801AAE0() == 0) sub_080003F0();
    }
    for (n = 20; n != 0; n--) { sub_080003F0(); if (sub_080021A8()) break; }
    step = 17;
    sx = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX.all = -off << 16; targetY.all = 0xFFC00000;
    for (i = 0; i <= 1024; i += step) {
        sub_080659F4(&out[0], sx, targetX.half.high, i);
        sub_080659F4(&out[1], sy, targetY.half.high, i);
        t53_cam37DC((s16)out[0], (s16)out[1]);
        sub_080003F0();
    }
    if (t53_test3060(t53_gs0E48, 1) == 0) dialog = t53_open37DC(0x1400A8, 1);
    else dialog = t53_open37DC(0x1400A9, 1);
    t53_dialogWait0E48(dialog);
    step2 = 34;
    sx2 = ((struct Signed37DC *)&gUnk_03003170)->x;
    sy2 = ((struct Signed37DC *)&gUnk_03003170)->y;
    targetX2.all = 0; targetY2.all = 0;
    for (i2 = 0; i2 <= 1024; i2 += step2) {
        sub_080659F4(&out[2], sx2, targetX2.half.high, i2);
        sub_080659F4(&out[3], sy2, targetY2.half.high, i2);
        t53_cam37DC((s16)out[2], (s16)out[3]);
        sub_080003F0();
    }
    {register u32 song asm("r2")=0x194;gUnk_03005CF8=song;}
    if (!(gUnk_030027D0 & 32)) sub_08006CB4(0x194);
    {register u8 *base asm("r2")=t53_gs0E48;
    register u32 value asm("r1")=*(u16 *)(base+4);
    register u32 mask asm("r0")=32;
    *(u16 *)(base+4)=mask|value;}
    t53_unlock0E48();
    sub_0800D108();
}
extern u32 gW03005CF8 asm("gUnk_03005CF8");
extern u32 gW030027D0 asm("gUnk_030027D0");
extern u8 *gP030056F4 asm("gUnk_030056F4");
extern u32 gM030056FC asm("gUnk_030056FC");
struct E2E0a { u8 b[0xC]; u16 hC; u8 r[0x2E0 - 0xE]; };
static inline void SetMode53A80(u32 m)
{
    gW03005CF8 = m;
    if ((gW030027D0 & 0x20) == 0)
        sub_08006CB4(m);
}
static inline void Clr53A80(u8 *p)
{
    u32 i;
    for (i = 0; i <= 4; i++, p += 0x2E0)
        if ((gM030056FC & (1 << i)) && *(u16 *)(p + 0xC) == 0xC)
            *(u16 *)(p + 0xC) = 0;
}
void sub_08053A80(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
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
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053B24);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053C5C);
void sub_08053CF4(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
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
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
void sub_08053D98(void)
{
    struct E2E0a *p;
    u32 i;
    u32 one;
    u32 z;
    if (sub_0800CC98() == 0) {
        switch (sub_0801AB24()) {
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
        while (sub_0801AAE0() == 0)
            sub_080003F0();
    }
    SetMode53A80(0xB);
    Clr53A80(gP030056F4);
    sub_08019F04();
}
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053E3C);
