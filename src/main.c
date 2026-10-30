#include "global.h"

extern u8 gUnk_03001330[];  // OAM buffer
extern u16 gUnk_03001310;
extern const u32 gUnk_080B9984[];  // interrupt table template
extern void *gUnk_030012A0[];      // gIntrTable
extern u8 gUnk_03001740[];         // IntrMain copied to IWRAM
extern u32 gUnk_030012E0[];        // main task control block

extern u8 gUnk_03001318[8];

void AgbMain(void)
{
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    RegisterRamReset(RESET_SIO_REGS | RESET_SOUND_REGS | RESET_REGS);
    CpuFill32(0, (void *)EWRAM_START, EWRAM_SIZE);
    CpuFill32(0, (void *)IWRAM_START, 0x7E00);
    CpuFill32(0, (void *)VRAM, VRAM_SIZE);
    CpuFill32(0xA0, (void *)OAM, OAM_SIZE);
    CpuFill32(0, (void *)PLTT, PLTT_SIZE);
    CpuFill32(0xA0, gUnk_03001330, 0x400);
    CpuFill32(0, &gUnk_03001F40, 0x400);
    sub_08000EC8();
    sub_08000EF4();
    gUnk_03001310 = 0;
    sub_08000968();
    CpuCopy32(gUnk_080B9984, gUnk_030012A0, 0x38);
    CpuCopy32(IntrMain, gUnk_03001740, 0x800);
    INTR_VECTOR = gUnk_03001740;
    sub_08001404();
    sub_08000C1C();
    sub_080012F8();
    sub_0800116C();
    sub_08000BB0(0x1234);
    m4aSoundInit();
    m4aSoundVSyncOff();
    sub_08000F2C();
    sub_08000F64(1);
    sub_08000C08(16, 8);
    gUnk_030012E0[0] = 0;
    gUnk_030012E0[2] = 0;
    gUnk_030012E0[3] = (u32)sub_08001B78;
    gUnk_030012E0[8] = (u32)sub_08001494(0x400);
    gUnk_030012E0[4] = gUnk_030012E0[8] + 0x3FC;
    gUnk_030012E0[9] = 0;
    sub_0800023C(gUnk_030012E0);
}
#ifdef NONMATCHING
void sub_08000760(void)
{
    extern u16 keyOld asm("gUnk_03001298");
    extern u16 keyNow asm("gUnk_0300130C");
    extern u16 keyPressed asm("gUnk_03001324");
    extern u16 keyTimer asm("gUnk_03001320");
    extern u16 keyRepeat asm("gUnk_03001308");
    extern u16 keyDelay asm("gUnk_03002340");
    extern u16 keyReleased asm("gUnk_03001328");
    u32 high;
    u32 low;
    volatile u16 *a = &keyOld, *b = &keyNow;
    u32 old = *b, now;
    *a = old;
    now = REG_KEYINPUT ^ 0x3FF;
    *b = now; keyPressed = now & ~old;
    high = now & 0xF0;
    low = old & 0xF0;
    if (low == high) {
        u16 *timer = &keyTimer;
        u16 count = ++*timer, limit = *(u16 *)&gUnk_03001730;
        if (count == limit) keyRepeat = high;
        else if (count > limit) {
            u16 *delay = &keyDelay;
            if ((*delay)++ > *(u16 *)&gUnk_03002348) {
                keyRepeat = high; *delay = 0; *timer = limit;
            } else keyRepeat = 0;
        } else keyRepeat = 0;
    } else {
        keyRepeat = now & ~old;
        keyDelay = 0; keyTimer = 0;
    }
    keyReleased = 0;
    if ((*(volatile u8 *)a & 1) && !(*(volatile u8 *)b & 1)) keyReleased |= 1;
    if ((*(volatile u8 *)a & 2) && !(*(volatile u8 *)b & 2)) keyReleased |= 2;
}
#else
INCLUDE_ASM("asm/nonmatchings/main", sub_08000760);
#endif
s16 sub_0800086C(void)
{
  s32 i;
  u32 c;
  u8 t = gUnk_03001318[0] ^ gUnk_03001318[1];
  t &= 2;
  c = t != 0;
  for (i = 0; i < 8; i++)
  {
    u8 b = gUnk_03001318[i];
    u8 n = (b >> 1) | (c << 7);
    c = b & 1;
    gUnk_03001318[i] = n;
  }

  t = 8;
  return gUnk_03001318[gUnk_03001318[2] & 7] | (gUnk_03001318[gUnk_03001318[3] & 7] << t);
}
u32 sub_080008C8(void)
{
  s32 i;
  u32 c;
  u8 t = gUnk_03001318[0] ^ gUnk_03001318[1];
  t &= 2;
  c = t != 0;
  for (i = 0; i < 8; i++)
  {
    u8 b = gUnk_03001318[i];
    u8 n = (b >> 1) | (c << 7);
    c = b & 1;
    gUnk_03001318[i] = n;
  }
  t = 8;
  return gUnk_03001318[gUnk_03001318[2] & 7] | (gUnk_03001318[gUnk_03001318[3] & 7] << t)
       | (gUnk_03001318[gUnk_03001318[0] & 7] << 16) | (gUnk_03001318[gUnk_03001318[1] & 7] << 24);
}
void sub_0800093C(void) {

}
void sub_08000940(void)
{
    sub_08001040(8);
    gUnk_0300129C.forcedBlank = 0;
    REG_DISPCNT = *(u16 *)&gUnk_0300129C;
    sub_08006BF8();
}
void sub_08000968(void)
{
    sub_080010AC(0x18);
    gUnk_0300129C.forcedBlank = 1;
    REG_DISPCNT = *(u16 *)&gUnk_0300129C;
    sub_08006C14();
}
void sub_08000990(u16 mode, u16 write)
{
    gUnk_0300129C.mode = mode;
    if (write)
        REG_DISPCNT = *(u16 *)&gUnk_0300129C;
}
void sub_080009C0_u16(u16, u16, u16) asm("sub_080009C0");
void sub_080009C0_u16(u16 a, u16 b, u16 write)
{
    u32 first;
    u32 second;
    first = a & 0x1F00;
    first |= *(u16 *)&gUnk_0300129C;
    second = b & 0xE000;
    second |= first;
    *(u16 *)&gUnk_0300129C = second;
    if (write)
        REG_DISPCNT = second;
}
void sub_080009F8(u16 a, u16 b, u16 write)
{
    register u32 first asm("r3");
    register u32 value asm("r5");
    u32 second;
    first = a & 0x1F00;
    { register u32 tmp asm("r0") = *(u16 *)&gUnk_0300129C; asm("" : "+r"(tmp)); value = tmp; asm("" : "+r"(value)); }
    first = value & ~first;
    second = b & 0xE000;
    first &= ~second;
    *(u16 *)&gUnk_0300129C = first;
    if (write)
        REG_DISPCNT = first;
}
void sub_08000A34(u16 a, u16 b, u16 c, u16 unused, u16 write)
{
    gUnk_0300129C.frameSelect = c != 0;
    gUnk_0300129C.hblankIntervalFree = b != 0;
    gUnk_0300129C.objMapping1D = a != 0;
    if (write)
        REG_DISPCNT = *(u16 *)&gUnk_0300129C;
}
