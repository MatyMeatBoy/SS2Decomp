#include "global.h"
#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

#define WAIT_NOT_BLANK() while (REG_DISPSTAT & (DISPSTAT_VBLANK | DISPSTAT_HBLANK))

struct MemBlock {
    u32 prev:31;
    u32 used:1;
    struct MemBlock *next;
    struct MemBlock *prevFree;
    struct MemBlock *nextFree;
};

extern void sub_0800191C();
extern u32 sub_08001990();

struct Heap {
    struct MemBlock head;
    void *start;
    u32 size;
};

u32 sub_080016C8(void)
{
    u32 best = 0;
    u32 s;
    struct MemBlock *b = gUnk_03002370.head.nextFree;
    while (b != &gUnk_03002370.head)
    {
        s = (u32)b->next - (u32)b;
        if (best < s)
            best = s;
        b = b->nextFree;
    }
    return best;
}
u32 sub_080016EC(void)
{
    u32 total = 0;
    struct MemBlock *b = gUnk_03002370.head.nextFree;
    while (b != &gUnk_03002370.head)
    {
        total += (u32)b->next - (u32)b;
        b = b->nextFree;
    }
    return total;
}
void sub_0800170C(void)
{
    s32 i;

    sub_08000EF4();
    sub_08000FD4(0xC0);
    sub_08000F2C();
    REG_RCNT = 0;
    *(vu32 *)REG_ADDR_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_INTR_ENABLE | SIO_115200_BPS;
    CpuFill32(0, &gMultiSioArea, sizeof(struct MultiSioArea));
    CpuCopy32(sub_080004B8, gMultiSioRecvFuncBuf, sizeof(gMultiSioRecvFuncBuf));
    CpuCopy32(sub_080004F8, gMultiSioIntrFuncBuf, sizeof(gMultiSioIntrFuncBuf));
    gMultiSioArea.sendBufCounter = -1;
    gMultiSioArea.nextSendBufp = (u16 *)&gMultiSioArea.sendBuf[0];
    gMultiSioArea.currentSendBufp = (u16 *)&gMultiSioArea.sendBuf[1];
    for (i = 0; i < 4; ++i) {
        gMultiSioArea.currentRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][0];
        gMultiSioArea.lastRecvBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][1];
        gMultiSioArea.recvCheckBufp[i] = (u16 *)&gMultiSioArea.recvBuf[i][2];
    }
    sub_08000EF4();
    sub_08000F64(0x80);
    sub_08000F2C();
}
#ifdef NONMATCHING
u32 sub_08001804(void *sendp, void *recvp)
{
    struct SioMultiCnt sioCntBak;

    switch (gMultiSioArea.state) {
    case 0:
        sioCntBak = *(struct SioMultiCnt *)REG_ADDR_SIOCNT;
        if (!sioCntBak.id) {
            if (!sioCntBak.sd || sioCntBak.enable)
                break;
            if (!sioCntBak.si && gMultiSioArea.sendBufCounter == -1) {
                sub_08000EF4();
                sub_08000FD4(0x80);
                sub_08000F64(0x40);
                sub_08000F2C();
                ((struct SioMultiCnt *)REG_ADDR_SIOCNT)->intrEnable = 0;
                REG_IF = 0xC0;
                *(vu32 *)0x0400010C = 0xC352;
                gMultiSioArea.type = 8;
            }
        }
        gMultiSioArea.state = 1;
    case 1:
        if (gMultiSioArea.connectedFlags) {
            if (gMultiSioArea.recvFlagsAvailableCounter < 8)
                ++gMultiSioArea.recvFlagsAvailableCounter;
            else
                gMultiSioArea.state = 2;
        }
    case 2:
        sub_08001990(recvp);
        sub_0800191C(sendp);
        break;
    }
    ++gMultiSioArea.sendFrameCounter;
    return gMultiSioArea.recvSuccessFlags | gMultiSioArea.connectedFlags << 8 | (gMultiSioArea.type == 8) << 7
        | (gMultiSioArea.hardError != 0) << 12 | (gMultiSioArea.recvFlagsAvailableCounter >> 3) << 15
        | (sioCntBak.id >= 4) << 13;
}
#else
INCLUDE_ASM("asm/nonmatchings/code_080016C8", sub_08001804);
#endif

void sub_0800191C(void *sendp)
{
    s32 checkSum = 0;
    u32 i;

    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->frameCounter = gMultiSioArea.sendFrameCounter;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->recvErrorFlags = gMultiSioArea.connectedFlags ^ gMultiSioArea.recvSuccessFlags;
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = 0;
    CpuCopy32(sendp, &gMultiSioArea.nextSendBufp[2], 24);
    for (i = 0; i <= 13; ++i)
        checkSum += gMultiSioArea.nextSendBufp[i];
    ((struct MultiSioPacket *)gMultiSioArea.nextSendBufp)->checkSum = ~checkSum - 0x10;
    if (gMultiSioArea.type)
        *(vu16 *)0x0400010E = 0;
    gMultiSioArea.sendBufCounter = -1;
    if (gMultiSioArea.type && gMultiSioArea.startFlag)
        *(vu16 *)0x0400010E = 0xC0;
}

u32 sub_08001990(void *recvp)
{
    u32 (*recvBufChange)(void) = (u32 (*)(void))gMultiSioRecvFuncBuf;
    s32 checkSum;
    vu32 recvCheck = 0;
    u8 syncRecvFlagBak[4];
    s32 i;
    u32 ii;

    *(u32 *)syncRecvFlagBak = recvBufChange();
    gMultiSioArea.recvSuccessFlags = 0;
    for (i = 0; i < 4; ++i) {
        checkSum = 0;
        for (ii = 0; ii <= 13; ++ii)
            checkSum += gMultiSioArea.recvCheckBufp[i][ii];
        if (syncRecvFlagBak[i])
            if ((s16)checkSum == -0x11) {
                CpuCopy32(&((u8 *)gMultiSioArea.recvCheckBufp[i])[4], &((u8 *)recvp)[i * 24], 24);
                gMultiSioArea.recvSuccessFlags |= 1 << i;
            }
        CpuFill32(0, &((u8 *)gMultiSioArea.recvCheckBufp[i])[4], 24);
    }
    gMultiSioArea.connectedFlags |= gMultiSioArea.recvSuccessFlags;
    return gMultiSioArea.recvSuccessFlags;
}
