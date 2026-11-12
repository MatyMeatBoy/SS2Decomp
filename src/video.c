#include "global.h"

#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))
#define SET_IME(v) REG_IME = (gUnk_03000000 = (v))

/* [LoadDisplayControlShadow] Copies one 32-bit value from the supplied DispCnt structure into display-control
 * shadow and optionally writes its low halfword to DISPCNT. */
void sub_08000A8C(struct DispCnt *src, u16 write)
{
    *(u32 *)&gUnk_0300129C = *(u32 *)src;
    if (write)
        REG_DISPCNT = *(u16 *)&gUnk_0300129C;
}
/* [WriteBackgroundControl] For background index 0..3, writes the supplied halfword to BG0CNT..BG3CNT; ignores
 * null source and unsupported index. */
void sub_08000AA8(u16 which, u16 *src)
{
    if (src == 0)
        return;
    switch (which) {
    case 0:
        *(vu16 *)0x04000008 = *src;
        break;
    case 1:
        *(vu16 *)0x0400000A = *src;
        break;
    case 2:
        *(vu16 *)0x0400000C = *src;
        break;
    case 3:
        *(vu16 *)0x0400000E = *src;
        break;
    }
}
/* [LoadPaletteShadow] Copies palette groups into RAM shadow03001F40 at palette-index*32. Queues a full
 * 0x400-byte palette copy once while 03001310 is zero, then increments that flag. */
void sub_08000AF0(u32 palNum, const void *src, u32 numPals)
{
    CpuFastSet(src, (u8 *)&gUnk_03001F40 + palNum * 32, (numPals * 8) & 0x1FFFFF);
    if (gUnk_03001310 == 0)
    {
        sub_08001348(&gUnk_03001F40, PLTT, 0x400);
        gUnk_03001310++;
    }
}
/* [QueuePaletteShadowCopy] Queues 0x400 bytes from palette shadow03001F40 to hardware palette RAM 05000000
 * through 01348. */
void sub_08000B38(void) {
    sub_08001348((s32) &gUnk_03001F40, 0x05000000, 0x400);
}
/* [FlushBgWindowBlendRegisterShadow] Copies 0x24 halfwords from 03001250 to REG_ADDR_BG0HOFS, covering BG
 * scroll/affine, window, mosaic and blend registers, not DISPCNT/BGCNT. */
void sub_08000B50(void)
{
    CpuSet(gUnk_03001250, (void *)REG_ADDR_BG0HOFS, 0x24);
}
/* [ReadBackgroundControl] Reads selected BG0CNT..BG3CNT halfword into non-null output for indices 0..3. */
void sub_08000B68(u16 bg, u16 *out)
{
    if (out)
    {
        switch (bg)
        {
        case 0: *out = REG_BG0CNT; break;
        case 1: *out = REG_BG1CNT; break;
        case 2: *out = REG_BG2CNT; break;
        case 3: *out = REG_BG3CNT; break;
        }
    }
}
/* [InitializeRandomStatePrefix] Writes fixed bytes FA 88 86 04 to the first four bytes of the eight-byte
 * random-generator state at 0x03001318. Leaves the other four bytes untouched and ignores the supplied seed
 * argument. Matched random generators sub_0800086C/sub_080008C8 shift this same eight-byte state. Calling it
 * with a seed does not mean that seed influences the result. */
void sub_08000BB0(u32 seed)
{
    gUnk_03001318[0] = 0xFA;
    gUnk_03001318[1] = 0x88;
    gUnk_03001318[2] = 0x86;
    gUnk_03001318[3] = 0x04;
}
/* [DecompressLz77AllocatingIfNeeded] Reads decompressed size from LZ77 header, rounds to 4 bytes; if
 * destination is null, retries heap allocation while waiting for signal 1, then decompresses with
 * LZ77UnCompWram and returns destination. */
void *sub_08000BC8(u32 *src, void **dest)
{
  u32 *new_var;
  u32 size;
  u32 rem;
  new_var = src;
  size = (*new_var) >> 8;
  rem = size & 3;
  if (rem)
  {
    size += 4 - rem;
  }
  if ((*dest) == ((void *) 0))
  {
    while ((*dest = (void *) sub_08001494(size)) == ((void *) 0))
    {
      sub_080003F0();
    }

  }
  LZ77UnCompWram(new_var, *dest);
  return *dest;
}
/* [ConfigureDirectionalKeyRepeatTiming] Stores the input low halfwords as initial directional-repeat delay at
 * 0x03001730 and subsequent repeat interval at 0x03002348. Matched input update sub_08000760 uses these while
 * tracking unchanged held direction bits. Values count input-update calls; this setter performs no timing
 * normalization or range checks. */
void sub_08000C08(s16 arg0, s16 arg1) {
    gUnk_03001730 = arg0;
    gUnk_03002348 = arg1;
}
/* [InitializeBackgroundRegisterShadowDefaults] Clears only the first four bytes of background register shadow
 * 0x03001250 and writes 0x100 at shadow offsets 0x10, 0x14, 0x20 and 0x24. When copied from BG0HOFS, those
 * offsets correspond to BG2PA/BG2PC and BG3PA/BG3PC. This is the startup default pattern, not a complete
 * shadow clear or a claim of identity affine matrices. */
void sub_08000C1C(void)
{
    DmaFill16(3, 0, gUnk_03001250, 4);
    gUnk_03001250[10] = 0x100;
    gUnk_03001250[8] = 0x100;
    gUnk_03001250[18] = 0x100;
    gUnk_03001250[16] = 0x100;
}
/* [EnableHBlankInterrupt] Enables IE HBlank flag and DISPSTAT HBlank interrupt flag through their shadows,
 * with IME disable/enable and blank-interval waits. */
void sub_08000C50(void)
{
    register u32 value asm("r0");
    u32 flags;
    WAIT_NOT_BLANK();
    SET_IME(0);
    flags = gUnk_03000002;
    value = INTR_FLAG_HBLANK;
    value |= flags;
    gUnk_03000002 = value;
    REG_IE = value;
    WAIT_NOT_BLANK();
    SET_IME(1);
    WAIT_NOT_BLANK();
    SET_IME(0);
    flags = gUnk_03000004;
    value = DISPSTAT_HBLANK_INTR;
    value |= flags;
    gUnk_03000004 = value;
    REG_DISPSTAT = value;
    WAIT_NOT_BLANK();
    SET_IME(1);
}
/* [DisableHBlankInterrupt] Clears HBlank interrupt in IE shadow/register and clears DISPSTAT HBlank interrupt
 * flag. */
void sub_08000D0C(void)
{
    u32 value;
    u16 half;
    WAIT_NOT_BLANK();
    SET_IME(0);
    half = gUnk_03000002; half ^= half & 2;
    gUnk_03000002 = half;
    REG_IE = half;
    WAIT_NOT_BLANK();
    SET_IME(1);
    value = ~DISPSTAT_HBLANK_INTR;
    value &= gUnk_03000004;
    gUnk_03000004 = value;
    REG_DISPSTAT = value;
}
/* [EnableVCountInterrupt] Enables IE VCount flag and DISPSTAT VCount interrupt flag through their shadows,
 * with IME disable/enable and blank-interval waits. */
void sub_08000D8C(void)
{
    register u32 value asm("r0");
    u32 flags;
    WAIT_NOT_BLANK();
    SET_IME(0);
    flags = gUnk_03000002;
    value = INTR_FLAG_VCOUNT;
    value |= flags;
    gUnk_03000002 = value;
    REG_IE = value;
    WAIT_NOT_BLANK();
    SET_IME(1);
    WAIT_NOT_BLANK();
    SET_IME(0);
    flags = gUnk_03000004;
    value = DISPSTAT_VCOUNT_INTR;
    value |= flags;
    gUnk_03000004 = value;
    REG_DISPSTAT = value;
    WAIT_NOT_BLANK();
    SET_IME(1);
}
/* [DisableVCountInterrupt] Clears IE VCount interrupt and DISPSTAT VCount interrupt flag. */
void sub_08000E48(void)
{
    u32 value;
    u16 half;
    WAIT_NOT_BLANK();
    SET_IME(0);
    half = gUnk_03000002;
    half ^= half & INTR_FLAG_VCOUNT;
    gUnk_03000002 = half;
    REG_IE = half;
    WAIT_NOT_BLANK();
    SET_IME(1);
    value = ~DISPSTAT_VCOUNT_INTR;
    value &= gUnk_03000004;
    gUnk_03000004 = value;
    REG_DISPSTAT = value;
}
