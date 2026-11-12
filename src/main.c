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
extern u16 oldKeys000 asm("gUnk_03001298"), nowKeys000 asm("gUnk_0300130C");
extern u16 pressedKeys000 asm("gUnk_03001324"), timerKeys000 asm("gUnk_03001320");
extern u16 repeatKeys000 asm("gUnk_03001308"), delayKeys000 asm("gUnk_03002340");
extern u16 releaseKeys000 asm("gUnk_03001328"), firstDelay000 asm("gUnk_03001730");
extern u16 nextDelay000 asm("gUnk_03002348");
void sub_08000760(void)
{
    register volatile u16 *oldp asm("r4");
    volatile u16 *nowp;
    volatile u16 *savedOld;
    volatile u16 *savedNow;
    register u32 old asm("r2"), now asm("r1"), constant asm("r5");
    register u32 scratch asm("r0"), pressed asm("r5"), direction asm("r6"), oldDirection asm("r0");
    u16 *pressedp;
    u16 *timer;
    register u32 count asm("r0"), limit asm("r3"), compareLimit asm("r1");
    u16 *limitp, *delayp asm("r2");
    register u32 next asm("r1"), oldDelay asm("r0");
    register u16 *resetTimer asm("r2"), *resetDelay asm("r1");
    volatile u16 *released;
    register u32 byte asm("r1"), one asm("r5"), two asm("r4");
    u32 condition;
    oldp=&oldKeys000;
    
    nowp=&nowKeys000;
    old=*nowp;
    *oldp=old;
    now=*(volatile u16 *)0x04000130;
    constant=0x3FF;
    
    scratch=constant;
    asm("" : "+r"(scratch) : "r"(constant));
    now^=scratch;
    *nowp=now;
    pressedp=&pressedKeys000;
    
    pressed=now&~old;
    *pressedp=pressed;
    oldDirection=0xF0;
    direction=oldDirection&now;
    oldDirection&=old;
    savedOld=oldp;
    savedNow=nowp;
    asm("" : "+r"(savedOld),"+r"(savedNow));
    if(oldDirection==direction) {
        timer=&timerKeys000;
        count=*timer+1;
        *timer=count;
        limitp=&firstDelay000;
        limit=*limitp;
        count=(u16)count;
        compareLimit=limit;
        
        if(count==compareLimit) repeatKeys000=direction;
        else if(count>compareLimit) {
            delayp=&delayKeys000;
            oldDelay=*delayp;
            next=oldDelay+1;
            *delayp=next;
            limitp=&nextDelay000;
            asm("" : "+r"(oldDelay));
            oldDelay=(u16)oldDelay;
            compareLimit=*limitp;
            if(oldDelay>compareLimit) {
                repeatKeys000=direction;
                *delayp=0;
                *timer=limit;
            } else repeatKeys000=0;
        } else repeatKeys000=0;
    } else {
        repeatKeys000=pressed;
        resetTimer=&timerKeys000;
        resetDelay=&delayKeys000;
        
        *resetDelay=0;
        *resetTimer=0;
    }
    nowp=savedNow;
    oldp=savedOld;
    released=&releaseKeys000;
    *released=0;
    byte=*(volatile u8 *)oldp;
    
    one=1;
    condition=one&byte;
    asm("" : : "r"(condition),"r"(one),"r"(byte));
    if(condition) {
        byte=*(volatile u8 *)nowp;
        
        condition=one&byte;
        asm("" : : "r"(condition),"r"(one),"r"(byte));
        if(!condition) *released=one;
    }
    byte=*(volatile u8 *)oldp;
    
    two=2;
    condition=two&byte;
    asm("" : : "r"(condition),"r"(two),"r"(byte));
    if(condition) {
        byte=*(volatile u8 *)nowp;
        
        condition=two&byte;
        asm("" : : "r"(condition),"r"(two),"r"(byte));
        if(!condition) *released|=2;
    }
}
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
extern u16 display000 asm("gUnk_0300129C");
void clearDisplay000(u32,u32,u32) asm("sub_080009F8");
void clearDisplay000(u32 a,u32 b,u32 write)
{
    register u32 aa asm("r0")=a<<16;
    register u32 bb asm("r1")=b<<16;
    u32 ww=write<<16;
    register u32 first asm("r3");
    register u32 incoming asm("r0");
    u32 second;
    u32 middle;
    u16 *pointer;
    
    first=(aa&0x1F000000U)>>16;
    
    pointer=&display000;
    incoming=*pointer;
    
    middle=incoming&~first;
    asm("" : "+r"(middle) : "r"(incoming));
    first=middle;
    second=(bb&0xE0000000U)>>16;
    
    first&=~second;
    *pointer=first;
    if (ww) *(volatile u16 *)0x04000000=first;
}
void sub_08000A34(u16 a, u16 b, u16 c, u16 unused, u16 write)
{
    gUnk_0300129C.frameSelect = c != 0;
    gUnk_0300129C.hblankIntervalFree = b != 0;
    gUnk_0300129C.objMapping1D = a != 0;
    if (write)
        REG_DISPCNT = *(u16 *)&gUnk_0300129C;
}
