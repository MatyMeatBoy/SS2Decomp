#include "global.h"
#include "lib/agb_flash/flash_internal.h"
#include "lib/agb_flash/agb_flash.h"

extern u8 sTimerNum;
extern u16 sTimerCount;
extern vu16 *gTimerReg;
extern u16 gSavedIme;
extern const struct FlashSetupInfo *const gSetup512KInfos[];
u32 VerifyEraseSector_Core(u8 *dest);
u8 ReadFlash1(u8 *addr);

#define DELAY()                          \
    do {                                 \
        vu16 i;                          \
        for (i = 20000; i != 0; i--)     \
            ;                            \
    } while (0)

u16 VerifyEraseSector(u8 *dest, u8 *src);

// ---- agb_flash.c

void SwitchFlashBank(u8 bankNum)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xB0);
    FLASH_WRITE(0x0000, bankNum);
}

u16 ReadFlashId(void)
{
    u16 flashId;
    u16 readFlash1Buffer[0x20];
    u8 (*readFlash1)(u8 *);

    SetReadFlash1(readFlash1Buffer);
    readFlash1 = (u8(*)(u8 *))((intptr_t)readFlash1Buffer + 1);

    // Enter ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x90);
    DELAY();

    flashId = readFlash1(FLASH_BASE + 1) << 8;
    flashId |= readFlash1(FLASH_BASE);

    // Leave ID mode.
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xF0);
    FLASH_WRITE(0x5555, 0xF0);
    DELAY();

    return flashId;
}

void FlashTimerIntr(void)
{
    if (sTimerCount != 0 && --sTimerCount == 0)
        gFlashTimeoutFlag = 1;
}

u16 SetFlashTimerIntr(u8 timerNum, void (**intrFunc)(void))
{
    if (timerNum >= 4)
        return 1;

    sTimerNum = timerNum;
    gTimerReg = &REG_TMCNT(sTimerNum);
    *intrFunc = FlashTimerIntr;
    return 0;
}

void StartFlashTimer(u8 phase)
{
    const u16 *maxTime = &gFlashMaxTime[phase * 3];
    gSavedIme = REG_IME;
    REG_IME = 0;
    gTimerReg[1] = 0;
    REG_IE |= (INTR_FLAG_TIMER0 << sTimerNum);
    gFlashTimeoutFlag = 0;
    sTimerCount = *maxTime++;
    *gTimerReg++ = *maxTime++;
    *gTimerReg-- = *maxTime++;
    REG_IF = (INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = 1;
}

void StopFlashTimer(void)
{
    REG_IME = 0;
    *gTimerReg++ = 0;
    *gTimerReg-- = 0;
    REG_IE &= ~(INTR_FLAG_TIMER0 << sTimerNum);
    REG_IME = gSavedIme;
}

u8 ReadFlash1(u8 *addr) { return *addr; }

void SetReadFlash1(u16 *dest)
{
    u16 *src;
    u16 i;

    PollFlashStatus = (u8(*)(u8 *))((intptr_t)dest + 1);

    src = (u16 *)ReadFlash1;
    src = (u16 *)((intptr_t)src & ~1);

    i = ((intptr_t)SetReadFlash1 - (intptr_t)ReadFlash1) >> 1;

    while (i != 0) {
        *dest++ = *src++;
        i--;
    }
}

void ReadFlash_Core(u8 *src, u8 *dest, u32 size)
{
    while (size-- != 0) {
        *dest++ = *src++;
    }
}

void ReadFlash(u16 sectorNum, u32 offset, void *dest, u32 size)
{
    u8 *src;
    u16 i;
    u16 readFlash_Core_Buffer[0x40];
    u16 *funcSrc;
    u16 *funcDest;
    void (*readFlash_Core)(u8 *, u8 *, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }

    funcSrc = (u16 *)ReadFlash_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc & ~1);
    funcDest = readFlash_Core_Buffer;

    i = ((intptr_t)ReadFlash - (intptr_t)ReadFlash_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    readFlash_Core = (void (*)(u8 *, u8 *, u32))((intptr_t)readFlash_Core_Buffer + 1);

    src = FLASH_BASE + (sectorNum << gFlash->sector.shift) + offset;

    readFlash_Core(src, dest, size);
}

u32 VerifyFlashSector_Core(u8 *src, u8 *tgt, u32 size)
{
    while (size-- != 0) {
        if (*tgt++ != *src++)
            return (uintptr_t)(tgt - 1);
    }

    return 0;
}

u32 VerifyFlashSector(u16 sectorNum, u8 *src)
{
    u16 i;
    u16 verifyFlashSector_Core_Buffer[0x80];
    u16 *funcSrc;
    u16 *funcDest;
    u8 *tgt;
    u16 size;
    u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }

    funcSrc = (u16 *)VerifyFlashSector_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc & ~1);
    funcDest = verifyFlashSector_Core_Buffer;

    i = ((intptr_t)VerifyFlashSector - (intptr_t)VerifyFlashSector_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    verifyFlashSector_Core = (u32(*)(u8 *, u8 *, u32))((intptr_t)verifyFlashSector_Core_Buffer + 1);

    tgt = FLASH_BASE + (sectorNum << gFlash->sector.shift);
    size = gFlash->sector.size;

    return verifyFlashSector_Core(src, tgt, size); // return 0 if verified.
}

u32 VerifyFlashSectorNBytes(u16 sectorNum, u8 *src, u32 n)
{
    u16 i;
    u16 verifyFlashSector_Core_Buffer[0x80];
    u16 *funcSrc;
    u16 *funcDest;
    u8 *tgt;
    u32 (*verifyFlashSector_Core)(u8 *, u8 *, u32);

    if (gFlash->romSize == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    funcSrc = (u16 *)VerifyFlashSector_Core;
    funcSrc = (u16 *)((intptr_t)funcSrc & ~1);
    funcDest = verifyFlashSector_Core_Buffer;

    i = ((intptr_t)VerifyFlashSector - (intptr_t)VerifyFlashSector_Core) >> 1;

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i--;
    }

    verifyFlashSector_Core = (u32(*)(u8 *, u8 *, u32))((intptr_t)verifyFlashSector_Core_Buffer + 1);

    tgt = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    return verifyFlashSector_Core(src, tgt, n);
}

u32 ProgramFlashSectorAndVerify(u16 sectorNum, u8 *src)
{
    u8 i;
    u32 result;

    for (i = 0; i < 3; i++) // 3 attempts
    {
        result = ProgramFlashSector(sectorNum, src);
        if (result != 0)
            continue;

        result = VerifyFlashSector(sectorNum, src);
        if (result == 0)
            break;
    }

    return result; // return 0 if verified and programmed.
}

u32 ProgramFlashSectorAndVerifyNBytes(u16 sectorNum, void *dataSrc, u32 n)
{
    u8 i;
    u32 result;

    for (i = 0; i < 3; i++) {
        result = ProgramFlashSector(sectorNum, dataSrc);
        if (result != 0)
            continue;

        result = VerifyFlashSectorNBytes(sectorNum, dataSrc, n);
        if (result == 0)
            break;
    }

    return result;
}

u16 IdentifyFlash(void)
{

    u16 result;
    u16 flashId;
    const struct FlashSetupInfo *const *setupInfo;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    flashId = ReadFlashId();

    setupInfo = gSetup512KInfos;
    result = 1;

    for (;;) {
        if ((*setupInfo)->type.ids.separate.makerId == 0)
            break;

        if (flashId == (*setupInfo)->type.ids.joined) {
            result = 0;
            break;
        }

        setupInfo++;
    }

    ProgramFlashSector = (*setupInfo)->programFlashSector;
    EraseFlashChip = (*setupInfo)->eraseFlashChip;
    EraseFlashSector = (*setupInfo)->eraseFlashSector;
    WaitForFlashWrite = (*setupInfo)->WaitForFlashWrite;
    gFlashMaxTime = (*setupInfo)->maxTime;
    gFlash = &(*setupInfo)->type;

    return result;
}

u16 WaitForFlashWrite512K_Common(u8 phase, u8 *addr, u8 lastData)
{
    u16 result = 0;
    u8 status;

    StartFlashTimer(phase);

    while ((status = PollFlashStatus(addr)) != lastData) {
        if (gFlashTimeoutFlag) {
            if (PollFlashStatus(addr) == lastData)
                break;

            if (gFlash->ids.separate.makerId == 0xc2)
                FLASH_WRITE(0x5555, 0xF0);

            result = phase | 0xC000u;
            break;
        }
    }

    StopFlashTimer();

    return result;
}

u16 EraseFlashChip_LE(void)
{
    u16 result;
    u16 readFlash1Buffer[0x20];

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x10);

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(3, FLASH_BASE, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 EraseFlashSector_LE(u16 sectorNum)
{
    u16 result;
    u8 *addr;
    u16 readFlash1Buffer[0x20];

    if (sectorNum >= 0x10)
        return 0x80FF;

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    addr = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0x80);
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    *addr = 0x30;

    SetReadFlash1(readFlash1Buffer);

    result = WaitForFlashWrite(2, addr, 0xFF);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | WAITCNT_SRAM_8;

    return result;
}

u16 ProgramByte(u8 *src, u8 *dest)
{
    FLASH_WRITE(0x5555, 0xAA);
    FLASH_WRITE(0x2AAA, 0x55);
    FLASH_WRITE(0x5555, 0xA0);
    *dest = *src;

    return WaitForFlashWrite(1, dest, *src);
}

u16 ProgramFlashSector_LE(u16 sectorNum, void *src)
{
    u16 result;
    u8 *dest;
    u16 VerifyEraseSector_Core_Buffer[0x30];
    u16 *funcSrc;
    u16 *funcDest;
    u16 i;
    u8 tryNum;
    u8 erasesToTry;
    u8 j;

    if (sectorNum > 15)
        return 0x80FF;

    if (gFlash->sector.count == FLASH_ROM_SIZE_1M) {
        SwitchFlashBank(sectorNum / SECTORS_PER_BANK);
        sectorNum %= SECTORS_PER_BANK;
    }

    dest = FLASH_BASE + (sectorNum << gFlash->sector.shift);
    funcSrc = (u16 *)((intptr_t)VerifyEraseSector_Core & ~1);
    funcDest = VerifyEraseSector_Core_Buffer;

    i = ((intptr_t)VerifyEraseSector - (intptr_t)VerifyEraseSector_Core);

    while (i != 0) {
        *funcDest++ = *funcSrc++;
        i -= 2;
    }

    tryNum = 0;
    while ((result = EraseFlashSector_LE(sectorNum))
           || (result = VerifyEraseSector(dest, (u8 *)((intptr_t)&VerifyEraseSector_Core_Buffer + 1)))) {
        tryNum++;
        if (tryNum == 0x51) {
            return result;
        }
    }

    erasesToTry = 1;
    if (tryNum != 0) {
        erasesToTry = 6;
    }

    for (j = 1; j <= erasesToTry; j++) {
        EraseFlashSector_LE(sectorNum);
    }

    SetReadFlash1(VerifyEraseSector_Core_Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];
    gFlashNumRemainingBytes = gFlash->sector.size;
    while (gFlashNumRemainingBytes && (result = ProgramByte(src, dest), result == 0)) {
        gFlashNumRemainingBytes--;
        src++, dest++;
    }
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 3;
    return result;
}

u32 VerifyEraseSector_Core(u8 *dest)
{
    u32 sectorNum;
    u8 src;

    for (sectorNum = gFlash->sector.size; sectorNum != 0; sectorNum--) {
        src = *dest++;

        if (src != 0xff) {
            break;
        }
    }
    return sectorNum;
}

u16 VerifyEraseSector(u8 *dest, u8 *src)
{
    u32 result;
    // call VerifyEraseSector_Core
    result = ((u32(*)(u8 *))((intptr_t)src))(dest);

    if (result != 0) {
        return 0x8004;
    }

    return 0;
}

u16 ProgramFlashSector_MX(u16 sectorNum, void *src)
{
    u16 result;
    u8 *dest;
    u16 readFlash1Buffer[0x20];

#ifdef AGBFLASH_USE_V126
    if (sectorNum >= SECTORS_PER_BANK)
#else
    if (sectorNum >= gFlash->sector.count)
#endif
        return 0x80FF;

    // TODO: erase verify routine transmit

    result = EraseFlashSector_LE(sectorNum);

    // TODO: erase retry

    if (result != 0)
        return result;

    SetReadFlash1(readFlash1Buffer);

    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | gFlash->wait[0];

    gFlashNumRemainingBytes = gFlash->sector.size;
    dest = FLASH_BASE + (sectorNum << gFlash->sector.shift);

    while (gFlashNumRemainingBytes > 0) {
        result = ProgramByte(src, dest);

        if (result != 0)
            break;

        gFlashNumRemainingBytes--;
        src++;
        dest++;
    }
    REG_WAITCNT = (REG_WAITCNT & ~WAITCNT_SRAM_MASK) | 3;

    return result;
}
