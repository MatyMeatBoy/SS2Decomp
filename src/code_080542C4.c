#include "global.h"

INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080542C4);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_0805442C);
void sub_08054514(void) {
    u8 *var_r1;
    u8 *var_r1_2;
    s32 temp_r4;
    s32 temp_r5;
    u32 var_r2;
    u32 var_r2_2;

    temp_r5 = sub_080289C0(0x24, 0x138, 0xB0);
    temp_r4 = sub_080289C0(0x10024, 0x138, 0xC8);
    sub_08028D98(temp_r5, 0, -0xC8, 0xC8);
    var_r1 = gUnk_03005CF4 + 0x7A4;
    var_r2 = 0;
loop_1:
    if (*(u32 *)var_r1 != temp_r5) {
        var_r2 += 1;
        var_r1 += 0x70;
        if (var_r2 > 0xEU) {
            sub_080003F0();
            var_r1 = NULL;
        } else {
            goto loop_1;
        }
    }
    if (var_r1 != NULL) {
        M2C_FIELD(var_r1, s16 *, 0x36) = 4;
    }
    var_r1_2 = gUnk_03005CF4 + 0x7A4;
    var_r2_2 = 0;
loop_7:
    if (*(u32 *)var_r1_2 != temp_r4) {
        var_r2_2 += 1;
        var_r1_2 += 0x70;
        if (var_r2_2 > 0xEU) {
            sub_080003F0();
            var_r1_2 = NULL;
        } else {
            goto loop_7;
        }
    }
    if (var_r1_2 != NULL) {
        M2C_FIELD(var_r1_2, s16 *, 0x36) = 4;
    }
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
void sub_080545A0(void)
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
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054644);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054748);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054904);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054CE8);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08054FB8);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055174);
#ifdef NONMATCHING
void sub_0805664C(s32);
void sub_08055558(void) {
    s32 temp_r0_7;
    u8 *var_r4;
    u8 *var_r4_2;
    u8 *var_r4_3;
    u8 *var_r4_4;
    u8 *var_r4_5;
    u8 *var_r4_6;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r5_5;
    u32 var_r5_6;
    void *temp_r0;
    void *temp_r0_2;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_5;
    void *temp_r0_6;

    var_r4 = gUnk_03005CF4 + 0xE34;
    var_r5 = 0;
loop_2:
    if (var_r5 <= 0x1DU) {
        if (sub_08000470(var_r4) == 0) {
loop_6:
            temp_r0 = sub_08001494(0x400U);
            *(void * *)(var_r4 + 0x20) = temp_r0;
            if (temp_r0 == NULL) {
                sub_080003F0();
                goto loop_6;
            }
            *(u32 *)(var_r4 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4 + 0x10) = (void *) ((u8 *)temp_r0 + 0x3FC);
            *(u32 *)(var_r4 + 0x24) = 0;
            sub_08000274(var_r4, 0x33);
        } else {
            var_r5 += 1;
            var_r4 += 0x28;
            goto loop_2;
        }
    }
    var_r4_2 = gUnk_03005CF4 + 0xE34;
    var_r5_2 = 0;
loop_10:
    if (var_r5_2 <= 0x1DU) {
        if (sub_08000470(var_r4_2) == 0) {
loop_14:
            temp_r0_2 = sub_08001494(0x400U);
            *(void * *)(var_r4_2 + 0x20) = temp_r0_2;
            if (temp_r0_2 == NULL) {
                sub_080003F0();
                goto loop_14;
            }
            *(u32 *)(var_r4_2 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_2 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4_2 + 0x10) = (void *) ((u8 *)temp_r0_2 + 0x3FC);
            *(u32 *)(var_r4_2 + 0x24) = 0;
            sub_08000274(var_r4_2, 0x34);
        } else {
            var_r5_2 += 1;
            var_r4_2 += 0x28;
            goto loop_10;
        }
    }
    var_r4_3 = gUnk_03005CF4 + 0xE34;
    var_r5_3 = 0;
loop_18:
    if (var_r5_3 <= 0x1DU) {
        if (sub_08000470(var_r4_3) == 0) {
loop_22:
            temp_r0_3 = sub_08001494(0x400U);
            *(void * *)(var_r4_3 + 0x20) = temp_r0_3;
            if (temp_r0_3 == NULL) {
                sub_080003F0();
                goto loop_22;
            }
            *(u32 *)(var_r4_3 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_3 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4_3 + 0x10) = (void *) ((u8 *)temp_r0_3 + 0x3FC);
            *(u32 *)(var_r4_3 + 0x24) = 0;
            sub_08000274(var_r4_3, 0x35);
        } else {
            var_r5_3 += 1;
            var_r4_3 += 0x28;
            goto loop_18;
        }
    }
    var_r4_4 = gUnk_03005CF4 + 0xE34;
    var_r5_4 = 0;
loop_26:
    if (var_r5_4 <= 0x1DU) {
        if (sub_08000470(var_r4_4) == 0) {
loop_30:
            temp_r0_4 = sub_08001494(0x400U);
            *(void * *)(var_r4_4 + 0x20) = temp_r0_4;
            if (temp_r0_4 == NULL) {
                sub_080003F0();
                goto loop_30;
            }
            *(u32 *)(var_r4_4 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_4 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4_4 + 0x10) = (void *) ((u8 *)temp_r0_4 + 0x3FC);
            *(u32 *)(var_r4_4 + 0x24) = 0;
            sub_08000274(var_r4_4, 0x36);
        } else {
            var_r5_4 += 1;
            var_r4_4 += 0x28;
            goto loop_26;
        }
    }
    var_r4_5 = gUnk_03005CF4 + 0xE34;
    var_r5_5 = 0;
loop_34:
    if (var_r5_5 <= 0x1DU) {
        if (sub_08000470(var_r4_5) == 0) {
loop_38:
            temp_r0_5 = sub_08001494(0x400U);
            *(void * *)(var_r4_5 + 0x20) = temp_r0_5;
            if (temp_r0_5 == NULL) {
                sub_080003F0();
                goto loop_38;
            }
            *(u32 *)(var_r4_5 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_5 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4_5 + 0x10) = (void *) ((u8 *)temp_r0_5 + 0x3FC);
            *(u32 *)(var_r4_5 + 0x24) = 0;
            sub_08000274(var_r4_5, 0x37);
        } else {
            var_r5_5 += 1;
            var_r4_5 += 0x28;
            goto loop_34;
        }
    }
    var_r4_6 = gUnk_03005CF4 + 0xE34;
    var_r5_6 = 0;
loop_42:
    if (var_r5_6 <= 0x1DU) {
        if (sub_08000470(var_r4_6) == 0) {
loop_46:
            temp_r0_6 = sub_08001494(0x400U);
            *(void * *)(var_r4_6 + 0x20) = temp_r0_6;
            if (temp_r0_6 == NULL) {
                sub_080003F0();
                goto loop_46;
            }
            *(u32 *)(var_r4_6 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_6 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4_6 + 0x10) = (void *) ((u8 *)temp_r0_6 + 0x3FC);
            *(u32 *)(var_r4_6 + 0x24) = 0;
            sub_08000274(var_r4_6, 0x38);
        } else {
            var_r5_6 += 1;
            var_r4_6 += 0x28;
            goto loop_42;
        }
    }
    if (sub_0800CC98() == 0) {
        temp_r0_7 = sub_0801AB24();
        switch (temp_r0_7) {                        /* irregular */
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
loop_59:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_59;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055558);
#endif
#ifdef NONMATCHING
void sub_0805664C(s32);
void sub_080557CC(void) {
    s32 temp_r0_3;
    u8 *var_r4;
    u8 *var_r4_2;
    u32 var_r5;
    u32 var_r5_2;
    void *temp_r0;
    void *temp_r0_2;

    var_r4 = gUnk_03005CF4 + 0xE34;
    var_r5 = 0;
loop_2:
    if (var_r5 <= 0x1DU) {
        if (sub_08000470(var_r4) == 0) {
loop_6:
            temp_r0 = sub_08001494(0x400U);
            *(void * *)(var_r4 + 0x20) = temp_r0;
            if (temp_r0 == NULL) {
                sub_080003F0();
                goto loop_6;
            }
            *(u32 *)(var_r4 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4 + 0x10) = (void *) ((u8 *)temp_r0 + 0x3FC);
            *(u32 *)(var_r4 + 0x24) = 0;
            sub_08000274(var_r4, 0x39);
        } else {
            var_r5 += 1;
            var_r4 += 0x28;
            goto loop_2;
        }
    }
    var_r4_2 = gUnk_03005CF4 + 0xE34;
    var_r5_2 = 0;
loop_10:
    if (var_r5_2 <= 0x1DU) {
        if (sub_08000470(var_r4_2) == 0) {
loop_14:
            temp_r0_2 = sub_08001494(0x400U);
            *(void * *)(var_r4_2 + 0x20) = temp_r0_2;
            if (temp_r0_2 == NULL) {
                sub_080003F0();
                goto loop_14;
            }
            *(u32 *)(var_r4_2 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_2 + 0xC) = &sub_0805664C;
            *(void * *)(var_r4_2 + 0x10) = (void *) ((u8 *)temp_r0_2 + 0x3FC);
            *(u32 *)(var_r4_2 + 0x24) = 0;
            sub_08000274(var_r4_2, 0x3A);
        } else {
            var_r5_2 += 1;
            var_r4_2 += 0x28;
            goto loop_10;
        }
    }
    if (sub_0800CC98() == 0) {
        temp_r0_3 = sub_0801AB24();
        switch (temp_r0_3) {                        /* irregular */
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
loop_27:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_27;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080557CC);
#endif
void sub_080558D0(void)
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
#ifdef NONMATCHING
void sub_08055A60(void);
void sub_08055974(void) {
    s32 temp_r0_2;
    u8 *var_r4;
    u32 var_r5;
    u8 *var_r0;
    void *temp_r0;

    var_r4 = gUnk_03005CF4 + 0xE34;
    var_r5 = 0;
loop_2:
    if (var_r5 <= 0x1DU) {
        if (sub_08000470(var_r4) == 0) {
loop_6:
            temp_r0 = sub_08001494(0x400U);
            *(void **)(var_r4 + 0x20) = temp_r0;
            if (temp_r0 == NULL) {
                sub_080003F0();
                goto loop_6;
            }
            *(u32 *)(var_r4 + 8) = 0x3C;
            *(void (**)(void))(var_r4 + 0xC) = &sub_08055A60;
            *(void **)(var_r4 + 0x10) = (void *) ((u8 *)temp_r0 + 0x3FC);
            *(u32 *)(var_r4 + 0x24) = 0;
            sub_08000274(var_r4, 0);
        } else {
            var_r5 += 1;
            var_r4 += 0x28;
            goto loop_2;
        }
    }
    if (sub_0800CE30() != 0) {
        var_r0 = gUnk_03005CF4 + 0x1C6;
    } else {
        var_r0 = gUnk_03005CF4 + 0x1BA;
    }
    if (*var_r0 & 1) {
        sub_08028AAC(8, 0x270F, 0x270F, 0);
    }
    if (sub_0800CC98() == 0) {
        temp_r0_2 = sub_0801AB24();
        switch (temp_r0_2) {                        /* irregular */
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
loop_24:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_24;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055974);
#endif
#ifdef NONMATCHING
struct TaskPayload55A60 { u32 unknown[3]; void (*callback)(s32); u32 value; };
void sub_08055BA4(void);
void sub_0805A350(s32);
void sub_08055A60(void) {
    struct TaskPayload55A60 payload;
    u32 temp_r0_2;
    u32 temp_r0_4;
    u8 *var_r4;
    u8 *var_r4_2;
    u8 *var_r4_3;
    u32 var_r5;
    u32 var_r6;
    u32 var_r6_2;
    u32 var_r8;
    void *temp_r0;
    void *temp_r0_3;
    void *temp_r0_5;

    {
        /* The no-free-slot path retains the incoming r8 payload. */
        register u32 incoming asm("r8");
        asm volatile("" : "=r"(incoming));
        var_r8 = incoming;
    }
    var_r4 = gUnk_03005CF4 + 0xE34;
    var_r5 = 0;
loop_2:
    if (var_r5 <= 0x1DU) {
        if (sub_08000470(var_r4) == 0) {
loop_6:
            temp_r0 = sub_08001494(0x400U);
            *(void * *)(var_r4 + 0x20) = temp_r0;
            if (temp_r0 == NULL) {
                sub_080003F0();
                goto loop_6;
            }
            *(u32 *)(var_r4 + 0x8) = 0x3C;
            *(u32 *)(var_r4 + 0xC) = (u32) &sub_08055BA4;
            *(void * *)(var_r4 + 0x10) = (void *) ((u8 *)temp_r0 + 0x3FC);
            *(u32 *)(var_r4 + 0x24) = 0;
            sub_08000274(var_r4, 0);
            var_r8 = (u32)var_r4;
        } else {
            var_r5 += 1;
            var_r4 += 0x28;
            goto loop_2;
        }
    }
    var_r4_2 = gUnk_03005CF4 + 0xE34;
    var_r6 = 0;
loop_10:
    if (var_r6 <= 0x1DU) {
        temp_r0_2 = sub_08000470(var_r4_2);
        if (temp_r0_2 == 0) {
            payload.callback = sub_0805A384;
            payload.value = var_r8;
            *(u32 *)(var_r4_2 + 0x8) = 0x3C;
            temp_r0_3 = sub_08001494(0x400U);
            *(void * *)(var_r4_2 + 0x20) = temp_r0_3;
            *(u32 *)(var_r4_2 + 0xC) = (u32) sub_0802A104;
            *(void * *)(var_r4_2 + 0x10) = (void *) ((u8 *)temp_r0_3 + 0x3FC);
            *(u32 *)(var_r4_2 + 0x24) = temp_r0_2;
            sub_08000274(var_r4_2, &payload, 6);
            sub_080003F0();
            sub_080003F0();
        } else {
            var_r6 += 1;
            var_r4_2 += 0x28;
            goto loop_10;
        }
    }
    var_r4_3 = gUnk_03005CF4 + 0xE34;
    var_r6_2 = 0;
loop_15:
    if (var_r6_2 <= 0x1DU) {
        temp_r0_4 = sub_08000470(var_r4_3);
        if (temp_r0_4 == 0) {
            payload.callback = sub_0805A350;
            payload.value = 0;
            *(u32 *)(var_r4_3 + 0x8) = 0x3C;
            temp_r0_5 = sub_08001494(0x400U);
            *(void * *)(var_r4_3 + 0x20) = temp_r0_5;
            *(u32 *)(var_r4_3 + 0xC) = (u32) sub_0802A104;
            *(void * *)(var_r4_3 + 0x10) = (void *) ((u8 *)temp_r0_5 + 0x3FC);
            *(u32 *)(var_r4_3 + 0x24) = temp_r0_4;
            sub_08000274(var_r4_3, &payload, 8);
            sub_080003F0();
            sub_080003F0();
        } else {
            var_r6_2 += 1;
            var_r4_3 += 0x28;
            goto loop_15;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055A60);
#endif
#ifdef NONMATCHING
struct PositionTable56 { u32 value[5]; };
extern struct PositionTable56 positions56 asm("gUnk_080BB6D0");
struct Route56 { u32 index; u16 delay; u16 pad; };
extern struct Route56 routes56[32] asm("gUnk_080BB6E4");
void sub_08055BA4(void)
{
    struct PositionTable56 positions = positions56;
    struct Route56 routes[32];
    s32 i;
    u16 wait;
    memcpy(routes, routes56, sizeof(routes));
    i = 0;
    for (;;) {
        sub_08028AAC(6, 120, (u16)positions.value[routes[i].index], 0);
        sub_08028D98(6, 0, -28, 10);
        wait = routes[i].delay;
        while (wait != 0) {
            sub_080003F0();
            if (sub_080021A8() != 0) break;
            wait--;
        }
        sub_08028D98(6, 0, 28, 10);
        sub_08028AAC(6, 9999, 9999, 0);
        wait = 30;
        do {
            sub_080003F0();
            if (sub_080021A8() != 0) break;
            wait--;
        } while (wait != 0);
        i = (i + 1) & 31;
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055BA4);
#endif
#ifdef NONMATCHING
void sub_08055D1C(void);
void sub_08055C58(void) {
    u8 *var_r0;
    u8 *var_r1;
    u8 *var_r1_2;
    u8 *var_r2_2;
    s32 temp_r0;
    s32 temp_r4;
    u32 var_r2;
    u32 var_r2_3;

    temp_r4 = sub_080289C0(0x3E, 0x78, 0x60);
    var_r1 = gUnk_03005CF4 + 0x7A4;
    var_r2 = 0;
loop_1:
    if (*(u32 *)var_r1 != temp_r4) {
        var_r2 += 1;
        var_r1 += 0x70;
        if (var_r2 > 0xEU) {
            sub_080003F0();
            var_r2_2 = NULL;
        } else {
            goto loop_1;
        }
    } else {
        var_r2_2 = var_r1;
    }
    if (var_r2_2 != NULL) {
        *(u16 *)(var_r2_2 + 0x18) = 8;
        *(u16 *)(var_r2_2 + 0x1A) = 0x1E;
        *(u32 *)(var_r2_2 + 0x3C) = (s32) (*(u32 *)(var_r2_2 + 0x3C) | 0x10);
    }
    var_r1_2 = gUnk_03005CF4 + 0x7A4;
    var_r2_3 = 0;
loop_7:
    if (*(u32 *)var_r1_2 != temp_r4) {
        var_r2_3 += 1;
        var_r1_2 += 0x70;
        if (var_r2_3 > 0xEU) {
            sub_080003F0();
            var_r0 = NULL;
        } else {
            goto loop_7;
        }
    } else {
        var_r0 = var_r1_2;
    }
    if (var_r0 != NULL) {
        *(void (**)(void))(var_r0 + 0x44) = sub_08055D1C;
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
loop_25:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_25;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055C58);
#endif
#ifdef NONMATCHING
void sub_08055D1C(void) {
    s16 temp_r6;
    s16 temp_r6_2;
    s16 temp_r8;
    s16 temp_r8_2;
    u8 *temp_r2;
    u8 *temp_r2_2;

    temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(u32 *)(temp_r2 + 0x30) = (s32) (*(u32 *)(temp_r2 + 0x30) | 1);
    sub_0800D0F4();
    if (sub_0800CE30() != 0) {
        sub_0800CE40();
        sub_0801ABE8(6);
loop_3:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_3;
        }
        sub_0800BB54();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_0800CCA8();
        temp_r8 = (s16) gUnk_03003170.scrollX;
        temp_r6 = (s16) gUnk_03003170.scrollY;
        sub_08084F9C(4);
        sub_080003F4(0x11201100);
        gUnk_03003170.scrollX = (u16) temp_r8;
        gUnk_03003170.scrollY = (u16) temp_r6;
        sub_0800CCB8();
        sub_08000420(0x514C8);
        sub_0800CE54();
loop_6:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_6;
        }
    } else {
        sub_0800CE40();
        sub_0801ABE8(6);
loop_10:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_10;
        }
        sub_0800BB54();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_080003F0();
        sub_0800CCA8();
        temp_r8_2 = (s16) gUnk_03003170.scrollX;
        temp_r6_2 = (s16) gUnk_03003170.scrollY;
        sub_08084F9C(3);
        sub_080003F4(0x11201100);
        gUnk_03003170.scrollX = (u16) temp_r8_2;
        gUnk_03003170.scrollY = (u16) temp_r6_2;
        sub_0800CCB8();
        sub_08000420(0x514C8);
        sub_0800CE54();
loop_13:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_13;
        }
    }
    temp_r2_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
    *(u32 *)(temp_r2_2 + 0x30) = (s32) (*(u32 *)(temp_r2_2 + 0x30) & ~1);
    sub_0800D108();
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055D1C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08055E74);
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080560D0);
void sub_080563F0(void)
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
void sub_08056494(void)
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
#ifdef NONMATCHING
extern u8 table56538[] asm("gUnk_084B1D40");
s32 sub_08021FE0(void *, s32 *, s32 *, s32 *);
void sub_08056538(s32 arg0) {
    s32 position[2];
    s32 sp8;
    s32 spC;
    s32 temp_r1;
    s32 temp_r4;
    u8 *temp_r6;
    u16 var_r4;
    u8 *var_r4_2;
    u32 var_r5;
    void *temp_r0;

    temp_r1 = arg0 * 0x1C;
    sp8 = 0;
    position[0] = (u32)*(s32 *)(table56538 + temp_r1) << 8;
    position[1] = (u32)*(s32 *)(table56538 + temp_r1 + 4) << 8;
    spC = *(u16 *)(table56538 + temp_r1 + 8) | ((u32)*(u16 *)(table56538 + temp_r1 + 0xC) << 16);
    temp_r6 = (u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4();
loop_2:
    if (sub_08021FE0(temp_r6 + 0x8C, position, &sp8, &spC) == 0) {
        sub_080003F0();
        goto loop_2;
    }
    temp_r4 = arg0 * 0x1C;
    sub_08029CEC(*(s32 *)(table56538 + temp_r4 + 0x10), *(s32 *)(table56538 + temp_r4 + 0x14), 1);
    var_r4 = *(u16 *)(table56538 + temp_r4 + 0x18);
loop_5:
    if (var_r4 != 0) {
        sub_080003F0();
        if (sub_080021A8() == 0) {
            var_r4 -= 1;
            goto loop_5;
        }
    }
    var_r4_2 = gUnk_03005CF4 + 0xE34;
    var_r5 = 0;
loop_9:
    if (var_r5 <= 0x1DU) {
        if (sub_08000470(var_r4_2) == 0) {
loop_13:
            temp_r0 = sub_08001494(0x400U);
            *(void * *)(var_r4_2 + 0x20) = temp_r0;
            if (temp_r0 == NULL) {
                sub_080003F0();
                goto loop_13;
            }
            *(u32 *)(var_r4_2 + 0x8) = 0x3C;
            *(void (**)(s32))(var_r4_2 + 0xC) = sub_08056538;
            *(void * *)(var_r4_2 + 0x10) = (void *) ((u8 *)temp_r0 + 0x3FC);
            *(u32 *)(var_r4_2 + 0x24) = 0;
            sub_08000274(var_r4_2, arg0);
        } else {
            var_r5 += 1;
            var_r4_2 += 0x28;
            goto loop_9;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_08056538);
#endif
#ifdef NONMATCHING
extern u8 table5664C[] asm("gUnk_084B1D78");
extern u32 audioFlags5664C asm("gUnk_030027D0");
s32 sub_08021FE0(void *, s32 *, s32 *, s32 *);
void sub_0805664C(s32 arg0) {
    s32 position[2];
    s32 sp8;
    s32 spC;
    s32 temp_r1;
    s32 temp_r2_2;
    u8 *temp_r4;
    u8 *var_r4;
    u32 var_r5;
    u8 *temp_r0;
    u8 *temp_r1_2;
    u8 *temp_r1_3;
    u8 *temp_r1_4;
    u8 *temp_r2;

    temp_r1 = arg0 * 0x18;
    sp8 = 0;
    position[0] = (u32)*(s32 *)(table5664C + temp_r1) << 8;
    position[1] = (u32)*(s32 *)(table5664C + temp_r1 + 4) << 8;
    spC = *(u16 *)(table5664C + temp_r1 + 8) | ((u32)*(u16 *)(table5664C + temp_r1 + 0xC) << 16);
    temp_r4 = (u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4();
loop_3:
    if ((sub_08021FE0(temp_r4 + 0x8C, position, &sp8, &spC) == 0) || !(1 & *(u16 *)(temp_r4 + 0x14))) {
        if (sub_08058608() == 0) {
            sub_080003F0();
            goto loop_3;
        }
    }
    if (sub_0800CCCC() != 1) {
        temp_r2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r2 + 0x30) = (s32) (*(u32 *)(temp_r2 + 0x30) | 1);
        sub_0800D0F4();
        temp_r1_2 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r1_2 + 0x30) = (s32) (*(u32 *)(temp_r1_2 + 0x30) | 2);
        sub_08067D74();
        if (!(audioFlags5664C & 0x20)) {
            sub_08006D08(0x24U);
        }
        temp_r2_2 = arg0 * 0x18;
        sub_08028AAC(0, (s32) *(u16 *)(table5664C + temp_r2_2 + 0x10), (s32) *(u16 *)(table5664C + temp_r2_2 + 0x14), 0x5A);
        temp_r1_3 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r1_3 + 0x30) = (s32) (*(u32 *)(temp_r1_3 + 0x30) & ~2);
        sub_08067D74();
        temp_r1_4 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r1_4 + 0x30) = (s32) (*(u32 *)(temp_r1_4 + 0x30) & ~1);
        sub_0800D108();
        var_r4 = gUnk_03005CF4 + 0xE34;
        var_r5 = 0;
loop_10:
        if (var_r5 <= 0x1DU) {
            if (sub_08000470(var_r4) == 0) {
loop_14:
                temp_r0 = sub_08001494(0x400U);
                *(void * *)(var_r4 + 0x20) = temp_r0;
                if (temp_r0 == NULL) {
                    sub_080003F0();
                    goto loop_14;
                }
                *(u32 *)(var_r4 + 0x8) = 0x3C;
                *(void (**)(s32))(var_r4 + 0xC) = sub_0805664C;
                *(void * *)(var_r4 + 0x10) = (void *) (temp_r0 + 0x3FC);
                *(u32 *)(var_r4 + 0x24) = 0;
                sub_08000274(var_r4, arg0);
            } else {
                var_r5 += 1;
                var_r4 += 0x28;
                goto loop_10;
            }
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_0805664C);
#endif
INCLUDE_ASM("asm/nonmatchings/code_080542C4", sub_080567D4);
void sub_08056CB4(u32 value)
{
    u8 *base;
    if (sub_080020F4() != 0)
        return;
    if (sub_0800CE30())
        base = (u8 *)gUnk_03005CF4 + 0x1C1;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1B5;
    {
        register s32 check asm("r0") = *base;
        if (check > 7)
            return;
    }
    value += 8;
    sub_08068070(sub_0805A43C, value);
    value = (u8)value;
    if (sub_0800CE30())
        base = (u8 *)gUnk_03005CF4 + 0x1C1;
    else
        base = (u8 *)gUnk_03005CF4 + 0x1B5;
    *base = value;
}
void sub_08056D2C(void)
{
    if (sub_08000470(gUnk_03005CF4 + 0x1794) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x1794);
        while (sub_08000470(gUnk_03005CF4 + 0x1794) != 0)
            sub_080003F0();
    }
    sub_08001538(gUnk_03005CF4);
    gUnk_03005CF4 = 0;
}
extern s32 sub_08019FA8();
struct Bits56D80 { u16 x0 : 7, x : 9; u16 y0 : 3, y : 9, y1 : 4; u8 f : 6; };
u32 sub_08056D80(s16 *pos, u16 rx, u16 ry)
{
    u32 n = sub_08002164();
    u32 found = 0;
    u32 i;
    u8 f;
    if (sub_08019FA8() == 0)
        return 0;
    for (i = 0; i < n; i++) {
        u8 *p = (u8 *)&gUnk_03003CE0[i];
        struct Bits56D80 *b = *(struct Bits56D80 **)(p + 0x148);
        s32 d;
        s32 e;
        f = b->f;
        if (f & 0x20)
            continue;
        if (*(u32 *)(p + 0x30) & 0x2000)
            continue;
        {
            u32 bx = b->x;
            u32 by = b->y;
            d = pos[0] - bx;
            if (d < 0)
                d = -d;
            if (d >= rx)
                continue;
            e = pos[1] - by;
            if (e < 0)
                e = -e;
            if (e < ry) {
                found = 1;
                break;
            }
        }
    }
    return found;
}
void sub_08056E24(void)
{
    gGameState->flags |= 8;
}
void sub_08056E38(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFF7 & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056E50(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 3) & 1;
}
void sub_08056E64(void)
{
    gGameState->flags |= 0x10;
}
void sub_08056E78(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFEF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056E90(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 4) & 1;
}
void sub_08056EA4(void) {
    if (sub_08000470(gUnk_03005CF4 + 0x17E4) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x17E4);
    }
}
struct Ent6ED0 { u32 a, b, c, d; u32 task[2]; u32 f18; void (*f1C)(); u32 f20; u32 pad[3]; u32 f30; u32 f34; };
struct GS6ED0 { u8 pad[0x1D34]; struct Ent6ED0 ents[5]; };
extern struct GS6ED0 *gs6ED0 asm("gUnk_03005CF4");
extern void sub_0805A6B8();
void sub_08056ED0(u32 a, u32 b, u32 c, u32 d)
{
    u32 i;
    u32 r;
    struct Ent6ED0 *e;
    u32 mem;
    i = 0;
    while (1) {
        if (i > 4) return;
        r = sub_08000470((u32)gs6ED0->ents[i].task);
        if (r == 0) break;
        i++;
    }
    e = &gs6ED0->ents[i];
    e->a = a;
    e->b = b;
    e->c = c;
    e->d = d;
    e->f1C = sub_0805A6B8;
    mem = (u32)sub_08001494(0x400);
    e->f30 = mem;
    e->f20 = mem + 0x3FC;
    e->f18 = 0x46;
    e->f34 = r;
    sub_08000274(e->task, e);
}
s32 sub_08056F78(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 5) & 1;
}
void sub_08056F8C(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFDF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
void sub_08056FA4(void)
{
    gGameState->flags |= 0x20;
}
void sub_08056FB8(u16 arg0, u16 arg1) {
    sub_08026CD0(arg0, arg1, 0);
}
void sub_08056FCC(void)
{
    gGameState->flags |= 0x40;
}
void sub_08056FE0(void) {
    M2C_FIELD(gUnk_03005CF4, u16 *, 4) = (u16) (0xFFBF & M2C_FIELD(gUnk_03005CF4, u16 *, 4));
}
s32 sub_08056FF8(void) {
    return ((u16) M2C_FIELD(gUnk_03005CF4, u16 *, 4) >> 6) & 1;
}
s32 sub_0805700C(void)
{
  s32 var_r2;
  s8 *new_var2;
  s8 *new_var;
  u32 var_r1;
  var_r2 = 0;
  var_r1 = 0;
  new_var2 = (new_var = ((s8 *) gUnk_03004210) + 4);
  do
  {
    if (((1 << var_r1) & (*((s32 *) new_var2))) != 0U)
    {
      var_r2 += 1;
    }
    var_r1 += 1;
  }
  while (var_r1 <= 0x16U);
  return var_r2;
}
u16 sub_08057038(void)
{
    u32 count = 0;
    u32 i = 10;
    u32 *p = (u32 *)gUnk_03004210;
    u32 one = 1;
    u32 bits = p[3];
    for (; i <= 19; i++)
        if ((one << i) & bits)
            count++;
    return count;
}
u32 sub_08057068(void *arg)
{
    u8 *entry;
    u32 data;
    u32 i;
    if (*(u32 *)((u8 *)gUnk_03005CF4 + 0x54) == 0)
        return 0;
    entry = (u8 *)gUnk_03005CF4 + 0x7A4;
    data = 0x80010;
    for (i = 0; i <= 14; i++, entry += 0x70) {
        register u8 *state asm("r0") = (u8 *)gUnk_03005CF4;
        u32 flag = 1 << i;
        if ((*(u32 *)(state + 0x54) & flag) && (*(u32 *)(entry + 0x3C) & 0x10)) {
            if (sub_08021FE0(arg, entry + 8, &data, entry + 0x18))
                return 1;
        }
    }
    return 0;
}
void sub_080570DC(u32 all)
{
    extern u32 gUnk_03005CF0;
    u8 *entry = (u8 *)gUnk_03005CF4 + 0xE34;
    register u32 i asm("r5");
    i = 0;
    do {
        if (sub_08000470((u32)entry))
            sub_080003A8((u32)entry);
        i++;
        entry += 0x28;
    } while (i <= 29);
    if (all) {
        entry = (u8 *)gUnk_03005CF4 + 0x12E4;
        i = 0;
    do {
            if (sub_08000470((u32)entry))
                sub_080003A8((u32)entry);
            i++;
            entry += 0x28;
        } while (i <= 29);
    }
    {
    u8 *objects = (u8 *)gUnk_03005CF4 + 0x7A4;
    i = 0;
    do {
        u8 *task = objects + 0x48;
        if (sub_08000470((u32)task))
            sub_080003A8((u32)task);
        i++;
        objects += 0x70;
    } while (i <= 14);
    }
    gUnk_03005CF0 = 0;
}
void sub_08057170(void)
{
    u32 i, j;
    for (i = 0; i < 20; i++)
        for (j = 0; j < 5; j++) {
            register u8 *base asm("r0") = (u8 *)gUnk_03005CF4;
            u32 index = j + i * 5;
            base += 0x1C8;
            base += index;
            *base = 0;
        }
}
