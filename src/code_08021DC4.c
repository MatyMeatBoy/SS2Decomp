#include "global.h"

extern u32 gUnk_03005CFC;
extern u32 gUnk_03005D00;
extern s32 gUnk_03005CF0;
void sub_08025890(void);
void sub_080263B4(void);
void sub_080226A4(void);
void sub_08021960(void);
void sub_08021AD8(void);
void sub_08021214(void);

extern void sub_08026858(void);

void sub_08021DC4(s32 arg0) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08020E08;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08021E44(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080210A8;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (var_r5 << 0x10) | arg0, arg1);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08021EC8(u32 arg0, u32 arg1, s32 arg2) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        arg0 >>= 8;
        arg1 >>= 8;
        arg0 |= arg1 << 0x10;
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021214;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, (var_r5 << 0x10) | arg2);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08021F58(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080215E4;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
s32 sub_08021FE0(s32 *arg0, s32 *arg1, u16 *arg2, u16 *arg3) {
    s32 var_r2;
    s32 var_r3;

    s32 dx = arg0[0] - arg1[0];
    s32 dy = arg0[1] - arg1[1];
    var_r2 = dy >> 8;
    var_r3 = dx >> 8;
    if (var_r3 < 0) {
        var_r3 = -var_r3;
    }
    if (var_r3 <= ((s32)(arg2[0] + arg3[0]) >> 1)) {
        if (var_r2 < 0) {
            var_r2 = -var_r2;
        }
        if (var_r2 <= ((s32)(arg2[1] + arg3[1]) >> 1)) {
            return 1;
        }
    }
    return 0;
}
void sub_08022028(u8 *arg0, u8 *arg1, u16 arg2) {
    ArcTan2((s16)((*(s32 *)(arg1 + 0x8C) - *(s32 *)(arg0 + 0)) << 8 >> 16),
            (s16)((*(s32 *)(arg1 + 0x90) - *(s32 *)(arg0 + 4)) << 8 >> 16));
    *(u16 *)(arg1 + 0xCC) = 0;
    *(u16 *)(arg1 + 0xD0) = 0;
    *(u16 *)(arg1 + 0xCE) = 0;
    *(u16 *)(arg1 + 0x88) += arg2;
    *(u16 *)(arg1 + 0x20) = 0xA;
}
void sub_08022078(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08020F74;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022100(s32 arg0) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_0802133C;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022180(s32 arg0) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021490;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022200(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080217D8;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg1 << 0x10) | arg0, var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022284(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    if (arg1 != 0) {
        var_r5 = 0;
        flags = (volatile u32 *)&gUnk_03005CE4;
        asm volatile("movs %0, #1" : "=r"(firstMask));
        if (*flags & firstMask) {
            one = 1;
            do {
                var_r5 += 1;
                if (var_r5 > 0x1FU) break;
            } while (*flags & (one << var_r5));
        }
        if (var_r5 <= 0x1FU) {
            temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
            M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021960;
            temp_r0 = sub_08001494(0x400U);
            M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
            if (temp_r0 != NULL) {
                M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
                M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
                M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
                sub_08000274_(temp_r4, (arg1 << 0x10) | arg0, var_r5);
                gUnk_03005CE4 |= 1 << var_r5;
            }
        }
    }
}
void sub_0802230C(u32 arg0, u32 arg1, s32 arg2) {
    s32 *temp_r4;
    register u32 var_r5 asm("r5");
    u32 packed;
    void *temp_r0;
    register u32 val0 asm("r4");
    register u32 val1 asm("ip");
    u32 val2;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    asm volatile("movs %0, r0\n\tmov %1, r1\n\tmovs %2, r2" : "=r"(val0), "=r"(val1), "=r"(val2));
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        packed = (val0 >> 8) | ((val1 >> 8) << 0x10);
        if (val2 != 0) val2 = 1;
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08021AD8;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, packed, (val2 << 0x10) | var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
u32 sub_080223A4(s16 a, s16 b) {
    s16 q = (a + 10) * 125 / (a + b + 20);
    u16 r = (u16)sub_080008C8() % 100;
    if (q >= r) {
        return 1;
    }
    return 0;
}
void sub_080223F4(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_0802258C;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_0802247C(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_08020D40;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
void sub_08022504(s32 arg0, s32 arg1) {
    s32 *temp_r4;
    u32 var_r5;
    void *temp_r0;
    register volatile u32 *flags asm("r2");
    u32 one;
    register u32 firstMask asm("r1");
    var_r5 = 0;
    flags = (volatile u32 *)&gUnk_03005CE4;
    asm volatile("movs %0, #1" : "=r"(firstMask));
    if (*flags & firstMask) {
        one = 1;
        do {
            var_r5 += 1;
            if (var_r5 > 0x1FU) break;
        } while (*flags & (one << var_r5));
    }
    if (var_r5 <= 0x1FU) {
        temp_r4 = gUnk_03005CE0 + (var_r5 * 0x28);
        M2C_FIELD(temp_r4, M2C_UNK **, 0xC) = &sub_080216BC;
        temp_r0 = sub_08001494(0x400U);
        M2C_FIELD(temp_r4, void **, 0x20) = temp_r0;
        if (temp_r0 != NULL) {
            M2C_FIELD(temp_r4, void **, 0x10) = (void *)(temp_r0 + 0x3FC);
            M2C_FIELD(temp_r4, s32 *, 8) = 0x46;
            M2C_FIELD(temp_r4, s32 *, 0x24) = 0;
            sub_08000274_(temp_r4, (arg0 >> 8) | ((arg1 >> 8) << 0x10), var_r5);
            gUnk_03005CE4 |= 1 << var_r5;
        }
    }
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802258C);
void sub_08022630(void) {
    u8 *p;
    u32 q;
    gUnk_03005CF4 = (s32)sub_08001494(0x1E78);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17A0) = (u32)sub_080226A4;
    q = (u32)sub_08001494(0x800);
    p = (u8 *)gUnk_03005CF4;
    *(u32 *)(p + 0x17B4) = q;
    *(u32 *)(p + 0x17A4) = q + 0x7FC;
    *(u32 *)(p + 0x179C) = 0x46;
    *(u32 *)(p + 0x17B8) = 0;
    *(u16 *)(p + 4) = 0;
    *(u32 *)(p + 0x54) = 0;
    sub_08000274(p + 0x1794,
        0x1794);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080226A4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08022E60);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023274);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023684);
s32 sub_080239E0(u8 arg0) {
    s32 a, b, nonzero, two;
    u8 value;
    register u32 i asm("r4");
    u32 group;
    register u8 *base asm("r2");
    two = 0;
    nonzero = 0;
    i = 0;
    base = (u8 *)gUnk_03005CF4;
    group = arg0 * 5;
    base += 0x1C8;
    do {
        value = (u8)i;
        a = 0;
        value = base[value + group];
        if (value == 0) a = 1;
        if (a == 0) nonzero++;
        b = 0;
        if (value == 2) b = 1;
        if (b != 0) two++;
        i++;
    } while (i <= 4);
    if (nonzero == two) return 1;
    return 0;
}
#ifdef NONMATCHING
struct Event23A3C { s32 record; u8 index, group; u16 sequence; };
struct Remote23A3C { u16 unk0, unk2; u8 unk4; };
struct State23A3C { u16 mode, pad2, flags, pad6, sequence, count; u8 padC[0x1BC]; u8 states[0x55C]; s32 entries[32]; };
extern struct State23A3C *state23A3C asm("gUnk_03005CF4");
s32 sub_08019FA8();                                 /* extern */
s32 sub_0806603C(void *);                           /* extern */
s32 sub_08067C28(s32);                              /* extern */
s32 sub_08067EC8();                                 /* extern */

void sub_08023A3C(s32 *arg0, u32 arg1) {
    struct Event23A3C sp0[5];
    u8 padding[12];
    s32 *sp34;
    s32 sp38;
    u32 sp3C;
    s32 *sp40;
    struct Event23A3C *var_r4;
    s32 *var_r3;
    s32 *var_r3_2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r4;
    s32 temp_r5;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r2;
    s32 var_r2_2;
    s32 var_r2_3;
    s32 var_r3_3;
    s32 var_r3_4;
    s32 var_r4_3;
    s32 var_r4_4;
    s32 var_sl;
    u32 temp_r0;
    u32 temp_r0_6;
    u16 temp_r1;
    u16 temp_r1_2;
    u16 temp_r7;
    u16 temp_r8;
    u32 temp_r6;
    u32 var_r5;
    u8 *var_r4_2;
    u8 temp_r0_4;
    u8 temp_r0_5;
    u32 var_r4_5;
    u32 var_r5_2;
    u32 var_r6;
    u32 var_r6_2;
    u32 var_r6_3;
    u32 var_r6_4;
    struct Remote23A3C *temp_r2;
    struct Player *temp_r3;

    sp34 = arg0;
    temp_r1 = arg1;
    sp3C = 0;
    sp38 = 0;
    var_r6 = 0;
    var_r4 = sp0;
    var_r3 = sp34;
    do {
        if (M2C_FIELD(var_r3, u16 *, 0x8) != 0) {
            sp3C += 1;
            var_r4->record = (s32) state23A3C->entries[temp_r1];
            var_r4->sequence = (u16) state23A3C->sequence;
            var_r4->group = (s8) temp_r1;
            var_r2 = 0;
            temp_r5 = (u8)var_r6 + ((u8) temp_r1 * 5);
            if (state23A3C->states[temp_r5] == 3) {
                var_r2 = 1;
            }
            if (var_r2 == 0) {
                sp40 = var_r3;
                if (sub_08002204() != 0) {
                    state23A3C->states[temp_r5] = 1;
                }
            }
        }
        var_r4++;
        var_r3 = (s32 *)((u8 *)var_r3 + 8);
        var_r6 += 1;
    } while ((u32) var_r6 <= 4U);
    var_r6_2 = 0;
    if (sp3C > 0U) {
        var_r4_2 = &sp0[0].index;
        do {
            *var_r4_2 = var_r6_2;
            if ((0xFF & sub_080008C8()) == 0x80) {
                *var_r4_2 |= 0x80;
            }
            var_r4_2 += 8;
            var_r6_2 += 1;
        } while ((u32) var_r6_2 < sp3C);
    }
    temp_r0 = state23A3C->sequence + 5;
    state23A3C->sequence = temp_r0;
    if ((u16) temp_r0 <= 0xFAU) {

    } else {
        state23A3C->sequence = 9U;
    }
    goto loop_90;
dispatch:
        temp_r1_2 = M2C_FIELD(sp34, u16 *, 0x30);
        switch (temp_r1_2) {                        /* irregular */
        case 0:
    goto loop_22;
loop_22_yield:
    sub_080003F0();
loop_22:
            if ((sub_08019FA8() == 0) && (sub_08056E90() == 0)) goto loop_22_yield;
            if (sub_08056E90() == 0) {
                var_r6_4 = 0;
                if (sp3C > 0U) {
                    var_r3_2 = &gUnk_03005CF4;
                    do {
                        var_r2_3 = 0;
                        temp_r4 = (u8)var_r6_4 + ((u8) temp_r1 * 5);
                        if (*(u8 *)(*var_r3_2 + 0x1C8 + temp_r4) == 1) {
                            var_r2_3 = 1;
                        }
                        if (var_r2_3 != 0) {
                            sp40 = var_r3_2;
                            if (sub_0806603C(&sp0[var_r6_4]) != 0) {
                                var_r3_2 = sp40;
                                if (sub_08002204() != 0) {
                                    *(u8 *)(*var_r3_2 + 0x1C8 + temp_r4) = 2;
                                }
                            }
                        }
                        var_r6_4 += 1;
                    } while ((u32) var_r6_4 < sp3C);
                }
            }
            if (sub_08056E90() != 0) {
    goto loop_37;
loop_37_yield:
    sub_080003F0();
loop_37:
                if (sub_08067C28(gUnk_03005CF4 + ((temp_r1 * 4) + 0x724)) == 0) goto loop_37_yield;
            } else {
                var_r5_2 = 0;
loop_40:
                var_r4_4 = 0;
                if (state23A3C->states[((u8)var_r5_2 + ((u8) temp_r1 * 5))] == 2) {
                    var_r4_4 = 1;
                }
                if (var_r4_4 != 0) {
                    sub_080003F0();
                    goto loop_22;
                }
                var_r5_2 += 1;
                if ((u32) var_r5_2 <= 4U) {
                    goto loop_40;
                }
            }
            var_r4_5 = 0;
loop_46:
            var_r3_3 = 0;
            temp_r0_5 = state23A3C->states[((u8)var_r4_5 + ((u8) temp_r1 * 5))];
            if (temp_r0_5 == 2) {
                var_r3_3 = 1;
            }
            if (var_r3_3 == 0) {
                var_r3_4 = 0;
                if (temp_r0_5 == 1) {
                    var_r3_4 = 1;
                }
                if (var_r3_4 == 0) {
                    var_r4_5 += 1;
                    if ((u32) var_r4_5 > 4U) {
                        sp38 = 1;
                    } else {
                        goto loop_46;
                    }
                } else {
                    goto block_54;
                }
            } else {
block_54:
                sp38 = 0;
            }
            break;
        case 1:
            var_r6_3 = 0;
            if ((u32) temp_r0_3 >= sp3C) {

            } else {
    goto loop_59;
loop_59_yield:
    sub_080003F0();
loop_59:
                if ((sub_08019FA8() == 0) && (sub_08056E90() == 0)) goto loop_59_yield;
                if (sub_08056E90() == 0) {
                    var_r4_3 = 0;
                    if (state23A3C->states[((u8)var_r6_3 + ((u8) temp_r1 * 5))] == 3) {
                        var_r4_3 = 1;
                    }
                    if (var_r4_3 == 0) {
    goto loop_67;
loop_67_yield:
    sub_080003F0();
loop_67:
                        if ((sub_0806603C(&sp0[var_r6_3]) == 0) && (sub_08056E90() == 0)) goto loop_67_yield;
                        if ((sub_08056E90() == 0) && (sub_08002204() != 0)) {
                            state23A3C->states[((u8)var_r6_3 + ((u8) temp_r1 * 5))] = 2;
                        }
                    }
                }
loop_82:
                if (sub_08056E90() != 0) {
    goto loop_85;
loop_85_yield:
    sub_080003F0();
loop_85:
                    if (sub_08067C28(gUnk_03005CF4 + ((temp_r1 * 4) + 0x724)) == 0) goto loop_85_yield;
                    var_r6_3 = sp3C;
                } else {
                    var_r2_2 = 0;
                    temp_r0_4 = state23A3C->states[((u8)var_r6_3 + ((u8) temp_r1 * 5))];
                    if (temp_r0_4 == 1) {
                        var_r2_2 = 1;
                    }
                    if (var_r2_2 != 0) {
                        var_r6_3 = sp3C;
                        sp38 = 0;
                    } else {
                        var_r1_2 = 0;
                        if (temp_r0_4 == 3) {
                            var_r1_2 = 1;
                        }
                        if (var_r1_2 != 0) {
                            sp38 = 1;
                        } else {
                            sub_080003F0();
                            goto loop_82;
                        }
                    }
                }
                var_r6_3 += 1;
                if ((u32) var_r6_3 < sp3C) {
                    goto loop_59;
                }
            }
            break;
        }
    sub_080003F0();
    if (sp38 == 1) goto finish;
loop_90:
    if (state23A3C->mode != 0xB) {
loop_109:
        sub_080003F0();
        temp_r0_2 = sub_08056E90();
        if (temp_r0_2 == 0) {
            if ((gUnk_03002344 & 1) == (temp_r1 & 1)) {
                temp_r8 = M2C_FIELD(sp34, u16 *, 0x4);
                temp_r7 = M2C_FIELD(sp34, u16 *, 0x6);
                temp_r6 = sub_08002164();
                var_sl = 0;
                if (sub_08019FA8() == 0) {
                    goto loop_109;
                }
                var_r5 = 0;
                if ((u32) temp_r0_2 < temp_r6) {
loop_97:
                    temp_r3 = &gUnk_03003CE0[var_r5];
                    temp_r2 = M2C_FIELD(temp_r3, struct Remote23A3C **, 0x148);
                    if (!(((u32) (temp_r2->unk4 << 0x1A) >> 0x1A) & 0x20) && !(temp_r3->flags & 0x2000)) {
                        var_r1 = M2C_FIELD(sp34, s16 *, 0x0) - ((u16) temp_r2->unk0 >> 7);
                        if (var_r1 < 0) {
                            var_r1 = 0 - var_r1;
                        }
                        if (var_r1 < (s32) temp_r8) {
                            var_r0 = M2C_FIELD(sp34, s16 *, 0x2) - ((u32) (temp_r2->unk2 << 0x14) >> 0x17);
                            if (var_r0 < 0) {
                                var_r0 = 0 - var_r0;
                            }
                            if (var_r0 >= (s32) temp_r7) {
                                goto block_105;
                            }
                            var_sl = 1;
                        } else {
                            goto block_105;
                        }
                    } else {
block_105:
                        var_r5 += 1;
                        if (var_r5 < temp_r6) {
                            goto loop_97;
                        }
                    }
                }
                var_r0_2 = var_sl;
                goto block_108;
            }
            var_r0_2 = 0;
block_108:
            if (var_r0_2 == 0) {
                goto loop_109;
            }
        }
    }
    temp_r0_3 = sub_08056E90();
    if (temp_r0_3 == 0) goto dispatch;
finish:
    temp_r0_6 = state23A3C->count - 1;
    state23A3C->count = temp_r0_6;
    if (temp_r0_6 & 0x8000) {
        state23A3C->count = 0U;
    }
    if ((state23A3C->count == 0) && (sub_08056E50() == 0) && (sub_08056FF8() == 0) && (state23A3C->mode != 0xB)) {
    goto loop_120;
loop_120_yield:
    sub_080003F0();
loop_120:
        if (sub_08067EC8() == 0) goto loop_120_yield;
    }
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08023A3C);
#endif
extern void sub_08023A3C(s32 *, u32);
struct Task23ED8 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
struct State23ED8 { u8 pad[0x1834]; struct Task23ED8 tasks[32]; };
extern struct State23ED8 *state23ED8 asm("gUnk_03005CF4");
void sub_08023ED8(s32 arg0, u32 arg1) {
    register struct State23ED8 **global asm("r6");
    register u32 four asm("r4");
    register u32 offset asm("r8");
    register u32 taskOffset asm("r5");
    register u8 *callbackBase asm("r0");
    register struct State23ED8 *base asm("r3");
    u32 offset2;
    register s32 sum asm("r0");
    register void *memory asm("r1");
    global = &state23ED8;
    four = arg1 * 4;
    offset = (four + arg1) * 8;
    taskOffset = 0x1834 + offset;
    if (sub_08000470((s32)*global + taskOffset) != 0)
        sub_080003A8((s32)*global + taskOffset);
    callbackBase = (u8 *)&(*global)->tasks[0].fC;
    *(u32 *)(callbackBase + offset) = (u32)sub_08023A3C;
    goto allocate;
retry:
    sub_080003F0();
allocate:
    memory = sub_08001494(0x200);
    base = state23ED8;
    asm("" : "+r"(four));
    sum = four + arg1;
    offset2 = sum * 8;
    callbackBase = (u8 *)&base->tasks[0].f20;
    *(u32 *)(callbackBase + offset2) = (u32)memory;
    if (memory == 0) goto retry;
    callbackBase = (u8 *)&base->tasks[0].f10;
    *(u32 *)(callbackBase + offset2) = (u32)memory + 0x1FC;
    callbackBase = (u8 *)&base->tasks[0].f8;
    *(u32 *)(callbackBase + offset2) = 0x46;
    callbackBase = (u8 *)&base->tasks[0].f24;
    *(u32 *)(callbackBase + offset2) = 0;
    callbackBase = (u8 *)(offset2 + 0x1834);
    callbackBase = (u8 *)base + (u32)callbackBase;
    sub_08000274(callbackBase, arg0, arg1);
}
struct Entry23F98 { s16 id; u8 data[54]; };
struct State23F98 { u8 pad0[10]; u16 count; u8 padC[0x718]; struct Entry23F98 *entries[32]; };
extern struct State23F98 *state23F98 asm("gUnk_03005CF4");
extern void sub_08023ED8(s32, u32);
extern struct Entry23F98 **gUnk_084B139C[];
extern struct Entry23F98 **gUnk_084B13BC[];
extern struct Entry23F98 **gUnk_084B13E4[];
extern struct Entry23F98 **gUnk_084B1420[];
extern struct Entry23F98 **gUnk_084B1454[];
extern struct Entry23F98 **gUnk_084B148C[];
extern struct Entry23F98 **gUnk_084B14D0[];
extern struct Entry23F98 **gUnk_084B1504[];
extern struct Entry23F98 **gUnk_084B154C[];
extern struct Entry23F98 **gUnk_084B1590[];
extern struct Entry23F98 **gUnk_084B15E4[];
extern struct Entry23F98 **gUnk_084B15E8[];
extern struct Entry23F98 **gUnk_084B15F8[];
extern struct Entry23F98 **gUnk_084B160C[];
extern struct Entry23F98 **gUnk_084B1610[];
extern struct Entry23F98 **gUnk_084B1620[];
extern struct Entry23F98 **gUnk_084B1630[];
extern struct Entry23F98 **gUnk_084B164C[];
extern struct Entry23F98 **gUnk_084B1664[];
extern struct Entry23F98 **gUnk_084B1678[];
extern struct Entry23F98 **gUnk_084B16A0[];
extern struct Entry23F98 **gUnk_084B16B4[];
extern struct Entry23F98 **gUnk_084B16CC[];
void sub_08023F98(u16 arg0, u16 arg1) {
    register struct Entry23F98 ***table asm("r0");
    struct Entry23F98 *entry;
    u32 i;
    u16 count;
    switch (arg0) {
    case 1: table = gUnk_084B139C; break;
    case 2: table = gUnk_084B13BC; break;
    case 3: table = gUnk_084B13E4; break;
    case 4: table = gUnk_084B1420; break;
    case 5: table = gUnk_084B1454; break;
    case 6: table = gUnk_084B148C; break;
    case 7: table = gUnk_084B14D0; break;
    case 8: table = gUnk_084B1504; break;
    case 9: table = gUnk_084B154C; break;
    case 10: table = gUnk_084B1590; break;
    case 11: table = gUnk_084B15E4; break;
    case 12: table = gUnk_084B15E8; break;
    case 13: table = gUnk_084B15F8; break;
    case 14: table = gUnk_084B160C; break;
    case 15: table = gUnk_084B1610; break;
    case 16: table = gUnk_084B1620; break;
    case 17: table = gUnk_084B1630; break;
    case 18: table = gUnk_084B164C; break;
    case 19: table = gUnk_084B1664; break;
    case 20: table = gUnk_084B1678; break;
    case 21: table = gUnk_084B16A0; break;
    case 22: table = gUnk_084B16B4; break;
    case 23: table = gUnk_084B16CC; break;
    default: goto selected;
    }
    entry = *table[arg1];
selected:
    if (sub_08002204() != 0) {
        state23F98->count = 0;
        if (arg0 != 0 && arg0 != 11) {
            i = 0;
            while (entry->id != 0) {
                count = state23F98->count;
                if ((u16)entry->id != 0) {
                    state23F98->entries[count] = entry;
                    sub_08023ED8((s32)entry, count);
                    state23F98->count++;
                }
                i++;
                entry++;
                if (i > 31) break;
            }
        }
    }
}
#ifdef NONMATCHING
struct Input2413C { u16 x, y, destination, flags; };
struct State2413C { u16 mode, pad2, flags; };
extern struct State2413C *state2413C asm("gUnk_03005CF4");
extern u16 inputFlags2413C asm("gUnk_03001324");
void sub_0802413C_void(struct Input2413C *, s32) asm("sub_0802413C");
struct Remote2413C { u16 unk0, unk2; u8 unk4, unk5, unk6, unk7; };
extern struct Remote2413C *gUnk_03003E28;
extern s16 gUnk_0849E730[];
extern s32 sub_08015F20(void);
void sub_0802413C_void(struct Input2413C *arg0, s32 arg1) {
    s32 sp0;
    s32 sp4;
    s32 sp8;
    s32 spC;
    s32 sp10;
    s32 sp14;
    s32 sp18;
    s32 sp1C;
    u32 sp20;
    u32 sp24;
    struct Remote2413C **sp28;
    s8 *sp2C;
    s32 sp30;
    s16 temp_r1;
    s16 temp_r4;
    s16 temp_r5;
    s32 temp_r0;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r3;
    s32 var_r3_2;
    s32 var_r7;
    s32 var_r9;
    s32 var_sl;
    struct Player *temp_r8;
    u32 temp_r4_2;
    u32 temp_r5_2;
    struct Remote2413C **var_r7_2;
    struct Remote2413C *temp_r1_2;
    struct Remote2413C *temp_r1_3;
    struct Remote2413C *temp_r2_2;
    struct Remote2413C *temp_r2_3;

    temp_r8 = &gUnk_03003CE0[sub_080020F4()];
    if (sub_0800CCCC() != 0) {
        return;
    }
    sp1C = (s32) arg0->flags;
    sp24 = (u32) (0 - (4 & sp1C)) >> 0x1F;
    sp1C &= 3;
    var_r7 = 0x20;
    if ((state2413C->mode == 3) && (gUnk_03003170.f90 == 0xC)) {
        var_r7 = 0x18;
    }
    if (sub_0800CF80() != 0) {
        sp10 = 0xF0;
    } else {
        sp10 = 0x18;
    }
    temp_r3 = arg0->x << 0xB;
    temp_r1 = gUnk_0849E730[arg1];
    temp_r5 = *(s16 *)((u8 *)gUnk_080B9704 + (temp_r1 << 5) + 0x80);
    sp4 = temp_r3 + (var_r7 * temp_r5);
    temp_r2 = arg0->y << 0xB;
    temp_r4 = *(s16 *)((u8 *)gUnk_080B9704 + (temp_r1 << 5));
    sp0 = temp_r2 + (var_r7 * temp_r4);
    temp_r0 = 0 - (var_r7 + 8);
    spC = temp_r3 + (temp_r0 * temp_r5);
    sp8 = temp_r2 + (temp_r4 * temp_r0);
    if (sp4 < 0) {
        sp4 = 0;
    }
    if (sp0 < 0) {
        sp0 = 0;
    }
    M2C_FIELD(temp_r8, s16 *, 0x26) = 0;
    M2C_FIELD(temp_r8, s16 *, 0x24) = 0;
    M2C_FIELD(temp_r8, s8 *, 0x68) = 0;
    sp2C = &M2C_FIELD(temp_r8, s8 *, 0x68);
loop_16:
    if ((temp_r8->state != 0xE) && (sub_0800CD8C() == 0) && (temp_r8->state != 5)) {
        sub_08015C5C(sp4 >> 8, sp0 >> 8);
loop_23:
        if ((sub_08015F20() == 0) || (((u16) state2413C->flags >> 4) & 1)) {
            temp_r8->flags = temp_r8->flags | 0x403;
            sub_08067D74();
            if (((u16) state2413C->flags >> 4) & 1) {
                return;
            }
            sp28 = &gUnk_03003E28;
loop_28:
            var_sl = 0;
            sp14 = 0;
            var_r3 = 0;
            sp20 = 0;
            var_r9 = 0;
            var_r7_2 = sp28;
loop_61:
            sp30 = var_r3;
            if (sp20 < sub_08002164()) {
                temp_r1_2 = *var_r7_2;
                temp_r4_2 = (u16) temp_r1_2->unk0 >> 4;
                temp_r5_2 = (u32) (temp_r1_2->unk2 << 0x14) >> 0x14;
                sp30 = var_r3;
                var_r3_2 = var_r3;
                if (sub_0800CB9C() != 0) {
                    var_r3_2 = sp30;
                    if (sub_0800CF80() != 0) {
                        temp_r1_3 = *var_r7_2;
                        if (((s32) (temp_r1_3->unk7 << 0x1B) < 0) || ((temp_r1_3->unk4 << 0x1A) == 0)) {
                            var_r3_2 += 1;
                        }
                        goto block_53;
                    }
                    var_r1 = temp_r4_2 - sp4;
                    if (var_r1 < 0) {
                        var_r1 = 0 - var_r1;
                    }
                    if (var_r1 < (s32) (sp10 + 0x20)) {
                        var_r1_2 = temp_r5_2 - sp0;
                        if (var_r1_2 < 0) {
                            var_r1_2 = 0 - var_r1_2;
                        }
                        if (var_r1_2 >= 0x30) {
                            goto block_40;
                        }
                        goto block_41;
                    }
block_40:
                    if (((u32) ((*var_r7_2)->unk4 << 0x1A) >> 0x1A) & 0x20) {
block_41:
                        temp_r2_2 = *var_r7_2;
                        if ((s32) (temp_r2_2->unk7 << 0x1B) >= 0) {
                            if (((u32) (temp_r2_2->unk4 << 0x1A) >> 0x1A) & 0x20) {
                                if (((u32) ((u8) temp_r2_2->unk0 << 0x1C) >> 0x1C) != 0xC) {
                                    goto block_44;
                                }
                                goto block_53;
                            }
                        } else {
block_44:
                            var_r3_2 += 1;
                            goto block_53;
                        }
                    }
                } else {
                    var_r1_3 = temp_r4_2 - sp4;
                    if (var_r1_3 < 0) {
                        var_r1_3 = 0 - var_r1_3;
                    }
                    if (var_r1_3 < (s32) (sp10 + 0x20)) {
                        var_r1_4 = temp_r5_2 - sp0;
                        if (var_r1_4 < 0) {
                            var_r1_4 = 0 - var_r1_4;
                        }
                        if ((var_r1_4 < 0x30) && (*(u32 *)((u8 *)&gUnk_03003CE0->flags + var_r9) & 0x400)) {
                            var_r3_2 += 1;
                        }
                    }
block_53:
                    temp_r2_3 = *var_r7_2;
                    if ((((u32) (temp_r2_3->unk4 << 0x1A) >> 0x1A) & 0x20) && (((u32) ((u8) temp_r2_3->unk0 << 0x1C) >> 0x1C) != 0xC)) {
                        sp14 += 1;
                    }
                }
                if (*(u32 *)((u8 *)&gUnk_03003CE0->flags + var_r9) & 0x2000) {
                    var_sl += 1;
                }
                sp30 = var_r3_2;
                var_r3 = var_r3_2;
                if (sub_0800CF80() != 0) {
                    var_sl = 0;
                }
                var_r7_2 = (struct Remote2413C **)((u8 *)var_r7_2 + 0x14C);
                var_r9 += 0x14C;
                sp20 += 1;
                goto loop_61;
            }
            if ((sp30 == sub_08002164()) && (sp14 != sub_08002164())) {
                if ((sp1C == 0) || (sp24 != 0)) {
                    if ((sp14 == 0) && (var_sl != sub_08002164())) {
                        sp18 += 1;
                    }
                } else {
                    sp18 += 1;
                }
            } else {
                sp18 = 0;
            }
            if ((sp18 == 0) && (sub_08058DB0() == 0) && (2 & inputFlags2413C)) {
                temp_r8->flags = temp_r8->flags & 0xFFFFFBFF;
                sub_08067D74();
                sub_08057624(0x3CU);
                temp_r8->flags = temp_r8->flags & 0xFFFFFBFC;
                sub_08067D74();
                sub_08015C5C(spC >> 8, sp8 >> 8);
loop_77:
                if ((sub_08015F20() != 0) && !(((u16) state2413C->flags >> 4) & 1)) {
                    sub_08057624(1U);
                    goto loop_77;
                }
                if (sub_0800CF80() == 0) {
                    *sp2C = 1;
                }
                temp_r8->flags &= 0xFFFFFBDA;
                sub_0806617C();
                sub_08067D74();
                gUnk_03005CF0 = 0;
                return;
            }
            sub_08057624(1U);
            if (!(((u16) state2413C->flags >> 4) & 1)) {
                goto loop_28;
            }
            return;
        }
        if (sub_0800CCCC() != 0) {
            return;
        }
        sub_08057624(1U);
        goto loop_23;
    }
    if (sub_0800CCCC() != 0) {
        return;
    }
    sub_08057624(1U);
    goto loop_16;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802413C);
#endif
void sub_08024538(s32 arg0) {
    struct Player *p;

    p = &gUnk_03003CE0[sub_080020F4()];
    p->flags = (p->flags & ~0x400) | 1;
    while (sub_08067D74() == 0) {
        (void)sub_08057624(1);
    }
    (void)sub_08057624(0x3C);
    p->flags &= ~3;
    while (sub_08067D74() == 0) {
        (void)sub_08057624(1);
    }
    if (sub_0800CF80() == 0) {
        *((u8 *)p + 0x68) = 1;
    }
    while (sub_0806617C() == 0) {
        (void)sub_08057624(1);
    }
    if (arg0 != 0) {
        p->flags |= 0x1000000;
    } else {
        p->flags |= 0x800000;
    }
}
#ifdef NONMATCHING
/* Draft: transition trigger; original ASM remains authoritative. */
struct Task245CC { u8 bytes[0x28]; };
struct Remote245CC { u16 x,y; u8 flags,p5,p6,flags7; };
struct Input245CC { u16 x,y,destination,flags; };
struct Player245CC { u8 pad0[0x14]; u16 w14; u8 pad16[10]; u16 state; s16 w22,w24,w26; u8 pad28[8]; u32 flags; u8 pad34[0x58]; s32 x,y; u8 pad94[0x3a]; s16 wCE; u8 padD0[8]; s32 wD8; u8 padDC[0x6c]; struct Remote245CC *remote; };
struct State245CC { u16 mode,p2,flags; u8 p6[0x3a]; s32 destination; u32 transition; u8 p48[0x180]; u8 states[100]; };
struct Map245CC { u8 p0[14]; u16 wE; };
struct Level245CC { u8 p0[0x8c]; u16 curLevel; u8 p8e[2]; u16 f90; u8 p92[0x1e]; struct Map245CC *map; };
struct Anim245CC { s32 w0,w4,w8; u8 *graphics; u8 p10[12]; u8 data[24]; };
extern struct Player245CC local245CC_gUnk_03003CE0[] asm("gUnk_03003CE0");
extern struct State245CC *local245CC_gUnk_03005CF4 asm("gUnk_03005CF4");
extern struct Level245CC local245CC_gUnk_03003170 asm("gUnk_03003170");
extern struct Remote245CC *local245CC_gUnk_03003E28 asm("gUnk_03003E28");
extern u32 local245CC_gUnk_084B16E0[] asm("gUnk_084B16E0");
extern u32 local245CC_gUnk_03005CF0 asm("gUnk_03005CF0");
extern u32 local245CC_gUnk_030056FC asm("gUnk_030056FC");
extern u16 local245CC_gUnk_03001324 asm("gUnk_03001324");
extern u32 local245CC_gUnk_03002344 asm("gUnk_03002344");
s32 local245CC_sub_0800CCCC(void) asm("sub_0800CCCC"); s32 local245CC_sub_0800CD8C(void) asm("sub_0800CD8C"); extern u32 local245CC_gUnk_03003D10 asm("gUnk_03003D10");

void local245CC_sub_08024538(s32) asm("sub_08024538");
void local245CC_sub_0805A60C(s32) asm("sub_0805A60C");
u8 *local245CC_sub_08007290(u32) asm("sub_08007290");
void local245CC_sub_08065158(struct Anim245CC *,u32,s32,s32,s32) asm("sub_08065158");
void local245CC_sub_08007870(s16,s16,u32,u16,u32,void *,s32,s32) asm("sub_08007870");
void local245CC_sub_08008E74(s16,s16,u32,u16,u32,void *,s32,s32) asm("sub_08008E74");
void local245CC_sub_0800BC08(s16,s16,s16 *,s16 *,u32,s32) asm("sub_0800BC08");
void local245CC_sub_08057DD0(u32,u32,s32,s32,void (*)(s32),struct Input245CC *) asm("sub_08057DD0");
void local245CC_sub_08065370(struct Anim245CC *,u16,u16 *,u16 *,u32) asm("sub_08065370");
void local245CC_sub_080003F0() asm("sub_080003F0");                             /* extern */
s32 local245CC_sub_0800048C() asm("sub_0800048C");                                 /* extern */
void local245CC_sub_08000AF0(s32, void *, s32) asm("sub_08000AF0");             /* extern */
s32 local245CC_sub_080020F4() asm("sub_080020F4");                                 /* extern */
u32 local245CC_sub_08002164() asm("sub_08002164");                                 /* extern */
s32 local245CC_sub_080021A8() asm("sub_080021A8");                                 /* extern */
s32 local245CC_sub_08002204() asm("sub_08002204");                                 /* extern */
void local245CC_sub_0800A34C(u16, s32, s32) asm("sub_0800A34C");                /* extern */
s32 local245CC_sub_0800BA6C() asm("sub_0800BA6C");                                 /* extern */
u32 local245CC_sub_0800BC44(u32, u32, s32) asm("sub_0800BC44");                     /* extern */
s32 local245CC_sub_0800CB9C() asm("sub_0800CB9C");                                 /* extern */
s32 local245CC_sub_0800CC98() asm("sub_0800CC98");                                 /* extern */
s32 local245CC_sub_0800CD34() asm("sub_0800CD34");                                 /* extern */
void local245CC_sub_0800CD9C() asm("sub_0800CD9C");                             /* extern */
void local245CC_sub_0800CDAC() asm("sub_0800CDAC");                             /* extern */
s32 local245CC_sub_0800CDC0() asm("sub_0800CDC0");                                 /* extern */
s32 local245CC_sub_0800CDF8() asm("sub_0800CDF8");                                 /* extern */
s32 local245CC_sub_0800CE30() asm("sub_0800CE30");                                 /* extern */
s32 local245CC_sub_0800CF80() asm("sub_0800CF80");                                 /* extern */
void local245CC_sub_0800D000() asm("sub_0800D000");                             /* extern */
void local245CC_sub_0800D014() asm("sub_0800D014");                             /* extern */
void local245CC_sub_0801A3D0(u8 *, u16, s32) asm("sub_0801A3D0");               /* extern */
u32 local245CC_sub_0801A638(u8 *) asm("sub_0801A638");                             /* extern */
void local245CC_sub_0801A664(s32, s32) asm("sub_0801A664");                     /* extern */
void local245CC_sub_0801E278(u8 *, s32) asm("sub_0801E278");                    /* extern */
void local245CC_sub_08057328(s32, void (*)(s32)) asm("sub_08057328");           /* extern */
void local245CC_sub_08057624(s32) asm("sub_08057624");                          /* extern */
void local245CC_sub_0805865C(s32) asm("sub_0805865C");                          /* extern */
void local245CC_sub_08058B74(s32, s32, s32) asm("sub_08058B74");                /* extern */
s32 local245CC_sub_08058DB0() asm("sub_08058DB0");                                 /* extern */
void local245CC_sub_0805A618(s32) asm("sub_0805A618");                             /* extern */
void local245CC_sub_0805A624(s32) asm("sub_0805A624");                             /* extern */
void local245CC_sub_0805A630(s32) asm("sub_0805A630");                             /* extern */
void local245CC_sub_0805A63C(s32) asm("sub_0805A63C");                             /* extern */
void local245CC_sub_0805A648(s32) asm("sub_0805A648");                             /* extern */
void local245CC_sub_0805A654(s32) asm("sub_0805A654");                             /* extern */
void local245CC_sub_0805A660(s32) asm("sub_0805A660");                             /* extern */
s32 local245CC_sub_0805D37C(s32, s32, u32) asm("sub_0805D37C");                    /* extern */
s32 local245CC_sub_0805F184() asm("sub_0805F184");                                 /* extern */
s32 local245CC_sub_0806569C() asm("sub_0806569C");                                 /* extern */
void local245CC_sub_08067D74() asm("sub_08067D74");                             /* extern */
s32 local245CC_sub_08067DC8() asm("sub_08067DC8");                                 /* extern */

void sub_080245CC(struct Input245CC *arg0) {
    u32 sp0;                               /* compiler-managed */
    void *sp4;                         /* compiler-managed */
    s32 sp8;
    s32 spC;
    struct Anim245CC sp10;
    struct Anim245CC sp44;
    u16 sp78;
    u16 sp7A;
    s16 sp7C;
    s16 sp7E;
    u16 sp80;
    u16 sp82;
    struct Input245CC *sp84;
    u8 *sp88;
    u32 sp8C;
    u32 sp90;
    s32 sp94;
    s32 sp98;
    u32 sp9C;
    u32 spA0;
    u32 spA4;
    u32 spA8;
    u32 spAC;
    s32 spB0;
    s32 spB4;
    u32 spB8;
    s32 spBC;
    s32 spC0;
    s32 spC4;
    u32 spC8;
    struct Map245CC *spCC;
    s32 spD0;
    s32 spD4;
    s32 spD8;
    struct Player245CC *spDC;
    u32 spE0;
    s16 *temp_r7;
    s16 temp_r0_8;
    s16 temp_r0_9;
    s16 var_r0_4;
    s32 temp_r0_10;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_7;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_5;
    s32 var_r0_6;
    s32 var_r1;
    s32 var_r1_2;
    s32 var_r1_3;
    s32 var_r1_4;
    s32 var_r1_5;
    s32 var_r1_6;
    s32 var_r1_7;
    s32 var_r1_8;
    s32 var_r2;
    s32 var_r5;
    s32 var_r7;
    s32 var_r7_2;
    s32 var_r7_3;
    s32 var_r7_4;
    s32 var_r9;
    s32 var_r9_2;
    s32 var_sl;
    s32 var_sl_2;
    struct Player245CC *temp_r8;
    struct Player245CC *var_r4;
    struct Player245CC *var_r4_2;
    struct Remote245CC **var_r6;
    struct Remote245CC **var_r6_2;
    struct Remote245CC *temp_r1_3;
    struct Remote245CC *temp_r1_4;
    struct Remote245CC *temp_r1_7;
    struct Remote245CC *temp_r1_8;
    struct Remote245CC *temp_r2;
    struct Remote245CC *temp_r2_2;
    struct Remote245CC *temp_r2_3;
    u16 temp_r0_11;
    u16 temp_r1_11;
    u16 temp_r3;
    u16 temp_r5;
    u16 var_r3_3;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r0_5;
    u32 temp_r0_6;
    u32 temp_r1;
    u32 temp_r1_10;
    u32 temp_r1_2;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_9;
    u32 var_r0;
    u32 var_r1_9;
    u32 var_r2_2;
    u32 var_r2_3;
    u32 var_r3;
    u32 var_r3_2;
    u32 var_r3_4;
    u32 var_r3_5;
    u32 var_r3_6;
    u32 var_r3_7;
    u8 *temp_r4;
    u8 *temp_r4_2;
    u8 temp_r6;
    u8 temp_r6_2;
    u8 temp_r6_3;
    u8 temp_r6_4;

    sp84 = arg0;
    spB0 = (struct Task245CC *)local245CC_sub_0800048C() - (struct Task245CC *)((u8 *)local245CC_gUnk_03005CF4 + 0x17BC);
    spCC = local245CC_gUnk_03003170.map;
    sp8C = sp84->x * 8;
    sp90 = sp84->y * 8;
    temp_r5 = sp84->flags;
    temp_r3 = temp_r5;
    spA4 = (u32) temp_r3;
    var_r5 = 1;
    if (8 & temp_r3) {
        var_r5 = 0;
    }
    if (0x80 & spA4) {
        spC4 = 1;
        spB8 = 8;
    } else {
        spC4 = 0;
        spB8 = ((u32) (temp_r5 << 0x10) >> 0x14) & 7;
        sp9C = sp8C;
        spA0 = sp90;
    }
    spC8 = (u32) (0 - (u16) (4 & spA4)) >> 0x1F;
    spA4 &= 3;
    sp78 = 0;
    sp7A = 0;
    spB4 = 0;
    spBC = 1;
    spA8 = 0;
    spC0 = 0;
    local245CC_gUnk_03005CF0 = 0;
    if ((spC8 == 0) && (spA4 != 0)) {
        sp0 = 0;
        local245CC_sub_08065158(&sp44, 0x5014FU, 0xC, -1, sp0);
    } else {
        sp0 = 0;
        local245CC_sub_08065158(&sp44, 0x50150U, 0xC, -1, sp0);
    }
    sp88 = local245CC_sub_08007290(0x1403D1U);
    temp_r8 = &local245CC_gUnk_03003CE0[local245CC_sub_080020F4()];
    sp0 = 0;
    local245CC_sub_08065158(&sp10, local245CC_gUnk_084B16E0[local245CC_gUnk_03005CF4->mode], 0xE, -1, sp0);
    if (local245CC_sub_0800CCCC() == 0) {
        local245CC_sub_08000AF0(0x1E, sp10.graphics + (spA4 << 5), 1);
    }
    (&sp10.data[0])[spA4] = 0xE;
    if (local245CC_sub_0800CF80() != 0) {
        sp94 = 0xF0;
        sp98 = 0x10;
    } else {
        sp94 = 0x18;
        sp98 = 0x10;
    }
loop_15:
    if (local245CC_sub_0800BA6C() == 0) {
        local245CC_sub_080003F0();
        goto loop_15;
    }
    if (var_r5 != 0) {
loop_187:
        if (((u16) local245CC_gUnk_03005CF4->flags >> 4) & 1) {
            goto block_188;
        }
loop_19:
        if (local245CC_sub_0800CDF8() != 0) {
            local245CC_sub_080003F0();
            goto loop_19;
        }
        if (local245CC_sub_080021A8() == 0) {
            if (((u16) local245CC_gUnk_03005CF4->flags >> 3) & 1) {
                if ((spC0 == 0) && (local245CC_sub_0800CCCC() == 0)) {
                    if (spA4 == 0) {
                        if (spC8 != 0) {
                            local245CC_sub_0805865C(0x3E);
                        } else {
                            local245CC_sub_08058B74(0x3E, 0x63, 0x40);
                            local245CC_sub_0800D000();
                        }
                    } else {
                        local245CC_sub_0805865C(0x5D);
                        if (local245CC_sub_0800CDC0() != 0) {
                            local245CC_sub_0800CDAC();
                            local245CC_sub_0800A34C(local245CC_gUnk_03003170.curLevel, 0, 1);
                            local245CC_sub_0800CD9C();
                        } else {
                            local245CC_sub_0800A34C(local245CC_gUnk_03003170.curLevel, 0, 1);
                        }
                    }
                    spC0 = 1;
                }
                if (spC4 == 0) {
                    if (local245CC_gUnk_03005CF0 != 0) {
                        goto block_114;
                    }
                    if (local245CC_gUnk_03003170.curLevel == 0) {
                        goto block_114;
                    }
                    if (local245CC_sub_0800CCCC() != 0) {
block_114:
                        if (local245CC_sub_0800CCCC() != 0) {
                            var_r0 = 0;
                            goto block_116;
                        }
                    } else {
                        switch (spB8) {             /* switch 2 */
                        case 0:                     /* switch 2 */
                            var_r2 = sp94;
                            sp0 = (u32)local245CC_sub_0805A60C;
                            sp4 = sp84;
block_109:
                            local245CC_sub_08057DD0(sp9C, spA0, var_r2, 0x10, (void (*)(s32))sp0, (struct Input245CC *)sp4);
                            break;
                        case 1:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A618;
                            sp4 = sp84;
block_108:
                            var_r2 = 0x10;
                            goto block_109;
                        case 2:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A624;
                            sp4 = sp84;
block_111:
                            local245CC_sub_08057DD0(sp9C, spA0, 0x10, 0x40, (void (*)(s32))sp0, (struct Input245CC *)sp4);
                            break;
                        case 3:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A630;
                            sp4 = sp84;
                            goto block_108;
                        case 4:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A63C;
                            sp4 = sp84;
                            goto block_108;
                        case 5:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A648;
                            sp4 = sp84;
                            goto block_108;
                        case 6:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A654;
                            sp4 = sp84;
                            goto block_111;
                        case 7:                     /* switch 2 */
                            sp0 = (u32)local245CC_sub_0805A660;
                            sp4 = sp84;
                            local245CC_sub_08057DD0(sp9C, spA0, 0x10, 0x10, (void (*)(s32))sp0, (struct Input245CC *)sp4);
                            break;
                        }
                        var_r0 = 1;
block_116:
                        local245CC_gUnk_03005CF0 = var_r0;
                    }
                } else {
                    sp7C = (s16) ((s32) temp_r8->x >> 8);
                    sp7E = (s16) ((s32) temp_r8->y >> 8);
                    if (local245CC_sub_0800CCCC() != 0) {
                        goto block_89;
                    }
                    if (local245CC_sub_0806569C() != 0) {
                        goto block_89;
                    }
                    if (temp_r8->state == 0xE) {
                        goto block_89;
                    }
                    var_r0_2 = sp7C - sp8C;
                    if (var_r0_2 < 0) {
                        var_r0_2 = 0 - var_r0_2;
                    }
                    if (var_r0_2 >= sp94) {
                        goto block_89;
                    }
                    var_r0_3 = sp7E - sp90;
                    if (var_r0_3 < 0) {
                        var_r0_3 = 0 - var_r0_3;
                    }
                    if (var_r0_3 >= sp98) {
block_89:
                        if (spB4 != 0) {
                            spB4 = 0;
                            local245CC_sub_0801A664(0x12, 2);
                        }
                        if (spB0 != 0) {
                            temp_r8->flags = temp_r8->flags & 0xFEFFFFFF;
                        } else {
                            temp_r8->flags &= 0xFF7FFFFF;
                        }
                    } else if (local245CC_sub_0805D37C(temp_r8->x, temp_r8->y, (u32) (temp_r8->remote->flags << 0x1A) >> 0x1A) != 0) {

                    } else {
                        temp_r0 = temp_r8->state - 2;
                        switch (temp_r0) {          /* switch 1 */
                        case 0:                     /* switch 1 */
                        case 2:                     /* switch 1 */
                        case 3:                     /* switch 1 */
                        case 5:                     /* switch 1 */
                        case 6:                     /* switch 1 */
                        case 7:                     /* switch 1 */
                        case 8:                     /* switch 1 */
                        case 9:                     /* switch 1 */
                        case 10:                    /* switch 1 */
                        case 12:                    /* switch 1 */
                            break;
                        default:                    /* switch 1 */
                        case 1:                     /* switch 1 */
                        case 4:                     /* switch 1 */
                        case 11:                    /* switch 1 */
                            temp_r1 = temp_r8->flags;
                            if (!(0x400 & temp_r1)) {
                                if (spB0 != 0) {
                                    temp_r8->flags = temp_r1 | 0x01000000;
                                } else {
                                    temp_r8->flags = temp_r1 | 0x800000;
                                }
                                if (local245CC_sub_0805F184() == 0) {
                                    temp_r4 = sp88 + 2;
                                    local245CC_sub_0801A3D0(temp_r4, (u16) (0xF - (local245CC_sub_0801A638(temp_r4) >> 1)), 0x12);
                                }
                                if (1 & temp_r8->w14) {
                                    temp_r1_2 = temp_r8->flags | 0x403;
                                    temp_r8->flags = temp_r1_2;
                                    if (spB0 != 0) {
                                        temp_r8->flags = temp_r1_2 & 0xFEFFFFFF;
                                    } else {
                                        temp_r8->flags = temp_r1_2 & 0xFF7FFFFF;
                                    }
                                    local245CC_sub_08067D74();
                                    temp_r8->wD8 = 0;
                                    temp_r8->w26 = 0;
                                    temp_r8->w24 = 0;
                                    temp_r8->wCE = 0;
                                    temp_r8->state = 0;
                                }
                                spB4 = 1;
                                spAC = 0;
                            } else {
                                temp_r0_2 = spAC;
                                spAC = temp_r0_2 + 1;
                                if (temp_r0_2 <= 0x3CU) {

                                } else if (local245CC_sub_08058DB0() != 0) {

                                } else if (!(2 & local245CC_gUnk_03001324)) {

                                } else {
                                    temp_r8->flags = temp_r8->flags & 0xFFFFFBFF;
                                    local245CC_sub_08057328(spB0, local245CC_sub_08024538);
                                }
                            }
                            break;
                        }
                    }
                }
                if (local245CC_sub_08002204() == 0) {
                    goto block_175;
                }
                var_r9 = 0;
                var_sl = 0;
                var_r7 = 0;
                var_r3 = 0;
                spD8 = 0;
                var_r6 = &local245CC_gUnk_03003E28;
loop_156:
                spE0 = var_r3;
                if (var_r3 < local245CC_sub_08002164()) {
                    temp_r1_3 = *var_r6;
                    sp7C = (s16) ((u16) temp_r1_3->x >> 4);
                    sp7E = (s16) ((u32) (temp_r1_3->y << 0x14) >> 0x14);
                    if ((s32) sp7C < 0) {
                        sp7C = 0;
                    }
                    if ((s32) sp7E < 0) {
                        sp7E = 0;
                    }
                    spDC = local245CC_gUnk_03003CE0;
                    spE0 = var_r3;
                    var_r3_2 = var_r3;
                    if (local245CC_sub_0800CB9C() != 0) {
                        var_r3_2 = spE0;
                        if (local245CC_sub_0800CF80() != 0) {
                            temp_r1_4 = *var_r6;
                            if (((s32) (temp_r1_4->flags7 << 0x1B) < 0) || (var_r4 = spDC, ((temp_r1_4->flags << 0x1A) == 0))) {
                                var_r7 += 1;
                                var_r4 = spDC;
                            }
                            goto block_148;
                        }
                        var_r1 = sp7C - sp8C;
                        if (var_r1 < 0) {
                            var_r1 = 0 - var_r1;
                        }
                        if (var_r1 < (s32) (sp94 + 0x20)) {
                            var_r1_2 = sp7E - sp90;
                            if (var_r1_2 < 0) {
                                var_r1_2 = 0 - var_r1_2;
                            }
                            var_r4 = spDC;
                            if (var_r1_2 >= (s32) (sp98 + 0x20)) {
                                goto block_135;
                            }
                            goto block_136;
                        }
block_135:
                        var_r4 = local245CC_gUnk_03003CE0;
                        if (((u32) ((*var_r6)->flags << 0x1A) >> 0x1A) & 0x20) {
block_136:
                            temp_r2 = *var_r6;
                            if ((s32) (temp_r2->flags7 << 0x1B) >= 0) {
                                if (((u32) (temp_r2->flags << 0x1A) >> 0x1A) & 0x20) {
                                    if (((u32) ((u8) temp_r2->x << 0x1C) >> 0x1C) != 0xC) {
                                        goto block_147;
                                    }
                                    goto block_148;
                                }
                            } else {
                                goto block_147;
                            }
                        }
                    } else {
                        var_r1_3 = sp7C - sp8C;
                        if (var_r1_3 < 0) {
                            var_r1_3 = 0 - var_r1_3;
                        }
                        var_r4 = local245CC_gUnk_03003CE0;
                        if (var_r1_3 < (s32) (sp94 + 0x20)) {
                            var_r1_4 = sp7E - sp90;
                            if (var_r1_4 < 0) {
                                var_r1_4 = 0 - var_r1_4;
                            }
                            if ((var_r1_4 < (s32) (sp98 + 0x20)) && (*(u32 *)((u8 *)&local245CC_gUnk_03003CE0->flags + spD8) & 0x400)) {
block_147:
                                var_r7 += 1;
                            }
                        }
block_148:
                        temp_r2_2 = *var_r6;
                        if ((((u32) (temp_r2_2->flags << 0x1A) >> 0x1A) & 0x20) && (((u32) ((u8) temp_r2_2->x << 0x1C) >> 0x1C) != 0xC)) {
                            var_sl += 1;
                        }
                    }
                    if (*(u32 *)((u8 *)&var_r4->flags + spD8) & 0x2000) {
                        var_r9 += 1;
                    }
                    spE0 = var_r3_2;
                    if (local245CC_sub_0800CF80() != 0) {
                        var_r9 = 0;
                    }
                    var_r6 = (struct Remote245CC **)((u8 *)var_r6 + 0x14C);
                    spD8 += 0x14C;
                    var_r3 = var_r3_2 + 1;
                    goto loop_156;
                }
                if ((var_r7 == local245CC_sub_08002164()) && (var_sl != local245CC_sub_08002164())) {
                    if ((spA4 == 0) || (spC8 != 0)) {
                        if ((var_sl == 0) && (var_r9 != local245CC_sub_08002164())) {
                            spA8 += 1;
                        }
                    } else {
                        spA8 += 1;
                    }
                } else {
                    spA8 = 0;
                }
                if (spA8 > 2U) {
                    local245CC_gUnk_03005CF4->destination = (s32) sp84->destination;
                    if ((local245CC_gUnk_03003170.curLevel == 0xA) && (local245CC_gUnk_03003170.f90 == 0x10) && (local245CC_sub_0800CE30() != 0)) {
                        local245CC_gUnk_03005CF4->destination = 0x12;
                    }
loop_173:
                    if (local245CC_sub_08067DC8() == 0) {
                        local245CC_sub_080003F0();
                        goto loop_173;
                    }
block_188:
                    if (!(((u16) local245CC_gUnk_03005CF4->flags >> 3) & 1)) {

                    } else {
                        local245CC_sub_0805865C(0x24);
                    }
                    goto block_344;
                }
block_175:
                sp0 = (u32)1;
                local245CC_sub_08065370(&sp44, (u16) spB8, &sp78, &sp7A, sp0);
                if ((local245CC_sub_0800CD34() == 0) && (local245CC_sub_0800CC98() == 0) && (local245CC_sub_0800CCCC() == 0)) {
                    temp_r0_3 = local245CC_sub_0800CD8C();
                    if (temp_r0_3 == 0) {
                        temp_r6 = (u8)local245CC_sub_0800BC44(sp8C, sp90, 0);
                        sp0 = (u32)0x30;
                        sp4 = (void *)temp_r0_3;
                        local245CC_sub_0800BC08((s16) sp8C, (s16) sp90, &sp7C, &sp7E, sp0, (s32)sp4);
                        if (local245CC_gUnk_03002344 & 1) {
                            if (spB8 != 2) {
                                if (spB8 != 6) {
                                    var_r0_4 = sp7C;
                                    var_r3_3 = sp78;
                                    sp0 = (u32) temp_r6;
                                    sp4 = &sp44.data[0];
                                    sp8 = sp44.w8;
                                    spC = sp44.w0;
                                    var_r2_2 = spB8;
                                } else {
                                    var_r0_4 = sp7C - 0x10;
                                    var_r3_3 = sp78;
                                    sp0 = (u32) temp_r6;
                                    sp4 = &sp44.data[0];
                                    sp8 = sp44.w8;
                                    spC = sp44.w0;
                                    var_r2_2 = 6;
                                }
                                local245CC_sub_08007870(var_r0_4, sp7E, var_r2_2, var_r3_3, sp0, sp4, sp8, spC);
                            } else {
                                sp0 = (u32) temp_r6;
                                sp4 = &sp44.data[0];
                                sp8 = sp44.w8;
                                spC = sp44.w0;
                                local245CC_sub_08007870(sp7C + 0x10, sp7E, 2U, sp78, sp0, sp4, sp8, spC);
                            }
                        }
                    }
                }
                goto block_186;
            }
            sp0 = (u32)1;
            local245CC_sub_08065370(&sp10, (u16) spA4, &sp78, &sp7A, sp0);
            if ((local245CC_sub_0800CC98() == 0) && (local245CC_sub_0800CCCC() == 0) && (temp_r0_4 = local245CC_sub_0800CD8C(), (temp_r0_4 == 0))) {
                if (spBC != 0) {
                    local245CC_sub_08000AF0(0x1E, sp10.graphics + (spA4 << 5), 1);
                    spBC = 0;
                }
                temp_r6_2 = (u8)local245CC_sub_0800BC44(sp8C, sp90, 0);
                sp0 = (u32)0x30;
                sp4 = (void *)temp_r0_4;
                local245CC_sub_0800BC08((s16) sp8C, (s16) sp90, &sp7C, &sp7E, sp0, (s32)sp4);
                if (spCC->wE != 0) {
                    sp0 = (u32) temp_r6_2;
                    sp4 = &sp10.data[0];
                    sp8 = sp10.w8;
                    spC = sp10.w0;
                    local245CC_sub_08008E74(sp7C, sp7E, spA4, sp78, sp0, sp4, sp8, spC);
                } else {
                    sp0 = (u32) temp_r6_2;
                    sp4 = &sp10.data[0];
                    sp8 = sp10.w8;
                    spC = sp10.w0;
                    local245CC_sub_08007870(sp7C, sp7E, spA4, sp78, sp0, sp4, sp8, spC);
                }
            } else {
                spBC = 1;
            }
            if (local245CC_sub_0800CDC0() != 0) {
                var_r7_2 = 0;
                var_r3_4 = 0;
loop_37:
                spE0 = var_r3_4;
                if (var_r3_4 < local245CC_sub_08002164()) {
                    if (*(u32 *)((u8 *)&local245CC_gUnk_03003D10 + var_r3_4 * 0x14C) & 0x2000) {
                        var_r7_2 += 1;
                    }
                    var_r3_4 += 1;
                    goto loop_37;
                }
                if (var_r7_2 != local245CC_sub_08002164()) {
                    goto block_39;
                }
                temp_r8->state = 0xC;
                temp_r8->w22 = 0;
                return;
            }
block_39:
            local245CC_gUnk_03005CF0 = 0;
block_186:
            local245CC_sub_080003F0();
            goto loop_187;
        }
    } else {
        temp_r1_5 = local245CC_gUnk_03005CF4->flags << 0x10;
        if (!((temp_r1_5 >> 0x13) & 1) && !((temp_r1_5 >> 0x14) & 1)) {
loop_195:
            if (local245CC_sub_0800CDF8() != 0) {
                local245CC_sub_080003F0();
                goto loop_195;
            }
            if (local245CC_sub_080021A8() == 0) {
                if (local245CC_sub_0800CDC0() != 0) {
                    var_r7_3 = 0;
                    var_r3_5 = 0;
loop_202:
                    spE0 = var_r3_5;
                    if (var_r3_5 < local245CC_sub_08002164()) {
                        if (*(u32 *)((u8 *)&local245CC_gUnk_03003D10 + var_r3_5 * 0x14C) & 0x2000) {
                            var_r7_3 += 1;
                        }
                        var_r3_5 += 1;
                        goto loop_202;
                    }
                    if (var_r7_3 == local245CC_sub_08002164()) {
                        temp_r8->state = 0xC;
                        temp_r8->w22 = 0;
                        return;
                    }
                    goto block_205;
                }
block_205:
                local245CC_sub_080003F0();
                temp_r1_6 = local245CC_gUnk_03005CF4->flags << 0x10;
                if (((temp_r1_6 >> 0x13) & 1) || ((temp_r1_6 >> 0x14) & 1)) {
                    goto block_207;
                }
                goto loop_195;
            }
        } else {
block_207:
            sp94 = 0x10;
            sp98 = 0xC;
            if (((u16) local245CC_gUnk_03005CF4->flags >> 4) & 1) {
                goto block_332;
            }
            if (local245CC_sub_0800CCCC() != 0) {

            } else if (spA4 == 0) {
                if (spC8 != 0) {
                    local245CC_sub_0805865C(0x3E);
                } else {
                    local245CC_sub_08058B74(0x3E, 0x63, 0x40);
                    local245CC_sub_0800D000();
                }
            } else {
                local245CC_sub_0805865C(0x5D);
                if (local245CC_sub_0800CDC0() != 0) {
                    local245CC_sub_0800CDAC();
                    local245CC_sub_0800A34C(local245CC_gUnk_03003170.curLevel, 0, 1);
                    local245CC_sub_0800CD9C();
                } else {
                    local245CC_sub_0800A34C(local245CC_gUnk_03003170.curLevel, 0, 1);
                }
            }
loop_330:
            if (!(((u16) local245CC_gUnk_03005CF4->flags >> 4) & 1)) {
loop_219:
                if (local245CC_sub_0800CDF8() != 0) {
                    local245CC_sub_080003F0();
                    goto loop_219;
                }
                if (local245CC_sub_080021A8() != 0) {
                    return;
                }
                if (local245CC_sub_08002204() == 0) {
                    goto block_276;
                }
                var_r3_6 = 0;
                var_r9_2 = 0;
                var_sl_2 = 0;
                var_r7_4 = 0;
                spD4 = 0;
                var_r6_2 = &local245CC_gUnk_03003E28;
loop_260:
                spE0 = var_r3_6;
                if (var_r3_6 < local245CC_sub_08002164()) {
                    temp_r1_7 = *var_r6_2;
                    sp7C = (s16) ((u16) temp_r1_7->x >> 4);
                    sp7E = (s16) ((u32) (temp_r1_7->y << 0x14) >> 0x14);
                    if ((s32) sp7C < 0) {
                        sp7C = 0;
                    }
                    if ((s32) sp7E < 0) {
                        sp7E = 0;
                    }
                    spDC = local245CC_gUnk_03003CE0;
                    spE0 = var_r3_6;
                    var_r3_7 = var_r3_6;
                    if (local245CC_sub_0800CB9C() != 0) {
                        var_r3_7 = spE0;
                        if (local245CC_sub_0800CF80() != 0) {
                            temp_r1_8 = *var_r6_2;
                            if (((s32) (temp_r1_8->flags7 << 0x1B) < 0) || (var_r4_2 = spDC, ((temp_r1_8->flags << 0x1A) == 0))) {
                                var_r7_4 += 1;
                                var_r4_2 = spDC;
                            }
                            goto block_253;
                        }
                        var_r1_5 = sp7C - sp8C;
                        if (var_r1_5 < 0) {
                            var_r1_5 = 0 - var_r1_5;
                        }
                        if (var_r1_5 < (s32) (sp94 + 0x20)) {
                            var_r1_6 = sp7E - sp90;
                            if (var_r1_6 < 0) {
                                var_r1_6 = 0 - var_r1_6;
                            }
                            var_r4_2 = spDC;
                            if (var_r1_6 >= (s32) (sp98 + 0x20)) {
                                goto block_240;
                            }
                            goto block_241;
                        }
block_240:
                        var_r4_2 = local245CC_gUnk_03003CE0;
                        if (((u32) ((*var_r6_2)->flags << 0x1A) >> 0x1A) & 0x20) {
block_241:
                            temp_r2_3 = *var_r6_2;
                            if ((s32) (temp_r2_3->flags7 << 0x1B) >= 0) {
                                if (((u32) (temp_r2_3->flags << 0x1A) >> 0x1A) & 0x20) {
                                    if (((u32) ((u8) temp_r2_3->x << 0x1C) >> 0x1C) != 0xC) {
                                        goto block_252;
                                    }
                                    goto block_253;
                                }
                            } else {
                                goto block_252;
                            }
                        }
                    } else {
                        var_r1_7 = sp7C - sp8C;
                        if (var_r1_7 < 0) {
                            var_r1_7 = 0 - var_r1_7;
                        }
                        var_r4_2 = local245CC_gUnk_03003CE0;
                        if (var_r1_7 < (s32) (sp94 + 0x20)) {
                            var_r1_8 = sp7E - sp90;
                            if (var_r1_8 < 0) {
                                var_r1_8 = 0 - var_r1_8;
                            }
                            if ((var_r1_8 < (s32) (sp98 + 0x20)) && (*(u32 *)((u8 *)&local245CC_gUnk_03003CE0->flags + spD4) & 0x400)) {
block_252:
                                var_r7_4 += 1;
                            }
                        }
block_253:
                        if (((u32) ((*var_r6_2)->flags << 0x1A) >> 0x1A) & 0x20) {
                            var_sl_2 += 1;
                        }
                    }
                    if (*(u32 *)((u8 *)&var_r4_2->flags + spD4) & 0x2000) {
                        var_r9_2 += 1;
                    }
                    spE0 = var_r3_7;
                    if (local245CC_sub_0800CF80() != 0) {
                        var_r9_2 = 0;
                    }
                    var_r6_2 = (struct Remote245CC **)((u8 *)var_r6_2 + 0x14C);
                    spD4 += 0x14C;
                    var_r3_6 = var_r3_7 + 1;
                    goto loop_260;
                }
                if ((var_r7_4 == local245CC_sub_08002164()) && (var_sl_2 != local245CC_sub_08002164())) {
                    if ((spA4 == 0) || (spC8 != 0)) {
                        if ((var_sl_2 == 0) && (var_r9_2 != local245CC_sub_08002164())) {
                            spA8 += 1;
                        }
                    } else {
                        spA8 += 1;
                    }
                } else {
                    spA8 = 0;
                }
                if (spA8 > 2U) {
                    local245CC_gUnk_03005CF4->destination = (s32) sp84->destination;
loop_274:
                    if (local245CC_sub_08067DC8() == 0) {
                        local245CC_sub_080003F0();
                        goto loop_274;
                    }
                    goto block_332;
                }
block_276:
                sp7C = (s16) ((s32) temp_r8->x >> 8);
                sp7E = (s16) ((s32) temp_r8->y >> 8);
                if (local245CC_sub_08058DB0() != 0) {
                    goto block_310;
                }
                if (local245CC_sub_0800CCCC() != 0) {
                    goto block_310;
                }
                if (local245CC_sub_0806569C() != 0) {
                    goto block_310;
                }
                if (temp_r8->state == 0xE) {
                    goto block_310;
                }
                var_r0_5 = sp7C - sp8C;
                if (var_r0_5 < 0) {
                    var_r0_5 = 0 - var_r0_5;
                }
                if (var_r0_5 >= sp94) {
                    goto block_310;
                }
                var_r0_6 = sp7E - sp90;
                if (var_r0_6 < 0) {
                    var_r0_6 = 0 - var_r0_6;
                }
                if (var_r0_6 >= sp98) {
block_310:
                    if (spB4 != 0) {
                        spB4 = 0;
                        local245CC_sub_0801A664(0x12, 2);
                    }
                    if (spB0 != 0) {
                        temp_r8->flags &= 0xFEFFFFFF;
                    } else {
                        temp_r8->flags &= 0xFF7FFFFF;
                    }
                } else if (local245CC_sub_0805D37C(temp_r8->x, temp_r8->y, (u32) (temp_r8->remote->flags << 0x1A) >> 0x1A) != 0) {

                } else {
                    temp_r0_5 = temp_r8->state - 2;
                    switch (temp_r0_5) {            /* switch 3 */
                    case 0:                         /* switch 3 */
                    case 2:                         /* switch 3 */
                    case 3:                         /* switch 3 */
                    case 5:                         /* switch 3 */
                    case 6:                         /* switch 3 */
                    case 7:                         /* switch 3 */
                    case 8:                         /* switch 3 */
                    case 9:                         /* switch 3 */
                    case 10:                        /* switch 3 */
                    case 12:                        /* switch 3 */
                        break;
                    default:                        /* switch 3 */
                    case 1:                         /* switch 3 */
                    case 4:                         /* switch 3 */
                    case 11:                        /* switch 3 */
                        temp_r1_9 = temp_r8->flags;
                        if (!(0x400 & temp_r1_9)) {
                            if (spB0 != 0) {
                                temp_r8->flags = temp_r1_9 | 0x01000000;
                            } else {
                                temp_r8->flags = temp_r1_9 | 0x800000;
                            }
                            if (local245CC_sub_0805F184() == 0) {
                                temp_r4_2 = sp88 + 2;
                                local245CC_sub_0801A3D0(temp_r4_2, (u16) (0xF - (local245CC_sub_0801A638(temp_r4_2) >> 1)), 0x12);
                            }
                            if (1 & temp_r8->w14) {
                                temp_r8->flags |= 0x403;
                                local245CC_sub_08067D74();
                                temp_r8->wD8 = 0;
                                temp_r8->state = 0;
                                temp_r8->w26 = 0;
                                temp_r8->w24 = 0;
                                temp_r8->wCE = 0;
                            }
                            spB4 = 1;
                            spAC = 0;
                        } else {
                            temp_r8->flags = temp_r1_9 | 1;
                            temp_r8->state = 0;
                            temp_r0_6 = spAC;
                            spAC = temp_r0_6 + 1;
                            if ((temp_r0_6 > 0x3CU) && (spA8 == 0) && (local245CC_sub_08058DB0() == 0) && (2 & local245CC_gUnk_03001324)) {
                                temp_r8->flags &= 0xFFFFFBFF;
                                local245CC_sub_08057328(spB0, local245CC_sub_08024538);
                            }
                        }
                        break;
                    }
                }
                sp0 = (u32)1;
                local245CC_sub_08065370(&sp10, (u16) spA4, &sp78, &sp7A, sp0);
                sp0 = (u32)1;
                local245CC_sub_08065370(&sp44, 8U, &sp80, &sp82, sp0);
                if (local245CC_sub_0800CD34() != 0) {
                    goto block_328;
                }
                if (local245CC_sub_0800CC98() != 0) {
                    goto block_328;
                }
                if ((local245CC_sub_0800CCCC() == 0) && (temp_r0_7 = local245CC_sub_0800CD8C(), (temp_r0_7 == 0))) {
                    local245CC_sub_0800BC44(sp8C, sp90, 0);
                    temp_r0_8 = (s16) sp8C;
                    spD0 = (s32) temp_r0_8;
                    temp_r0_9 = (s16) sp90;
                    temp_r7 = &sp7E;
                    sp0 = (u32)0x30;
                    sp4 = (void *)temp_r0_7;
                    local245CC_sub_0800BC08(temp_r0_8, temp_r0_9, &sp7C, temp_r7, sp0, (s32)sp4);
                    if (local245CC_gUnk_03002344 & 1) {
                        sp0 = temp_r0_7;
                        sp4 = &sp44.data[0];
                        sp8 = sp44.w8;
                        spC = sp44.w0;
                        local245CC_sub_08007870(sp7C, sp7E, 8U, sp80, sp0, sp4, sp8, spC);
                    }
                    if (spBC != 0) {
                        local245CC_sub_08000AF0(0x1E, sp10.graphics + (spA4 << 5), 1);
                        spBC = 0;
                    }
                    temp_r6_3 = (u8)local245CC_sub_0800BC44(sp8C, sp90, 0);
                    sp0 = (u32)0x30;
                    sp4 = (void *)temp_r0_7;
                    local245CC_sub_0800BC08((s16) spD0, temp_r0_9, &sp7C, temp_r7, sp0, (s32)sp4);
                    if (spCC->wE != 0) {
                        sp0 = (u32) temp_r6_3;
                        sp4 = &sp10.data[0];
                        sp8 = sp10.w8;
                        spC = sp10.w0;
                        local245CC_sub_08008E74(sp7C, sp7E, spA4, sp78, sp0, sp4, sp8, spC);
                    } else {
                        sp0 = (u32) temp_r6_3;
                        sp4 = &sp10.data[0];
                        sp8 = sp10.w8;
                        spC = sp10.w0;
                        local245CC_sub_08007870(sp7C, sp7E, spA4, sp78, sp0, sp4, sp8, spC);
                    }
                } else {
block_328:
                    spBC = 1;
                }
                local245CC_sub_080003F0();
                goto loop_330;
            }
block_332:
            if (((u16) local245CC_gUnk_03005CF4->flags >> 3) & 1) {
                local245CC_sub_0805865C(0x24);
            }
            local245CC_sub_0801A664(0x12, 2);
            spA8 = 9;
            do {
                sp0 = (u32)1;
                local245CC_sub_08065370(&sp10, (u16) spA4, &sp78, &sp7A, sp0);
                if ((local245CC_sub_0800CC98() == 0) && (temp_r0_10 = local245CC_sub_0800CCCC(), (temp_r0_10 == 0))) {
                    if (spBC != 0) {
                        local245CC_sub_08000AF0(0x1E, sp10.graphics + (spA4 << 5), 1);
                        spBC = 0;
                    }
                    sp0 = (u32)0x30;
                    sp4 = (void *)temp_r0_10;
                    local245CC_sub_0800BC08((s16) sp8C, (s16) sp90, &sp7C, &sp7E, sp0, (s32)sp4);
                    temp_r6_4 = (u8)local245CC_sub_0800BC44(sp8C, sp90, 0);
                    if (spCC->wE != 0) {
                        sp0 = (u32) temp_r6_4;
                        sp4 = &sp10.data[0];
                        sp8 = sp10.w8;
                        spC = sp10.w0;
                        local245CC_sub_08008E74(sp7C, sp7E, spA4, sp78, sp0, sp4, sp8, spC);
                    } else {
                        sp0 = (u32) temp_r6_4;
                        sp4 = &sp10.data[0];
                        sp8 = sp10.w8;
                        spC = sp10.w0;
                        local245CC_sub_08007870(sp7C, sp7E, spA4, sp78, sp0, sp4, sp8, spC);
                    }
                } else {
                    spBC = 1;
                }
                local245CC_sub_080003F0();
                temp_r1_10 = spA8 - 1;
                spA8 = temp_r1_10;
            } while (temp_r1_10 != -1U);
block_344:
            temp_r0_11 = sp84->flags;
            temp_r1_11 = temp_r0_11;
            if (temp_r1_11 != 0) {
                local245CC_gUnk_03005CF4->transition = (u32) (temp_r0_11 << 0x10) >> 0x18;
            } else {
                local245CC_gUnk_03005CF4->transition = (u32) temp_r1_11;
            }
            if (spA4 == 0) {
                local245CC_sub_0801E278((u8 *)&local245CC_gUnk_03003CE0[local245CC_sub_080020F4()], 6);
                local245CC_sub_0801E278((u8 *)&local245CC_gUnk_03003CE0[local245CC_sub_080020F4()], 7);
            }
            temp_r8->flags = temp_r8->flags & 0xFF7FFFFF;
            if (local245CC_gUnk_030056FC != 0) {
                do {
                    local245CC_sub_080003F0();
                } while (local245CC_gUnk_030056FC != 0);
            }
            local245CC_sub_0800D014();
            var_r1_9 = 0;
            do {
                var_r2_3 = 0;
loop_356:
                local245CC_gUnk_03005CF4->states[var_r2_3 + (var_r1_9 * 5)] = 0;
                var_r2_3 += 1;
                if (var_r2_3 <= 4U) {
                    goto loop_356;
                }
                var_r1_9 += 1;
            } while (var_r1_9 <= 0x13U);
            local245CC_sub_080003F0();
            local245CC_sub_0801A664(0x12, 2);
            local245CC_sub_08057624(3);
        }
    }
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080245CC);
#endif
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080257D4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
void sub_08026338(void *arg) {
    s32 *gp;
    s32 off;
    s32 base;
    void *temp_r0;

    gp = &gUnk_03005CF4;
    off = 0x17BC;
    if (sub_08000470(*gp + off) != 0) {
        sub_080003A8(*gp + off);
    }
    *(void **)(*gp + 0x17C8) = sub_08025890;
    temp_r0 = sub_08001494(0x400);
    base = *gp;
    *(void **)(base + 0x17DC) = temp_r0;
    *(void **)(base + 0x17CC) = (void *) (temp_r0 + 0x3FC);
    *(s32 *)(base + 0x17C4) = 0x46;
    *(s32 *)(base + 0x17E0) = 0;
    sub_08000274((M2C_UNK *) (base + off), (s32) arg);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
void sub_080267DC(void) {
    s32 *gp;
    s32 off;
    s32 base;
    void *temp_r0;

    gp = &gUnk_03005CF4;
    off = 0x17BC;
    if (sub_08000470(*gp + off) != 0) {
        sub_080003A8(*gp + off);
    }
    *(void **)(*gp + 0x17C8) = sub_080263B4;
    temp_r0 = sub_08001494(0x400);
    base = *gp;
    *(void **)(base + 0x17DC) = temp_r0;
    *(void **)(base + 0x17CC) = (void *) (temp_r0 + 0x3FC);
    *(s32 *)(base + 0x17C4) = 0x46;
    *(void **)(base + 0x17E0) = sub_0805A6A0;
    sub_08000274((M2C_UNK *) (base + off), (s32) sub_0805A6A0);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026858);
void sub_08026C54(void) {
    s32 *new_var2;
    s32 base;
    s32 p;
    int new_var;
    if (sub_08000470(gUnk_03005CF4 + 0x17E4) != 0) {
        sub_080003A8(gUnk_03005CF4 + 0x17E4);
    }
    base = gUnk_03005CF4;
    *((s32 *)(base + 0x17F0)) = (s32)sub_08026858;
    p = (s32)sub_08001494(0x400);
    new_var = 0x1804;
    base = gUnk_03005CF4;
    *((s32 *)(base + new_var)) = p;
    *((s32 *)(base + 0x17F4)) = p + 0x3FC;
    *((s32 *)(base + 0x17EC)) = 0x46;
    *((s32 *)(base + 0x1808)) = 0;
    new_var2 = &base;
    sub_08000274((*new_var2) + 0x17E4, 0);
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026CD0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_0802704C);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080277E0);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027B50);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027C1C);
struct E8368 { u16 h; u8 a; u8 c; };
struct GS8368 { u8 pad[0x1E4C]; u32 cnt; struct E8368 e[11]; };
extern struct GS8368 *gGS8368 asm("gUnk_03005CF4");
void sub_08028368(u32 a, u32 b, u32 c)
{
    if (gGS8368->cnt > 10)
        return;
    gGS8368->e[gGS8368->cnt].a = a;
    gGS8368->e[gGS8368->cnt].c = c;
    gGS8368->e[gGS8368->cnt].h = b;
    gGS8368->cnt++;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080283C4);
void sub_08028498(u16 arg0)
{
  u32 *flagp;
  u32 mask;
  u32 flags;
  u32 *tbl;
  u32 off;
  u16 idx;
  idx = arg0 - 4;
  flagp = &gUnk_03005CFC;
  mask = 1 << idx;
  flags = *flagp;
  if (flags & mask)
  {
    tbl = &gUnk_03005D00;
    off = (idx * 3) * 4;
    if ((*((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8))) <= 1)
    {
      *((u32 *) (((u8 *) tbl) + off)) = 0;
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 4)) = 0;
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8)) = 0;
      *flagp = flags & (~mask);
    }
    else
    {
      *((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8)) = (*((u32 *) ((((u8 *) (&gUnk_03005D00)) + off) + 8))) - 1;
    }
  }
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080284F4);
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08028830);
void sub_08028918(void) {
    s32 keep;
    s32 p;
    s32 q;
    u32 i;

    keep = sub_0800048C();
    p = gUnk_03005CF4 + 0xE34;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(p)) {
                sub_080003A8(p);
            }
        }
        i++;
        p += 0x28;
    } while (i <= 0x1D);
    p = gUnk_03005CF4 + 0x12E4;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(p)) {
                sub_080003A8(p);
            }
        }
        i++;
        p += 0x28;
    } while (i <= 0x1D);
    q = gUnk_03005CF4 + 0x7A4;
    i = 0;
    do {
        if (p != keep) {
            if (sub_08000470(q + 0x48)) {
                sub_080003A8(q + 0x48);
            }
        }
        i++;
        q += 0x70;
    } while (i <= 0xE);
    gUnk_03005CF0 = 0;
}
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080289C0);
