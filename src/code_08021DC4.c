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
extern void t22_bc08(s16, s16, s16 *, s16 *, u32, s32) asm("sub_0800BC08");
void t22_2258C(s32, s32) asm("sub_0802258C");
void t22_2258C(s32 arg0, s32 arg1)
{
  s32 *new_var;
  s16 x;
  s16 y;
  void *ctx;
  s32 dy;
  u32 i;
  s32 z;
  ctx = sub_080653CC();
  if (1)
  {
    dy = 8;
    dy = (arg0 >> 16) << dy;
    i = 0;
    while ((sub_0800CB78() == 0) && ((i++) <= 19))
    {
      if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0))
      {
        z = sub_0800CCCC();
        if (z == 0)
        {
          t22_bc08((s16) (*(new_var = &arg0)), (s16) (dy >> 8), &x, &y, 16, z);
          sub_08065230(ctx, x, y, 31, z);
        }
      }
      dy -= 128;
      sub_080003F0();
    }

  }
  gUnk_03005CE4 &= ~(1 << arg1);
}
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
struct T22Copy8 { u32 w[2]; };
struct T22Item226A4 { u32 f0,f4; u16 f8,fA,fC; u8 padE[18]; };
struct T22Save226A4 { u8 pad0[0xDA]; u16 fDA; u16 variants[10]; u8 padF0[0xCC]; u8 bytes[10]; u8 pad1C6[0x16]; struct T22Item226A4 items[16]; };
extern struct T22Save226A4 *t22_save226A4 asm("gUnk_03004210");
extern struct T22Item226A4 *t22_items226A4 asm("gUnk_03005D58");
struct T22Inv226A4 { u32 w[10]; };
struct T22Slot226A4 { u32 f0; u8 pad[108]; };
struct T22State226A4 { u16 f0; u16 f2; u16 f4; u8 pad6[2]; u16 f8; u8 padA[4]; u16 variantsE[10]; u16 variants22[10]; u16 f36; u32 f38; u8 pad3C[4]; u32 f40; u32 f44; u32 f48; u32 f4C; u32 f50; u32 f54; u8 pad58[20]; u32 f6C; u32 f70; u8 pad74[24]; u16 f8C; u16 f8E; u16 f90; u16 f92; u16 f94; u8 pad96[2]; u32 f98; u32 f9C; struct T22Copy8 fA0; u8 padA8[160]; u16 f148; u16 f14A; u8 pad14C[0xE0]; u8 bytes22C[10]; u8 pad236[0x216]; struct T22Inv226A4 inv[8]; u8 pad58C[0x190]; u16 * f71C; u8 pad720[0xC0]; struct T22Slot226A4 slots[15]; };

struct T22Copy32 { u32 w[8]; };
struct T22Copy40 { u32 w[10]; };
struct T22TaskRec { u32 a,b,c; };
extern struct T22State226A4 *t22_gs asm("gUnk_03005CF4");
struct T22Player226A4 { u8 pad0[0x2C]; u16 f2C,f2E; u8 pad30[4]; struct T22Inv226A4 *f34; u8 pad38[0x54]; s32 f8C,f90; u8 pad94[16]; struct T22Copy8 fA4; u8 padAC[0x16]; u16 fC2,fC4,fC6; u8 padC8[0x84]; };
extern struct T22Player226A4 t22_players[] asm("gUnk_03003CE0");
extern struct T22TaskRec t22_tasks[] asm("gUnk_03005700");
extern u16 t22_seq asm("gUnk_03005D5C");
extern u16 t22_tiles[] asm("gUnk_03003170");
extern void t22_23274(u32,s32,s32) asm("sub_08023274");
extern void t22_22E60(u32,s32) asm("sub_08022E60");
extern void t22_29A7C(s32,s32,s32) asm("sub_08029A7C");
extern void t22_29CEC(s32,s32,s32) asm("sub_08029CEC");
struct T22Rec226A4;
struct T22CB226A4 { s32 (*fn)(struct T22Rec226A4 *); u8 pad[0x20]; };
struct T22Rec226A4 { u16 id; u8 pad[0x22]; struct T22CB226A4 cb[1]; };
extern u16 t22_variant226A4(u16) asm("sub_0805A4A0");
void sub_080226A4(void) {
    u16 x,y;
    void *ctx;
    register s32 player asm("sl");
    u32 i, off, nv;
    s32 result;
    s32 px,py;
    u16 mask; register u32 n asm("r2");
    struct T22Item226A4 *item;
    u8 *p,*q,*r;
    struct T22Player226A4 *pl;
    struct T22Rec226A4 *rec;
    s32 (*fn)(struct T22Rec226A4 *);
    ctx=sub_080653CC();
    player=sub_080020F4();
    asm("" : "+r"(player));
    t22_gs->f0=0;
    t22_gs->f2=0;
    t22_gs->f8=9;
    t22_gs->f38=0;
    t22_gs->f48=0;
    t22_gs->f4C=0x100001;
    t22_gs->f36=0;
    t22_gs->f4=1;
    t22_gs->f44=0;
    t22_gs->f54=0;
    t22_gs->f6C=0;
    gUnk_03005CF8=0;
    y=0;
    x=0;
    i=0;
    do { t22_gs->slots[i].f0=0; i++; } while(i<=14);
    { struct T22TaskRec *t; register u32 zero asm("r1");
    i=0; zero=0; asm("" : "+r"(zero)); t=t22_tasks;
    do { t->c=zero; t->b=zero; t->a=zero; t++; i++; } while(i<=2); }
    while(sub_08067C18()==0) sub_080003F0();
    while(sub_08067C08()==0) {
        if(sub_0800CB9C()!=0) {
            sub_08065370(ctx,33,(s32)&x,(s32)&y,1);
            sub_08065230(ctx,120,100,33,x);
        }
        sub_080003F0();
    }
    sub_08067BF8();
    if(sub_08002204()!=0) sub_08066624();
    sub_08057624(5);
    while(sub_08067C18()==0) sub_080003F0();
    while(sub_08067C08()==0) sub_080003F0();
    sub_08067BF8();
    if(sub_0800CB9C()!=0) {
        if(sub_08057AE8(7)!=0) sub_08057A5C(21);
        sub_08057AE8(21);
        sub_0805C7B8();
        i=0;
        do { t22_save226A4->items[i].fA=0; t22_save226A4->items[i].fC=0; i++; } while(i<=15);
    } else memcpy(((u8 *)t22_gs)+0x70,t22_save226A4,0x51C);
    t22_gs->f14A=t22_save226A4->fDA;
    switch(t22_gs->f70) {
    case 0: case 2:
        sub_08057170(); sub_080572A4();
        if(sub_0800CE30()!=0 && sub_08057AE8(39)==0) { sub_080579D8(39); sub_0805C7B8(0); }
        t22_23274(0,4,1);
        t22_gs->f36=0;
        sub_0800CCDC();
        t22_gs->f50=sub_08057C0C();
        i=0;
        do {
            t22_items226A4[i]=t22_save226A4->items[i];
            item=(struct T22Item226A4 *)((i<<5)+(u32)t22_items226A4);
            mask=item->f8&32;
            if(mask==0) item->fA=mask;
            i++;
        } while(i<=15);
        { register u16 *seqPtr asm("r4"); register u32 next asm("r0");
        t22_seq=1; i=0; seqPtr=&t22_seq; asm("" : "+r"(seqPtr));
        do {
            t22_items226A4[i]=t22_save226A4->items[i];
            item=(struct T22Item226A4 *)((i<<5)+(u32)t22_items226A4);
            if(item->fA&1) { n=item->fC; asm("" : "+r"(n)); if(n>t22_seq) *seqPtr=n; }
            i++;
        } while(i<=15);

        next=*seqPtr+1; *seqPtr=next; next<<=16; asm("" : "+r"(next));
        if(next>0xFFFE0000U) *seqPtr=1;
        }
        break;
    case 1:
        sub_08057170(); sub_080572A4(); t22_22E60(12,1);
        if(sub_0800CE30()!=0) { if(sub_08057AE8(39)==0) { sub_080579D8(39); sub_0805C7B8(0); } }
        else sub_0805C7B8(0);
        t22_gs->f36=1;
        t22_gs->f70=0;
        t22_gs->f50=sub_08057C0C();
        t22_gs->f8E=0xFFFF;
        break;
    case 3: {
        s32 selected;
        t22_23274(0,4,1);
        t22_gs->f36=0;
        asm("" : : "r"(t22_players));
        selected=player;
        pl=&t22_players[selected];
        pl->fA4=t22_gs->fA0;
        pl->f2E=t22_gs->f8C;
        pl->f2C=t22_gs->f8E;
        pl->fC4=t22_gs->f90;
        pl->fC2=t22_gs->f92;
        pl->fC6=t22_gs->f94;
        i=0;
        do { t22_players[selected].f34[i]=t22_gs->inv[i]; i++; } while(i<=7);
        { register u16 *seqPtr asm("r4"); register u32 next asm("r0");
        t22_seq=1; i=0; { register struct T22Save226A4 **savedAddr asm("r7")=&t22_save226A4; asm("" : : "r"(savedAddr)); { register struct T22Save226A4 **cache asm("ip")=&t22_save226A4; asm("" : : "r"(cache)); } } seqPtr=&t22_seq; asm("" : "+r"(seqPtr));
        do {
            t22_items226A4[i]=t22_save226A4->items[i];
            item=(struct T22Item226A4 *)((i<<5)+(u32)t22_items226A4);
            if(item->fA&1) { n=item->fC; asm("" : "+r"(n)); if(n>t22_seq) *seqPtr=n; }
            i++;
        } while(i<=15);

        next=*seqPtr+1; *seqPtr=next; next<<=16; asm("" : "+r"(next));
        if(next>0xFFFE0000U) *seqPtr=1;
        }
        i=0;
        do { t22_gs->variants22[i]=t22_save226A4->variants[i]; i++; } while(i<=9);
        gUnk_03003478=t22_gs->f9C;
        t22_gs->f4=1|t22_gs->f148;
        t22_gs->f38=t22_gs->f98;
        t22_gs->f50=sub_08057C0C();
        sub_0800CDE4(); sub_0800CE54();
        if(sub_08057314()!=0) { sub_080267DC(); sub_0800CEFC(); } else sub_080657C4(player,1);
        sub_0800CCCC();
        break;
    }
    case 4:
        sub_0802A228(t22_gs->f8C,t22_gs->f8E);
        gUnk_03003478=t22_gs->f9C;
        { register u16 *seqPtr asm("r4"); register u32 next asm("r0");
        t22_seq=1; i=0;
        do {
            t22_items226A4[i]=t22_save226A4->items[i];
            item=(struct T22Item226A4 *)((i<<5)+(u32)t22_items226A4);
            mask=item->fA&1; seqPtr=&t22_seq; asm("" : "+r"(seqPtr));
            if(mask) { n=item->fC; asm("" : "+r"(n)); { register u32 read asm("r0")=*seqPtr; asm("" : "+r"(read)); if(n>read) *seqPtr=n; } }
            i++;
        } while(i<=15);

        next=*seqPtr+1; *seqPtr=next; next<<=16; asm("" : "+r"(next));
        if(next>0xFFFE0000U) *seqPtr=1;
        }
        i=0;
        do { t22_gs->variants22[i]=t22_save226A4->variants[i]; i++; } while(i<=9);
        i=0;
        do { t22_gs->bytes22C[i]=t22_save226A4->bytes[i]; i++; } while(i<=9);
        break;
    }
    while(sub_0800CB78()==0) {
        rec=(struct T22Rec226A4 *)t22_gs->f71C;
        while(rec->id!=0) {
            switch(rec->id) {
            case 2: break;
            case 7: case 1:
                if(sub_0800CCCC()==0) {
                    fn=rec->cb[t22_variant226A4(rec->id)].fn;
                    result=fn(rec);
                } else {
                    fn=rec->cb[t22_gs->f36].fn;
                    if(sub_08056E90()!=0 && t22_gs->f40!=0x92BC) sub_080277E0(rec);
                    else result=fn(rec);
                    { register s32 test asm("r7")=result; asm("" : : "r"(test)); if(test!=0) sub_080570DC(0); }
                }
                break;
            }
            { register u32 step asm("r0")=0x124; asm("" : "+r"(step)); rec=(struct T22Rec226A4 *)((u8 *)rec+step); }
        }
        if(sub_0800BA6C()!=0 && !(sub_0800CDC0()!=0 && gUnk_030056FC==0)) {
            s32 current=player;
            px=t22_players[current].f8C;
            py=t22_players[current].f90;
            switch((u8)sub_0800BCA0(px,py,sub_0800CCCC())-2U) {
            case 0:
                if(sub_08000440(0x514C8)!=0) sub_0800A03C();
                if(t22_tiles[0x50]==2 && t22_tiles[0x54]==0) t22_29A7C(0,60,0);
                break;
            case 1:
                if(sub_08000440(0x514C8)!=0) sub_0800A03C();
                if(t22_tiles[0x50]==2 && t22_tiles[0x54]==0) t22_29A7C(6,45,0);
                break;
            case 2:
                if(sub_08000440(0x514C8)!=0) sub_0800A03C();
                if((t22_tiles[0x50]==0 || t22_tiles[0x50]==2) && t22_tiles[0x54]==0) t22_29CEC(1,10,0);
                break;
            case 3:
                if(sub_08000440(0x514C8)!=0) sub_0800A03C();
                if(t22_tiles[0x50]==0 && t22_tiles[0x54]==0) t22_29CEC(1,8,0);
                break;
            case 4:
                if(sub_08000440(0x514C8)!=0) sub_0800A03C();
                if(t22_tiles[0x50]==2 && t22_tiles[0x54]==0) t22_29CEC(1,6,0);
                break;
            }
        }
        sub_080003F0();
    }
}


struct T22S22E60 { u16 f0,f2; u8 pad4[4]; u16 f8; u8 padA[4]; u16 fE[10]; u16 f22[10]; u16 f36; u8 pad38[8]; s32 f40; u8 pad44[0x6D8]; void *f71C; };
struct T22R22E60 { u16 id, count; u8 pad[0x120]; };
extern struct T22S22E60 *t22_state22E60 asm("gUnk_03005CF4");
extern void *t22_gUnk_084F0AC0[] asm("gUnk_084F0AC0");
extern void *t22_gUnk_084F26E4[] asm("gUnk_084F26E4");
extern void *t22_gUnk_084F4818[] asm("gUnk_084F4818");
extern void *t22_gUnk_084F794C[] asm("gUnk_084F794C");
extern void *t22_gUnk_084FA298[] asm("gUnk_084FA298");
extern void *t22_gUnk_084FD06C[] asm("gUnk_084FD06C");
extern void *t22_gUnk_0850008C[] asm("gUnk_0850008C");
extern void *t22_gUnk_085028BC[] asm("gUnk_085028BC");
extern void *t22_gUnk_085060D4[] asm("gUnk_085060D4");
extern void *t22_gUnk_08508B54[] asm("gUnk_08508B54");
extern void *t22_gUnk_0850C6E8[] asm("gUnk_0850C6E8");
extern void *t22_gUnk_0850D4EC[] asm("gUnk_0850D4EC");
extern void *t22_gUnk_0850DE28[] asm("gUnk_0850DE28");
extern void *t22_gUnk_0850EAC4[] asm("gUnk_0850EAC4");
extern void *t22_gUnk_0850ED20[] asm("gUnk_0850ED20");
extern void *t22_gUnk_0850F894[] asm("gUnk_0850F894");
extern void *t22_gUnk_08510530[] asm("gUnk_08510530");
extern void *t22_gUnk_08511538[] asm("gUnk_08511538");
extern void *t22_gUnk_08512670[] asm("gUnk_08512670");
extern void *t22_gUnk_08513680[] asm("gUnk_08513680");
extern void *t22_gUnk_08514FAC[] asm("gUnk_08514FAC");
extern void *t22_gUnk_08515FCC[] asm("gUnk_08515FCC");
extern void *t22_gUnk_08517220[] asm("gUnk_08517220");
extern void *t22_gUnk_0851810C[] asm("gUnk_0851810C");
void t22_22E60(u32,s32) asm("sub_08022E60");
void t22_22E60(u32 in0,s32 arg2) {
    register u32 arg0 asm("r4")=in0;
    u32 i;
    u32 rnd;
    register u32 off asm("r5");
    register struct T22R22E60 *r asm("r6");
    u16 *base;
    u16 *p;
    register void **dst asm("r0");
    register void **table asm("r1");
    asm("" : "+r"(arg0));
    if(arg2 != 0) {
        t22_state22E60->f0=arg0;
        t22_state22E60->f40=0;
        i=0;
        do {
            t22_state22E60->fE[i]=0;
            i++;
        } while(i<=9);
        switch(arg0) {
        case 0:
            sub_0800CCDC();
            t22_state22E60->f71C=t22_gUnk_084F0AC0[0];
            t22_state22E60->f2=0;
            t22_state22E60->f36=0;
            break;
        case 1:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F26E4;
            goto set;
        case 2:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F4818;
            goto set;
        case 3:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F794C;
            goto set;
        case 4:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084FA298;
            goto set;
        case 5:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084FD06C;
            goto set;
        case 6:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850008C;
            goto set;
        case 7:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_085028BC;
            goto set;
        case 8:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_085060D4;
            goto set;
        case 9:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08508B54;
            goto set;
        case 10:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850C6E8;
            goto set;
        case 11:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850D4EC;
            goto set;
        case 12:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850DE28;
            goto set;
        case 13:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850EAC4;
            goto set;
        case 14:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850ED20;
            goto set;
        case 15:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850F894;
            goto set;
        case 16:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08510530;
            goto set;
        case 17:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08511538;
            goto set;
        case 18:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08512670;
            goto set;
        case 19:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08513680;
            goto set;
        case 20:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08514FAC;
            goto set;
        case 21:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08515FCC;
            goto set;
        case 22:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08517220;
            goto set;
        case 23:
            sub_0800CCEC();
            dst=(void **)t22_state22E60;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0851810C;
            goto set;
        set:
            asm("" : : "r"(dst), "r"(table));
            *dst=table[0];
            break;
        }
    }
    if(sub_08002204()!=0) {
        t22_state22E60->f8=9;
        r=t22_state22E60->f71C;
        t22_state22E60->f22[0]=1;
        if(arg0==0) return;
        i=0;
again:
        if(r->id!=0) {
            rnd=sub_080008C8();
            base=(u16 *)t22_state22E60;
            off=r->id*2;
            asm("" : : "r"(base), "r"(off));
            base+=17;
            *(u16 *)((u8 *)base+off)=(u16)rnd % r->count;
            p=&base[r->id];
            (*p)++;
            i++;
            r++;
            asm("" : : "r"(r));
            if(i<=9) goto again;
        }
        if(sub_0800CB9C()==0) return;
        while(sub_08065FE8()==0) sub_080003F0();
        while(sub_08067C18()==0) sub_080003F0();
        while(sub_08067C08()==0) sub_080003F0();
        sub_08067BF8();
        return;
    }
    if(arg0==0 || sub_0800CB9C()==0) return;
    while(sub_08067C18()==0) sub_080003F0();
    while(sub_08067C08()==0) sub_080003F0();
    sub_08067BF8();
}
struct T22S23274 { u16 f0,f2; u8 pad4[4]; u16 f8; u8 padA[4]; u16 fE[10]; u16 f22[10]; u16 f36; u8 pad38[8]; s32 f40; u8 pad44[0x6D8]; void *f71C; };
struct T22R23274 { u16 id, count; u8 pad[0x120]; };
extern struct T22S23274 *t22_state23274 asm("gUnk_03005CF4");
extern void *t22_gUnk_084F0AC0[] asm("gUnk_084F0AC0");
extern void *t22_gUnk_084F26E4[] asm("gUnk_084F26E4");
extern void *t22_gUnk_084F4818[] asm("gUnk_084F4818");
extern void *t22_gUnk_084F794C[] asm("gUnk_084F794C");
extern void *t22_gUnk_084FA298[] asm("gUnk_084FA298");
extern void *t22_gUnk_084FD06C[] asm("gUnk_084FD06C");
extern void *t22_gUnk_0850008C[] asm("gUnk_0850008C");
extern void *t22_gUnk_085028BC[] asm("gUnk_085028BC");
extern void *t22_gUnk_085060D4[] asm("gUnk_085060D4");
extern void *t22_gUnk_08508B54[] asm("gUnk_08508B54");
extern void *t22_gUnk_0850C6E8[] asm("gUnk_0850C6E8");
extern void *t22_gUnk_0850D4EC[] asm("gUnk_0850D4EC");
extern void *t22_gUnk_0850DE28[] asm("gUnk_0850DE28");
extern void *t22_gUnk_0850EAC4[] asm("gUnk_0850EAC4");
extern void *t22_gUnk_0850ED20[] asm("gUnk_0850ED20");
extern void *t22_gUnk_0850F894[] asm("gUnk_0850F894");
extern void *t22_gUnk_08510530[] asm("gUnk_08510530");
extern void *t22_gUnk_08511538[] asm("gUnk_08511538");
extern void *t22_gUnk_08512670[] asm("gUnk_08512670");
extern void *t22_gUnk_08513680[] asm("gUnk_08513680");
extern void *t22_gUnk_08514FAC[] asm("gUnk_08514FAC");
extern void *t22_gUnk_08515FCC[] asm("gUnk_08515FCC");
extern void *t22_gUnk_08517220[] asm("gUnk_08517220");
extern void *t22_gUnk_0851810C[] asm("gUnk_0851810C");
void t22_23274(u32,s32,s32) asm("sub_08023274");
void t22_23274(u32 in0,s32 in1,s32 arg2) {
    register u32 arg0 asm("r5")=in0;
    register s32 arg1 asm("r4")=in1;
    u32 i;
    u32 rnd;
    register u32 off asm("r5");
    register struct T22R23274 *r asm("r6");
    u16 *base;
    u16 *p;
    register void **dst asm("r1");
    register void **table asm("r2");
    asm("" : "+r"(arg0), "+r"(arg1));
    if(arg2 != 0) {
        t22_state23274->f0=arg0;
        t22_state23274->f40=arg1;
        i=0;
        do {
            t22_state23274->f22[i]=0;
            t22_state23274->fE[i]=0;
            i++;
        } while(i<=9);
        switch(arg0) {
        case 0:
            sub_0800CCDC();
            t22_state23274->f71C=t22_gUnk_084F0AC0[arg1];
            t22_state23274->f36=0;
            t22_state23274->f2=arg1;
            break;
        case 1:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F26E4;
            goto set;
        case 2:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F4818;
            goto set;
        case 3:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F794C;
            goto set;
        case 4:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084FA298;
            goto set;
        case 5:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084FD06C;
            goto set;
        case 6:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850008C;
            goto set;
        case 7:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_085028BC;
            goto set;
        case 8:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_085060D4;
            goto set;
        case 9:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08508B54;
            goto set;
        case 10:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850C6E8;
            goto set;
        case 11:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850D4EC;
            goto set;
        case 12:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850DE28;
            goto set;
        case 13:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850EAC4;
            goto set;
        case 14:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850ED20;
            goto set;
        case 15:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850F894;
            goto set;
        case 16:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08510530;
            goto set;
        case 17:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08511538;
            goto set;
        case 18:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08512670;
            goto set;
        case 19:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08513680;
            goto set;
        case 20:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08514FAC;
            goto set;
        case 21:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08515FCC;
            goto set;
        case 22:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08517220;
            goto set;
        case 23:
            sub_0800CCEC();
            dst=(void **)t22_state23274;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0851810C;
            goto set;
        set:
            asm("" : : "r"(dst), "r"(table));
            *dst=table[arg1];
            break;
        }
    }
    asm("" : : "r"(arg0), "r"(arg1));
    if(sub_08002204()!=0) {
        t22_state23274->f8=9;
        r=t22_state23274->f71C;
        t22_state23274->f22[0]=1;
        i=0;
again:
        if(r->id!=0) {
            rnd=sub_080008C8();
            base=(u16 *)t22_state23274;
            off=r->id*2;
            asm("" : : "r"(base), "r"(off));
            base+=17;
            *(u16 *)((u8 *)base+off)=(u16)rnd % r->count;
            p=&base[r->id];
            (*p)++;
            i++;
            r++;
            asm("" : : "r"(r));
            if(i<=9) goto again;
        }
        while(sub_08065FE8()==0) sub_080003F0();
        while(sub_08067C18()==0) sub_080003F0();
        while(sub_08067C08()==0) sub_080003F0();
        sub_08067BF8();
        return;
    }
    while(sub_08067C18()==0) sub_080003F0();
    while(sub_08067C08()==0) sub_080003F0();
    sub_08067BF8();
}
struct T22S23684 { u16 f0,f2; u8 pad4[4]; u16 f8; u8 padA[4]; u16 fE[10]; u16 f22[10]; u16 f36; u8 pad38[8]; s32 f40; u8 pad44[0x6D8]; void *f71C; };
struct T22R23684 { u16 id, count; u8 pad[0x120]; };
extern struct T22S23684 *t22_state23684 asm("gUnk_03005CF4");
extern void *t22_gUnk_084F0AC0[] asm("gUnk_084F0AC0");
extern void *t22_gUnk_084F26E4[] asm("gUnk_084F26E4");
extern void *t22_gUnk_084F4818[] asm("gUnk_084F4818");
extern void *t22_gUnk_084F794C[] asm("gUnk_084F794C");
extern void *t22_gUnk_084FA298[] asm("gUnk_084FA298");
extern void *t22_gUnk_084FD06C[] asm("gUnk_084FD06C");
extern void *t22_gUnk_0850008C[] asm("gUnk_0850008C");
extern void *t22_gUnk_085028BC[] asm("gUnk_085028BC");
extern void *t22_gUnk_085060D4[] asm("gUnk_085060D4");
extern void *t22_gUnk_08508B54[] asm("gUnk_08508B54");
extern void *t22_gUnk_0850C6E8[] asm("gUnk_0850C6E8");
extern void *t22_gUnk_0850D4EC[] asm("gUnk_0850D4EC");
extern void *t22_gUnk_0850DE28[] asm("gUnk_0850DE28");
extern void *t22_gUnk_0850EAC4[] asm("gUnk_0850EAC4");
extern void *t22_gUnk_0850ED20[] asm("gUnk_0850ED20");
extern void *t22_gUnk_0850F894[] asm("gUnk_0850F894");
extern void *t22_gUnk_08510530[] asm("gUnk_08510530");
extern void *t22_gUnk_08511538[] asm("gUnk_08511538");
extern void *t22_gUnk_08512670[] asm("gUnk_08512670");
extern void *t22_gUnk_08513680[] asm("gUnk_08513680");
extern void *t22_gUnk_08514FAC[] asm("gUnk_08514FAC");
extern void *t22_gUnk_08515FCC[] asm("gUnk_08515FCC");
extern void *t22_gUnk_08517220[] asm("gUnk_08517220");
extern void *t22_gUnk_0851810C[] asm("gUnk_0851810C");
void t22_23684(u32,s32,s32) asm("sub_08023684");
void t22_23684(u32 in0,s32 in1,s32 arg2) {
    register u32 arg0 asm("r6")=in0;
    register s32 arg1 asm("r4")=in1;
    u32 i;
    u32 rnd;
    register u32 off asm("r5");
    struct T22R23684 *r;
    u16 *base;
    u16 *p;
    register void **dst asm("r1");
    register void **table asm("r2");
    asm("" : "+r"(arg0), "+r"(arg1));
    if(arg2 != 0) {
        t22_state23684->f0=arg0;
        t22_state23684->f40=arg1;
        i=0;
        do {
            t22_state23684->f22[i]=0;
            t22_state23684->fE[i]=0;
            i++;
        } while(i<=9);
        switch(arg0) {
        case 0:
            sub_0800CCDC();
            t22_state23684->f71C=t22_gUnk_084F0AC0[arg1];
            t22_state23684->f36=0;
            t22_state23684->f2=arg1;
            break;
        case 1:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F26E4;
            goto set;
        case 2:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F4818;
            goto set;
        case 3:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084F794C;
            goto set;
        case 4:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084FA298;
            goto set;
        case 5:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_084FD06C;
            goto set;
        case 6:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850008C;
            goto set;
        case 7:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_085028BC;
            goto set;
        case 8:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_085060D4;
            goto set;
        case 9:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08508B54;
            goto set;
        case 10:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850C6E8;
            goto set;
        case 11:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850D4EC;
            goto set;
        case 12:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850DE28;
            goto set;
        case 13:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850EAC4;
            goto set;
        case 14:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850ED20;
            goto set;
        case 15:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0850F894;
            goto set;
        case 16:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08510530;
            goto set;
        case 17:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08511538;
            goto set;
        case 18:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08512670;
            goto set;
        case 19:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08513680;
            goto set;
        case 20:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08514FAC;
            goto set;
        case 21:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08515FCC;
            goto set;
        case 22:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_08517220;
            goto set;
        case 23:
            dst=(void **)t22_state23684;
            dst=(void **)((u8 *)dst+0x71C);
            table=t22_gUnk_0851810C;
            goto set;
        set:
            asm("" : : "r"(dst), "r"(table));
            *dst=table[arg1];
            break;
        }
    }
    asm("" : : "r"(arg0), "r"(arg1));
    if(sub_08002204()!=0) {
        t22_state23684->f8=9;
        r=t22_state23684->f71C;
        t22_state23684->f22[0]=1;
        i=0;
again:
        if(r->id!=0) {
            rnd=sub_080008C8();
            base=(u16 *)t22_state23684;
            off=r->id*2;
            asm("" : : "r"(base), "r"(off));
            base+=17;
            *(u16 *)((u8 *)base+off)=(u16)rnd % r->count;
            p=&base[r->id];
            (*p)++;
            i++;
            r++;
            if(i<=9) goto again;
        }
        while(sub_08065FE8()==0) sub_080003F0();
        while(sub_08067C18()==0) sub_080003F0();
        while(sub_08067C08()==0) sub_080003F0();
        sub_08067BF8();
        return;
    }
    while(sub_08067C18()==0) sub_080003F0();
    while(sub_08067C08()==0) sub_080003F0();
    sub_08067BF8();
}
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
    register struct Event23A3C *var_r4 asm("r4");
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
    register u32 var_r6 asm("r6");
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
    register struct Player *temp_r8 asm("r8");
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
    { volatile s32 result = sub_0800CF80(); if (result) sp10 = 0xF0; else sp10 = 0x18; }
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
void local245CC_sub_08007870(s32,s16,u32,u16,u32,void *,s32,s32) asm("sub_08007870");
void local245CC_sub_08008E74(s16,s16,u32,u16,u32,void *,s32,s32) asm("sub_08008E74");
void local245CC_sub_0800BC08(s16,s16,s16 *,s16 *,u32,s32) asm("sub_0800BC08");
void local245CC_sub_08057DD0(u32,u32,s32,s32,void (*)(s32),struct Input245CC *) asm("sub_08057DD0");
void local245CC_sub_08065370(struct Anim245CC *,u32,u16 *,u16 *,u32) asm("sub_08065370");
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
    s32 var_r0_4;
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
                local245CC_sub_08065370(&sp44, spB8, &sp78, &sp7A, sp0);
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
            local245CC_sub_08065370(&sp10, spA4, &sp78, &sp7A, sp0);
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
                local245CC_sub_08065370(&sp10, spA4, &sp78, &sp7A, sp0);
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
                local245CC_sub_08065370(&sp10, spA4, &sp78, &sp7A, sp0);
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
extern void t24_callback257D4(void) asm("sub_080245CC");
extern u32 t24_state asm("gUnk_03005CF4");
void t24_start257D4(u32 arg0, s32 param1) asm("sub_080257D4");
void t24_start257D4(u32 arg0, s32 param1) {
    register s32 arg1 asm("r6") = param1;
    register s32 temp_r0 asm("r8");
    register s32 step asm("r4");
    register s32 temp_r2 asm("r2");
    s32 temp_r5;
    register u32 mem asm("r1");
    register char *base asm("r3");
    register u32 addr asm("r0");
    asm("" : "+r"(arg1) : "r"(&t24_state));
    step = arg1 * 4;
    asm("" : "+r"(step));
    temp_r0 = (step + arg1) * 8;
    asm("" : "+r"(temp_r0));
    temp_r5 = temp_r0 + 0x17BC;
    if (sub_08000470(t24_state + temp_r5) != 0) {
        sub_080003A8(t24_state + temp_r5);
    }
    addr = t24_state + 0x17C8;
    asm("" : "+r"(addr));
    asm("" : : "r"(addr), "r"(temp_r0));
    *(u32 *)(addr + temp_r0) = (u32)t24_callback257D4;
goto alloc;
retry: sub_080003F0();
alloc:
    mem = sub_08001494(0x400);
    asm("" : "+r"(mem));
    base = (char *)t24_state;
    asm("" : "+r"(step) : "r"(arg1));
    addr = step + arg1;
    asm("" : "+r"(addr));
    temp_r2 = addr * 8;
    asm("" : "+r"(temp_r2), "+r"(base));
    addr = (u32)(base + 0x17DC);
    asm("" : "+r"(addr));
    *(u32 *)(addr + temp_r2) = mem;
    if (mem == 0) {
        goto retry;
    }
    addr = (u32)(base + 0x17CC);
    asm("" : "+r"(addr));
    *(u32 *)(addr + temp_r2) = mem + 0x3FC;
    addr = (u32)(base + 0x17C4);
    asm("" : "+r"(addr));
    *(u32 *)(addr + temp_r2) = 0x46;
    addr = (u32)(base + 0x17E0);
    asm("" : "+r"(addr));
    *(u32 *)(addr + temp_r2) = 0;
    addr = temp_r2 + 0x17BC;
    asm("" : "+r"(addr));
    sub_08000274(base + addr, arg0);
}









#ifdef NONMATCHING
struct T24Net25890 { u16 unk0, unk2; u8 unk4, pad5[2], unk7; };
struct T24Player25890 { u8 pad0[0x14]; u16 unk14; u8 pad16[10]; u16 state; s16 unk22; u16 unk24; s16 unk26; u8 pad28[6]; s16 unk2E; u32 flags; u8 pad34[0x58]; u32 unk8C, unk90; u8 pad94[0x44]; u32 unkD8; u8 padDC[0x6C]; struct T24Net25890 *net; };
struct T24Sprite25890 { u32 f0,f4,f8,fC; u8 pad10[12]; u8 payload[5]; u8 byte21,byte22,byte23; u8 pad24[16]; };
struct T24Frame25890 { struct T24Sprite25890 sprite; u32 a44[3],a50[3],a5C[3],a68[3],a74[3],a80[3]; u16 p8C[3],p92[3],p98[4],fa0[3],fa6[3],fac[4]; u16 frame,phase; s16 x,y; };
struct T24State25890 { u16 unk0,pad2,unk4; u8 pad6[0x3A]; u32 unk40; u8 pad44[0x184]; u8 grid[100]; u8 pad22C[0x4F0]; u32 unk71C; };
extern struct T24Player25890 t24_players25890[] asm("gUnk_03003CE0");
extern struct T24State25890 *t24_state25890 asm("gUnk_03005CF4");
extern struct { u8 pad[0x8C]; u16 curLevel; } t24_scene25890 asm("gUnk_03003170");
extern u16 t24_keys25890 asm("gUnk_03001324");
extern u32 t24_frame25890 asm("gUnk_03002344");
extern void t24_callback25890(void) asm("sub_08024538");
extern s16 t24_rand25890(void) asm("sub_0800086C");
extern u8 *t24_text25890(u32) asm("sub_08007290");
extern u32 sub_08002164(void);
extern u32 t24_width25890(void *) asm("sub_0801A638");
extern void sub_08065158(void *,u32,u32,s32,u32);
extern void t24_anim25890(void *,u32,void *,void *,u32) asm("sub_08065370");
extern void sub_08008E74(s16,s16,u32,u16,u32,void *,u32,u32);
extern void t24_project25890(s16,s16,s16 *,s16 *,u32,u32) asm("sub_0800BC08");
void t24_gate25890(u16 *arg0) asm("sub_08025890");
void t24_gate25890(u16 *arg0) {
    struct T24Frame25890 local;
    u32 i;
    u16 *spBC;
    struct T24Player25890 *spC0;
    u8 *spC4;
    u32 spC8;
    u32 spCC;
    u32 spD0;
    u32 spD4;
    u32 spD8;
    s32 spDC;
    u32 spE0;
    s16 *spE4;
    s16 *spE8;
    u32 *spEC;
    u32 *spF0;
    s16 *spF4;
    s16 *spF8;
    u32 *spFC;
    u32 *sp100;
    u32 *sp104;
    u32 *sp108;
    u32 *sp10C;
    u32 *sp110;
    u16 *sp114;
    u16 *sp118;
    u32 sp11C;
    u32 *sp120;
    u32 *sp124;
    u16 *var_r4_2;
    u16 *var_r4_3;
    s16 *temp_r5;
    s16 *temp_r5_3;
    s32 temp_r0;
    struct T24State25890 *temp_r0_3;
    s32 temp_r0_6;
    s32 temp_r0_7;
    s32 temp_r4_2;
    s32 temp_r4_4;
    s32 temp_r4_5;
    s32 temp_r6;
    s32 var_r0_6;
    s32 var_r0_7;
    s8 *var_r1;
    s8 var_r0;
    u16 *temp_r1_4;
    u16 *temp_r2_4;
    u32 *var_r6_3;
    u32 *var_r6_5;
    u16 *var_r7_2;
    u32 *var_r7_3;
    u16 *var_r7_4;
    u32 *var_r7_5;
    u32 *var_r9_2;
    u32 *var_r9_3;
    u32 *var_sl_2;
    u32 *var_sl_3;
    u32 temp_r0_4;
    u32 temp_r0_5;
    u32 temp_r0_8;
    u32 temp_r1_3;
    u32 temp_r1_5;
    u32 temp_r1_6;
    u32 temp_r1_7;
    u32 temp_r1_8;
    u32 temp_r2_3;
    u32 temp_r2_5;
    u32 temp_r5_2;
    u32 temp_r5_4;
    u32 var_r1_3;
    u32 var_r2_2;
    u32 var_r8_2;
    u32 var_r8_3;
    u32 var_r8_4;
    u32 var_r8_5;
    u32 var_r8_6;
    u32 var_r8_7;
    u8 *temp_r4_3;
    u16 *var_r5_2;
    u16 *var_r5_3;
    u16 *var_r6_2;
    u16 *var_r6_4;

    spBC = arg0;
    spC8 = *arg0 * 8;
    spCC = spBC[1] * 8;
    local.frame = 0;
    local.phase = 0;
    spDC = 0;
    spE0 = 0;
    spC4 = t24_text25890(0x1403D2);
    spC0 = &t24_players25890[sub_080020F4()];

    sub_08065158(&local.sprite, 0x500D1, 0xE, -1, spE0);
    if (t24_state25890->unk0 == 0x15) {
        sub_08000AF0(0x14U, local.sprite.fC + 0xC0, 2U);
        local.sprite.byte22 = 4;
        var_r1 = &local.sprite.byte23;
        var_r0 = 5;
    } else {
        sub_08000AF0(0x14U, local.sprite.fC + 0xA0, 3U);
        local.sprite.byte21 = 4;
        local.sprite.byte22 = 5;
        var_r1 = &local.sprite.byte21 + 2;
        var_r0 = 6;
    }
    *var_r1 = var_r0;
    spD0 = (u32) (u8) sub_0800BC44(spC8, spCC, 0U);
    spFC = local.a44;
    sp100 = local.a50;
    sp104 = local.a5C;
    sp108 = local.a68;
    sp10C = local.a74;
    sp110 = local.a80;
    for (i = 0; i < 3; i++) {
        local.a5C[i] = t24_rand25890() % 32 + 130;
        local.a44[i] = sub_080008C8() % 200 - 100;
        local.a74[i] = sub_080008C8() % 3 + 1;
        local.a68[i] = t24_rand25890() % 32 + 130;
        local.a50[i] = sub_080008C8() % 200 - 100;
        temp_r0 = t24_rand25890() % 3;
        if (temp_r0 < 0) temp_r0 = -temp_r0;
        local.a80[i] = temp_r0 + 1;
        local.a5C[i] <<= 8;
        local.a68[i] <<= 8;
        local.a74[i] <<= 7;
        local.a80[i] <<= 7;
    }
loop_27:
    if (((u16) t24_state25890->unk4 >> 3) & 1) {
        if ((u32) t24_scene25890.curLevel > 0xEU) {
            sub_08057624(0xAU);
            sub_080169C8();
            sub_08058688(0xD);
        }
        sub_0805A4BC(t24_state25890->unk71C);
        temp_r0_3 = t24_state25890;
loop_107:
        if (!(((u16) temp_r0_3->unk4 >> 4) & 1)) {
loop_32:
            if (sub_0800CDF8() != 0) {
                sub_080003F0();
                goto loop_32;
            }
            if (sub_080021A8() == 0) {
                if ((sub_0800CC98() == 0) && (sub_0800CD8C() == 0) && (sub_0800CCCC() == 0)) {
                    if (t24_state25890->unk0 == 0x15) {
                        sub_08000AF0(0x14U, local.sprite.fC + 0xC0, 2U);
                        local.sprite.byte22 = 4;
                        local.sprite.byte23 = 5;
                    } else {
                        sub_08000AF0(0x14U, local.sprite.fC + 0xA0, 3U);
                        local.sprite.byte21 = 4;
                        local.sprite.byte22 = 5;
                        local.sprite.byte23 = 6;
                    }
                }
                temp_r4_2 = (s32) spC0->unk8C >> 8;
                temp_r6 = (s32) spC0->unk90 >> 8;
                if (sub_08058DB0() != 0) {
                    goto block_66;
                }
                if (sub_0806569C() != 0) {
                    goto block_66;
                }
                if (spC0->state == 0xE) {
                    goto block_66;
                }
                var_r0_6 = temp_r4_2 - spC8;
                if (var_r0_6 < 0) {
                    var_r0_6 = 0 - var_r0_6;
                }
                if (var_r0_6 > 0x17) {
                    goto block_66;
                }
                var_r0_7 = temp_r6 - spCC;
                if (var_r0_7 < 0) {
                    var_r0_7 = 0 - var_r0_7;
                }
                if (var_r0_7 > 0xF) {
block_66:
                    if (spDC != 0) {
                        spDC = 0;
                        sub_0801A664(0x12, 2);
                    }
                    spC0->flags = spC0->flags & 0xFF7FFFFF;
                } else if (sub_0805D37C(spC0->unk8C, spC0->unk90, (u32) (spC0->net->unk4 << 0x1A) >> 0x1A) != NULL) {

                } else {
                    temp_r0_4 = spC0->state - 2;
                    switch (temp_r0_4) {
                    case 0:
                    case 2:
                    case 3:
                    case 5:
                    case 6:
                    case 7:
                    case 8:
                    case 9:
                    case 10:
                    case 12:
                        break;
                    default:
                    case 1:
                    case 4:
                    case 11:
                        temp_r1_3 = spC0->flags;
                        if (!(0x400 & temp_r1_3)) {
                            spC0->flags = temp_r1_3 | 0x800000;
                            temp_r4_3 = spC4 + 2;
                            sub_0801A3D0(temp_r4_3, (u16) (0xF - ((u32) t24_width25890(temp_r4_3) >> 1)), 0x12);
                            if (1 & spC0->unk14) {
                                spC0->flags = (spC0->flags | 0x403) & 0xFF7FFFFF;
                                sub_08067D74();
                                spD8 = 0;
                                spC0->unkD8 = 0;
                                spC0->unk26 = 0;
                                spC0->unk24 = spD8;
                            }
                            spDC = 1;
                        } else if (sub_08058DB0() == 0) {
                            temp_r0_5 = spD8;
                            spD8 = temp_r0_5 + 1;
                            if ((temp_r0_5 > 0x3CU) && (2 & t24_keys25890)) {
                                spC0->flags &= 0xFFFFFBFF;
                                sub_08057328(0, &t24_callback25890);
                            }
                        }
                        break;
                    }
                }
                if (sub_08002204() != 0) {
                    spD4 = 0;
                    var_r8_2 = 0;
loop_74:
                    if (var_r8_2 < sub_08002164()) {
                        if ((s32) (t24_players25890[var_r8_2].net->unk7 << 0x1B) < 0) {
                            spD4 += 1;
                        }
                        var_r8_2 += 1;
                        goto loop_74;
                    }
                    if (spD4 == sub_08002164()) {
                        spE0 = (u32) (u16) (spE0 + 1);
                    } else {
                        spE0 = 0;
                    }
                    if (spE0 > 2U) {
                        t24_state25890->unk40 = (s32) spBC[2];
loop_81:
                        if (sub_08067DC8() == 0) {
                            sub_080003F0();
                            goto loop_81;
                        }
                        goto block_109;
                    }
                    goto block_83;
                }
block_83:

                t24_anim25890(&local.sprite.f0, 0U, &local.frame, &local.phase, 1);
                var_r8_3 = 0;
                temp_r1_4 = local.fa0;
                sp114 = temp_r1_4;
                sp118 = local.fac;
                var_r6_2 = local.p92;
                var_r5_2 = local.fa6;
                var_r4_2 = local.p8C;
                var_r7_2 = temp_r1_4;
                do {

                    t24_anim25890(&local.sprite.f0, 1U, var_r7_2, var_r4_2, 1);

                    t24_anim25890(&local.sprite.f0, 2U, var_r5_2, var_r6_2, 1);
                    var_r6_2++;
                    var_r5_2++;
                    var_r4_2++;
                    var_r7_2++;
                    var_r8_3 += 1;
                } while (var_r8_3 <= 2U);

                t24_anim25890(&local.sprite.f0, 3U, sp118, local.p98, 1);
                if (sub_0800CC98() != 0) {

                } else if (sub_0800CCCC() != 0) {

                } else {
                    temp_r0_6 = sub_0800CD8C();
                    if (temp_r0_6 != 0) {

                    } else {
                        temp_r5 = &local.y;

                        t24_project25890((s16) spC8, (s16) spCC, &local.x, temp_r5, 0x30, 0);
                        spD0 = (u32) (u8) sub_0800BC44(spC8, spCC, 0U);
                        temp_r2_3 = t24_frame25890 & 1;
                        if (temp_r2_3 == 0) {
                            if (t24_state25890->unk0 != 0x15) {

                                sub_08007CF0((s32) local.x, (s32) local.y, 0U, local.frame, 0, local.sprite.payload, local.sprite.f8, local.sprite.f0);
                            }

                            sub_08008E74(local.x, local.y, 3, local.fac[0], spD0, local.sprite.payload, local.sprite.f8, local.sprite.f0);
                        }
                        if (t24_state25890->unk0 == 0x15) {

                        } else {
                            var_r8_4 = 0;
                            spE4 = &local.x;
                            spE8 = temp_r5;
                            var_sl_2 = sp100;
                            var_r6_3 = sp104;
                            var_r7_3 = sp108;
                            sp124 = var_r7_3;
                            var_r9_2 = spFC;
                            spEC = local.sprite.payload;
loop_98:
                            temp_r1_5 = *var_r6_3 - sp10C[var_r8_4];
                            *var_r6_3 = temp_r1_5;
                            if ((s32) (spCC + ((s32) temp_r1_5 >> 8)) < -0x40) {
                                *var_r6_3 = spCC + (0x1F & sub_080008C8());
                                *var_r9_2 = (u32) (s16) (t24_rand25890() % 100);
                                *var_r6_3 <<= 8;
                            }
                            temp_r1_6 = *var_r7_3 - sp110[var_r8_4];
                            *var_r7_3 = temp_r1_6;
                            if ((s32) (spCC + ((s32) temp_r1_6 >> 8)) < -0x40) {
                                *var_r7_3 = spCC + (0x1F & sub_080008C8());
                                *var_sl_2 = (u32) (s16) (t24_rand25890() % 100);
                                *var_r7_3 <<= 8;
                            }
                            temp_r5_2 = t24_frame25890 & 1;
                            if (temp_r5_2 == 0) {
                                temp_r4_4 = var_r8_4 * 2;

                                sub_08007CF0(*spE4 + *var_r9_2, *spE8 + ((s32) *var_r6_3 >> 8), 1U, *(u16 *)((u8 *)sp114 + temp_r4_4), 0, local.sprite.payload, local.sprite.f8, local.sprite.f0);

                                sub_08007CF0(*spE4 + *var_sl_2, *spE8 + ((s32) *sp124 >> 8), 2U, *(u16 *)((u8 *)local.fa6 + temp_r4_4), 0, local.sprite.payload, local.sprite.f8, local.sprite.f0);
                            }
                            var_sl_2++;
                            var_r6_3++;
                            var_r7_3++;
                            sp124++;
                            var_r9_2++;
                            var_r8_4 += 1;
                            if (var_r8_4 <= 2U) {
                                goto loop_98;
                            }
                        }
                    }
                }
                sub_080003F0();
                goto loop_107;
            }
        } else {
block_109:
            sub_0805865C(0x24);
            spD4 = 1;
            spF0 = local.sprite.payload;
loop_111:
            if (sub_0800CDF8() != 0) {
                sub_080003F0();
                goto loop_111;
            }
            if (sub_080021A8() != 0) {
                return;
            }

            t24_anim25890(&local.sprite.f0, 0U, &local.frame, &local.phase, 1);
            var_r8_5 = 0;
            sp11C = spD4 + 1;
            temp_r2_4 = local.fa0;
            sp114 = temp_r2_4;
            sp118 = local.fac;
            var_r6_4 = local.p92;
            var_r5_3 = local.fa6;
            var_r4_3 = local.p8C;
            var_r7_4 = temp_r2_4;
            do {

                t24_anim25890(&local.sprite.f0, 1U, var_r7_4, var_r4_3, 1);

                t24_anim25890(&local.sprite.f0, 2U, var_r5_3, var_r6_4, 1);
                var_r6_4++;
                var_r5_3++;
                var_r4_3++;
                var_r7_4++;
                var_r8_5 += 1;
            } while (var_r8_5 <= 2U);

            t24_anim25890(&local.sprite.f0, 3U, sp118, local.p98, 1);
            if (sub_0800CC98() != 0) {

            } else if (sub_0800CCCC() != 0) {

            } else {
                temp_r0_7 = sub_0800CD8C();
                if (temp_r0_7 != 0) {

                } else {
                    temp_r5_3 = &local.y;

                    t24_project25890((s16) spC8, (s16) spCC, &local.x, temp_r5_3, 0x30, 0);
                    temp_r2_5 = t24_frame25890 & 1;
                    if (temp_r2_5 == 0) {
                        if (t24_state25890->unk0 != 0x15) {

                            sub_08007CF0((s32) local.x, (s32) local.y, 0U, local.frame, 0, local.sprite.payload, local.sprite.f8, local.sprite.f0);
                        }

                        sub_08008E74(local.x, local.y, 3, local.fac[0], spD0, local.sprite.payload, local.sprite.f8, local.sprite.f0);
                    }
                    if (t24_state25890->unk0 == 0x15) {

                    } else {
                        var_r8_6 = 0;
                        spF4 = &local.x;
                        spF8 = temp_r5_3;
                        var_sl_3 = sp100;
                        var_r6_5 = sp104;
                        var_r7_5 = sp108;
                        sp120 = var_r7_5;
                        var_r9_3 = spFC;
loop_129:
                        temp_r1_7 = *var_r6_5 - sp10C[var_r8_6];
                        *var_r6_5 = temp_r1_7;
                        if ((s32) (spCC + ((s32) temp_r1_7 >> 8)) < -0x40) {
                            *var_r6_5 = spCC + (0x1F & sub_080008C8());
                            *var_r9_3 = (u32) (s16) (t24_rand25890() % 100);
                            *var_r6_5 <<= 8;
                        }
                        temp_r1_8 = *var_r7_5 - sp110[var_r8_6];
                        *var_r7_5 = temp_r1_8;
                        if ((s32) (spCC + ((s32) temp_r1_8 >> 8)) < -0x40) {
                            *var_r7_5 = spCC + (0x1F & sub_080008C8());
                            *var_sl_3 = (u32) (s16) (t24_rand25890() % 100);
                            *var_r7_5 <<= 8;
                        }
                        temp_r5_4 = t24_frame25890 & 1;
                        if (temp_r5_4 == 0) {
                            temp_r4_5 = var_r8_6 * 2;

                            sub_08007CF0(*spF4 + *var_r9_3, *spF8 + ((s32) *var_r6_5 >> 8), 1U, *(u16 *)((u8 *)sp114 + temp_r4_5), 0, local.sprite.payload, local.sprite.f8, local.sprite.f0);

                            sub_08007CF0(*spF4 + *var_sl_3, *spF8 + ((s32) *sp120 >> 8), 2U, *(u16 *)((u8 *)local.fa6 + temp_r4_5), 0, local.sprite.payload, local.sprite.f8, local.sprite.f0);
                        }
                        var_sl_3++;
                        var_r6_5++;
                        var_r7_5++;
                        sp120++;
                        var_r9_3++;
                        var_r8_6 += 1;
                        if (var_r8_6 <= 2U) {
                            goto loop_129;
                        }
                    }
                }
            }
            sub_080003F0();
            temp_r0_8 = spD4;
            spD4 = sp11C;
            if (temp_r0_8 <= 0x3BU) {
                goto loop_111;
            }
            var_r1_3 = 0;
            do {
                var_r2_2 = 0;
loop_141:
                t24_state25890->grid[var_r2_2 + var_r1_3 * 5] = 0;
                var_r2_2 += 1;
                if (var_r2_2 <= 4U) {
                    goto loop_141;
                }
                var_r1_3 += 1;
            } while (var_r1_3 <= 0x13U);
            spC0->flags = spC0->flags & 0xFF7FFFFF;
            if (sub_08057AE8(7) != 0) {
                sub_08057A5C(0x15);
            }
            sub_08057AE8(0x15);
            sub_0805C7B8();
            spC0->unk2E = 0;
            sub_080003F0();
            sub_0801A664(0x12, 2);
            sub_08057624(3U);
            sub_0800CDAC();
        }
    } else {
loop_14:
        if (sub_0800CDF8() != 0) {
            sub_080003F0();
            goto loop_14;
        }
        if (sub_080021A8() == 0) {
            if (sub_0800CB9C() == 0) {
                if (!(spC0->flags & 0x2000)) {
                    goto block_26;
                }
            } else {
                spD4 = 0;
                var_r8_7 = 0;
loop_23:
                if (var_r8_7 < sub_08002164()) {
                    if (t24_players25890[var_r8_7].flags & 0x2000) {
                        spD4 += 1;
                    }
                    var_r8_7 += 1;
                    goto loop_23;
                }
                if (spD4 == sub_08002164()) {
                    spC0->state = 0xC;
                    spC0->unk22 = 0;
                    return;
                }
block_26:
                sub_080003F0();
                goto loop_27;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08025890);
#endif
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
#ifdef NONMATCHING
struct T24Net080263B4 { u16 unk0, unk2; u8 pad4[3]; u8 unk7; };
struct T24Player080263B4 { u8 pad0[0x14]; u16 unk14; u8 pad16[10]; u16 state; u8 pad22[14]; u32 flags; u8 pad34[0x58]; u32 unk8C, unk90; u8 pad94[0x44]; u32 unkD8; u8 padDC[0x6C]; struct T24Net080263B4 *net; };
struct T24Sprite080263B4 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 payload[15]; u8 f2B; u8 pad2C[8]; };
struct T24State080263B4 { u32 f0; u16 unk4; u8 pad6[0x3A]; u32 unk40; u8 pad44[0x184]; u8 grid[100]; };
extern struct T24Player080263B4 t24_players080263B4[] asm("gUnk_03003CE0");
extern struct T24State080263B4 *t24_state080263B4 asm("gUnk_03005CF4");
extern struct { u8 pad[0x90]; u16 scene; } t24_scene080263B4 asm("gUnk_03003170");
extern u16 t24_keys080263B4 asm("gUnk_03001324");
extern void t24_callback080263B4(void) asm("sub_08024538");
extern u8 *t24_call08007290_080263B4(u32) asm("sub_08007290");
extern u32 sub_08002164(void);
extern u32 t24_call0801A638_080263B4(void *) asm("sub_0801A638");
extern void sub_08065158(void *, u32, u32, s32, u32);
extern void t24_call08065370_080263B4(void *, u32, u16 *, u16 *, u32) asm("sub_08065370");
extern void sub_08008E74(s16, s16, u32, u16, u32, void *, u32, u32);
extern void sub_0800BC08(s32, s32, s16 *, s16 *, u32, u32);
void sub_080263B4(void) {
    struct T24Sprite080263B4 sprite;
    u16 frame, phase;
    s16 x, y;
    u8 *text;
    s32 active;
    u32 timer;
    u32 nextCount;
    register s32 limit asm("r2");
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    register s32 var_r5 asm("r5");
    register struct T24Player080263B4 *temp_r6 asm("r6");
    u16 temp_r4_3;
    u16 temp_r4_4;
    u32 temp_r0;
    u32 temp_r0_2;
    u32 temp_r1;
    u32 temp_r2;
    u32 var_r1;
    u32 var_r2;
    u32 var_r4;
    u32 var_r5_2;
    u32 var_r7; /* Uninitialized in original; draft equivalence unproven. */
    register u32 zero asm("r10");
    u8 *temp_r4;
    struct T24Net080263B4 *temp_r2_2;

    zero = 0;
    asm("" : "+r"(zero));

    frame = zero;
    phase = zero;
    active = 0;
    text = t24_call08007290_080263B4(0x1403D3);
    {
        register u32 index asm("r0") = sub_080020F4();
        register u32 stride asm("r1") = 0x14C;
        asm("" : "+r"(index), "+r"(stride));
        stride *= index;
        {
            register u8 *base asm("r0") = (u8 *)t24_players080263B4;
            asm("" : "+r"(base), "+r"(stride));
            temp_r6 = (struct T24Player080263B4 *)(stride + (u32)base);
        }
    }

    sub_08065158(&sprite, 0x5000D, 0xE, -1, zero);
    sub_08000AF0(0x1EU, sprite.fC + 0x1E0, 1U);
    sprite.f2B = 0xE;
    t24_state080263B4->unk4 = (u16) (0x100 | t24_state080263B4->unk4);
    goto loop_48;
retry_2:
    sub_080003F0();
loop_2:
    if (sub_0800CDF8() != 0) goto retry_2;
        if (sub_080021A8() != 0) {
            return;
        }
        x = (s16) ((u32) temp_r6->unk8C >> 8);
        y = (s16) ((u32) temp_r6->unk90 >> 8);
        if ((sub_0806569C() == 0) && (temp_r6->state != 0xE)) {
            limit = 0x78;
            asm("" : "+r"(limit));

            var_r0 = x - limit;
            if (var_r0 < 0) {
                var_r0 = 0 - var_r0;
            }
            if (var_r0 <= 0x17) {
                limit = 0x140;
                asm("" : "+r"(limit));

                var_r0_2 = y - limit;
                if (var_r0_2 < 0) {
                    var_r0_2 = 0 - var_r0_2;
                }
                if (var_r0_2 <= 0xF) {
                    if ((sub_0800CCCC() != 0) && (t24_scene080263B4.scene == 0)) {
                        temp_r6->flags |= 0x800000;
                        temp_r4 = text + 2;
                        sub_0801A3D0(temp_r4, (u16) (0xF - ((u32) t24_call0801A638_080263B4(temp_r4) >> 1)), 0x12);
                        temp_r2 = temp_r6->flags;
                        temp_r4_2 = 0x400 & temp_r2;
                        if (temp_r4_2 == 0) {
                            if (1 & temp_r6->unk14) {
                                temp_r6->flags = (temp_r2 | 0x403) & 0xFF7FFFFF;
                                sub_08067D74();
                                temp_r6->unkD8 = temp_r4_2;
                            }
                            timer = 0;
                        } else {
                            temp_r0 = timer;
                            timer = temp_r0 + 1;
                            if ((temp_r0 > 0x3CU) && (2 & t24_keys080263B4)) {
                                temp_r6->flags = temp_r2 & 0xFFFFFBFF;
                                sub_08057328(0, &t24_callback080263B4);
                            }
                        }
                    }
                    active = 1;
                } else {
                    goto block_23;
                }
            } else {
                goto block_23;
            }
        } else {
block_23:
            if (active != 0) {
                active = 0;
                sub_0801A664(0x12, 2);
            }
            temp_r6->flags &= 0xFF7FFFFF;
        }
        if (sub_08002204() != 0) {
            var_r5 = 0;
            var_r4 = 0;
            nextCount = var_r7 + 1;
            while (var_r4 < sub_08002164()) {
                temp_r2_2 = t24_players080263B4[var_r4].net;
                x = (s16) ((u16) temp_r2_2->unk0 >> 4);
                temp_r1 = (u32) (temp_r2_2->unk2 << 0x14) >> 0x14;
                y = (s16) temp_r1;
                var_r0_3 = x - 0x78;
                if (var_r0_3 < 0) {
                    var_r0_3 = 0 - var_r0_3;
                }
                if (var_r0_3 <= 0x17) {
                    var_r0_4 = temp_r1 - 0x140;
                    if (var_r0_4 < 0) {
                        var_r0_4 = 0 - var_r0_4;
                    }
                    if ((var_r0_4 <= 0xF) && ((s32) (temp_r2_2->unk7 << 0x1B) < 0)) {
                        var_r5 += 1;
                    }
                }
                var_r4 += 1;
            }
            var_r7 = nextCount;
            if (var_r5 != sub_08002164()) {
                var_r7 = 0;
            }
            if (var_r7 > 2U) {
                sub_080687E8();
                goto block_51;
            }
            goto block_42;
        }
block_42:
        t24_call08065370_080263B4(&sprite, 0, &frame, &phase, 1);
        if ((sub_0800CC98() == 0) && (sub_0800CCCC() != 0) && (sub_0800CD34() == 0)) {
            temp_r4_3 = t24_scene080263B4.scene;
            if (temp_r4_3 == 0) {
                sub_08000AF0(0x1EU, sprite.fC + 0x1E0, 1U);
                sub_0800BC08(0x78, 0x140, &x, &y, 0x30, 0);
                sub_08008E74(x, y, 0, frame, 3, sprite.payload, sprite.f8, sprite.f0);
            }
        }
        sub_080003F0();
loop_48:
    if (!(((u16)t24_state080263B4->unk4 >> 4) & 1) && sub_0800D154() == 0) goto loop_2;
block_51:
    sub_0801A664(0x12, 2);
    if (!(((u16) t24_state080263B4->unk4 >> 4) & 1) && (sub_0800D154() == 0)) {
        var_r5_2 = 1;

loop_55:
        if (sub_0800CDF8() != 0) {
            sub_080003F0();
            goto loop_55;
        }
        if (sub_080021A8() == 0) {
            t24_call08065370_080263B4(&sprite, 0, &frame, &phase, 1);
            if ((sub_0800CC98() == 0) && (sub_0800CCCC() != 0)) {
                temp_r4_4 = t24_scene080263B4.scene;
                if (temp_r4_4 == 0) {
                    sub_08000AF0(0x1EU, sprite.fC + 0x1E0, 1U);
                    sub_0800BC08(0x780000 >> 0x10, 0x01400000 >> 0x10, &x, &y, 0x30, 0);
                    sub_08008E74(x, y, 0, frame, 3, sprite.payload, sprite.f8, sprite.f0);
                }
            }
            sub_0801A664(0x12, 2);
            sub_080003F0();
            temp_r0_2 = var_r5_2;
            var_r5_2 += 1;
            if (temp_r0_2 > 5U) {
                goto block_62;
            }
            goto loop_55;
        }
    } else {
block_62:
        temp_r6->flags &= 0xFF7FFFFF;
        t24_state080263B4->unk4 = (u16) (0xFEFF & t24_state080263B4->unk4);
        var_r1 = 0;
        do {
            var_r2 = 0;
loop_64:
            t24_state080263B4->grid[var_r2 + var_r1 * 5] = 0;
            var_r2 += 1;
            if (var_r2 <= 4U) {
                goto loop_64;
            }
            var_r1 += 1;
        } while (var_r1 <= 0x13U);
        sub_080003F0();
        sub_0801A664(0x12, 2);
        sub_08057624(3U);
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_080263B4);
#endif
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
#ifdef NONMATCHING
struct T24Net08026858 { u16 unk0, unk2; u8 pad4[3]; u8 unk7; };
struct T24Player08026858 { u8 pad0[0x14]; u16 unk14; u8 pad16[10]; u16 state; u8 pad22[14]; u32 flags; u8 pad34[0x58]; u32 unk8C, unk90; u8 pad94[0x44]; u32 unkD8; u8 padDC[0x6C]; struct T24Net08026858 *net; };
struct T24Sprite08026858 { u32 f0, f4, f8, fC; u8 pad10[12]; u8 payload[15]; u8 f2B; u8 pad2C[8]; };
struct T24State08026858 { u32 f0; u16 unk4; u8 pad6[0x3A]; u32 unk40; u8 pad44[0x184]; u8 grid[100]; };
extern struct T24Player08026858 t24_players08026858[] asm("gUnk_03003CE0");
extern struct T24State08026858 *t24_state08026858 asm("gUnk_03005CF4");
extern struct { u8 pad[0x90]; u16 scene; } t24_scene08026858 asm("gUnk_03003170");
extern u16 t24_keys08026858 asm("gUnk_03001324");
extern void t24_callback08026858(void) asm("sub_08024538");
extern u8 *t24_call08007290_08026858(u32) asm("sub_08007290");
extern u32 sub_08002164(void);
extern u32 t24_call0801A638_08026858(void *) asm("sub_0801A638");
extern void sub_08065158(void *, u32, u32, s32, u32);
extern void t24_call08065370_08026858(void *, u32, u16 *, u16 *, u32) asm("sub_08065370");
extern void sub_08008E74(s16, s16, u32, u16, u32, void *, u32, u32);
extern void sub_0800BC08(s32, s32, s16 *, s16 *, u32, u32);
void sub_08026858(void) {
    struct T24Sprite08026858 sprite;
    u16 frame, phase;
    s16 x, y;
    u8 *text;
    s32 active;
    u32 timer, nextCount;
    s32 temp_r0_2;
    register s32 temp_r0_3 asm("r4");
    s32 temp_r4_2;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    s32 var_r0_4;
    register s32 var_r5 asm("r5");
    register s32 var_sl asm("r10");
    register struct T24Player08026858 *temp_r6 asm("r6");
    u32 temp_r0;
    u32 temp_r0_4;
    u32 temp_r1;
    u32 temp_r1_2;
    u32 temp_r2;
    u32 var_r4;
    register u32 var_r5_2 asm("r5");
    u32 var_r7; /* Uninitialized in original; draft equivalence unproven. */
    u8 *temp_r4;
    register struct T24Net08026858 *temp_r2_2 asm("r2");

    /* Original reads the prior r7 value before the first player-count pass. */
    frame = 0;
    phase = 0;
    var_sl = 0;
    asm("" : "+r"(var_sl));

    text = t24_call08007290_08026858(0x1403D4);
    {
        register u32 index asm("r0") = sub_080020F4();
        register u32 stride asm("r1") = 0x14C;
        asm("" : "+r"(index), "+r"(stride));
        stride *= index;
        {
            register u8 *base asm("r0") = (u8 *)t24_players08026858;
            asm("" : "+r"(base), "+r"(stride));
            temp_r6 = (struct T24Player08026858 *)(stride + (u32)base);
        }
    }

    sub_08065158(&sprite, 0x5000D, 0xE, -1, var_sl);
    sub_08000AF0(0x1EU, sprite.fC + 0x1E0, 1U);
    sprite.f2B = 0xE;
    if (sub_0800CF48() != 0) {
        return;
    }
    temp_r1 = t24_state08026858->unk4 << 0x10;
    {
        register u32 one asm("r3") = 1;
        asm("" : "+r"(one));
        if ((temp_r1 >> 0x18) & one) {
            return;
        }
        if ((temp_r1 >> 0x14) & one) {
            goto block_57;
        }
    }
loop_8:
    goto poll_input;
retry_input:
    sub_080003F0();
poll_input:
    if (sub_0800CDF8() != 0) goto retry_input;
    if (sub_080021A8() != 0) {
        return;
    }
    x = (s16) ((u32) temp_r6->unk8C >> 8);
    y = (s16) ((u32) temp_r6->unk90 >> 8);
    if ((sub_0806569C() == 0) && (temp_r6->state != 0xE)) {
        {
            register s32 limit asm("r2") = 0xF0;
            asm("" : "+r"(limit));
            var_r0 = x - limit;
        }
        if (var_r0 < 0) {
            var_r0 = 0 - var_r0;
        }
        if (var_r0 <= 0x17) {
            {
                register s32 limit asm("r2");
                register s32 value asm("r0") = y;
                asm("" : "+r"(value));
                limit = 0x88;
                asm("" : "+r"(limit));
                var_r0_2 = value - limit;
            }
            if (var_r0_2 < 0) {
                var_r0_2 = 0 - var_r0_2;
            }
            if (var_r0_2 <= 0xF) {
                if ((sub_0800CCCC() != 0) && (t24_scene08026858.scene == 0x13)) {
                    temp_r4 = text + 2;
                    sub_0801A3D0(temp_r4, (u16) (0xF - ((u32) t24_call0801A638_08026858(temp_r4) >> 1)), 0x12);
                    temp_r2 = temp_r6->flags;
                    temp_r4_2 = 0x400 & temp_r2;
                    if (temp_r4_2 == 0) {
                        if (1 & temp_r6->unk14) {
                            temp_r6->flags = temp_r2 | 0x403;
                            sub_08067D74();
                            temp_r6->unkD8 = temp_r4_2;
                        }
                        timer = 0;
                    } else {
                        temp_r0 = timer;
                        timer = temp_r0 + 1;
                        if ((temp_r0 > 0x3CU) && (2 & t24_keys08026858)) {
                            temp_r6->flags = temp_r2 & 0xFFFFFBFF;
                            sub_08057328(0, &t24_callback08026858);
                        }
                    }
                }
                var_sl = 1;
            } else {
                goto block_29;
            }
        } else {
            goto block_29;
        }
    } else {
block_29:
        if (var_sl != 0) {
            var_sl = 0;

            sub_0801A664(0x12, 2);
        }
        temp_r6->flags &= 0xFF7FFFFF;
    }
    if (sub_08002204() != 0) {
        var_r5 = 0;
        var_r4 = 0;
        nextCount = var_r7 + 1;
        goto scan_check;
scan_body:
        {
            temp_r2_2 = t24_players08026858[var_r4].net;
            asm("" : "+r"(temp_r2_2));
            x = (s16) ((u16) temp_r2_2->unk0 >> 4);
            temp_r1_2 = (u32) (temp_r2_2->unk2 << 0x14) >> 0x14;
            y = (s16) temp_r1_2;
            {
                register s32 value asm("r0") = x;
                register s32 limit asm("r3");
                asm("" : "+r"(value));
                limit = 0xF0;
                asm("" : "+r"(limit));
                var_r0_3 = value - limit;
            }
            if (var_r0_3 < 0) {
                var_r0_3 = 0 - var_r0_3;
            }
            if (var_r0_3 <= 0x17) {
                var_r0_4 = temp_r1_2 - 0x88;
                if (var_r0_4 < 0) {
                    var_r0_4 = 0 - var_r0_4;
                }
                if ((var_r0_4 <= 0xF) && ((s32) (temp_r2_2->unk7 << 0x1B) < 0)) {
                    var_r5 += 1;
                }
            }
            var_r4 += 1;
        }
scan_check:
        if (var_r4 < sub_08002164()) goto scan_body;
        var_r7 = nextCount;
        if (var_r5 != sub_08002164()) {
            var_r7 = 0;
        }
        if (var_r7 > 2U) {
            t24_state08026858->unk40 = 0x92BC;
            goto ready_check;
ready_yield:
            sub_080003F0();
ready_check:
            if (sub_08067DC8() == 0) goto ready_yield;
            goto block_57;
        }
        goto block_51;
    }
block_51:
    t24_call08065370_08026858(&sprite, 1, &frame, &phase, 1);
    temp_r0_2 = sub_0800CC98();
    if ((temp_r0_2 == 0) && (sub_0800CCCC() != 0) && (t24_scene08026858.scene == 0x13)) {
        sub_08000AF0(0x1EU, sprite.fC + 0x1E0, 1U);
        sub_0800BC08(0xF00000 >> 0x10, 0x880000 >> 0x10, &x, &y, 0x30, 0);
        sub_08008E74(x, y, 1, frame, 3, sprite.payload, sprite.f8, sprite.f0);
    }
    sub_080003F0();
    if (!(((u16) t24_state08026858->unk4 >> 4) & 1)) {
        goto loop_8;
    }
block_57:
    sub_0805865C(0x24);
    var_r5_2 = 1;
    {
        register s16 *endX = &x;
        register s16 *endY asm("r6") = &y;
        register u32 xpos asm("r8") = 0xF00000;
        asm("" : "+r"(endX), "+r"(endY), "+r"(xpos));
loop_59:
        goto end_poll;
end_yield:
        sub_080003F0();
end_poll:
        if (sub_0800CDF8() != 0) goto end_yield;
        if (sub_080021A8() == 0) {
            t24_call08065370_08026858(&sprite, 1, &frame, &phase, 1);
            temp_r0_3 = sub_0800CC98();
            asm("" : "+r"(temp_r0_3));
            if ((temp_r0_3 == 0) && (sub_0800CCCC() != 0) && (t24_scene08026858.scene == 0x13)) {
                sub_08000AF0(0x1EU, sprite.fC + 0x1E0, 1U);
                {
                    register u32 ybase asm("r2") = 0x88;
                    register u32 ybits asm("r1");
                    register u32 xbits asm("r3") = xpos;
                    asm("" : "+r"(ybase));
                    ybits = ybase << 16;
                    asm("" : "+r"(ybits), "+r"(xbits));
                    sub_0800BC08((s16)(xbits >> 16), (s16)(ybits >> 16), endX, endY, 0x30, temp_r0_3);
                }
                sub_08008E74(*endX, *endY, 1, frame, 3, sprite.payload, sprite.f8, sprite.f0);
            }
            sub_080003F0();
            temp_r0_4 = var_r5_2;
            var_r5_2 += 1;
            if (temp_r0_4 > 0x63U) {
                sub_0800D014();
                {
                    register struct T24State08026858 **state asm("r6") = &t24_state08026858;
                    register u32 zero asm("r5") = 0;
                    register u32 row asm("r1") = 0;
                    asm("" : "+r"(state), "+r"(zero), "+r"(row));
                    do {
                        register u32 col asm("r2") = 0;
                        register u32 four asm("r0") = row << 2;
                        register u32 next asm("r4") = row + 1;
                        register u32 rowOffset asm("r3");
                        asm("" : "+r"(four), "+r"(next));
                        rowOffset = four + row;
                        do {
                            register struct T24State08026858 *base asm("r0") = *state;
                            register u32 idx asm("r1") = col + rowOffset;
                            register u32 gridOffset asm("r7") = offsetof(struct T24State08026858, grid);
                            asm("" : "+r"(base), "+r"(idx), "+r"(gridOffset));
                            *((u8 *)base + gridOffset + idx) = zero;
                            col++;
                        } while (col <= 4);
                        row = next;
                    } while (row <= 0x13);
                }
                sub_080003F0();
                sub_0801A664(0x12, 2);
                sub_0800CDAC();
                sub_08057624(3U);
            } else {
                goto loop_59;
            }
        }
    }
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08026858);
#endif
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
struct T025SelectState { u16 f0; u8 p2[14]; u16 f10; u8 p12[36]; u16 f36; u8 p38[8]; s32 f40; u8 p44[0x71C-0x44]; s32 f71C; };
extern struct T025SelectState *t025SelectState asm("gUnk_03005CF4");
extern void t025Select(s32, s32, s32) asm("sub_08026CD0");
extern void sub_080570DC(s32);
extern void sub_0805768C();
extern void sub_080576C4();
extern s32 t025_gUnk_084F0AC0[] asm("gUnk_084F0AC0");
extern s32 t025_gUnk_084F26E4[] asm("gUnk_084F26E4");
extern s32 t025_gUnk_084F4818[] asm("gUnk_084F4818");
extern s32 t025_gUnk_084F794C[] asm("gUnk_084F794C");
extern s32 t025_gUnk_084FA298[] asm("gUnk_084FA298");
extern s32 t025_gUnk_084FD06C[] asm("gUnk_084FD06C");
extern s32 t025_gUnk_0850008C[] asm("gUnk_0850008C");
extern s32 t025_gUnk_085028BC[] asm("gUnk_085028BC");
extern s32 t025_gUnk_085060D4[] asm("gUnk_085060D4");
extern s32 t025_gUnk_08508B54[] asm("gUnk_08508B54");
extern s32 t025_gUnk_0850C6E8[] asm("gUnk_0850C6E8");
extern s32 t025_gUnk_0850D4EC[] asm("gUnk_0850D4EC");
extern s32 t025_gUnk_0850DE28[] asm("gUnk_0850DE28");
extern s32 t025_gUnk_0850EAC4[] asm("gUnk_0850EAC4");
extern s32 t025_gUnk_0850ED20[] asm("gUnk_0850ED20");
extern s32 t025_gUnk_0850F894[] asm("gUnk_0850F894");
extern s32 t025_gUnk_08510530[] asm("gUnk_08510530");
extern s32 t025_gUnk_08511538[] asm("gUnk_08511538");
extern s32 t025_gUnk_08512670[] asm("gUnk_08512670");
extern s32 t025_gUnk_08513680[] asm("gUnk_08513680");
extern s32 t025_gUnk_08514FAC[] asm("gUnk_08514FAC");
extern s32 t025_gUnk_08515FCC[] asm("gUnk_08515FCC");
extern s32 t025_gUnk_08517220[] asm("gUnk_08517220");
extern s32 t025_gUnk_0851810C[] asm("gUnk_0851810C");
void t025Select(s32 arg0, s32 arg1, s32 arg2) {
    s32 *var_r2;
    s32 *var_r1;
    s32 var_r1_2;
    s32 result;
    u16 temp_r2;
    u16 temp_r4;
    u16 temp_r5;

    temp_r5 = arg0;
    temp_r4 = arg1;
    temp_r2 = (u16) arg2;
    switch (temp_r2) {
    case 0:
        sub_0800BB40();
        sub_0805768C();
        break;
    case 1:
        sub_080576C4();
        sub_0800BB40();
        sub_08057624(5U);
        break;
    }
    switch ((u32) temp_r5) {
    case 0:
        sub_0800CCDC();
        t025SelectState->f71C = (s32) t025_gUnk_084F0AC0[temp_r4];
        t025SelectState->f36 = 0;
        break;
    case 1:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_084F26E4;
        goto block_32;
    case 2:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_084F4818;
        goto block_32;
    case 3:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_084F794C;
        goto block_32;
    case 4:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_084FA298;
        goto block_32;
    case 5:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_084FD06C;
        goto block_32;
    case 6:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850008C;
        goto block_32;
    case 7:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_085028BC;
        goto block_32;
    case 8:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_085060D4;
        goto block_32;
    case 9:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08508B54;
        goto block_32;
    case 10:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850C6E8;
        goto block_32;
    case 11:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850D4EC;
        goto block_32;
    case 12:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850DE28;
        goto block_32;
    case 13:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850EAC4;
        goto block_32;
    case 14:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850ED20;
        goto block_32;
    case 15:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0850F894;
        goto block_32;
    case 16:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08510530;
        goto block_32;
    case 17:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08511538;
        goto block_32;
    case 18:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08512670;
        goto block_32;
    case 19:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08513680;
        goto block_32;
    case 20:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08514FAC;
        goto block_32;
    case 21:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08515FCC;
        goto block_32;
    case 22:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_08517220;
        goto block_32;
    case 23:
        sub_0800CCEC();
        var_r1 = (s32 *)t025SelectState;
        var_r1 = (s32 *)((u32)var_r1 + 0x71C);
        var_r2 = t025_gUnk_0851810C;
block_32:
        *var_r1 = var_r2[temp_r4];
        break;
    }
    result = sub_0800CF10();
    var_r1_2 = 0;
    if (result == 0) {
        var_r1_2 = 1;
    }
    sub_080570DC(var_r1_2);
    t025SelectState->f10 = 0;
    t025SelectState->f40 = (s32) temp_r4;
    t025SelectState->f0 = temp_r5;
}
struct T025Block270 { u32 w[10]; };
struct T025Packet270 { u16 f0, f2; s32 f4; u8 p8[8]; };
struct T025Player270 { u16 unk0; u8 p2[0x1A]; u16 unk1C; u8 p1E[2]; u16 unk20, unk22; u8 p24[6]; u16 unk2A; u8 p2C[4]; u32 flags; void *unk34; u8 p38[0x30]; u8 unk68; u8 p69[0x23]; struct V2W12 pos8C,pos94; u8 p9C[8]; struct V2W12 posA4; u8 pAC[0x16]; u16 unkC2,unkC4,unkC6; u8 pC8[0x80]; void *unk148; };
struct T025State270 { u16 f0,f2,f4; u8 p6[6]; u16 fC; u8 pE[2]; u16 f10; u8 p12[0x10]; u16 f22[11]; s32 f38,f3C,f40,f44,f48; u8 p4C[4]; s32 f50; u8 p54[0x18]; s32 f6C,f70; u8 p74[0x1C]; u16 f90,f92,f94; u8 p96[2]; s32 f98,f9C,fA0,fA4; u8 pA8[0xA0]; u16 f148; u8 p14A[0x5D2]; u16 *f71C; };
extern struct T025State270 *t025State270 asm("gUnk_03005CF4");
extern struct T025Player270 t025Players270[] asm("gUnk_03003CE0");
s32 sub_08009930(u16, s32);
extern void sub_08022E60(u16, s32);
extern void sub_08023F98(u16, u16);
extern void sub_080257D4(void *, s32);
extern void sub_08026338(void *);
extern void sub_080570DC(s32);
extern void sub_0805A4BC(u16 *);
extern void sub_08065838(u16, s32);
s32 sub_08068558();
struct T025Rows270 { s32 x[25]; };
extern struct T025Rows270 t025Rows270[] asm("gUnk_084B0AA0");

void sub_0802704C(s32 input) {
    u8 *flagBase;
    s32 flagOffset;
    s32 flagIndex;
    register s32 *flagTarget asm("r2");
    struct T025Player270 *endBase;
    s32 *endFlags;
    s32 endMask;
    struct T025Player270 *restoreBase;
    s32 restoreId;
    s32 restoreStride;
    struct T025Packet270 sp0;
    u16 *arg0;
    register s32 *temp_r1_9 asm("r1");
    s32 *temp_r2_7;
    s32 temp_r0;
    s32 temp_r0_13;
    s32 temp_r0_2;
    s32 temp_r0_5;
    s32 temp_r1;
    s32 temp_r1_5;
    s32 temp_r1_6;
    u32 entryIndex;
    u32 rowIndex;
    s32 temp_r2;
    s32 temp_r2_9;
    s32 temp_r3;
    s32 temp_r4;
    s32 temp_r4_2;
    s32 temp_r4_3;
    s32 restoreIndex;
    s32 temp_r6;
    s32 temp_sl;
    s32 var_r6;
    u16 *var_r6_2;
    u16 temp_r0_12;
    u16 temp_r0_14;
    u16 temp_r1_7;
    u16 temp_r1_8;
    u32 var_r1;
    u32 spawnCount;
    u32 waitCount;
    u32 sendCount;
    u32 sendCount2;
    u32 playerCount;
    u32 var_r4;
    void *temp_r0_10;
    void *temp_r0_11;
    void *temp_r0_3;
    void *temp_r0_4;
    void *temp_r0_6;
    void *temp_r0_7;
    void *temp_r0_8;
    void *temp_r0_9;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_4;
    void *temp_r2_2;
    void *temp_r2_3;
    void *temp_r2_4;
    void *temp_r2_5;
    void *temp_r2_6;
    void *temp_r2_8;
    void *var_r5;

    arg0 = (u16 *)input;
    goto check_loop_2;
loop_2:
    sub_080003F0();
check_loop_2:
    if (sub_0801AAE0() == 0) goto loop_2;
    temp_sl = t025State270->f70;
    if ((sub_0800CF10() == 0) && (t025State270->f70 != 4)) {
        if (sub_0800CB9C() != 0) {
            goto check_loop_8;
loop_8:
            sub_080003F0();
check_loop_8:
            if (sub_08067C18() == 0) goto loop_8;
            goto check_loop_11;
loop_11:
            sub_080003F0();
check_loop_11:
            if (sub_08067C08() == 0) goto loop_11;
            sub_08067BF8();
            sub_08002298(0x12C);
        }
        if (sub_08002204() != 0) {
            sub_08057624(5U);
        }
        sub_08022E60(t025State270->f0, 0);
    }
    temp_r0 = t025State270->f40;
    if (temp_r0 == 0) {
        t025State270->f44 = temp_r0;
    }
    temp_r2 = t025State270->f44;
    if (temp_r2 != 0) {
        t025State270->f22[*arg0] = (s16) temp_r2;
    }
    entryIndex = *arg0;
    var_r5 = (u8 *)arg0 + (((u16) (t025State270->f22[entryIndex] - 1) * 0x24) + 4);
    sub_08056F8C();
    t025State270->f4 = (u16) (0xFFEF & t025State270->f4);
    sub_0800CCEC();
    temp_r0_2 = sub_0800CF10();
    if (temp_r0_2 == 0) {
        temp_r1 = t025State270->f70;
        if (temp_r1 == 4) {
            t025State270->f38 = (s32) t025State270->f98;
            t025State270->f3C = (s32) t025State270->f98;
            restoreId = sub_080020F4();
            restoreBase = t025Players270;
            restoreStride = 0x14C;
            temp_r2_4 = (u8 *)restoreBase + restoreId * restoreStride;
            M2C_FIELD(temp_r2_4, struct V2W12 *, 0xA4) = M2C_FIELD(t025State270, struct V2W12 *, 0xA0);
            temp_r4_3 = sub_080020F4();
            t025Players270[temp_r4_3].pos8C = t025Players270[sub_080020F4()].posA4;
            restoreIndex = sub_080020F4();
            t025Players270[restoreIndex].pos94 = t025Players270[sub_080020F4()].posA4;
            t025Players270[sub_080020F4()].unkC4 = (u16) t025State270->f90;
            t025Players270[sub_080020F4()].unkC2 = (u16) t025State270->f92;
            t025Players270[sub_080020F4()].unkC6 = (u16) t025State270->f94;
            t025Players270[sub_080020F4()].unk20 = (s16) temp_r0_2;
            restoreIndex = 0;
            do {
                var_r6 = restoreIndex * 40;
                temp_r1_2 = (void *)(var_r6 + (u32)t025Players270[sub_080020F4()].unk34);
                temp_r0_8 = (void *)t025State270 + var_r6;
                M2C_FIELD(temp_r1_2, struct T025Block270 *, 0) = M2C_FIELD(temp_r0_8, struct T025Block270 *, 0x44C);
                restoreIndex += 1;
            } while (restoreIndex <= 7U);
            t025State270->f50 = sub_08057C0C();
            t025State270->f70 = 0;
            gUnk_03003478 = t025State270->f9C;
            t025State270->f4 = (u16) t025State270->f148;
            t025State270->f38 = (s32) t025State270->f98;
            sub_0800CDE4();
            sub_0800CE54();
        } else {
            if ((t025State270->f0 == 0xD) || (temp_r1 != 3)) {
                sub_0805D518();
            }
            if (*arg0 == 7) {
                t025State270->f4 = (u16) (8 | t025State270->f4);
                goto check_loop_33;
loop_33:
                sub_080003F0();
check_loop_33:
                if (sub_08068558() == 0) goto loop_33;
            } else {
                t025State270->f4 = (u16) (0xFFF7 & t025State270->f4);
            }
            temp_r0_5 = sub_0800D154();
            if (temp_r0_5 == 0) {
                t025State270->f38 = temp_r0_5;
                t025State270->f3C = temp_r0_5;
            } else {
                sub_0800D140();
            }
            sub_0800D140();
            t025Players270[sub_080020F4()].pos8C.x = M2C_FIELD(var_r5, u16 *, 0x0) << 0xB;
            t025Players270[sub_080020F4()].pos8C.y = M2C_FIELD(var_r5, u16 *, 0x2) << 0xB;
            t025Players270[sub_080020F4()].pos94.x = M2C_FIELD(var_r5, u16 *, 0x0) << 0xB;
            t025Players270[sub_080020F4()].pos94.y = M2C_FIELD(var_r5, u16 *, 0x2) << 0xB;
            t025Players270[sub_080020F4()].unk1C = (u16) M2C_FIELD(var_r5, u16 *, 0x4);
        }
        sub_080570DC(1);
        sub_080583EC();
        temp_r1_5 = t025State270->f40;
        if (temp_r1_5 == 0) {
            t025State270->f6C = temp_r1_5;
        }
        t025Players270[sub_080020F4()].unk20 = 0;
    } else {
        temp_r6 = t025Players270[sub_080020F4()].posA4.x;
        if ((temp_r6 == -1) && (t025Players270[sub_080020F4()].posA4.y == temp_r6)) {
            t025Players270[sub_080020F4()].pos8C.x = M2C_FIELD(var_r5, u16 *, 0x0) << 0xB;
            t025Players270[sub_080020F4()].pos8C.y = M2C_FIELD(var_r5, u16 *, 0x2) << 0xB;
            t025Players270[sub_080020F4()].pos94.x = M2C_FIELD(var_r5, u16 *, 0x0) << 0xB;
            t025Players270[sub_080020F4()].pos94.y = M2C_FIELD(var_r5, u16 *, 0x2) << 0xB;
            t025Players270[sub_080020F4()].unk1C = (u16) M2C_FIELD(var_r5, u16 *, 0x4);
        } else {
            temp_r4 = sub_080020F4();
            t025Players270[temp_r4].pos8C = t025Players270[sub_080020F4()].posA4;
            temp_r4_2 = sub_080020F4();
            t025Players270[temp_r4_2].pos94 = t025Players270[sub_080020F4()].posA4;
        }
        t025Players270[sub_080020F4()].unk1C = 0;
        t025Players270[sub_080020F4()].unk20 = 0xC;
        t025Players270[sub_080020F4()].unk22 = 2;
        sub_080570DC(0);
    }
    flagIndex = sub_080020F4();
    flagBase = (u8 *)t025Players270;
    flagOffset = 0x14C;
    flagOffset *= flagIndex;
    flagBase += 0x30;
    flagTarget = (s32 *)(flagOffset + (u32)flagBase);
    *flagTarget &= 0xFFFFFBFF;
    sub_0800BB40();
    if (((sub_0800CF10() == 0) && (temp_r0_12 = t025State270->f0, (temp_r0_12 != 0xB)) && (temp_r0_12 != 0xC)) || (t025State270->f70 == 3)) {
        spawnCount = 1;
        do {
            entryIndex = *arg0;
            rowIndex = (u16)(t025State270->f22[entryIndex] - 1);
            temp_r3 = spawnCount * 8;
            temp_r1_6 = rowIndex * 0x24;
            temp_r2_8 = (u8 *)arg0 + (temp_r3 + temp_r1_6);
            if (M2C_FIELD(temp_r2_8, u16 *, 0x8) == 0xFFFF) {
                sub_08026338(temp_r1_6 + 4 + (u8 *)arg0 + temp_r3);
                sub_0800CD9C();
            } else if (M2C_FIELD(temp_r2_8, u16 *, 0x4) != 0) {
                sub_080257D4((u8 *)arg0 + ((u16)(t025State270->f22[*arg0] - 1) * 0x24 + 4) + spawnCount * 8, spawnCount - 1);
            }
            spawnCount += 1;
        } while (spawnCount <= 3U);
    }
    while (sub_08009930(t025State270->f0, t025State270->f40) == 0) {
        sub_080003F0();
    }
    goto check_loop_63;
loop_63:
    sub_080003F0();
check_loop_63:
    if (sub_0800BA6C() == 0) goto loop_63;
    if ((sub_0800CF10() == 0) || (t025State270->f70 == 3)) {
        if ((sub_0800CDC0() == 0) && (M2C_FIELD(t025State270, u32 *, 0) != 0x1000B)) {
            sub_0805A4BC(arg0);
        } else {
            t025State270->f48 = 0;
        }
    }
    if ((sub_0800CF10() == 0) || (t025State270->f70 == 3)) {
        if (((sub_0800CDC0() == 0) && (t025State270->f0 != 0xB)) || ((u32) t025State270->f0 > 0xEU)) {
            t025State270->fC = 0;
            sub_08023F98(t025State270->f0, (u16) t025State270->f40);
            waitCount = 0;
            do {
                sub_080003F0();
                waitCount += 1;
            } while (waitCount <= 0x77U);
        }
        t025State270->f70 = 0;
    }
    if ((sub_0800CF10() == 0) && (sub_0800CB9C() != 0)) {
        goto check_loop_82;
loop_82:
        sub_080003F0();
check_loop_82:
        if (sub_08067C18() == 0) goto loop_82;
        goto check_loop_85;
loop_85:
        sub_080003F0();
check_loop_85:
        if (sub_08067C08() == 0) goto loop_85;
        sub_08067BF8();
    }
    if ((sub_08002204() != 0) && (temp_sl != 3) && (temp_sl != 4)) {
        temp_r0_13 = sub_0800CF10();
        if (temp_r0_13 == 0) {
            sp0.f4 = temp_r0_13;
            sp0.f0 = 1;
            var_r6_2 = t025State270->f71C;
            if (*var_r6_2 != 0) {
                do {
                    temp_r0_14 = *var_r6_2;
                    switch (temp_r0_14) {
                    case 4:
                        var_r1 = 0;
                        do {
                            var_r5 = (u8 *)var_r6_2 + ((var_r1 * 0x24) + 4);
                            for (sendCount = 0; sendCount <= 3U; sendCount++, var_r5 += 8) {
                            temp_r1_7 = M2C_FIELD(var_r5, u16 *, 0x4);
                            if (temp_r1_7 != 0) {
                                sp0.f2 = temp_r1_7;
                                sub_08066520(M2C_FIELD(var_r5, u16 *, 0x0) << 0xB, M2C_FIELD(var_r5, u16 *, 0x2) << 0xB, (u16) t025State270->f40, (u32 *)&sp0);
                            }
                            }
                            var_r1 += 1;
                        } while (var_r1 <= 7U);
                        break;
                    case 5:
                        var_r5 = (u8 *)var_r6_2 + (((u16) (t025State270->f22[5] - 1) * 0x24) + 4);
                        for (sendCount2 = 0; sendCount2 <= 3U; sendCount2++, var_r5 += 8) {
                            temp_r1_8 = M2C_FIELD(var_r5, u16 *, 0x4);
                            if (temp_r1_8 != 0) {
                                sp0.f2 = temp_r1_8;
                                sub_08066520(M2C_FIELD(var_r5, u16 *, 0x0) << 0xB, M2C_FIELD(var_r5, u16 *, 0x2) << 0xB, (u16) t025State270->f40, (u32 *)&sp0);
                            }
                        }

                        break;
                    }
                    var_r6_2 = (u16 *)((u8 *)var_r6_2 + 0x124);
                } while (*var_r6_2 != 0);
            }
        }
    }
    var_r1 = t025Rows270[t025State270->f0 - 1].x[t025State270->f40];
    if (var_r1 != 0) {
        sub_08057328(0);
    }
    sub_0800CEFC();
    sub_0800D108();
    t025State270->f10 = 1;
    t025State270->f2 = (s16) t025State270->f40;
    temp_r0 = sub_080020F4();
    endBase = t025Players270;
    temp_r1 = temp_r0 * 0x14C;
    endFlags = (s32 *)&endBase->flags;
    temp_r1_9 = (s32 *)(temp_r1 + (u32)endFlags);
    temp_r0 = *temp_r1_9;
    endMask = 0x2000;
    *temp_r1_9 = temp_r0 & endMask;
    endBase[sub_080020F4()].unk2A = (s16) t025State270->f40;
    if (!(*(s32 *)((u32)endFlags + sub_080020F4() * 0x14C) & endMask)) {
        endBase[sub_080020F4()].unk68 = 1;
    }
    sub_08015C38();
    sub_0806617C();
    sub_08067D74();
    playerCount = 0;
    goto check_loop_115;
loop_115:
    {
        if (!(((u32) (M2C_FIELD(t025Players270[playerCount].unk148, u8 *, 4) << 0x1A) >> 0x1A) & 0x20)) {

            sub_08065838(t025Players270[playerCount].unk0, 0x78);
        }
        playerCount += 1;
    }
check_loop_115:
    if (playerCount < sub_08002164()) goto loop_115;
    if (sub_0800CB9C() != 0) {
        sub_08002298(0x50);
    }
    sub_08068384();
}

struct T025Packet277 { u16 f0, f2; s32 f4; u8 p8[8]; };
struct T025Player277 { u8 p0[0x2C]; u16 unk2C, unk2E; u8 p30[0x74]; s32 unkA4, unkA8; u8 pAC[0xA0]; };
extern struct T025Player277 t025Players277[] asm("gUnk_03003CE0");
struct T025State277 { u16 f0; u8 p2[2]; u16 f4; u8 p6[6]; u16 fC; u8 pE[2]; u16 f10; u8 p12[10]; u16 f1C; u8 p1E[4]; u16 f22[11]; s32 f38, f3C, f40, f44, f48; u8 p4C[0x71C-0x4C]; u16 *f71C; };
extern struct T025State277 *t025State277 asm("gUnk_03005CF4");
extern void sub_08023684(u16, s32, s32);
extern void sub_08023F98(u16, u16);
extern void sub_080257D4(void *, s32);
extern void sub_08026338(void *);
extern void sub_0805A4BC(u16 *);
struct T025Rows277 { s32 x[25]; };
extern struct T025Rows277 t025Rows277[] asm("gUnk_084B0AA0");
extern s32 t025Table277[] asm("gUnk_084B0AA0");
void sub_080277E0(u16 *arg0) {
    struct T025Packet277 sp0;
    u16 *sp10;
    s32 temp_r0_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r3;
    s32 var_r5;
    struct T025Player277 *temp_r9;
    u16 *var_r5_2;
    u16 *var_r6;
    u16 temp_r0;
    u16 temp_r0_3;
    u16 temp_r1_2;
    u16 temp_r1_3;
    u32 var_r1;
    u32 tableBase;
    u32 entryIndex;
    u32 rowIndex;
    u32 var_r4;
    u32 var_r6_2;
    u32 var_r6_3;
    void *temp_r2_2;
    void *var_r4_3;
    void *var_r4_4;

    var_r6 = arg0;
    temp_r9 = &t025Players277[sub_080020F4()];
    sub_0800D070();
    goto check_loop_2;
loop_2:
    sub_080003F0();
check_loop_2:
    if (sub_08067C18() == 0) goto loop_2;
    goto check_loop_5;
loop_5:
    sub_080003F0();
check_loop_5:
    if (sub_08067C08() == 0) goto loop_5;
    sub_08067BF8();
    sub_08002298(0x12C);
    if (sub_08002204() != 0) {
        sub_08057624(5U);
    }
    sp10 = t025State277->f71C;
    if ((t025State277->f10 == 0) || (t025State277->f1C == 0)) {
        var_r5 = 1;
    } else {
        var_r5 = 0;
    }
    sub_08023684(temp_r9->unk2E, t025State277->f40, 1);
    if (var_r5 == 0) {
        t025State277->f10 = 1U;
        t025State277->f1C = 1U;
    }
    var_r5_2 = t025State277->f71C;
    if (*var_r5_2 != 0) {
        do {
            temp_r0 = *var_r5_2;
            if ((temp_r0 == 1) || (temp_r0 == 7)) {
                var_r6 = var_r5_2;
            }
            var_r5_2 = (u16 *)((u8 *)var_r5_2 + 0x124);
        } while (*var_r5_2 != 0);
    }
    sub_0805D518();
    temp_r2 = t025State277->f44;
    if (temp_r2 != 0) {
        t025State277->f22[*var_r6] = (s16) temp_r2;
    }
    sub_08056F8C();
    t025State277->f4 &= 0xFFEF;
    t025State277->f4 &= 0xFFF7;
    t025State277->f38 = 0;
    t025State277->f3C = 0;
    temp_r9->unkA4 = -1;
    temp_r9->unkA8 = -1;
    temp_r9->unk2C = (u16) t025State277->f40;
    sub_0800CCDC();
    if (*var_r6 == 7) {
        t025State277->f4 = (u16) (t025State277->f4 | 8);
        goto check_loop_25;
loop_25:
        sub_080003F0();
check_loop_25:
        if (sub_08068558() == 0) goto loop_25;
    } else {
        t025State277->f4 = (u16) (0xFFF7 & t025State277->f4);
    }
    if (t025State277->f0 != 0xB) {
        var_r4 = 1;
        do {
            entryIndex = *var_r6;
            rowIndex = (u16)(t025State277->f22[entryIndex] - 1);
            temp_r3 = var_r4 * 8;
            temp_r1 = rowIndex * 0x24;
            temp_r2_2 = (u8 *)var_r6 + (temp_r3 + temp_r1);
            if (M2C_FIELD(temp_r2_2, u16 *, 0x8) == 0xFFFF) {
                sub_08026338((u8 *)var_r6 + (temp_r1 + 4) + temp_r3);
                sub_0800CD9C();
            } else if (M2C_FIELD(temp_r2_2, u16 *, 0x4) != 0) {
                sub_080257D4((u8 *)var_r6 + ((u16)(t025State277->f22[*var_r6] - 1) * 0x24 + 4) + var_r4 * 8, var_r4 - 1);
            }
            var_r4 += 1;
        } while (var_r4 <= 3U);
    }
    goto check_loop_37;
loop_37:
    sub_080003F0();
check_loop_37:
    if (sub_0800BAC4(temp_r9->unk2E, temp_r9->unk2C) == 0) goto loop_37;
    goto check_loop_40;
loop_40:
    sub_080003F0();
check_loop_40:
    if (sub_0800BA6C() == 0) goto loop_40;
    if ((sub_0800CDC0() == 0) && (temp_r9->unk2E != 0xB)) {
        sub_0805A4BC(var_r6);
    } else {
        t025State277->f48 = 0;
    }
    temp_r0_2 = sub_0800CDC0();
    if ((temp_r0_2 == 0) && (t025State277->f0 != 0xB)) {
        t025State277->fC = (s16) temp_r0_2;
        sub_08023F98(temp_r9->unk2E, temp_r9->unk2C);
        var_r4 = 0;
        do {
            sub_080003F0();
            var_r4 += 1;
        } while (var_r4 <= 0x77U);
    }
    goto check_loop_51;
loop_51:
    sub_080003F0();
check_loop_51:
    if (sub_08067C18() == 0) goto loop_51;
    goto check_loop_54;
loop_54:
    sub_080003F0();
check_loop_54:
    if (sub_08067C08() == 0) goto loop_54;
    sub_08067BF8();
    if (sub_08002204() != 0) {
        sp0.f4 = 0;
        sp0.f0 = 1;
        var_r5_2 = t025State277->f71C;
        if (*var_r5_2 != 0) {
            do {
                temp_r0_3 = *var_r5_2;
                switch (temp_r0_3) {
                case 4:
                    var_r1 = 0;
                    do {
                        var_r4_3 = (u8 *)var_r5_2 + ((var_r1 * 0x24) + 4);
                        var_r6_2 = 0;
loop_63:
                        temp_r1_2 = M2C_FIELD(var_r4_3, u16 *, 0x4);
                        if (temp_r1_2 != 0) {
                            sp0.f2 = temp_r1_2;
                            sub_08066520(M2C_FIELD(var_r4_3, u16 *, 0x0) << 0xB, M2C_FIELD(var_r4_3, u16 *, 0x2) << 0xB, (u16) t025State277->f40, (u32 *)&sp0);
                        }
                        var_r6_2 += 1;
                        var_r4_3 += 8;
                        if (var_r6_2 <= 3U) {
                            goto loop_63;
                        }
                        var_r1 += 1;
                    } while (var_r1 <= 7U);
                    break;
                case 5:
                    var_r4_4 = (u8 *)var_r5_2 + (((u16) (t025State277->f22[5] - 1) * 0x24) + 4);
                    var_r6_3 = 0;
                    do {
                        temp_r1_3 = M2C_FIELD(var_r4_4, u16 *, 0x4);
                        if (temp_r1_3 != 0) {
                            sp0.f2 = temp_r1_3;
                            sub_08066520(M2C_FIELD(var_r4_4, u16 *, 0x0) << 0xB, M2C_FIELD(var_r4_4, u16 *, 0x2) << 0xB, (u16) t025State277->f40, (u32 *)&sp0);
                        }
                        var_r6_3 += 1;
                        var_r4_4 += 8;
                    } while (var_r6_3 <= 3U);
                    break;
                }
                var_r5_2 = (u16 *)((u8 *)var_r5_2 + 0x124);
            } while (*var_r5_2 != 0);
        }
    }
    tableBase = (u32)t025Table277;
    var_r1 = t025Rows277[temp_r9->unk2E - 1].x[temp_r9->unk2C];
    if (var_r1 != 0) {
        sub_08057328(0);
    }
    if (sub_0800CB9C() != 0) {
        sub_08002298(0x50);
    }
    t025State277->f71C = sp10;
    sub_0800D084();
}


struct T025State { u8 pad0[4]; u16 flags; u8 pad6[10]; u16 f10; u8 pad12[18]; u16 f24; u8 pad26[10]; u16 f30; u8 pad32[4]; u16 f36; };
extern struct T025State *t025State asm("gUnk_03005CF4");
extern void sub_0802704C(s32);
extern void sub_08057BD0();
extern void sub_08057C6C(s32);
extern void sub_08057CAC(s32);
s32 sub_08027B50(s32 arg0) {
    s32 *p;
    s32 level;
    s32 *flags;
    s32 offset;
    struct Player *base;
    if (t025State->f10 == 0) {
        sub_0802704C(arg0);
        sub_0800CD9C();
    } else if ((t025State->flags >> 4) & 1) {
        sub_08026CD0(0, 2, 0);
        sub_0800CDAC();
        t025State->flags &= 0xFFEF;
        t025State->f36 = 3;
        switch (gUnk_03003170.curLevel) {
        case 15:
            sub_08057BD0(15);
            sub_08057C6C(16);
            level = 15;
            break;
        case 16:
            sub_08057BD0(16);
            sub_08057C6C(15);
            level = 16;
            break;
        default:
            sub_08057BD0();
            goto skip;
        }
        sub_08057CAC(level);
skip:
        level = sub_080020F4();
        base = gUnk_03003CE0;
        offset = 0x14C * level;
        flags = (s32 *)&base->flags;
        p = (s32 *)(offset + (u32)flags);
        *p &= ~2;
        base[sub_080020F4()].state = 0;
        t025State->f10 = 0;
        t025State->f30 = 1;
        t025State->f24 = 1;
    }
    return 0;
}
#ifdef NONMATCHING
struct T025Packet27C { u16 f0,f2; u32 rest[3]; };
struct T025Resource27C { u16 f0; u8 p2[4]; u8 f6,f7; u16 f8; u8 pA[6]; u16 f10; u8 p12[14]; };
struct T025Effect27C { u32 f0,f4; u16 f8,fA,fC,fE,f10,f12,f14,f16,f18,f1A,f1C; u8 p1E[2]; struct T025Resource27C *f20; };
extern void *t025State27C asm("gUnk_03005CF4");
extern struct T025Resource27C t025Resources27C[] asm("gUnk_0849E760");
extern u8 t025Config27C[] asm("gUnk_084B1860");
extern u8 t025ConfigTail27C[] asm("gUnk_084B186C");
extern void t025Init27C(void *,u32,s32,s32,s32) asm("sub_08065158");
extern void t025Hide27C(u32,u32,u32,u32,s32) asm("sub_0800AEF4");
extern void t025Position27C(s32,s32,s16 *,s16 *,s32,s32) asm("sub_0800BC08");
extern void t025Draw27C(s32,s32,u32,u32,u32,void *,u8 *,u32) asm("sub_08007870");
extern s32 t025Item27C(u32 *,u16,u16) asm("sub_0805C4FC");
extern u16 t025Level27C asm("gUnk_03003200");
extern void t025Effects27C(u16 *) asm("sub_08027C1C");
struct T025RuntimeEffects { u8 pad0[0x160]; struct V2W12 pos160[10]; u8 pad1B0[0x7C]; u8 active22C[10]; };
extern struct T025RuntimeEffects *t025RuntimeEffects asm("gUnk_03005CF4");
extern u8 t025ConfigFields27C[] asm("gUnk_084B1864");
void t025Effects27C(u16 *arg0) {

    register u8 *secondConfig asm("r6");
    void **effectSlot;
    register u32 resourceValue asm("r0");
    u32 resourceScaled;
    u8 sprites[10][0x34];
    struct T025Packet27C arg82;
    s16 screenX, screenY;
    s32 arg87;
    u32 arg88;
    s32 arg89;
    u32 arg8A;
    s32 arg8B;
    void *arg8C;
    s32 arg8D;
    void *arg8E;
    s32 temp_r0_4;
    s32 temp_r1_5;
    s32 temp_r1_7;
    s32 temp_r1_8;
    s32 temp_r5_2;
    s32 temp_r6;
    u16 *var_r1;
    u16 temp_r0;
    u16 temp_r0_2;
    u16 temp_r4;
    u16 var_r0;
    u16 var_r3;
    u32 temp_r4_2;
    u32 temp_r5;
    u32 var_r3_2;
    u32 var_r5;
    u32 var_r8;
    u32 var_sl;
    u8 temp_r0_3;
    u8 temp_r1_6;
    u8 temp_r4_3;
    void *temp_r1;
    void *temp_r1_2;
    void *temp_r1_3;
    void *temp_r1_4;
    struct T025Resource27C *temp_r2;
    struct T025Resource27C *temp_r2_2;
    struct T025Resource27C *temp_r2_3;
    struct T025Resource27C *temp_r2_4;
    void *temp_r2_5;
    struct T025Resource27C *temp_r2_6;
    void *temp_r6_2;
    void *var_r4;
    void *var_r6;
    struct T025Effect27C *var_r7;
    struct T025Effect27C *var_r9;

    var_r1 = arg0;
    arg88 = 0U;
    arg89 = 0;
    arg8B = 0;
    if (*var_r1 != 0) {
        do {
            temp_r0 = var_r1[0];
            switch (temp_r0) {
            case 8:
                var_r6 = (u8 *)var_r1 + 4;
                arg88 = (u32) var_r1[1];
                break;
            case 9:
                arg8C = (u8 *)var_r1 + 4;
                arg89 = (s32) var_r1[1];
                break;
            }
            var_r1 = (u16 *)((u8 *)var_r1 + 0x124);
        } while (*var_r1 != 0);
    }
    var_r7 = t025State27C + 0x58C;

    var_r5 = 0;
    var_r8 = 0;
    if (arg88 <= 0U) {

    } else {
var_r9 = (struct T025Effect27C *)t025Config27C; asm("" : "+r"(var_r9));
loop_11:
        var_sl = 0;
        var_r8 += 1;
        arg8E = var_r6 + 0x24;
        var_r4 = var_r6;
loop_12:
        if (M2C_FIELD(var_r4, u16 *, 0x4) != 0) {
            temp_r1 = &((struct T025RuntimeEffects *)t025State27C)->pos160[var_r5];
            if (M2C_FIELD(temp_r1, s32 *, 0x0) == 0) {
                var_r7->f0 = (s32) (M2C_FIELD(var_r4, u16 *, 0x0) << 0xB);
                var_r7->f4 = (s32) (M2C_FIELD(var_r4, u16 *, 0x2) << 0xB);
            } else {
                M2C_FIELD(var_r7, struct V2W12 *, 0) = M2C_FIELD(temp_r1, struct V2W12 *, 0);
            }
            temp_r2 = &t025Resources27C[M2C_FIELD(var_r4, u16 *, 0x4)];
            var_r7->f20 = temp_r2;
            resourceValue = temp_r2->f0;
            resourceScaled = resourceValue * 3;
            var_r7->f10 = resourceScaled;
            var_r7->f16 = (u16) M2C_FIELD(var_r4, u16 *, 0x6);
            if ((u32) temp_r2->f8 > 1U) {
                t025Init27C(sprites[var_r5], M2C_FIELD(((u8 *)var_r9), s32 *, temp_r2->f8 * 0x10), 0xD, 1, 0);
            } else {
                t025Init27C(sprites[var_r5], M2C_FIELD(((u8 *)var_r9), s32 *, temp_r2->f8 * 0x10), 0xD, -1, 0);
            }
            var_r7->f14 = (s16) ((struct T025RuntimeEffects *)t025State27C)->active22C[var_r5];
            temp_r2_2 = var_r7->f20;
            { register u32 index asm("r0") = temp_r2_2->f8 * 0x10;
              register u8 *config asm("r1");
              asm("" : "+r"(index)); config = ((u8 *)var_r9) + 4;
              asm("" : "+r"(config)); temp_r1_2 = config;
              var_r7->f8 = (s16) M2C_FIELD(temp_r1_2, s32 *, index); }
            { register s32 zero asm("r3") = 0; asm("" : "+r"(zero));
              var_r7->fA = zero; var_r7->fC = zero; var_r7->fE = zero; }
            var_r7->f18 = 1;
            { register u32 index asm("r0") = temp_r2_2->f8 * 0x10;
              register u8 *config asm("r1") = (u8 *)temp_r1_2;
              asm("" : "+r"(index)); config += 4; asm("" : "+r"(config));
              var_r7->f1A = (s16) M2C_FIELD(config, s32 *, index); }
            { register u32 index asm("r0") = temp_r2_2->f8 * 0x10;
              register u8 *config asm("r6");
              asm("" : "+r"(index)); config = t025ConfigTail27C;
              asm("" : "+r"(config));
              var_r7->f1C = (s16) M2C_FIELD(config, s32 *, index); }
            if (var_r7->f16 != 0) {
                arg8B += 1;
            }
            var_r7++;
            var_r5 += 1;
            if ((sub_0800CDC0() == 0) || (var_r5 != sub_08002164())) {
                goto block_23;
            }
        } else {
block_23:
            var_r4 += 8;
            var_sl += 1;
            if (var_sl <= 3U) {
                goto loop_12;
            }
        }
        var_r6 = arg8E;
        if (var_r8 < arg88) {
            goto loop_11;
        }
    }
    if (arg89 == 0) {

    } else {
        secondConfig = t025Config27C; asm("" : "+r"(secondConfig));
        arg8C += (u16) (M2C_FIELD(t025State27C, u16 *, 0x34) - 1) * 0x24;
        var_r9 = (struct T025Effect27C *)(secondConfig + 12); asm("" : "+r"(var_r9));
        var_r4 = arg8C;
        do {
            if (M2C_FIELD(var_r4, u16 *, 0x4) != 0) {
                temp_r1_3 = &((struct T025RuntimeEffects *)t025State27C)->pos160[var_r5];
                if (M2C_FIELD(temp_r1_3, s32 *, 0x0) == 0) {
                    var_r7->f0 = (s32) (M2C_FIELD(var_r4, u16 *, 0x0) << 0xB);
                    var_r7->f4 = (s32) (M2C_FIELD(var_r4, u16 *, 0x2) << 0xB);
                } else {
                    M2C_FIELD(var_r7, struct V2W12 *, 0) = M2C_FIELD(temp_r1_3, struct V2W12 *, 0);
                }
                temp_r2_3 = &t025Resources27C[M2C_FIELD(var_r4, u16 *, 0x4)];
                var_r7->f20 = temp_r2_3;
                var_r7->f10 = (s16) (temp_r2_3->f0 * 3);
                var_r7->f16 = (u16) M2C_FIELD(var_r4, u16 *, 0x6);
                if ((u32) temp_r2_3->f8 > 1U) {
                        t025Init27C(sprites[var_r5], M2C_FIELD(secondConfig, s32 *, temp_r2_3->f8 * 0x10), 0xD, 1, 0);
                } else {
                        t025Init27C(sprites[var_r5], M2C_FIELD(secondConfig, s32 *, temp_r2_3->f8 * 0x10), 0xD, -1, 0);
                }
                var_r7->f14 = (s16) ((struct T025RuntimeEffects *)t025State27C)->active22C[var_r5];
                { register struct T025Resource27C *resource asm("r2") = var_r7->f20;
                  register u32 index asm("r0");
                  register u8 *config asm("r1");
                  asm("" : "+r"(resource)); temp_r2_4 = resource;
                  index = resource->f8 * 0x10; asm("" : "+r"(index));
                  config = secondConfig + 4; asm("" : "+r"(config)); temp_r1_4 = config;
                  var_r7->f8 = (s16) M2C_FIELD(config, s32 *, index); }
                var_r7->fA = 0;
                var_r7->fC = 0;
                var_r7->fE = 0;
                var_r7->f18 = 1;
                { register u32 index asm("r0") = temp_r2_4->f8 * 0x10;
                  register u8 *config asm("r1") = (u8 *)temp_r1_4;
                  asm("" : "+r"(index)); config += 4; asm("" : "+r"(config));
                  var_r7->f1A = (s16) M2C_FIELD(config, s32 *, index); }
                var_r7->f1C = (s16) M2C_FIELD(var_r9, s32 *, temp_r2_4->f8 * 0x10);
                if (var_r7->f16 != 0) {
                    arg8B += 1;
                }
                var_r7++;
                var_r5 += 1;
            }
            var_r4 += 8;
        } while ((u32) var_r4 <= (u32) (arg8C + 0x18));
    }
    arg8A = var_r5;
    M2C_FIELD(t025State27C, s32 *, 0x48) = var_r5;
    M2C_FIELD(t025State27C, s32 *, 0x1E4C) = 0;
    var_r8 = 0;
    do {
        temp_r1_5 = var_r8 * 4;
        M2C_FIELD(t025State27C, u8 *, 0x1E52 + temp_r1_5) = 0;
        M2C_FIELD(t025State27C, u16 *, 0x1E50 + temp_r1_5) = 0;
        var_r8 += 1;
    } while (var_r8 <= 3U);
    if (arg8B != 0) {
        sub_08056FCC();
    }
    if (((u16) M2C_FIELD(t025State27C, u16 *, 0x4) >> 4) & 1) {

    } else if (arg8A == 0) {

    } else {
        effectSlot = &t025State27C;
loop_50:
        var_r7 = (*effectSlot) + 0x58C;
        arg87 = 0;
        var_r8 = 0;
loop_129:
        {
            temp_r2_5 = &(*(struct T025RuntimeEffects **)effectSlot)->pos160[var_r8];
            M2C_FIELD(temp_r2_5, struct V2W12 *, 0) = M2C_FIELD(var_r7, struct V2W12 *, 0);
            (*(struct T025RuntimeEffects **)effectSlot)->active22C[var_r8] = (s8) var_r7->f14;
            temp_r0_2 = var_r7->f14;
            if (temp_r0_2 != 0) var_r9 = var_r7 + 1;
            switch ((s32)temp_r0_2) {
                case 0:
                var_r7->f8 = (u16) M2C_FIELD(t025ConfigFields27C, s32 *, var_r7->f20->f8 * 0x10);
                arg8D = 1;
                var_r9 = var_r7 + 1;
                    goto block_116;
                case 10:
                    var_r7->f8 = (u16) (M2C_FIELD(t025ConfigFields27C, s32 *, var_r7->f20->f8 * 0x10) + 1);
                    arg8D = 0;
                    if (var_r7->fE == 0) {

                    } else if (var_r7->f10 != 0) {
                        var_r7->f14 = (u16) arg8D;
                    } else {
                        if (var_r7->f16 != 0) {
                            goto check_loop_70;
loop_70:
                            sub_080003F0();
check_loop_70:
                            if (sub_08068558() == 0) goto loop_70;
                            M2C_FIELD((*effectSlot), u16 *, 0x4) = (u16) (8 | M2C_FIELD((*effectSlot), u16 *, 0x4));
                        }
                                t025Hide27C((u32) (var_r7->f0 << 8) >> 0x10, (u32) (var_r7->f4 << 8) >> 0x10, var_r7->f1A, var_r7->f1C, 0);
                        var_r7->f18 = 0U;
                        var_r7->f14 = 0xCU;
                        var_r7->fA = 0U;
                        var_r7->fC = 0;
                        if (sub_0800CCCC() == 0) {
                            temp_r0_3 = var_r7->f20->f7;
                            switch (temp_r0_3) {
                            case 0:
                                sub_0805865C(0x22);
                                break;
                            case 1:
                                sub_0805865C(0x23);
                                break;
                            case 2:
                                sub_0805865C(0x2B);
                                break;
                            }
                        }
                        if (sub_08002204() == 0) {

                        } else if (M2C_FIELD((*effectSlot), u16 *, 0x0) != 0xB) {
                            if (sub_0800CE30() != 0) {
                                var_r3 = var_r7->f20->f10 + 0x32;
                            } else {
                                var_r3 = var_r7->f20->f10;
                            }
                            if (var_r7->f20->f10 == 0) {
                                var_r3 = 0;
                            }
                            if (t025Item27C((u32 *)&arg82, var_r3, var_r7->f12) == 0) {

                            } else {
                                if (((u32) gUnk_03003170.curLevel > 0xAU) && (arg82.f0 == 9)) {
                                    arg82.f0 = 1U;
                                    arg82.f2 = 1;
                                }
                                if (sub_0800CCCC() != 0) {
loop_98:
                                    temp_r4_2 = var_r7->f0;
                                    temp_r5 = var_r7->f4;
                                    if (sub_08066520(temp_r4_2, temp_r5, M2C_FIELD(gUnk_03003CE0, u16 *, 0x14C * sub_080020F4() + 0x2C), (u32 *)&arg82) == 0) {
                                        sub_080003F0();
                                        goto loop_98;
                                    }
                                } else {
                                    goto check_loop_102;
loop_102:
                                    sub_080003F0();
check_loop_102:
                                    if (sub_08066520(var_r7->f0, var_r7->f4, t025Level27C, (u32 *)&arg82) == 0) goto loop_102;
                                }
                            }
                        } else {
                            goto check_loop_105;
loop_105:
                            sub_080003F0();
check_loop_105:
                            if (sub_08066490(var_r7->f0, var_r7->f4, (u32 *)((*effectSlot) + 0x5C)) == 0) goto loop_105;
                        }
                    }
                    goto block_116;
                case 12:
                    temp_r2_6 = var_r7->f20;
                    temp_r1_6 = 0x80 & temp_r2_6->f6;
                    if (temp_r1_6 != 0) {
                        var_r0 = M2C_FIELD(t025ConfigFields27C, s32 *, temp_r2_6->f8 * 0x10) + 2;
                    } else {
                        t025Init27C(sprites[var_r8], 0x50053, 0xD, -1, 0);
                        var_r0 = 6;
                    }
                    var_r7->f8 = var_r0;
                    arg8D = 0;
                    var_r9 = var_r7 + 1;
                    if (var_r7->fE != 0) {
                        var_r7->f14 = 0xBU;
                    }
                    goto block_116;
                case 11:
                    temp_r4 = var_r7->f18;
                    if (temp_r4 != 0) {

                    } else {
                        t025Hide27C((u32) (var_r7->f0 << 8) >> 0x10, (u32) (var_r7->f4 << 8) >> 0x10, var_r7->f1A, var_r7->f1C, 0);
                        goto block_127;
                    }
                    break;
            }
            goto after_effect_animation;
block_116:
                temp_r6 = 0x34 * var_r8;
{u8 *animationA=(u8 *)var_r7; u8 *animationC=(u8 *)var_r7; asm("" : "+r"(animationA), "+r"(animationC)); var_r7->fE = (u16) sub_08065370(sprites[var_r8], var_r7->f8, (s32)(animationA+10), (s32)(animationC+12), (s16)arg8D);}
                if ((sub_0800CC98() == 0) && (sub_0800CCCC() == 0) && (temp_r0_4 = sub_0800CD8C(), (temp_r0_4 == 0)) && (sub_0800BA6C() != 0)) {
                    if (var_r7->f18 != 0) {
                            t025Hide27C((u32) (var_r7->f0 << 8) >> 0x10, (u32) (var_r7->f4 << 8) >> 0x10, var_r7->f1A, var_r7->f1C, 1);
                        var_r7->f18 = (u16) temp_r0_4;
                    }
                    if ((arg87 == 0) && ((u32) var_r7->f20->f8 > 5U)) {
                        arg87 = 1;
                        sub_08000AF0(0x1DU, M2C_FIELD(sprites[var_r8], u32 *, 12) + 0x1A0, 1U);
                    } else {
                        arg87 = 0;
                    }
                    temp_r4_3 = (u8) sub_0800BC44((u32) ((s32) var_r7->f0 >> 8), (u32) ((s32) var_r7->f4 >> 8), 0U);
                    t025Position27C((s32)(var_r7->f0 << 8) >> 16, (s32)(var_r7->f4 << 8) >> 16, &screenX, &screenY, 0x30, 0);
                    t025Draw27C(screenX, screenY, var_r7->f8, var_r7->fA, temp_r4_3, sprites[var_r8] + 0x1C, M2C_FIELD(sprites[var_r8], u8 **, 8), M2C_FIELD(sprites[var_r8], u32 *, 0));
                } else {
block_127:
                    var_r7->f18 = 1U;
                }
after_effect_animation:
            var_r8 += 1;
            var_r7 = var_r9;
            if (var_r8 < arg8A) goto loop_129;
        }
        sub_08066404();
        M2C_FIELD((*effectSlot), s32 *, 0x1E4C) = 0;
        var_r8 = 0;
        do {
            temp_r1_7 = var_r8 * 4;
            M2C_FIELD((*effectSlot), u8 *, 0x1E52 + temp_r1_7) = 0;
            M2C_FIELD((*effectSlot), u16 *, 0x1E50 + temp_r1_7) = 0;
            var_r8 += 1;
        } while (var_r8 <= 3U);
        sub_080003F0();
        if (!(((u16) M2C_FIELD((*effectSlot), u16 *, 0x4) >> 4) & 1) && (arg8A != 0)) {
            goto loop_50;
        }
    }
    var_r3_2 = 0;
    do {
        ((struct T025RuntimeEffects *)t025State27C)->active22C[var_r3_2] = 0;
        temp_r1_8 = var_r3_2 * 8;
        ((struct T025RuntimeEffects *)t025State27C)->pos160[var_r3_2].x = 0;
        ((struct T025RuntimeEffects *)t025State27C)->pos160[var_r3_2].y = 0;
        var_r3_2 += 1;
    } while (var_r3_2 <= 9U);
    sub_08056FE0();
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08021DC4", sub_08027C1C);
#endif
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
