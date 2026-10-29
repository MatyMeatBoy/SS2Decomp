#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804D330);
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
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804DDBC);
#ifdef NONMATCHING
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0804E7B8(s32);
extern void sub_0804E628(s32);
struct Task51E3 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51E3(void *,u32) asm("sub_08000274");
static inline u32 testMask51E3(u32 value,u32 mask) { u32 result=value & mask; if(result)result=1; return result; }
struct WrapperTask51E3 { u32 f0,f4,f8,fC; u8 *f10; u32 f14,f18,f1C; u8 *f20; u32 f24; };
struct Args51E3 { u32 a,b,c; void (*callback)(s32); void *data; u32 f; };
void sub_0804E360(void) {
    struct Args51E3 args;
    struct WrapperTask51E3 *firstTask;
    struct Task51E3 *secondTask;
    u32 firstIndex,secondIndex,zero,mem,firstMem,data;
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
        args.data = NULL;
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
        args.data = NULL;
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

#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E360);
#endif
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
#ifdef NONMATCHING
extern void sub_080290E4(s32,s32);
extern void sub_08029174(s32,s32);
extern void sub_0802939C(s32,s32);
struct State51E7 { u8 pad[0x38]; u32 flags; };
extern struct State51E7 *state51E7 asm("gUnk_03005CF4");
void sub_0804E7B8(s32 arg0) {
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
        if (temp_r2 & arg0) {
            return;
        }
        state->flags = (s32) (temp_r2 | arg0);
        if (sub_0800CCCC() != 0) {
            return;
        }
        temp_r1 = &gUnk_03003CE0[sub_080020F4()];
        temp_r1->flags |= arg0;
        sub_0800D0F4();
        sub_08073E2C(0x4000, 0x4000, 0x29, 1);
        for (var_r4=2;var_r4;var_r4--) {
            sub_080003F0();
            if (sub_080021A8()) break;
        }
        sub_08073E2C(0x3800, 0x4000, 0x29, 1);
        sub_08073E2C(0x4400, 0x3800, 0x29, 1);
        for (var_r4_2=2;var_r4_2;var_r4_2--) {
            sub_080003F0();
            if (sub_080021A8()) break;
        }
        sub_08073E2C(0x4800, 0x4000, 0x29, 1);
        sub_08073E2C(0x3C00, 0x3800, 0x29, 1);
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
        sub_08028AAC(7, 0x270F, 0x270F, 0);
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


#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804E7B8);
#endif
#ifdef NONMATCHING
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
    u32 one;
    s32 callback, callback2;
    s32 secondRaw;
    u32 fieldOne, waitOne, zero, topMask;
    s32 *flagsaddr, *waitFlags, *loopBase;
    u32 loopOne;
    u8 *state;
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
        bit2 &= 1;
        if (!bit2 && (temp_r4 != 0)) {
            sub_08028AAC(1, 0x80, 0x50, 0);
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
            raw = *var_r0_4;
            bit2 = raw >> 2;
            bit2 &= loopOne;
        } while (!bit2);
        var_r1_3 = (s32 *)(gUnk_03005CF4 + 0x7A4);
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

#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EABC);
#endif
#ifdef NONMATCHING
extern void sub_080290E4(s32,s32);
extern void sub_0804EE20(void);
struct Task51ED { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern void taskStart51ED(void *,u32) asm("sub_08000274");
void sub_0804ED18(s32 arg0) {
    u8 *p;
    s32 value;
    s32 raw, mask;
    u8 *state;
    struct Task51ED *task;
    u32 i,mem;
    s32 callback;
    u16 timer;
    if (sub_0800CE30()) p = (u8 *)(gUnk_03005CF4 + 0x1C3);
    else p = (u8 *)(gUnk_03005CF4 + 0x1B7);
    raw = *p;
    mask = 4;
    *p = mask | raw;
    state = (u8 *)gUnk_03005CF4;
    mask = 8;
    value = *(u32 *)(state + 0x38);
    if (!(value & mask)) {
        *(u32 *)(state + 0x38) = value | mask;
        if (sub_0800CCCC() == 0) {
            callback = (s32)sub_0804EE20;
            task = (struct Task51ED *)(gUnk_03005CF4 + 0xE34);
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

#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804ED18);
#endif
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

#ifdef NONMATCHING
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void cameraMove51(s16,s16) asm("sub_0800BB80");
union Fixed51EE { s32 whole; struct { u16 lo; s16 hi; } part; };
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
    px2 = &out[2];
    py2 = &out[3];
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
        sub_080659F4(px2,startX,targetX2.part.hi,t);
        sub_080659F4(py2,startY,targetY2.part.hi,t);
        cameraMove51((s16)out[2],(s16)out[3]);
        sub_080003F0();
    }
    status2 = 0xA5;
    statusptr2 = &gUnk_03005CF8;
    *statusptr2 = status2;
    if (!(gUnk_030027D0 & 0x20)) sub_08006CB4(0xA5);
    *(u16 *)(gUnk_03005CF4 + 4) = 0x20 | *(u16 *)(gUnk_03005CF4 + 4);
    player2 = &gUnk_03003CE0[sub_080020F4()];
    player2->flags &= ~1;
    sub_0800D108();
}

#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804EEA8);
#endif
#ifdef NONMATCHING
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
    state = (u8 *)gUnk_03005CF4;
    rawFlag = *(u16 *)(state+4);
    mask = 0x20;
    zero = 0;
    *(u16 *)(state+4) = mask | rawFlag;
    temp_r2_2 = &gUnk_03003CE0[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
    gUnk_03003CE0[sub_080020F4()].state = zero;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F128);
#endif
#ifdef NONMATCHING
struct ScratchF390 { s32 out[20]; struct TileSys *level; s32 *p[4]; u32 iteration; s32 *rest[14]; };
extern s16 cameraYF390 asm("gUnk_030031F2");
extern void localF390_BB94(s16,s16) asm("sub_0800BB94");
extern void localF390_97D18(s32,s32) asm("sub_08097D18");
void sub_0804F390(void) {
    struct ScratchF390 L;
    s16 temp_r4_10;
    s16 temp_r4_12;
    s16 temp_r4_14;
    s16 temp_r4_16;
    s16 temp_r4_18;
    s16 temp_r4_20;
    s16 temp_r4_2;
    s16 temp_r4_4;
    s16 temp_r4_6;
    s16 temp_r4_8;
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
    s16 var_r0;
    s16 var_r0_10;
    s16 var_r0_2;
    s16 var_r0_3;
    s16 var_r0_4;
    s16 var_r0_5;
    s16 var_r0_6;
    s16 var_r0_7;
    s16 var_r0_8;
    s16 var_r0_9;
    s32 *temp_r1;
    s32 *temp_r1_2;
    s32 *temp_r1_3;
    s32 *temp_r1_4;
    s32 *temp_r1_5;
    s32 *temp_r2;
    s32 *temp_r2_2;
    s32 *temp_r2_3;
    s32 *temp_r2_4;
    s32 *temp_r2_5;
    s32 *temp_r3;
    s32 *temp_r3_2;
    s32 *temp_r3_3;
    s32 *temp_r3_4;
    s32 *temp_r3_5;
    u16 temp_r4;
    u16 temp_r4_11;
    u16 temp_r4_13;
    u16 temp_r4_15;
    u16 temp_r4_17;
    u16 temp_r4_19;
    u16 temp_r4_3;
    u16 temp_r4_5;
    u16 temp_r4_7;
    u16 temp_r4_9;
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

    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r0 = 0;
    temp_r1 = &L.out[2];
    L.p[0] = temp_r1;
    temp_r2 = &L.out[3];
    L.p[1] = temp_r2;
    temp_r3 = &L.out[4];
    L.p[2] = temp_r3;
    temp_r1_2 = temp_r1 + 3;
    L.p[3] = temp_r1_2;
    temp_r2_2 = temp_r2 + 3;
    L.rest[0] = temp_r2_2;
    temp_r3_2 = temp_r3 + 3;
    L.rest[1] = temp_r3_2;
    temp_r1_3 = temp_r1_2 + 3;
    L.rest[2] = temp_r1_3;
    temp_r2_3 = temp_r2_2 + 3;
    L.rest[3] = temp_r2_3;
    temp_r3_3 = temp_r3_2 + 3;
    L.rest[4] = temp_r3_3;
    temp_r1_4 = temp_r1_3 + 3;
    L.rest[5] = temp_r1_4;
    temp_r2_4 = temp_r2_3 + 3;
    L.rest[6] = temp_r2_4;
    temp_r3_4 = temp_r3_3 + 3;
    L.rest[7] = temp_r3_4;
    temp_r1_5 = temp_r1_4 + 3;
    L.rest[8] = temp_r1_5;
    temp_r2_5 = temp_r2_4 + 3;
    L.rest[9] = temp_r2_5;
    temp_r3_5 = temp_r3_4 + 3;
    L.rest[10] = temp_r3_5;
    L.rest[11] = temp_r1_5 + 3;
    L.rest[12] = temp_r2_5 + 3;
    L.rest[13] = temp_r3_5 + 3;
    do {
        temp_r4_2 = var_r0;
        sub_080659F4(&L.out[0], (s32) temp_r7, 0 >> 0x10, (s32) temp_r4_2);
        sub_080659F4(&L.out[1], (s32) temp_r6, -0x10000 >> 0x10, (s32) temp_r4_2);
        localF390_BB94((s16) L.out[0], (s16) L.out[1]);
        localF390_97D18(0 - L.out[0], 0 - L.out[1]);
        sub_080003F0();
        temp_r4 = temp_r4_2 + 0x200;
        var_r0 = (s16) temp_r4;
    } while ((s32) (s16) temp_r4 <= 0x400);
    var_r4 = 2;
goto wait4;
dec4:
var_r4--; if (var_r4 == 0) goto after4;
wait4:
sub_080003F0(); if (sub_080021A8() == 0) goto dec4;
after4:
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r0_2 = 0;
    do {
        temp_r4_4 = var_r0_2;
        sub_080659F4(L.p[0], (s32) temp_r6_2, 0 >> 0x10, (s32) temp_r4_4);
        sub_080659F4(L.p[1], (s32) temp_r5, 0 >> 0x10, (s32) temp_r4_4);
        localF390_BB94((s16) L.out[2], (s16) L.out[3]);
        localF390_97D18(0 - L.out[2], 0 - L.out[3]);
        sub_080003F0();
        temp_r4_3 = temp_r4_4 + 0x200;
        var_r0_2 = (s16) temp_r4_3;
    } while ((s32) (s16) temp_r4_3 <= 0x400);
    var_r4_2 = 2;
goto wait9;
dec9:
var_r4_2--; if (var_r4_2 == 0) goto after9;
wait9:
sub_080003F0(); if (sub_080021A8() == 0) goto dec9;
after9:
    temp_r6_3 = (s16) gUnk_03003170.f80;
    temp_r5_2 = (s16) gUnk_03003170.f82;
    var_r0_3 = 0;
    do {
        temp_r4_6 = var_r0_3;
        sub_080659F4(L.p[2], (s32) temp_r6_3, 0 >> 0x10, (s32) temp_r4_6);
        sub_080659F4(L.p[3], (s32) temp_r5_2, -2, (s32) temp_r4_6);
        localF390_BB94((s16) L.out[4], (s16) L.out[5]);
        localF390_97D18(0 - L.out[4], 0 - L.out[5]);
        sub_080003F0();
        temp_r4_5 = temp_r4_6 + 0x200;
        var_r0_3 = (s16) temp_r4_5;
    } while ((s32) (s16) temp_r4_5 <= 0x400);
    var_r4_3 = 2;
goto wait14;
dec14:
var_r4_3--; if (var_r4_3 == 0) goto after14;
wait14:
sub_080003F0(); if (sub_080021A8() == 0) goto dec14;
after14:
    temp_r6_4 = (s16) gUnk_03003170.f80;
    temp_r5_3 = (s16) gUnk_03003170.f82;
    var_r0_4 = 0;
    do {
        temp_r4_8 = var_r0_4;
        sub_080659F4(L.rest[0], (s32) temp_r6_4, 0 >> 0x10, (s32) temp_r4_8);
        sub_080659F4(L.rest[1], (s32) temp_r5_3, 0 >> 0x10, (s32) temp_r4_8);
        localF390_BB94((s16) L.out[6], (s16) L.out[7]);
        localF390_97D18(0 - L.out[6], 0 - L.out[7]);
        sub_080003F0();
        temp_r4_7 = temp_r4_8 + 0x200;
        var_r0_4 = (s16) temp_r4_7;
    } while ((s32) (s16) temp_r4_7 <= 0x400);
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
    var_r0_5 = 0;
    L.iteration = var_r1 + 1;
    do {
        temp_r4_10 = var_r0_5;
        sub_080659F4(L.rest[2], (s32) temp_r8, 0 >> 0x10, (s32) temp_r4_10);
        sub_080659F4(L.rest[3], (s32) temp_r7_2, -0x30000 >> 0x10, (s32) temp_r4_10);
        localF390_BB94((s16) L.out[8], (s16) L.out[9]);
        localF390_97D18(0 - L.out[8], 0 - L.out[9]);
        sub_080003F0();
        temp_r4_9 = temp_r4_10 + 0x200;
        var_r0_5 = (s16) temp_r4_9;
    } while ((s32) (s16) temp_r4_9 <= 0x400);
    var_r4_5 = 2;
goto wait25;
dec25:
var_r4_5--; if (var_r4_5 == 0) goto after25;
wait25:
sub_080003F0(); if (sub_080021A8() == 0) goto dec25;
after25:
    temp_r6_5 = (s16) L.level->f80;
    temp_r5_4 = cameraYF390;
    var_r0_6 = 0;
    do {
        temp_r4_12 = var_r0_6;
        sub_080659F4(L.rest[4], (s32) temp_r6_5, 0 >> 0x10, (s32) temp_r4_12);
        sub_080659F4(L.rest[5], (s32) temp_r5_4, 0 >> 0x10, (s32) temp_r4_12);
        localF390_BB94((s16) L.out[10], (s16) L.out[11]);
        localF390_97D18(0 - L.out[10], 0 - L.out[11]);
        sub_080003F0();
        temp_r4_11 = temp_r4_12 + 0x200;
        var_r0_6 = (s16) temp_r4_11;
    } while ((s32) (s16) temp_r4_11 <= 0x400);
    var_r4_6 = 2;
goto wait30;
dec30:
var_r4_6--; if (var_r4_6 == 0) goto after30;
wait30:
sub_080003F0(); if (sub_080021A8() == 0) goto dec30;
after30:
    var_r1 = (u16) L.iteration;
    if ((u32) var_r1 <= 0x3BU) {
        goto loop_21;
    }
    temp_r6_6 = (s16) gUnk_03003170.f80;
    temp_r5_5 = (s16) gUnk_03003170.f82;
    var_r0_7 = 0;
    do {
        temp_r4_14 = var_r0_7;
        sub_080659F4(L.rest[6], (s32) temp_r6_6, 0 >> 0x10, (s32) temp_r4_14);
        sub_080659F4(L.rest[7], (s32) temp_r5_5, -2, (s32) temp_r4_14);
        localF390_BB94((s16) L.out[12], (s16) L.out[13]);
        localF390_97D18(0 - L.out[12], 0 - L.out[13]);
        sub_080003F0();
        temp_r4_13 = temp_r4_14 + 0x200;
        var_r0_7 = (s16) temp_r4_13;
    } while ((s32) (s16) temp_r4_13 <= 0x400);
    var_r4_7 = 2;
goto wait37;
dec37:
var_r4_7--; if (var_r4_7 == 0) goto after37;
wait37:
sub_080003F0(); if (sub_080021A8() == 0) goto dec37;
after37:
    temp_r6_7 = (s16) gUnk_03003170.f80;
    temp_r5_6 = (s16) gUnk_03003170.f82;
    var_r0_8 = 0;
    do {
        temp_r4_16 = var_r0_8;
        sub_080659F4(L.rest[8], (s32) temp_r6_7, 0 >> 0x10, (s32) temp_r4_16);
        sub_080659F4(L.rest[9], (s32) temp_r5_6, 0 >> 0x10, (s32) temp_r4_16);
        localF390_BB94((s16) L.out[14], (s16) L.out[15]);
        localF390_97D18(0 - L.out[14], 0 - L.out[15]);
        sub_080003F0();
        temp_r4_15 = temp_r4_16 + 0x200;
        var_r0_8 = (s16) temp_r4_15;
    } while ((s32) (s16) temp_r4_15 <= 0x400);
    var_r4_8 = 2;
goto wait42;
dec42:
var_r4_8--; if (var_r4_8 == 0) goto after42;
wait42:
sub_080003F0(); if (sub_080021A8() == 0) goto dec42;
after42:
    temp_r6_8 = (s16) gUnk_03003170.f80;
    temp_r5_7 = (s16) gUnk_03003170.f82;
    var_r0_9 = 0;
    do {
        temp_r4_18 = var_r0_9;
        sub_080659F4(L.rest[10], (s32) temp_r6_8, 0 >> 0x10, (s32) temp_r4_18);
        sub_080659F4(L.rest[11], (s32) temp_r5_7, -1, (s32) temp_r4_18);
        localF390_BB94((s16) L.out[16], (s16) L.out[17]);
        localF390_97D18(0 - L.out[16], 0 - L.out[17]);
        sub_080003F0();
        temp_r4_17 = temp_r4_18 + 0x200;
        var_r0_9 = (s16) temp_r4_17;
    } while ((s32) (s16) temp_r4_17 <= 0x400);
    var_r4_9 = 2;
goto wait47;
dec47:
var_r4_9--; if (var_r4_9 == 0) goto after47;
wait47:
sub_080003F0(); if (sub_080021A8() == 0) goto dec47;
after47:
    temp_r6_9 = (s16) gUnk_03003170.f80;
    temp_r5_8 = (s16) gUnk_03003170.f82;
    var_r0_10 = 0;
    do {
        temp_r4_20 = var_r0_10;
        sub_080659F4(L.rest[12], (s32) temp_r6_9, 0 >> 0x10, (s32) temp_r4_20);
        sub_080659F4(L.rest[13], (s32) temp_r5_8, 0 >> 0x10, (s32) temp_r4_20);
        localF390_BB94((s16) L.out[18], (s16) L.out[19]);
        localF390_97D18(0 - L.out[18], 0 - L.out[19]);
        sub_080003F0();
        temp_r4_19 = temp_r4_20 + 0x200;
        var_r0_10 = (s16) temp_r4_19;
    } while ((s32) (s16) temp_r4_19 <= 0x400);
    var_r4_10 = 2;
goto wait52;
dec52:
var_r4_10--; if (var_r4_10 == 0) goto after52;
wait52:
sub_080003F0(); if (sub_080021A8() == 0) goto dec52;
after52:
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804F390);
#endif
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

#ifdef NONMATCHING
struct PlayerFC3C { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct StateFC3C { u8 pad[4]; u16 flags; u8 pad6[0x38-6]; u32 eventFlags; };
extern struct PlayerFC3C playersFC3C[] asm("gUnk_03003CE0");
extern struct StateFC3C *stateFC3C asm("gUnk_03005CF4");
extern void localFC3C_BB80(s16,s16) asm("sub_0800BB80");
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
void sub_0804FC3C(void) {
    struct { s32 x,y,nextX,nextY; s32 *nextXp,*nextYp; } L;
    s32 sp0;
    s32 sp4;
    register s32 temp_r5 asm("r5");
    register s32 temp_r6 asm("r6");
    register s32 temp_r6_2 asm("r6");
    register s32 temp_r7 asm("r7");
    register s32 var_r5 asm("r5");
    register s32 firstStep asm("r10");
    register s32 firstYFixed asm("r9");
    register s32 *firstY asm("r8");
    register s32 secondStep asm("r9");
    register s32 secondXFixed asm("r8");
    register s32 secondYFixed asm("r7");
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r4_3;
    s32 var_r4_4;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r3;
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
    L.nextXp = &L.nextX;
    L.nextYp = &L.nextY;
goto wait15;
dec15:
var_r4--; if (var_r4 == 0) goto after15;
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
    gUnk_03005CF8 = 0xD9;
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
    firstStep = 0x11;
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r4_3 = 0;
    var_r5 <<= 16;
    firstYFixed = 0xFF900000;
    do {
        sub_080659F4(&L.x, (s32) temp_r7, var_r5 >> 16, var_r4_3);
        sub_080659F4(firstY, (s32) temp_r6, firstYFixed >> 16, var_r4_3);
        localFC3C_BB80((s16) L.x, (s16) L.y);
        sub_080003F0();
        var_r4_3 += firstStep;
    } while (var_r4_3 <= 0x400);
    if (!(stateFC3C->eventFlags & 2)) {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        sp0 = 0x2D;
        var_r0 = 0x140062;
    } else {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        sp0 = 0x2D;
        var_r0 = 0x140063;
    }
    sp4 = var_r0;
    temp_r3 = sub_0805DF38(1U, 0xFU, 2U, 0U, sp0, sp4);
    stateFC3C->eventFlags = (s32) (stateFC3C->eventFlags | 2);
while (sub_0805EEFC((void *) temp_r3) == 0) sub_080003F0();
    secondStep = 0x22;
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_4 = 0;
    secondXFixed = 0;
    secondYFixed = 0;
    do {
        sub_080659F4(L.nextXp, (s32) temp_r6_2, secondXFixed >> 16, var_r4_4);
        sub_080659F4(L.nextYp, (s32) temp_r5, secondYFixed >> 16, var_r4_4);
        localFC3C_BB80((s16) L.nextX, (s16) L.nextY);
        sub_080003F0();
        var_r4_4 += secondStep;
    } while (var_r4_4 <= 0x400);
    gUnk_03005CF8 = 0xB;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xBU);
    }
    stateFC3C->flags = (u16) (0x20 | stateFC3C->flags);
    temp_r2_2 = &playersFC3C[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FC3C);
#endif
#ifdef NONMATCHING
struct PlayerFF04 { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct EntityFF04 { u8 pad[0xC]; u16 state; u8 tail[0x2E0-0xE]; };
struct StateFF04 { u8 pad[0x38]; u32 events; };
extern struct PlayerFF04 playersFF04[] asm("gUnk_03003CE0");
extern struct EntityFF04 *entitiesFF04 asm("gUnk_030056F4");
extern struct StateFF04 *stateFF04 asm("gUnk_03005CF4");
extern void localFF04_BB80(s16,s16) asm("sub_0800BB80");
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_080586B4(s32);
extern void sub_080502DC(void);
void sub_0804FF04(void) {
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r2_2;
    s32 var_r4_2;
    s32 var_r4_3;
    u16 var_r4;
    u32 temp_r4;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r3_3;
    u8 *var_r0;
    struct PlayerFF04 *temp_r2;
    struct PlayerFF04 *temp_r2_3;
    struct PlayerFF04 *temp_r2_4;
    struct EntityFF04 *var_r2;
    struct EntityFF04 *var_r2_2;
    struct EntityFF04 *var_r2_3;

    if (sub_0800CE30() != 0) {
        var_r0 = (u8 *)stateFF04 + 0x1C4;
    } else {
        var_r0 = (u8 *)stateFF04 + 0x1B8;
    }
    if (((s32) *var_r0 >> 7) & 1) goto special;
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
    temp_r2_2 = stateFF04->events;
    if (!(temp_r2_2 & 1)) {
        stateFF04->events = (s32) (temp_r2_2 | 1);
        gUnk_03005CF8 = 0xC4;
        if (!(gUnk_030027D0 & 0x20)) {
            sub_08006CB4(0xC4U);
        }
        var_r4 = 0x1E;
goto wait;
dec:
var_r4--; if (var_r4 == 0) goto after;
wait:
sub_080003F0(); if (sub_080021A8() == 0) goto dec;
after:
        temp_r7 = (s16) gUnk_03003170.f80;
        temp_r6 = (s16) gUnk_03003170.f82;
        var_r4_2 = 0;
        do {
            sub_080659F4(&sp8, (s32) temp_r7, 0xC00000 >> 0x10, var_r4_2);
            sub_080659F4(&spC, (s32) temp_r6, 0x280000 >> 0x10, var_r4_2);
            localFF04_BB80((s16) sp8, (s16) spC);
            sub_080003F0();
            var_r4_2 += 0x11;
        } while (var_r4_2 <= 0x400);
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        temp_r4 = sub_0805DF38(1U, 0xFU, 2U, 0U, 0x2D, 0x140068U);
while (sub_0805EEFC((void *) temp_r4) == 0) sub_080003F0();
        temp_r6_2 = (s16) gUnk_03003170.f80;
        temp_r5 = (s16) gUnk_03003170.f82;
        var_r4_3 = 0;
        do {
            sub_080659F4(&sp10, (s32) temp_r6_2, 0 >> 0x10, var_r4_3);
            sub_080659F4(&sp14, (s32) temp_r5, 0 >> 0x10, var_r4_3);
            localFF04_BB80((s16) sp10, (s16) sp14);
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
        var_r3_3 = 0;
        do {
            if ((gUnk_030056FC & (1 << var_r3_3)) && (var_r2_3->state == 0xC)) {
                var_r2_3->state = 0U;
            }
            var_r3_3 += 1;
            var_r2_3++;
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
        var_r3_2 = 0;
        do {
            if ((gUnk_030056FC & (1 << var_r3_2)) && (var_r2_2->state == 0xC)) {
                var_r2_2->state = 0U;
            }
            var_r3_2 += 1;
            var_r2_2++;
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
        var_r3 = 0;
        do {
            if ((gUnk_030056FC & (1 << var_r3)) && (var_r2->state == 0xC)) {
                var_r2->state = 0U;
            }
            var_r3 += 1;
            var_r2++;
        } while (var_r3 <= 4U);
        sub_08019F04();


done:
    return;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0804FF04);
#endif
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
#ifdef NONMATCHING
struct PlayerF50688 { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct SlotF50688 { s32 id; u8 pad[0x32]; u16 state; u8 tail[0x38]; };
struct StateF50688 { u8 pad[4]; u16 flags; u8 pad6[0x38-6]; u32 eventFlags; u8 pad3C[0x7A4-0x3C]; struct SlotF50688 slots[15]; };
extern struct PlayerF50688 playersF50688[] asm("gUnk_03003CE0");
extern struct StateF50688 *stateF50688 asm("gUnk_03005CF4");
extern void localF50688_BB80(s16,s16) asm("sub_0800BB80");
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0802939C(s32,s32);
void sub_08050688(void) {
    struct { s32 x,y,nextX,nextY,ui; s32 *nextXp,*nextYp; } L;
    struct SlotF50688 *slot;
    u32 i;
    s32 sp0;
    s32 sp4;
    register s32 temp_r5 asm("r5");
    register s32 temp_r6 asm("r6");
    register s32 temp_r6_2 asm("r6");
    register s32 temp_r7 asm("r7");
    register s32 var_r5 asm("r5");
    register s32 firstStep asm("r10");
    register s32 firstYFixed asm("r9");
    register s32 *firstY asm("r8");
    register s32 secondStep asm("r9");
    register s32 secondXFixed asm("r8");
    register s32 secondYFixed asm("r7");
    s32 temp_r0;
    s32 temp_r0_2;
    s32 var_r0;
    s32 var_r4_3;
    s32 var_r4_4;
    u16 var_r4;
    u16 var_r4_2;
    u32 temp_r3;
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
    L.nextXp = &L.nextX;
    L.nextYp = &L.nextY;
goto wait15;
dec15:
var_r4--; if (var_r4 == 0) goto after15;
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
    gUnk_03005CF8 = 0xD9;
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
    firstStep = 0x11;
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r4_3 = 0;
    var_r5 <<= 16;
    firstYFixed = 0xFFC00000;
    do {
        sub_080659F4(&L.x, (s32) temp_r7, var_r5 >> 16, var_r4_3);
        sub_080659F4(firstY, (s32) temp_r6, firstYFixed >> 16, var_r4_3);
        localF50688_BB80((s16) L.x, (s16) L.y);
        sub_080003F0();
        var_r4_3 += firstStep;
    } while (var_r4_3 <= 0x400);
    if (!(stateF50688->eventFlags & 8)) {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        sp0 = 0x2D;
        var_r0 = 0x140066;
    } else {
while (sub_0805F184() != 0) sub_080003F0();
while (sub_0805EF90() != 0) sub_080003F0();
        sp0 = 0x2D;
        var_r0 = 0x140067;
    }
    sp4 = var_r0;
    temp_r3 = sub_0805DF38(1U, 0xFU, 2U, 0U, sp0, sp4);
    stateF50688->eventFlags = (s32) (stateF50688->eventFlags | 8);
while (sub_0805EEFC((void *) temp_r3) == 0) sub_080003F0();
    secondStep = 0x22;
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_4 = 0;
    secondXFixed = 0;
    secondYFixed = 0;
    do {
        sub_080659F4(L.nextXp, (s32) temp_r6_2, secondXFixed >> 16, var_r4_4);
        sub_080659F4(L.nextYp, (s32) temp_r5, secondYFixed >> 16, var_r4_4);
        localF50688_BB80((s16) L.nextX, (s16) L.nextY);
        sub_080003F0();
        var_r4_4 += secondStep;
    } while (var_r4_4 <= 0x400);
    slot = stateF50688->slots;
    i = 0;
    while (slot->id != L.ui) {
        i++;
        slot++;
        if (i > 14) { sub_080003F0(); slot = 0; break; }
    }
    if (slot != 0) slot->state = 4;
    sub_08028AAC(1,0xF0,0x90,0);
    gUnk_03005CF8 = 0xB;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xBU);
    }
    stateF50688->flags = (u16) (0x20 | stateF50688->flags);
    temp_r2_2 = &playersF50688[sub_080020F4()];
    temp_r2_2->flags = (s32) (temp_r2_2->flags & ~1);
    sub_0800D108();
}
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050688);
#endif
#ifdef NONMATCHING
struct Player509A8 { u8 pad[0x30]; u32 flags; u8 tail[0x14C-0x34]; };
struct Entity509A8 { u8 pad[0xC]; u16 state; u8 tail[0x2E0-0xE]; };
struct Task509A8 { u32 f0,f4,flags; void (*callback)(void); u8 *stack; u32 f14,f18,f1C; u8 *memory; u32 data; };
struct State509A8 { u8 pad0[0x38]; u32 events; u8 pad3C[0xE34-0x3C]; struct Task509A8 tasks[30]; };
extern struct Player509A8 players509A8[] asm("gUnk_03003CE0");
extern struct Entity509A8 *entities509A8 asm("gUnk_030056F4");
extern struct State509A8 *state509A8 asm("gUnk_03005CF4");
extern void local509A8_BB80(s16,s16) asm("sub_0800BB80");
extern s32 sub_0801AB24(void);
extern void sub_0801AB50(s32);
extern void sub_0801AB90(s32);
extern void sub_080576A8(void);
extern void sub_0802A080(s32,s32,s32,s32);
extern void sub_08050E48(void);
extern void sub_08051A78(void);
void sub_080509A8(void) {
    void (*callback)(void);
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 *sp10;
    s32 *sp14;
    s32 temp_r5;
    s32 temp_r6;
    s32 temp_r6_2;
    s32 temp_r7;
    s32 temp_r0;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 var_r0_3;
    s32 var_r4_2;
    s32 var_r4_5;
    struct Player509A8 *temp_r1;
    u16 var_r4_4;
    u16 var_r4_6;
    u32 var_r0_2;
    u32 var_r3;
    u32 var_r3_2;
    struct Task509A8 *var_r4;
    struct Task509A8 *var_r4_3;
    struct Task509A8 *var_r4_7;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r9;
    u8 *var_r0;
    u8 *temp_r0_2;
    u8 *temp_r0_5;
    u8 *temp_r0_6;
    struct Player509A8 *temp_r1_2;
    struct Player509A8 *temp_r2;
    struct Entity509A8 *var_r2;
    struct Entity509A8 *var_r2_2;

    if (sub_0800CE30() != 0) {
        var_r0 = (u8 *)state509A8 + 0x1C5;
    } else {
        var_r0 = (u8 *)state509A8 + 0x1B9;
    }
    if (((s32) *var_r0 >> 1) & 1) goto special;
    if (sub_080020F4() == 0) {
        callback = sub_08051A78;
        var_r4 = state509A8->tasks;
        var_r5 = 0;
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
                var_r5 += 1;
                var_r4++;
                goto loop_8;
            }
        }
    }
    var_r0_2 = state509A8->events & 1;
    if (var_r0_2 != 0) {
        var_r0_2 = 1;
    }
    var_r9 = var_r0_2;
    if (var_r0_2 != 0) goto already;
    temp_r1 = &players509A8[sub_080020F4()];
    temp_r1->flags |= 1;
    sub_0800D0F4();
    temp_r7 = (s16) gUnk_03003170.f80;
    temp_r6 = (s16) gUnk_03003170.f82;
    var_r4_2 = 0;
    sp10 = &sp8;
    sp14 = &spC;
    do {
        sub_080659F4(&sp0, (s32) temp_r7, 0 >> 0x10, var_r4_2);
        sub_080659F4(&sp4, (s32) temp_r6, -116, var_r4_2);
        local509A8_BB80((s16) sp0, (s16) sp4);
        sub_080003F0();
        var_r4_2 += 0x400;
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
    state509A8->events = (s32) (state509A8->events | 1);
    gUnk_03005CF8 = 0xC4;
    if (!(gUnk_030027D0 & 0x20)) {
        sub_08006CB4(0xC4U);
    }
    callback = sub_08050E48;
    var_r4_3 = state509A8->tasks;
    var_r5_2 = 0;
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
            var_r5_2 += 1;
            var_r4_3++;
            goto loop_36;
        }
    }
    var_r4_4 = 0x320;
goto wait44;
dec44:
var_r4_4--; if (var_r4_4 == 0) goto after44;
wait44:
sub_080003F0(); if (sub_080021A8() == 0) goto dec44;
after44:
    temp_r6_2 = (s16) gUnk_03003170.f80;
    temp_r5 = (s16) gUnk_03003170.f82;
    var_r4_5 = 0;
    do {
        sub_080659F4(sp10, (s32) temp_r6_2, 0 >> 0x10, var_r4_5);
        sub_080659F4(sp14, (s32) temp_r5, -30, var_r4_5);
        local509A8_BB80((s16) sp8, (s16) spC);
        sub_080003F0();
        var_r4_5 += 0x22;
    } while (var_r4_5 <= 0x400);
    temp_r2 = &players509A8[sub_080020F4()];
    temp_r2->flags = (s32) (temp_r2->flags & ~1);
    sub_0800D108();
    sub_0802A080(0x80, 0x80, 0x100, 0x64);
    var_r0_3 = state509A8->events & 2;
    if (var_r0_3 != 0) {
        var_r0_3 = 1;
    }
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
    var_r5_3 = 0;
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
    var_r5_3 += 1;
    var_r4_7++;
    goto loop_61;
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
        var_r3_2 = 0;
        do {
            if ((gUnk_030056FC & (1 << var_r3_2)) && (var_r2_2->state == 0xC)) {
                var_r2_2->state = 0U;
            }
            var_r3_2 += 1;
            var_r2_2++;
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
        var_r3 = 0;
        do {
            if ((gUnk_030056FC & (1 << var_r3)) && (var_r2->state == 0xC)) {
                var_r2->state = 0U;
            }
            var_r3 += 1;
            var_r2++;
        } while (var_r3 <= 4U);
        sub_08019F04();
        return;
    }
#else
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080509A8);
#endif
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08050E48);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051A78);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051BFC);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051CE4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051DF0);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08051E98);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08052060);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080523D8);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_0805247C);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080526B4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080529E0);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08052D0C);
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
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053060);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053120);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080531C4);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_08053510);
INCLUDE_ASM("asm/nonmatchings/code_0804D330", sub_080537DC);
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
