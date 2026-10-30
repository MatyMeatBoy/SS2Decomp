#include "global.h"
extern u32 gTbl084F0AC0[] asm("gUnk_084F0AC0");
extern void sub_080887D4();
extern void sub_08000274_3(u32, u32, u32) asm("sub_08000274");

void sub_08086860(void);
void sub_08087CC0(void);
void sub_08087A5C(void);
void sub_08087788(void);
void sub_080878AC(void);

extern u32 gUnk_084F26E4[];

extern u32 gUnk_084F4818[];

#ifdef NONMATCHING
void sub_08087A5C(void);
struct Task87CC0 { u32 f0,f4,f8,fC,f10,f14,f18,f1C,f20,f24; };
extern struct Task87CC0 task87CC0 asm("gUnk_030061B0");
extern u8 bg87CC0[] asm("gUnk_03001250");
extern u8 table084ECF88_090[] asm("gUnk_084ECF88");
extern u8 table084ECFE8_090[] asm("gUnk_084ECFE8");
extern u8 table084ED048_090[] asm("gUnk_084ED048");
extern u8 table084ED180_090[] asm("gUnk_084ED180");
extern u8 table084ED1E0_090[] asm("gUnk_084ED1E0");
extern u8 table084ED318_090[] asm("gUnk_084ED318");
extern u8 table084ED3D8_090[] asm("gUnk_084ED3D8");
extern u8 table084ED438_090[] asm("gUnk_084ED438");
extern u8 table084ED498_090[] asm("gUnk_084ED498");
extern u8 table084ED4F8_090[] asm("gUnk_084ED4F8");
extern u8 table084ED528_090[] asm("gUnk_084ED528");
extern u8 table084ED588_090[] asm("gUnk_084ED588");
extern u8 table084ED5E8_090[] asm("gUnk_084ED5E8");
extern u8 table084ED648_090[] asm("gUnk_084ED648");
extern u8 table084ED6A8_090[] asm("gUnk_084ED6A8");
extern u8 table084ED708_090[] asm("gUnk_084ED708");
extern u8 table084ED828_090[] asm("gUnk_084ED828");
extern u8 table084ED948_090[] asm("gUnk_084ED948");
extern u8 table084ED9A8_090[] asm("gUnk_084ED9A8");
extern u8 table084EDA08_090[] asm("gUnk_084EDA08");
extern u8 table084EDA68_090[] asm("gUnk_084EDA68");
extern u8 table084EDAC8_090[] asm("gUnk_084EDAC8");
extern u8 table084EDB28_090[] asm("gUnk_084EDB28");
extern u8 table084EDB88_090[] asm("gUnk_084EDB88");
extern u8 table084EDC18_090[] asm("gUnk_084EDC18");
extern u8 table084EDCA8_090[] asm("gUnk_084EDCA8");
void sub_08087CC0(void) {
    u16 sp0;
    s32 temp_r0_11;
    s32 temp_r0_13;
    s32 temp_r0_15;
    s32 temp_r0_17;
    s32 temp_r0_19;
    s32 temp_r0_21;
    s32 temp_r0_23;
    s32 temp_r0_25;
    s32 temp_r0_27;
    s32 temp_r0_29;
    s32 temp_r0_31;
    s32 temp_r0_33;
    s32 temp_r0_35;
    s32 temp_r0_37;
    s32 temp_r0_39;
    s32 temp_r0_3;
    s32 temp_r0_41;
    s32 temp_r0_43;
    s32 temp_r0_45;
    s32 temp_r0_47;
    s32 temp_r0_49;
    s32 temp_r0_51;
    s32 temp_r0_53;
    s32 temp_r0_55;
    s32 temp_r0_57;
    s32 temp_r0_59;
    s32 temp_r0_5;
    s32 temp_r0_61;
    s32 temp_r0_63;
    s32 temp_r0_65;
    s32 temp_r0_67;
    s32 temp_r0_70;
    s32 temp_r0_72;
    s32 temp_r0_7;
    s32 temp_r0_9;
    s32 var_r5;
    u32 temp_r0;
    u32 var_r6;
    void *temp_r0_10;
    void *temp_r0_12;
    void *temp_r0_14;
    void *temp_r0_16;
    void *temp_r0_18;
    void *temp_r0_20;
    void *temp_r0_22;
    void *temp_r0_24;
    void *temp_r0_26;
    void *temp_r0_28;
    void *temp_r0_2;
    void *temp_r0_30;
    void *temp_r0_32;
    void *temp_r0_34;
    void *temp_r0_36;
    void *temp_r0_38;
    void *temp_r0_40;
    void *temp_r0_42;
    void *temp_r0_44;
    void *temp_r0_46;
    void *temp_r0_48;
    void *temp_r0_4;
    void *temp_r0_50;
    void *temp_r0_52;
    void *temp_r0_54;
    void *temp_r0_56;
    void *temp_r0_58;
    void *temp_r0_60;
    void *temp_r0_62;
    void *temp_r0_64;
    void *temp_r0_66;
    void *temp_r0_68;
    void *temp_r0_69;
    void *temp_r0_6;
    void *temp_r0_71;
    void *temp_r0_73;
    void *temp_r0_8;

    {
        register s32 incoming asm("r8");
        asm volatile("" : "=r"(incoming));
        var_r5 = incoming;
    }
    *(u16 *)(bg87CC0 + 0x2) = 0;
    *(u16 *)(bg87CC0 + 0x0) = 0;
    *(u16 *)(bg87CC0 + 0x6) = 0;
    *(u16 *)(bg87CC0 + 0x4) = 0;
    *(u16 *)(bg87CC0 + 0xA) = 0;
    *(u16 *)(bg87CC0 + 0x8) = 0;
    *(u16 *)(bg87CC0 + 0xE) = 0;
    *(u16 *)(bg87CC0 + 0xC) = 0;
    sub_080003F0();
    sub_0801A664(0, 0x13);
    sub_080003F0();
    sub_08000990(0, 1);
    sub_080009F8(0xE00, 0, 1);
    sub_080009C0(0x1100, 0, 1);
    sp0 = 0x1C08;
    sub_08000AA8(0U, (u16 *) &sp0);
    sub_08058688(0x192);
    sub_080576A8();
    temp_r0 = sub_08002164();
    switch (temp_r0) {                              /* irregular */
    case 1:
        var_r5 = 0x504;
        break;
    case 2:
        var_r5 = 0x505;
        break;
    case 3:
        var_r5 = 0x506;
        break;
    case 4:
        var_r5 = 0x507;
        break;
    }
    temp_r0_2 = sub_08001494(0xC00U);
    task87CC0.f20 = (u32)temp_r0_2;
    task87CC0.fC = (u32)sub_08087A5C;
    task87CC0.f10 = (u32)((u8 *)temp_r0_2 + 0xBFC);
    task87CC0.f8 = 0xA;
    task87CC0.f24 = 0;
    sub_08000274(&task87CC0, var_r5, 0x200F0);
    sub_08057624(0xF1U);
    temp_r0_3 = sub_080021A8();
    if ((temp_r0_3 == 0) && (temp_r0_4 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_4, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_4 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_3, sub_08000274(&task87CC0, 0x508, 0x2012C), sub_08057624(0x12DU), temp_r0_5 = sub_080021A8(), (temp_r0_5 == 0)) && (temp_r0_6 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_6, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_6 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_5, sub_08000274(&task87CC0, 0x509, 0x201E0), sub_08088AA8((u32)table084ECF88_090), sub_08000420(-0x0E000EEF), sub_08057624(0x1E1U), temp_r0_7 = sub_080021A8(), (temp_r0_7 == 0)) && (temp_r0_8 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_8, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_8 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_7, sub_08000274(&task87CC0, 0x50A, 0x20258), sub_08088AA8((u32)table084ECFE8_090), sub_08088AA8((u32)table084ED048_090), sub_08088AA8((u32)table084ED180_090), sub_08000420(-0x0E000EEF), sub_08057624(0x259U), temp_r0_9 = sub_080021A8(), (temp_r0_9 == 0)) && (temp_r0_10 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_10, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_10 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_9, sub_08000274(&task87CC0, 0x50B, 0x20294), sub_08088AA8((u32)table084ED1E0_090), sub_08000420(-0x0E000EEF), sub_08057624(0x295U), temp_r0_11 = sub_080021A8(), (temp_r0_11 == 0)) && (temp_r0_12 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_12, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_12 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_11, sub_08000274(&task87CC0, 0x50C, 0x200F0), sub_08057624(0xF1U), temp_r0_13 = sub_080021A8(), (temp_r0_13 == 0)) && (temp_r0_14 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_14, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_14 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_13, sub_08000274(&task87CC0, 0x50D, 0x202EE), sub_08088AA8((u32)table084ED318_090), sub_08000420(-0x0E000EEF), sub_08057624(0x2EFU), temp_r0_15 = sub_080021A8(), (temp_r0_15 == 0)) && (temp_r0_16 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_16, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_16 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_15, sub_08000274(&task87CC0, 0x50E, 0x201E0), sub_08088AA8((u32)table084ED3D8_090), sub_08000420(-0x0E000EEF), sub_08057624(0x1E1U), temp_r0_17 = sub_080021A8(), (temp_r0_17 == 0)) && (temp_r0_18 = sub_08001494(0xC00U), task87CC0.f20 = (u32)temp_r0_18, task87CC0.fC = (u32)sub_08087A5C, task87CC0.f10 = (u32)((u8 *)temp_r0_18 + 0xBFC), task87CC0.f8 = 0xA, task87CC0.f24 = temp_r0_17, sub_08000274(&task87CC0, 0x50F, 0x200F0), sub_08088AA8((u32)table084ED438_090), sub_08000420(-0x0E000EEF), sub_08057624(0xF1U), temp_r0_19 = sub_080021A8(), (temp_r0_19 == 0))) {
        temp_r0_20 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_20;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_20 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_19;
        sub_08000274(&task87CC0, 0x510, 0x20154);
        sub_08088AA8((u32)table084ED498_090);
        sub_08088AA8((u32)table084ED4F8_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x155U);
        temp_r0_21 = sub_080021A8();
        if (temp_r0_21 != 0) {
            return;
        }
        temp_r0_22 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_22;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_22 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_21;
        sub_08000274(&task87CC0, 0x511, 0x20258);
        sub_08088AA8((u32)table084ED528_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x259U);
        temp_r0_23 = sub_080021A8();
        if (temp_r0_23 != 0) {
            return;
        }
        temp_r0_24 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_24;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_24 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_23;
        sub_08000274(&task87CC0, 0x512, 0x201E0);
        sub_08088AA8((u32)table084ED588_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x1E1U);
        temp_r0_25 = sub_080021A8();
        if (temp_r0_25 != 0) {
            return;
        }
        temp_r0_26 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_26;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_26 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_25;
        sub_08000274(&task87CC0, 0x513, 0x20258);
        sub_08088AA8((u32)table084ED5E8_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x259U);
        temp_r0_27 = sub_080021A8();
        if (temp_r0_27 != 0) {
            return;
        }
        temp_r0_28 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_28;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_28 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_27;
        sub_08000274(&task87CC0, 0x514, 0x200FA);
        sub_08088AA8((u32)table084ED648_090);
        sub_08088AA8((u32)table084ED6A8_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0xFBU);
        temp_r0_29 = sub_080021A8();
        if (temp_r0_29 != 0) {
            return;
        }
        temp_r0_30 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_30;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_30 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_29;
        sub_08000274(&task87CC0, 0x515, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_31 = sub_080021A8();
        if (temp_r0_31 != 0) {
            return;
        }
        temp_r0_32 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_32;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_32 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_31;
        sub_08000274(&task87CC0, 0x516, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_33 = sub_080021A8();
        if (temp_r0_33 != 0) {
            return;
        }
        temp_r0_34 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_34;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_34 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_33;
        sub_08000274(&task87CC0, 0x517, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_35 = sub_080021A8();
        if (temp_r0_35 != 0) {
            return;
        }
        temp_r0_36 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_36;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_36 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_35;
        sub_08000274(&task87CC0, 0x518, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_37 = sub_080021A8();
        if (temp_r0_37 != 0) {
            return;
        }
        temp_r0_38 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_38;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_38 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_37;
        sub_08000274(&task87CC0, 0x519, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_39 = sub_080021A8();
        if (temp_r0_39 != 0) {
            return;
        }
        temp_r0_40 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_40;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_40 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_39;
        sub_08000274(&task87CC0, 0x51A, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_41 = sub_080021A8();
        if (temp_r0_41 != 0) {
            return;
        }
        temp_r0_42 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_42;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_42 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_41;
        sub_08000274(&task87CC0, 0x51B, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_43 = sub_080021A8();
        if (temp_r0_43 != 0) {
            return;
        }
        temp_r0_44 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_44;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_44 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_43;
        sub_08000274(&task87CC0, 0x51C, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_45 = sub_080021A8();
        if (temp_r0_45 != 0) {
            return;
        }
        temp_r0_46 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_46;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_46 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_45;
        sub_08000274(&task87CC0, 0x51D, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_47 = sub_080021A8();
        if (temp_r0_47 != 0) {
            return;
        }
        temp_r0_48 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_48;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_48 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_47;
        sub_08000274(&task87CC0, 0x51E, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_49 = sub_080021A8();
        if (temp_r0_49 != 0) {
            return;
        }
        temp_r0_50 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_50;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_50 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_49;
        sub_08000274(&task87CC0, 0x51F, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_51 = sub_080021A8();
        if (temp_r0_51 != 0) {
            return;
        }
        temp_r0_52 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_52;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_52 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_51;
        sub_08000274(&task87CC0, 0x520, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_53 = sub_080021A8();
        if (temp_r0_53 != 0) {
            return;
        }
        temp_r0_54 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_54;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_54 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_53;
        sub_08000274(&task87CC0, 0x521, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_55 = sub_080021A8();
        if (temp_r0_55 != 0) {
            return;
        }
        temp_r0_56 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_56;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_56 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_55;
        sub_08000274(&task87CC0, 0x522, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_57 = sub_080021A8();
        if (temp_r0_57 != 0) {
            return;
        }
        temp_r0_58 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_58;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_58 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_57;
        sub_08000274(&task87CC0, 0x523, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_59 = sub_080021A8();
        if (temp_r0_59 != 0) {
            return;
        }
        temp_r0_60 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_60;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_60 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_59;
        sub_08000274(&task87CC0, 0x524, 0x200F0);
        sub_08057624(0xF1U);
        temp_r0_61 = sub_080021A8();
        if (temp_r0_61 != 0) {
            return;
        }
        temp_r0_62 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_62;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_62 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_61;
        sub_08000274(&task87CC0, 0x525, 0x2012C);
        sub_08088AA8((u32)table084ED708_090);
        sub_08088AA8((u32)table084ED828_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x12DU);
        temp_r0_63 = sub_080021A8();
        if (temp_r0_63 != 0) {
            return;
        }
        temp_r0_64 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_64;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_64 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_63;
        sub_08000274(&task87CC0, 0x526, 0x201E0);
        sub_08088AA8((u32)table084ED948_090);
        sub_08088AA8((u32)table084ED9A8_090);
        sub_08088AA8((u32)table084EDA08_090);
        sub_08088AA8((u32)table084EDA68_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x1E1U);
        temp_r0_65 = sub_080021A8();
        if (temp_r0_65 != 0) {
            return;
        }
        temp_r0_66 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_66;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_66 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_65;
        sub_08000274(&task87CC0, 0x527, 0x2012C);
        sub_08088AA8((u32)table084EDAC8_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x12DU);
        temp_r0_67 = sub_080021A8();
        if (temp_r0_67 != 0) {
            return;
        }
        temp_r0_68 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_68;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_68 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = temp_r0_67;
        sub_08000274(&task87CC0, 0x528, 0x201E0);
        sub_08088AA8((u32)table084EDB28_090);
        sub_08000420(-0x0E000EEF);
        sub_08057624(0x1E1U);
        if (sub_080021A8() != 0) {
            return;
        }
        var_r6 = 0;
loop_73:
        temp_r0_69 = sub_08001494(0xC00U);
        task87CC0.f20 = (u32)temp_r0_69;
        task87CC0.fC = (u32)sub_08087A5C;
        task87CC0.f10 = (u32)((u8 *)temp_r0_69 + 0xBFC);
        task87CC0.f8 = 0xA;
        task87CC0.f24 = 0;
        sub_08000274(&task87CC0, var_r6 + 0x529, 0x200F0);
        sub_08057624(0xF1U);
        if (sub_080021A8() != 0) {
            return;
        }
        var_r6 += 1;
        if (var_r6 > 7U) {
            sub_08057624(0x78U);
            temp_r0_70 = sub_080021A8();
            if (temp_r0_70 != 0) {
                return;
            }
            temp_r0_71 = sub_08001494(0xC00U);
            task87CC0.f20 = (u32)temp_r0_71;
            task87CC0.fC = (u32)sub_08087A5C;
            task87CC0.f10 = (u32)((u8 *)temp_r0_71 + 0xBFC);
            task87CC0.f8 = 0xA;
            task87CC0.f24 = temp_r0_70;
            sub_08000274(&task87CC0, 0x531, 0x2021C);
            sub_08088AA8((u32)table084EDB88_090);
            sub_08088AA8((u32)table084EDC18_090);
            sub_08088AA8((u32)table084EDCA8_090);
            sub_08000420(-0x0E000EEF);
            sub_08057624(0x21DU);
            temp_r0_72 = sub_080021A8();
            if (temp_r0_72 == 0) {
                temp_r0_73 = sub_08001494(0xC00U);
                task87CC0.f20 = (u32)temp_r0_73;
                task87CC0.fC = (u32)sub_08087A5C;
                task87CC0.f10 = (u32)((u8 *)temp_r0_73 + 0xBFC);
                task87CC0.f8 = 0xA;
                task87CC0.f24 = temp_r0_72;
                sub_08000274(&task87CC0, 0x532, 0x20258);
                sub_08057624(0x259U);
                if (sub_080021A8() == 0) {
                    sub_0800D108();
                    if (sub_0800CB9C() != 0) {
loop_83:
                        if (sub_08067C18() == 0) {
                            sub_080003F0();
                            goto loop_83;
                        }
loop_86:
                        if (sub_08067C08() == 0) {
                            sub_080003F0();
                            goto loop_86;
                        }
                        sub_080021D4();
                        sub_08067BF8();
                        sub_08061E44(2);
                    } else {
                        sub_08061E44(1);
                    }
                    sub_080576C4();
                    sub_080586D0(0x1E);
                    sub_08057624(0x78U);
                    SoftReset(0);
                }
            }
        } else {
            goto loop_73;
        }
    }
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08087CC0);
#endif
#ifdef NONMATCHING
struct Route090 { s16 x, y, endX, endY; s32 resource; u16 tile; u16 pad; u32 flags, duration; };
void spriteInit090(void *, s32, s32, s32, s32) asm("sub_08065158");
void draw090(s32, s32, s32, u16, s32, void *, u32, u32) asm("sub_08007870");
void sub_080887D4(void *arg0, void *arg1)
{
    u32 sprite[13];
    u16 frame;
    u16 frameWait;
    s32 position[2];
    s32 tile;
    u32 step;
    s32 flip;
    u32 progress;
    u32 fixed;
    struct Route090 *route;
    route = arg1;
    sub_080003F4(0xF1FFF111);
    if (route->duration == 0) return;
    do {
        spriteInit090(sprite, route->resource, 1, -1, 0);
        progress = 0;
        frame = 0;
        frameWait = 0;
        step = 1024U / route->duration;
        flip = route->flags & 1;
        fixed = route->flags & 2;
        if (fixed != 0) {
            sub_08000AF0(*(u16 *)((u8 *)arg0 + 0x40) + 20, (u8 *)sprite[3] + 0x120, 1);
            *((u8 *)sprite + 0x25) = *(u8 *)((u8 *)arg0 + 0x40) + 4;
            tile = 0;
            frame = route->tile;
        } else {
            sub_08000AF0(*(u16 *)((u8 *)arg0 + 0x40) + 20, (void *)sprite[3], 1);
            *((u8 *)sprite + 0x1C) = *(u8 *)((u8 *)arg0 + 0x40) + 4;
            tile = route->tile;
            fixed = 0;
        }
        do {
            sub_080659F4(&position[0], route->x, route->endX, progress);
            sub_080659F4(&position[1], route->y, route->endY, progress);
            progress += step;
            if (fixed == 0) sub_08065370(sprite, route->tile, (s32)&frame, (s32)&frameWait, flip);
            draw090(position[0], position[1], tile, frame, 0, (u8 *)sprite + 0x1C, sprite[2], sprite[0]);
            sub_080003F0();
            if (sub_080021A8() != 0) return;
        } while (progress <= 1023U);
        route++;
    } while (route->duration != 0);
}

#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_080887D4);
#endif
struct Task6450 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task6450 gTask6450 asm("gUnk_03006450");
void sub_08088914(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08086860;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task3480 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task3480 gTask3480 asm("gUnk_03003480");
extern void sub_08087788();
void sub_0808894C(u16 a, u32 b, u16 c, u32 d)
{
    u32 p1 = b << 16 | a;
    u32 p2 = d << 16 | c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_08087788;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_0808899C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = 0;
    gTask6450.fC = (u32)sub_08087CC0;
    sub_08000274((u32)&gTask6450, 0);
}
struct Task61B0 { u32 f0, f4, f8, fC, f10, f14, f18, f1C, f20, f24; };
extern struct Task61B0 gTask61B0 asm("gUnk_030061B0");
void sub_080889D4(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1);
}
extern void sub_080878AC();
void sub_08088A18(u16 a, u32 b, u32 c)
{
    u32 p1 = b << 16 | a;
    u32 p2 = c;
    gTask3480.f20 = sub_08001494(0x400);
    gTask3480.fC = (u32)sub_080878AC;
    gTask3480.f10 = gTask3480.f20 + 0x3FC;
    gTask3480.f8 = 0xA;
    gTask3480.f24 = 0;
    sub_08000274_3((u32)&gTask3480, p1, p2);
}
void sub_08088A60(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x10000);
}
void sub_08088AA8(u32 arg)
{
    u8 *base = (u8 *)gUnk_03005CF4;
    u8 *e;
    u32 i;
    u8 *t;
    u32 r;
    for (e = base + 0x7A4, i = 0, t = base + 0x7EC; i <= 0xE; i++, e += 0x70, t = e + 0x48) {
        r = sub_08000470((u32)t);
        if (r == 0) {
            *(u16 *)(e + 0x40) = i;
            *(u32 *)(e + 0x68) = sub_08001494(0x800);
            *(u32 *)(e + 0x54) = (u32)sub_080887D4;
            *(u32 *)(e + 0x58) = *(u32 *)(e + 0x68) + 0x7FC;
            *(u32 *)(e + 0x50) = 0xA;
            *(u32 *)(e + 0x6C) = r;
            sub_08000274_3((u32)t, (u32)e, arg);
            sub_08057624(2);
            break;
        }
    }
}
void sub_08088B24(u32 arg0, u16 arg1)
{
    gTask61B0.f20 = sub_08001494(0xC00);
    gTask61B0.fC = (u32)sub_08087A5C;
    gTask61B0.f10 = gTask61B0.f20 + 0xBFC;
    gTask61B0.f8 = 0xA;
    gTask61B0.f24 = 0;
    sub_08000274_3((u32)&gTask61B0, arg0, arg1 | 0x20000);
}
u32 sub_08088B6C(u8 *tbl, u32 arg1)
{
    u8 *p = (u8 *)&gUnk_03003CE0[sub_080020F4()];
    u32 i;
    u16 *e;
    s32 d;
    u8 *gs;
    u16 zero;
    for (i = 1, zero = 0; i <= 3; i++) {
        e = (u16 *)(tbl + (*(u16 *)((u8 *)gUnk_03005CF4 + 0x36) * 36 + 4) + i * 8);
        d = (*(s32 *)(p + 0x8C) >> 11) - e[0];
        if (d < 0)
            d = -d;
        if (d <= 1 && (*(s32 *)(p + 0x90) >> 11) == e[1]) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            gs = (u8 *)gUnk_03005CF4;
            *(u16 *)(gs + 0x36) = arg1;
            *(u16 *)(gs + 2) = e[2];
            *(u32 *)(gs + 0x71C) = gTbl084F0AC0[e[2]];
            *(u16 *)(gs + 0x10) = zero;
            *(u16 *)(gs + 0x1C) = zero;
            return 1;
        }
    }
    return 0;
}
#ifdef NONMATCHING
extern u8 playerCoord88C24[] asm("gUnk_03003D6C");
extern u32 sceneTable88C24[] asm("gUnk_084F0AC0");
void callback2B8A4_090(void) asm("sub_0802B8A4");
s32 sub_08088C24(u8 *arg0) {
    s16 temp_r0;
    s32 *temp_r2;
    s32 *temp_r2_4;
    s32 *temp_r6_2;
    s32 *var_r2;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1_2;
    s32 temp_r2_2;
    s32 temp_r4_3;
    s32 temp_r6;
    s32 temp_r7;
    s32 var_r0;
    s32 var_r0_2;
    s32 var_r0_3;
    u8 *temp_r0_4;
    u8 *temp_r1;
    u8 *temp_r2_3;
    u8 *temp_r4;
    u8 *temp_r4_2;
    u8 *temp_r4_4;
    u8 *temp_r4_5;

    if (*(u16 *)(gUnk_03005CF4 + 0x10) != 0) {
        temp_r0 = sub_08088B6C(arg0, 0);
        if (temp_r0 != 0) {
            return 1;
        }
        if ((s32) ((s32) *(s32 *)((u8 *)gUnk_03003CE0 + (0x14C * sub_080020F4()) + 0x90) >> 0xB) > 0x39) {
            temp_r2 = (s32 *)((0x14C * sub_080020F4()) + ((u8 *)gUnk_03003CE0 + 0x30));
            *temp_r2 |= 2;
            sub_08067D74();
            sub_0800BB40();
            sub_080586D0(2);
            sub_0801ABE8(3);
            sub_0800D0A8();
            sub_080003F4(0xBBA);
            sub_080570DC(*(u16 *)(gUnk_03005CF4 + 0x0));
            *(u16 *)(gUnk_03005CF4 + 0x58) = temp_r0;
            return 1;
        }
        temp_r1 = (0x14C * sub_080020F4()) + (u8 *)gUnk_03003CE0;
        var_r0 = ((s32) *(s32 *)(temp_r1 + 0x8C) >> 0xB) - 6;
        if (var_r0 < 0) {
            var_r0 = 0 - var_r0;
        }
        if ((var_r0 <= 1) && (((s32) *(s32 *)(temp_r1 + 0x90) >> 0xB) == 9)) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
loop_23:
            if (sub_0801AAE0() == 0) {
                sub_080003F0();
                goto loop_23;
            }
            sub_0800BB40();
            *(u16 *)(gUnk_03005CF4 + 0x36) = 3U;
            *(u16 *)(gUnk_03005CF4 + 0x2) = 0xA;
            var_r2 = (s32 *)(gUnk_03005CF4 + 0x71C);
            var_r0_2 = sceneTable88C24[10];
            goto block_33;
        }
        var_r0_3 = ((s32) *(s32 *)(temp_r1 + 0x8C) >> 0xB) - 0x35;
        if (var_r0_3 < 0) {
            var_r0_3 = 0 - var_r0_3;
        }
        if ((var_r0_3 <= 1) && (((s32) *(s32 *)(temp_r1 + 0x90) >> 0xB) == 9)) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
loop_31:
            if (sub_0801AAE0() == 0) {
                sub_080003F0();
                goto loop_31;
            }
            sub_0800BB40();
            *(u16 *)(gUnk_03005CF4 + 0x36) = 3U;
            *(u16 *)(gUnk_03005CF4 + 0x2) = 0xD;
            var_r2 = (s32 *)(gUnk_03005CF4 + 0x71C);
            var_r0_2 = sceneTable88C24[13];
block_33:
            *var_r2 = (s32 *)(var_r0_2);
            *(u16 *)(gUnk_03005CF4 + 0x10) = 0;
            *(u16 *)(gUnk_03005CF4 + 0x1C) = 0;
            return 1;
        }
        goto block_34;
    }
loop_4:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_4;
    }
    temp_r4 = arg0 + ((*(u16 *)(gUnk_03005CF4 + 0x36) * 0x24) + 4);
    temp_r7 = sub_080020F4();
    temp_r0_2 = sub_0800CF10();
    if (temp_r0_2 == 0) {
        temp_r2_2 = 0x14C * sub_080020F4();
        *(s32 *)((u8 *)gUnk_03003CE0 + temp_r2_2 + 0x8C) = *(u16 *)temp_r4 << 8;
        *(s32 *)((u8 *)gUnk_03003CE0 + temp_r2_2 + 0x90) = *(u16 *)(temp_r4 + 2) << 8;
        temp_r2_3 = temp_r2_2 + (u8 *)gUnk_03003CE0;
        *(s32 *)(temp_r2_3 + 0x94) = (s32) *(s32 *)(temp_r2_3 + 0x8C);
        *(u32 *)(temp_r2_3 + 0x98) = (s32) *(u32 *)(temp_r2_3 + 0x90);
        temp_r0_3 = 0x14C * temp_r7;
        temp_r4_2 = temp_r0_3 + (u8 *)gUnk_03003CE0;
        *(u16 *)(temp_r4_2 + 0x20) = (s16) temp_r0_2;
        temp_r2_4 = (s32 *)(temp_r0_3 + ((u8 *)gUnk_03003CE0 + 0x30));
        temp_r1_2 = *temp_r2_4;
        if (0x2000 & temp_r1_2) {
            *temp_r2_4 = (s32 *)(temp_r1_2 & 0xFFFFDFFF);
            sub_0802996C();
            *(u8 *)(temp_r4_2 + 0x68) = 1;
            sub_0806617C();
        }
    } else {
        sub_0800903C(0, 0, 0, 0, 0, 0);
        temp_r4_3 = 0x14C * temp_r7;
        *(s32 *)((u8 *)gUnk_03003CE0 + temp_r4_3 + 0x8C) = 0xB800 - (temp_r7 * 0x1800);
        *(s32 *)((u8 *)gUnk_03003CE0 + temp_r4_3 + 0x90) = 0x14000;
        sub_080657C4(temp_r7, 1);
        sub_0800CEFC();
        temp_r4_4 = temp_r4_3 + (u8 *)gUnk_03003CE0;
        *(u16 *)(temp_r4_4 + 0x20) = 0xC;
        *(u16 *)(temp_r4_4 + 0x22) = 2;
        *(u16 *)(temp_r4_4 + 0x1C) = 0;
    }
    temp_r0_4 = (u8 *)gUnk_03003CE0 + 0x14C * temp_r7;
    *(s32 *)(temp_r0_4 + 0x94) = (s32) *(s32 *)(temp_r0_4 + 0x8C);
    *(s32 *)(temp_r0_4 + 0x98) = *(s32 *)(temp_r0_4 + 0x90);
    sub_0800CCDC();
    sub_08009930(0, 0);
loop_11:
    if (sub_0800BA6C() == 0) {
        sub_080003F0();
        goto loop_11;
    }
    temp_r6 = 0x14C * temp_r7;
    temp_r4_5 = temp_r6 + playerCoord88C24;
    sub_0800AD04(temp_r4_5, temp_r4_5 + 4, sub_0800CCCC());
    *(u16 *)(gUnk_03005CF4 + 0x10) = 1U;
    *(u16 *)(gUnk_03005CF4 + 0x1C) = 1;
    temp_r6_2 = (s32 *)(temp_r6 + (playerCoord88C24 - 0x5C));
    *temp_r6_2 &= 0x2000;
    sub_08067D74();
    sub_08057624(0xAU);
    sub_08057328(0, callback2B8A4_090);
    sub_08015EF8();
    sub_08015C38();
block_34:
    return 0;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088C24);
#endif
#ifdef NONMATCHING
extern u8 playerCoord88F30[] asm("gUnk_03003D6C");
extern u32 sceneTable88F30[] asm("gUnk_084F0AC0");
void callback2C2A0_090(void) asm("sub_0802C2A0");
s32 sub_08088F30(u8 *arg0) {
    s32 temp_r2;
    s32 temp_r4;
    s32 var_r0;
    u8 *temp_r2_3;
    u32 var_r4;
    u8 *temp_r2_2;
    u8 *temp_r4_2;
    u8 *temp_r5;
    u8 *temp_r5_2;

    if (*(u16 *)(gUnk_03005CF4 + 0x10) == 0) {
loop_3:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_3;
        }
        temp_r4 = sub_080020F4();
        temp_r5 = arg0 + ((*(u16 *)(gUnk_03005CF4 + 0x36) * 0x24) + 4);
        sub_0800CCDC();
        temp_r2 = 0x14C * sub_080020F4();
        *(s32 *)((u8 *)gUnk_03003CE0 + temp_r2 + 0x8C) = *(u16 *)(temp_r5 + 0) << 8;
        *(s32 *)((u8 *)gUnk_03003CE0 + temp_r2 + 0x90) = *(u16 *)(temp_r5 + 2) << 8;
        temp_r2_2 = temp_r2 + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r2_2 + 0x94) = (s32) *(u32 *)(temp_r2_2 + 0x8C);
        *(u32 *)(temp_r2_2 + 0x98) = (s32) *(u32 *)(temp_r2_2 + 0x90);
        sub_08009930(0, 1);
loop_6:
        if (sub_0800BA6C() == 0) {
            sub_080003F0();
            goto loop_6;
        }
        temp_r4_2 = (0x14C * temp_r4) + playerCoord88F30;
        sub_0800AD04(temp_r4_2, temp_r4_2 + 4, sub_0800CCCC());
        *(u16 *)(gUnk_03005CF4 + 0x10) = 1U;
        *(u16 *)(gUnk_03005CF4 + 0x1C) = 1;
        sub_08015C38();
        sub_08015EF8();
        sub_08057328(0, callback2C2A0_090);
        goto block_25;
    }
    temp_r2_3 = (u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4();
    var_r4 = 1;
loop_9:
    temp_r5_2 = arg0 + ((*(u16 *)(gUnk_03005CF4 + 0x36) * 0x24) + 4) + (var_r4 * 8);
    var_r0 = ((s32) *(s32 *)(temp_r2_3 + 0x8C) >> 0xB) - *(u16 *)(temp_r5_2 + 0);
    if (var_r0 < 0) {
        var_r0 = 0 - var_r0;
    }
    if ((var_r0 <= 1) && (((s32) *(s32 *)(temp_r2_3 + 0x90) >> 0xB) == *(u16 *)(temp_r5_2 + 2))) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
loop_15:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_15;
        }
        sub_0800BB40();
        if (*(u16 *)(temp_r5_2 + 4) == 0) {
            if (var_r4 == 2) {
                *(u16 *)(gUnk_03005CF4 + 0x36) = 4U;
            } else if (var_r4 == 3) {
                *(u16 *)(gUnk_03005CF4 + 0x36) = 5U;
            }
        } else {
            *(u16 *)(gUnk_03005CF4 + 0x36) = 0U;
        }
        *(u16 *)(gUnk_03005CF4 + 0x2) = (u16) *(u16 *)(temp_r5_2 + 4);
        *(u32 *)(gUnk_03005CF4 + 0x71C) = (s32) sceneTable88F30[*(u16 *)(temp_r5_2 + 4)];
        *(u16 *)(gUnk_03005CF4 + 0x10) = 0U;
        *(u16 *)(gUnk_03005CF4 + 0x1C) = 0;
        return 1;
    }
    var_r4 += 1;
    if (var_r4 > 3U) {
block_25:
        if ((s32) ((s32) *(s32 *)((u8 *)gUnk_03003CE0 + (0x14C * sub_080020F4()) + 0x90) >> 0xB) > 0x23) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
loop_28:
            if (sub_0801AAE0() == 0) {
                sub_080003F0();
                goto loop_28;
            }
            sub_0800BB40();
            *(u16 *)(gUnk_03005CF4 + 0x36) = 3U;
            *(u16 *)(gUnk_03005CF4 + 0x2) = 6U;
            *(u32 *)(gUnk_03005CF4 + 0x71C) = (s32) sceneTable88F30[6];
            *(u16 *)(gUnk_03005CF4 + 0x10) = 0U;
            *(u16 *)(gUnk_03005CF4 + 0x1C) = 0;
            return 1;
        }
        if ((s32) ((s32) *(s32 *)((u8 *)gUnk_03003CE0 + (0x14C * sub_080020F4()) + 0x8C) >> 0xB) <= 2) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
loop_33:
            if (sub_0801AAE0() == 0) {
                sub_080003F0();
                goto loop_33;
            }
            sub_0800BB40();
            *(u16 *)(gUnk_03005CF4 + 0x36) = 0U;
            *(u16 *)(gUnk_03005CF4 + 0x2) = 0xAU;
            *(u32 *)(gUnk_03005CF4 + 0x71C) = (s32) sceneTable88F30[10];
            *(u16 *)(gUnk_03005CF4 + 0x10) = 0U;
            return 1;
        }
        if ((s32) ((s32) *(s32 *)((u8 *)gUnk_03003CE0 + (0x14C * sub_080020F4()) + 0x8C) >> 0xB) > 0x57) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
loop_38:
            if (sub_0801AAE0() == 0) {
                sub_080003F0();
                goto loop_38;
            }
            sub_0800BB40();
            *(u16 *)(gUnk_03005CF4 + 0x36) = 0U;
            *(u16 *)(gUnk_03005CF4 + 0x2) = 0xDU;
            *(u32 *)(gUnk_03005CF4 + 0x71C) = (s32) sceneTable88F30[13];
            *(u16 *)(gUnk_03005CF4 + 0x10) = 0U;
            *(u16 *)(gUnk_03005CF4 + 0x1C) = 0;
            return 1;
        }
        return 0;
    }
    goto loop_9;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08088F30);
#endif
#ifdef NONMATCHING
extern u8 playerCoord89204[] asm("gUnk_03003D6C");
extern u32 sceneTable89204[] asm("gUnk_084F0AC0");
void callback2AA28_090(void) asm("sub_0802AA28");
s32 sub_08089204(u8 *arg0) {
    s32 *temp_r5;
    s32 temp_r2;
    s32 temp_r8;
    u8 *temp_r2_2;
    u8 *temp_r4;
    u8 *temp_r6;

    if (*(u16 *)(gUnk_03005CF4 + 0x10) == 0) {
loop_3:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_3;
        }
        temp_r8 = sub_080020F4();
        temp_r6 = arg0 + ((*(u16 *)(gUnk_03005CF4 + 0x36) * 0x24) + 4);
        sub_0800CCDC();
        temp_r5 = (s32 *)((u8 *)gUnk_03003CE0 + 0x14C * temp_r8 + 0x30);
        if (*temp_r5 & 0x2000) {
            sub_0802996C();
        }
        *temp_r5 &= 0xFFFFFBFF;
        sub_08067D74();
        temp_r2 = 0x14C * sub_080020F4();
        *(u32 *)(temp_r2 + (u8 *)gUnk_03003CE0 + 0x8C) = *(u16 *)(temp_r6) << 8;
        *(u32 *)(temp_r2 + (u8 *)gUnk_03003CE0 + 0x90) = *(u16 *)(temp_r6 + 2) << 8;
        temp_r2_2 = temp_r2 + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r2_2 + 0x94) = (s32) *(u32 *)(temp_r2_2 + 0x8C);
        *(u32 *)(temp_r2_2 + 0x98) = (s32) *(u32 *)(temp_r2_2 + 0x90);
        sub_08009930(0, 2);
loop_8:
        if (sub_0800BA6C() == 0) {
            sub_080003F0();
            goto loop_8;
        }
        *(u16 *)((u8 *)&gUnk_03003170 + 0x76) = 0x20;
        temp_r4 = (0x14C * temp_r8) + playerCoord89204;
        sub_0800AD04(temp_r4, temp_r4 + 4, sub_0800CCCC());
        *(u16 *)(gUnk_03005CF4 + 0x10) = 1U;
        *(u16 *)(gUnk_03005CF4 + 0x1C) = 1;
        sub_08015C38();
        sub_08015EF8();
        sub_08057328(0, callback2AA28_090);
    }
    if (((s32) *(s32 *)((u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4() + 0x90) >> 0xB) == 0x1F) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
loop_13:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_13;
        }
        sub_0800BB40();
        *(u16 *)(gUnk_03005CF4 + 0x36) = 2U;
        *(u16 *)(gUnk_03005CF4 + 2) = 8;
        *(u32 *)(gUnk_03005CF4 + 0x71C) = (s32) sceneTable89204[8];
        *(u16 *)(gUnk_03005CF4 + 0x10) = 0U;
        *(u16 *)(gUnk_03005CF4 + 0x1C) = 0;
        return 1;
    }
    return 0;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089204);
#endif
#ifdef NONMATCHING
extern u8 playerCoord89384[] asm("gUnk_03003D6C");
extern u32 sceneTable89384[] asm("gUnk_084F0AC0");
void callback2C674_090(void) asm("sub_0802C674");
s32 sub_08089384(u8 *arg0) {
    s32 temp_r2;
    s32 temp_r7;
    u8 *temp_r0;
    u8 *temp_r2_2;
    u8 *temp_r4;
    u8 *temp_r4_2;

    if (*(u16 *)(gUnk_03005CF4 + 0x10) == 0) {
loop_3:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_3;
        }
        temp_r7 = sub_080020F4();
        temp_r4 = arg0 + ((*(u16 *)(gUnk_03005CF4 + 0x36) * 0x24) + 4);
        sub_0800CCDC();
        temp_r2 = 0x14C * sub_080020F4();
        *(u32 *)(temp_r2 + (u8 *)gUnk_03003CE0 + 0x8C) = *(u16 *)(temp_r4) << 8;
        *(u32 *)(temp_r2 + (u8 *)gUnk_03003CE0 + 0x90) = *(u16 *)(temp_r4 + 2) << 8;
        temp_r2_2 = temp_r2 + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r2_2 + 0x94) = (s32) *(u32 *)(temp_r2_2 + 0x8C);
        *(u32 *)(temp_r2_2 + 0x98) = (s32) *(u32 *)(temp_r2_2 + 0x90);
        temp_r0 = (0x14C * temp_r7) + (u8 *)gUnk_03003CE0;
        *(u32 *)(temp_r0 + 0x94) = (s32) *(u32 *)(temp_r0 + 0x8C);
        *(u32 *)(temp_r0 + 0x98) = (s32) *(u32 *)(temp_r0 + 0x90);
        if (sub_08057B98(0xA) != 0) {
            sub_08009930(0, 0x14);
        } else {
            sub_08009930(0, 3);
        }
loop_8:
        if (sub_0800BA6C() == 0) {
            sub_080003F0();
            goto loop_8;
        }
        temp_r4_2 = (0x14C * temp_r7) + playerCoord89384;
        sub_0800AD04(temp_r4_2, temp_r4_2 + 4, sub_0800CCCC());
        sub_08057328(0, callback2C674_090);
        sub_08015EF8();
        sub_08015C38();
        *(u16 *)(gUnk_03005CF4 + 0x10) = 1U;
        *(u16 *)(gUnk_03005CF4 + 0x1C) = 1;
        goto block_17;
    }
    if (sub_08088B6C(arg0, 3) != 0) {
        return 1;
    }
    if ((s32) ((s32) *(s32 *)((u8 *)gUnk_03003CE0 + 0x14C * sub_080020F4() + 0x90) >> 0xB) > 0x37) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
loop_15:
        if (sub_0801AAE0() == 0) {
            sub_080003F0();
            goto loop_15;
        }
        sub_0800BB40();
        *(u16 *)(gUnk_03005CF4 + 0x36) = 3U;
        *(u16 *)(gUnk_03005CF4 + 2) = 0;
        *(u32 *)(gUnk_03005CF4 + 0x71C) = (s32) sceneTable89384[0];
        *(u16 *)(gUnk_03005CF4 + 0x10) = 0U;
        *(u16 *)(gUnk_03005CF4 + 0x1C) = 0;
        return 1;
    }
block_17:
    return 0;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089384);
#endif
#ifdef NONMATCHING
extern u8 playerCoord89500[] asm("gUnk_03003D6C");
void spriteInit090(void *, s32, s32, s32, s32) asm("sub_08065158");
void callback3D99C_090(void) asm("sub_0803D99C");
void callback2CF84_090(void) asm("sub_0802CF84");
s32 sub_08089500(u8 *input) {
    u32 sprite[13];
    register u8 *arg0 asm("r4") = input;
    s32 *temp_r2_3;
    s32 *temp_r2_6;
    s32 temp_r2_4;
    s32 temp_r2_5;
    register s32 temp_r6 asm("r6");
    s32 var_r0;
    register u8 *posBase asm("r1");
    u8 *temp_r0;
    register u8 *temp_r4 asm("r4");
    u8 *temp_r4_2;
    u8 *temp_r4_3;

    if (*(u16 *)(gUnk_03005CF4 + 0x10) != 0) {
        goto earlyExit;
    }
loop_4:
    if (sub_0801AAE0() == 0) {
        sub_080003F0();
        goto loop_4;
    }
    temp_r6 = sub_080020F4();
    temp_r4 = arg0 + ((*(u16 *)(gUnk_03005CF4 + 0x36) * 0x24) + 4);
    if (sub_0800CF10() == 0) {
        { register s32 player asm("r0") = sub_080020F4();
          register u8 *base asm("r3") = (u8 *)gUnk_03003CE0;
          register s32 index asm("r2");
          register u8 *dst asm("r1");
          asm("" : "+r"(player), "+r"(base)); index = 0x14C * player;
          asm("" : "+r"(index));
          dst = base + 0x8C; asm("" : "+r"(dst)); dst += index;
          *(u32 *)dst = *(u16 *)temp_r4 << 8;
          dst = base + 0x90; asm("" : "+r"(dst)); dst += index;
          *(u32 *)dst = *(u16 *)(temp_r4 + 2) << 8;
          { register u8 *p asm("r2") = base + index;
            register u8 *q asm("r4");
            register u32 x asm("r0"), y asm("r1");
            asm("" : "+r"(p)); q = p + 0x94; p += 0x8C;
            asm("" : "+r"(p), "+r"(q));
            x = *(u32 *)p; y = *(u32 *)(p + 4);
            asm("" : "+r"(x), "+r"(y));
            *(u32 *)q = x; *(u32 *)(q + 4) = y; }
          index = 0x14C * temp_r6; asm("" : "+r"(index));
          base += 0x30; asm("" : "+r"(base));
          temp_r2_3 = (s32 *)(index + base); *temp_r2_3 &= 0xFFFFDFD9; }
    } else {
        if (sub_0800CDC0() != 0) {
            sub_08056F8C();
            sub_0805A66C();
            sub_080169C8();
            sub_0800CDAC();
            sub_080267DC();
            if (gUnk_03003170.curLevel == 0xD) {
                sub_080B6360();
            }
        } else {
            sub_080657C4(temp_r6, 1);
        }
        if (temp_r6 == 1) goto pos1;
        if ((u32)temp_r6 < 1) goto posDefault;
        if (temp_r6 == 2) goto pos2;
        if (temp_r6 == 3) goto pos3;
posDefault:
            { register u8 *base asm("r3") = (u8 *)gUnk_03003CE0;
              register s32 index asm("r2");
              register u8 *dst asm("r0");
              asm("" : "+r"(base)); index = 0x14C * temp_r6;
              asm("" : "+r"(index)); temp_r2_4 = index;
              dst = base + 0x8C; asm("" : "+r"(dst)); dst += index;
              *(u32 *)dst = 0x12C00;
              dst = base + 0x90; asm("" : "+r"(dst)); dst += index;
              *(u32 *)dst = 0x5200; posBase = base; }
            goto posDone;
pos1:
            { register u32 offset asm("r0") = 0x1D8;
              register u8 *dst asm("r2");
              posBase = (u8 *)gUnk_03003CE0;
              asm("" : "+r"(posBase), "+r"(offset)); dst = posBase + offset;
              asm("" : "+r"(dst)); *(u32 *)dst = 0x12100; }
            var_r0 = 0x1DC;
block_20:
            *(u32 *)(posBase + var_r0) = 0x5200;
            goto posDone;
pos2:
            { register u32 offset asm("r0") = 0x324;
              register u8 *dst asm("r2");
              posBase = (u8 *)gUnk_03003CE0;
              asm("" : "+r"(posBase), "+r"(offset)); dst = posBase + offset;
              asm("" : "+r"(dst)); *(u32 *)dst = 0x13700; }
            var_r0 = 0x328;
            goto block_20;
pos3:
            { register u32 offset asm("r0") = 0x470;
              register u8 *dst asm("r2");
              posBase = (u8 *)gUnk_03003CE0;
              asm("" : "+r"(posBase), "+r"(offset)); dst = posBase + offset;
              asm("" : "+r"(dst)); *(u32 *)dst = 0x11600; }
            var_r0 = 0x474;
            goto block_20;
posDone:
        temp_r2_5 = 0x14C * temp_r6;
        temp_r4_2 = temp_r2_5 + posBase;
        *(u16 *)(temp_r4_2 + 0x20) = 0;
        temp_r2_6 = (s32 *)(temp_r2_5 + ((u8 *)gUnk_03003CE0 + 0x30));
        *temp_r2_6 = (s32 *)((*temp_r2_6 & 0xFFFFDFDB) | 2);
        sub_0802996C();
        spriteInit090(sprite, 0x5008C, 8, -1, 0);
        sub_08000AF0(0x17U, (void *)sprite[3], 2U);
        *(u8 *)(temp_r4_2 + 0x68) = 1;
        sub_0806617C();
    }
    sub_0800CCDC();
    sub_0800903C(0, 0, 0, 0, 0, 0);
    temp_r0 = (u8 *)gUnk_03003CE0 + 0x14C * temp_r6;
    *(u32 *)(temp_r0 + 0x94) = (s32) *(u32 *)(temp_r0 + 0x8C);
    *(u32 *)(temp_r0 + 0x98) = *(u32 *)(temp_r0 + 0x90);
    sub_08067D74();
    sub_08057624(0xAU);
    sub_08009930(0, 4);
loop_24:
    if (sub_0800BA6C() == 0) {
        sub_080003F0();
        goto loop_24;
    }
    temp_r4_3 = (0x14C * temp_r6) + playerCoord89500;
    sub_0800AD04(temp_r4_3, temp_r4_3 + 4, sub_0800CCCC());
    if (sub_0800CF10() != 0) {
        sub_08057328(0, callback3D99C_090);
        sub_0800CEFC();
    } else {
        sub_08057328(0, callback2CF84_090);
    }
    sub_08015EF8();
    *(u16 *)(gUnk_03005CF4 + 0x10) = 1U;
    *(u16 *)(gUnk_03005CF4 + 0x1C) = 1;
    sub_08015C38();
block_31:
    return 0;
earlyExit:
    return sub_08088B6C(arg0, 4) != 0;
}


#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_08089500);
#endif
s32 sub_08089784(u8 *table)
{
    struct State978491 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct Pos978491 { u32 x, y; };
    register const u16 *position asm("r4");
    register u8 *player asm("r2");
    s32 *coordinates;
    extern struct State978491 *state978491 asm("gUnk_03005CF4");
    extern u8 players978491[] asm("gUnk_03003CE0");
    extern u8 coords978491[] asm("gUnk_03003D6C");
    extern u8 profile978491[] asm("gUnk_03003170");
    extern u32 scripts978491[] asm("gUnk_084F0AC0");
    extern void callback978491(void) asm("sub_0802D050");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId; register s32 offset asm("r2");

    if (state978491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r4")=state978491->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=players978491;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        offset+=(u32)base;player=(u8 *)offset;*(struct Pos978491 *)(player+0x94)=*(struct Pos978491 *)(player+0x8C);}
        sub_08009930(0, 5);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        {register u8 *p asm("r0")=profile978491; register u32 v asm("r1");asm("" : "+r"(p)); p+=0x76;v=0x20;*(u16 *)p=v;}
        coordinates = (s32 *)(coords978491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callback978491);
        sub_08015EF8();
        state978491->step = 1;
        state978491->active = 1;
        sub_08015C38();
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1")=players978491; register u32 stride asm("r2")=0x14c; idx*=stride;p+=0x90;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x1E) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        state978491->row = 3;
        state978491->destination = 8;
        state978491->script = scripts978491[8];
        state978491->step = 0;
        state978491->active = 0;
        return 1;
    }
    return 0;
    }
}
s32 sub_080898D4(u8 *input)
{
    struct State98D491 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct Pos98D491 { u32 x, y; };
    struct Exit98D491 { u16 x, y, destination, unused; };
    register u8 *table asm("r8")=input;
    register const u16 *position asm("r5");
    u8 *player;
    s32 *coordinates;
    register const struct Exit98D491 *exit asm("r5");
    u32 exitIndex;
    s32 difference;
    extern struct State98D491 *state98D491 asm("gUnk_03005CF4");
    extern u8 players98D491[] asm("gUnk_03003CE0");
    extern u8 coords98D491[] asm("gUnk_03003D6C");
    extern u32 scripts98D491[] asm("gUnk_084F0AC0");
    extern void callback98D491(void) asm("sub_0802D200");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    register s32 myId asm("r4"); register s32 offset asm("r2");

    if (state98D491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=state98D491->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=players98D491;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct Pos98D491 *)(p+0x94)=*(struct Pos98D491 *)(p+0x8C);}}
        sub_08009930(0, 0xC);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coords98D491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        state98D491->step = 1;
        state98D491->active = 1;
        sub_08015C38();
        sub_08057328(0, (u32)callback98D491);
        sub_08015EF8();
    } else {
    player = players98D491 + sub_080020F4() * 0x14C;
    for (exitIndex = 1; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=state98D491->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct Exit98D491 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            if (exit->destination == 7 && exitIndex != 2) {
                if (exitIndex == 3)
                    state98D491->row = 1;
            } else {
                state98D491->row = 0;
            }
            state98D491->destination = exit->destination;
            state98D491->script = scripts98D491[exit->destination];
            state98D491->step = 0;
            state98D491->active = 0;
            return 1;
        }
    }
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1")=players98D491; register u32 stride asm("r2")=0x14c; idx*=stride;p+=0x90;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x11) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        state98D491->row = 1;
        state98D491->destination = 0;
        state98D491->script = scripts98D491[0];
        state98D491->step = 0;
        state98D491->active = 0;
        return 1;
    }
    return 0;
    }
}
s32 sub_08089AE4(u8 *table)
{
    struct State9AE491 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct Pos9AE491 { u32 x, y; };
    struct Exit9AE491 { u16 x, y, destination, unused; };
    register const u16 *position asm("r6");
    u8 *player;
    s32 *coordinates;
    register const struct Exit9AE491 *exit asm("r6");
    u32 exitIndex;
    register u32 zero asm("r8");
    s32 difference;
    extern struct State9AE491 *state9AE491 asm("gUnk_03005CF4");
    extern u8 players9AE491[] asm("gUnk_03003CE0");
    extern u8 coords9AE491[] asm("gUnk_03003D6C");
    extern u32 scripts9AE491[] asm("gUnk_084F0AC0");
    extern void callback9AE491(void) asm("sub_0802D2C8");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    register s32 myId asm("r8"); register s32 offset asm("r2");

    if (state9AE491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=state9AE491->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r4"); register u8 *px asm("r1"); register u32 stride asm("r5");
        offset=sub_080020F4();base=players9AE491;asm("" : "+r"(base));stride=0x14c;offset*=stride;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct Pos9AE491 *)(p+0x94)=*(struct Pos9AE491 *)(p+0x8C);}
        sub_0800CCDC();
        {register u32 *flags asm("r2");register s32 index asm("r2")=myId;index*=stride;base+=0x30;index+=(u32)base;flags=(u32 *)index;*flags &= 0x2000;}}
        sub_08067D74();
        sub_08009930(0, 6);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coords9AE491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callback9AE491);
        sub_08015EF8();
        state9AE491->step = 1;
        state9AE491->active = 1;
        sub_08015C38();
        return 0;
    }
    player = players9AE491 + sub_080020F4() * 0x14C;
    exitIndex=1;zero=0;
    for (; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=state9AE491->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct Exit9AE491 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            if (exitIndex == 1)
                state9AE491->row = exitIndex;
            else if (exitIndex == 2)
                state9AE491->row = exitIndex;
            {register struct State9AE491 *p asm("r1")=state9AE491;
            p->destination=exit->destination;p->script=scripts9AE491[exit->destination];p->step=zero;p->active=zero;}
            return 1;
        }
    }
    return 0;
}
s32 sub_08089CA0(u8 *table)
{
    struct State9CA091 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct Pos9CA091 { u32 x, y; };
    struct Exit9CA091 { u16 x, y, destination, unused; };
    register const u16 *position asm("r4");
    u8 *player;
    s32 *coordinates;
    register const struct Exit9CA091 *exit asm("r4");
    u32 exitIndex;
    register u32 zero asm("r8");
    s32 difference;
    extern struct State9CA091 *state9CA091 asm("gUnk_03005CF4");
    extern u8 players9CA091[] asm("gUnk_03003CE0");
    extern u8 coords9CA091[] asm("gUnk_03003D6C");
    extern u32 scripts9CA091[] asm("gUnk_084F0AC0");
    extern void callback9CA091(void) asm("sub_0802D568");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    register s32 myId asm("r6"); register s32 offset asm("r2");

    if (state9CA091->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=state9CA091->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1"); register u32 stride asm("r5");
        offset=sub_080020F4();base=players9CA091;asm("" : "+r"(base));stride=0x14c;offset*=stride;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");register struct Pos9CA091 *dest asm("r4");offset+=(u32)base;p=(u8 *)offset;dest=(struct Pos9CA091 *)(p+0x94);*dest=*(struct Pos9CA091 *)(p+0x8C);}
        {register u32 *flags asm("r2");register s32 index asm("r2")=myId;index*=stride;base+=0x30;index+=(u32)base;flags=(u32 *)index;*flags &= 0x2000;}}
        sub_08067D74();
        sub_08009930(0, 0xD);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coords9CA091 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08015EF8();
        sub_08057328(0, (u32)callback9CA091);
        state9CA091->step = 1;
        state9CA091->active = 1;
        sub_08015C38();
    } else {
    player = players9CA091 + sub_080020F4() * 0x14C;
    exitIndex=1;{register struct State9CA091 **p asm("r6")=&state9CA091;asm("" : "=r"(zero) : "r"(p), "0"(0));}
    for (; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=state9CA091->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct Exit9CA091 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            if (exitIndex == 1)
                state9CA091->row = exitIndex;
            else if (exitIndex == 2)
                state9CA091->row = 1;
            else {register struct State9CA091 *p asm("r0")=state9CA091;register u32 z asm("r1")=zero;p->row=z;}
            {register struct State9CA091 *p asm("r1")=state9CA091;p->destination=exit->destination;p->script=scripts9CA091[exit->destination];p->step=zero;p->active=zero;}
            return 1;
        }
    }
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1")=players9CA091; register u32 stride asm("r2")=0x14c; idx*=stride;p+=0x90;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x11) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        state9CA091->row = 2;
        state9CA091->destination = 1;
        state9CA091->script = scripts9CA091[1];
        state9CA091->step = 0;
        state9CA091->active = 0;
        return 1;
    }
    return 0;
    }
}
s32 sub_08089EC4(u8 *table)
{
    struct State9EC491 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct Pos9EC491 { u32 x, y; };
    register const u16 *position asm("r4");
    register u8 *player asm("r2");
    s32 *coordinates;
    extern struct State9EC491 *state9EC491 asm("gUnk_03005CF4");
    extern u8 players9EC491[] asm("gUnk_03003CE0");
    extern u8 coords9EC491[] asm("gUnk_03003D6C");
    extern u32 scripts9EC491[] asm("gUnk_084F0AC0");
    extern void callback9EC491(void) asm("sub_0802E7AC");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId; register s32 offset asm("r2");

    if (state9EC491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r4")=state9EC491->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=players9EC491;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        offset+=(u32)base;player=(u8 *)offset;*(struct Pos9EC491 *)(player+0x94)=*(struct Pos9EC491 *)(player+0x8C);}
        sub_08009930(0, 0x10);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coords9EC491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callback9EC491);
        sub_08015EF8();
        state9EC491->step = 1;
        state9EC491->active = 1;
        sub_08015C38();
    }
    { register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1")=players9EC491; register u32 stride asm("r2")=0x14c; idx*=stride;p+=0x90;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x25) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        state9EC491->row = 1;
        state9EC491->destination = 8;
        state9EC491->script = scripts9EC491[8];
        state9EC491->step = 0;
        state9EC491->active = 0;
        return 1;
    }
    return 0;
    }
}
s32 sub_0808A008(u8 *input)
{
    struct StateA00891 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosA00891 { u32 x, y; };
    struct ExitA00891 { u16 x, y, destination, unused; };
    register u8 *table asm("r8")=input;
    register const u16 *position asm("r5");
    u8 *player;
    s32 *coordinates;
    register const struct ExitA00891 *exit asm("r5");
    u32 exitIndex;
    s32 difference;
    register u8 *laterBase asm("r5"); register u32 laterStride asm("r4");
    extern struct StateA00891 *stateA00891 asm("gUnk_03005CF4");
    extern u8 playersA00891[] asm("gUnk_03003CE0");
    extern u8 coordsA00891[] asm("gUnk_03003D6C");
    extern u32 scriptsA00891[] asm("gUnk_084F0AC0");
    extern void callbackA00891(void) asm("sub_0802D73C");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    register s32 myId asm("r4"); register s32 offset asm("r2");

    if (stateA00891->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=stateA00891->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=playersA00891;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct PosA00891 *)(p+0x94)=*(struct PosA00891 *)(p+0x8C);}}
        sub_08009930(0, 8);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA00891 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        stateA00891->step = 1;
        stateA00891->active = 1;
        sub_08015C38();
        if (sub_0800CB9C() == 0 && sub_08057AE8(0x1A) == 0)
            sub_08058688(0xDB);
        sub_08057328(0, (u32)callbackA00891);
        sub_08015EF8();
        sub_08015C38();
    } else {
    player = playersA00891 + sub_080020F4() * 0x14C;
    for (exitIndex = 1; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=stateA00891->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct ExitA00891 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            if (exit->destination == 7 && exitIndex != 2) {
                if (exitIndex == 3)
                    stateA00891->row = 1;
            } else {
                stateA00891->row = 0;
            }
            stateA00891->destination = exit->destination;
            stateA00891->script = scriptsA00891[exit->destination];
            stateA00891->step = 0;
            stateA00891->active = 0;
            return 1;
        }
    }
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1"); laterBase=playersA00891;laterStride=0x14c;idx*=laterStride;p=laterBase+0x8C;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x1B) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        stateA00891->row = 3;
        stateA00891->destination = 1;
        stateA00891->script = scriptsA00891[1];
        stateA00891->step = 0;
        stateA00891->active = 0;
        return 1;
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1"); idx*=laterStride;p=laterBase+0x90;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x24) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        stateA00891->row = 4;
        stateA00891->destination = 0;
        stateA00891->script = scriptsA00891[0];
        stateA00891->step = 0;
        stateA00891->active = 0;
        return 1;
    }
    return 0;
    }
    }
}
s32 sub_0808A294(u8 *table)
{
    struct StateA29491 { u8 p0[0x10]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; };
    struct PosA29491 { u32 x, y; };
    register const u16 *position asm("r4");
    u8 *player;
    register u8 *playerBase asm("r3");
    register u32 playerOffset asm("r2");
    register u8 *field asm("r1");
    s32 *coordinates;
    extern struct StateA29491 *stateA29491 asm("gUnk_03005CF4");
    extern u8 playersA29491[] asm("gUnk_03003CE0");
    extern u8 coordsA29491[] asm("gUnk_03003D6C");
    extern void callbackA29491(void) asm("sub_0802D8C4");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId;

    if (stateA29491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        position = (u16 *)(table + (stateA29491->row * 0x24 + 4));
        sub_0800CCDC();
        playerOffset = sub_080020F4();
        playerBase = playersA29491;
        playerOffset *= 0x14C;
        field = playerBase;
        field += 0x8C;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[0] << 8;
        field = playerBase;
        field += 0x90;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[1] << 8;
        player = (u8 *)(playerOffset + (u32)playerBase);
        *(struct PosA29491 *)(player + 0x94) = *(struct PosA29491 *)(player + 0x8C);
        sub_08009930(0, 0xE);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA29491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackA29491);
        sub_08015EF8();
        sub_08015C38();
        stateA29491->step = 1;
        stateA29491->active = 1;
    } else if (sub_08088B6C(table, 1) != 0) {
        return 1;
    }
    return 0;
}
s32 sub_0808A380(u8 *table)
{
    struct StateA38091 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosA38091 { u32 x, y; };
    register const u16 *position asm("r4");
    u8 *player;
    register u8 *playerBase asm("r3");
    register u32 playerOffset asm("r2");
    register u8 *field asm("r1");
    register u8 *checkBase asm("r1");
    register u32 checkStride asm("r2");
    register u32 checkOffset asm("r0");
    s32 *coordinates;
    extern struct StateA38091 *stateA38091 asm("gUnk_03005CF4");
    extern u8 playersA38091[] asm("gUnk_03003CE0");
    extern u8 coordsA38091[] asm("gUnk_03003D6C");
    extern u32 scriptsA38091[] asm("gUnk_084F0AC0");
    extern void callbackA38091(void) asm("sub_0802DE0C");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId;

    if (stateA38091->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        position = (u16 *)(table + (stateA38091->row * 0x24 + 4));
        sub_0800CCDC();
        playerOffset = sub_080020F4();
        playerBase = playersA38091;
        playerOffset *= 0x14C;
        field = playerBase;
        field += 0x8C;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[0] << 8;
        field = playerBase;
        field += 0x90;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[1] << 8;
        player = (u8 *)(playerOffset + (u32)playerBase);
        *(struct PosA38091 *)(player + 0x94) = *(struct PosA38091 *)(player + 0x8C);
        sub_08009930(0, 0xB);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA38091 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackA38091);
        sub_08015EF8();
        sub_08015C38();
        stateA38091->step = 1;
        stateA38091->active = 1;
    } else if (sub_08088B6C(table, 0) != 0) {
        return 1;
    }
    checkOffset = sub_080020F4();
    checkBase = playersA38091;
    checkStride = 0x14C;
    checkOffset *= checkStride;
    checkBase += 0x90;
    if ((*(s32 *)(checkOffset + (u32)checkBase) >> 11) > 0x25) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        stateA38091->row = 2;
        stateA38091->destination = 0xA;
        stateA38091->script = scriptsA38091[10];
        stateA38091->step = 0;
        stateA38091->active = 0;
        return 1;
    }
    return 0;
}
s32 sub_0808A4D4(u8 *input)
{
    struct StateA4D491 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosA4D491 { u32 x, y; };
    struct ExitA4D491 { u16 x, y, destination, unused; };
    register u8 *table asm("r8")=input;
    register const u16 *position asm("r5");
    u8 *player;
    s32 *coordinates;
    register const struct ExitA4D491 *exit asm("r5");
    u32 exitIndex;
    s32 difference;
    register u8 *laterBase asm("r5"); register u32 laterStride asm("r4");
    extern struct StateA4D491 *stateA4D491 asm("gUnk_03005CF4");
    extern u8 playersA4D491[] asm("gUnk_03003CE0");
    extern u8 coordsA4D491[] asm("gUnk_03003D6C");
    extern u32 scriptsA4D491[] asm("gUnk_084F0AC0");
    extern void callbackA4D491(void) asm("sub_0802D800");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    register s32 myId asm("r4"); register s32 offset asm("r2");

    if (stateA4D491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=stateA4D491->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=playersA4D491;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct PosA4D491 *)(p+0x94)=*(struct PosA4D491 *)(p+0x8C);}}
        sub_08009930(0, 7);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA4D491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        stateA4D491->step = 1;
        stateA4D491->active = 1;
        sub_08015C38();
        sub_08057328(0, (u32)callbackA4D491);
        sub_08015EF8();
    } else {
    player = playersA4D491 + sub_080020F4() * 0x14C;
    for (exitIndex = 1; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=stateA4D491->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct ExitA4D491 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            if (exit->destination == 7 && exitIndex != 2) {
                if (exitIndex == 3)
                    stateA4D491->row = 1;
            } else {
                stateA4D491->row = 0;
            }
            stateA4D491->destination = exit->destination;
            stateA4D491->script = scriptsA4D491[exit->destination];
            stateA4D491->step = 0;
            stateA4D491->active = 0;
            return 1;
        }
    }
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1"); laterBase=playersA4D491;laterStride=0x14c;idx*=laterStride;p=laterBase+0x8C;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) <= 1) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        stateA4D491->row = 4;
        stateA4D491->destination = 1;
        stateA4D491->script = scriptsA4D491[1];
        stateA4D491->step = 0;
        stateA4D491->active = 0;
        return 1;
    }
    {register s32 idx asm("r0")=sub_080020F4(); register u8 *p asm("r1"); idx*=laterStride;p=laterBase+0x90;
    idx+=(u32)p; if ((*(s32 *)idx >> 11) > 0x24) {
        sub_08015ED4();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        stateA4D491->row = 5;
        stateA4D491->destination = 0;
        stateA4D491->script = scriptsA4D491[0];
        stateA4D491->step = 0;
        stateA4D491->active = 0;
        return 1;
    }
    return 0;
    }
    }
}
s32 sub_0808A744(u8 *table)
{
    struct StateA74491 { u8 p0[0x10]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; };
    struct PosA74491 { u32 x, y; };
    register const u16 *position asm("r4");
    u8 *player;
    register u8 *playerBase asm("r3");
    register u32 playerOffset asm("r2");
    register u8 *field asm("r1");
    s32 *coordinates;
    extern struct StateA74491 *stateA74491 asm("gUnk_03005CF4");
    extern u8 playersA74491[] asm("gUnk_03003CE0");
    extern u8 coordsA74491[] asm("gUnk_03003D6C");
    extern void callbackA74491(void) asm("sub_0802DAF0");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId;

    if (stateA74491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        position = (u16 *)(table + (stateA74491->row * 0x24 + 4));
        sub_0800CCDC();
        playerOffset = sub_080020F4();
        playerBase = playersA74491;
        playerOffset *= 0x14C;
        field = playerBase;
        field += 0x8C;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[0] << 8;
        field = playerBase;
        field += 0x90;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[1] << 8;
        player = (u8 *)(playerOffset + (u32)playerBase);
        *(struct PosA74491 *)(player + 0x94) = *(struct PosA74491 *)(player + 0x8C);
        sub_08009930(0, 0xA);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA74491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackA74491);
        sub_08015EF8();
        sub_08015C38();
        stateA74491->step = 1;
        stateA74491->active = 1;
    } else if (sub_08088B6C(table, 1) != 0) {
        return 1;
    }
    return 0;
}
s32 sub_0808A830(u8 *table)
{
    struct StateA83091 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosA83091 { u32 x, y; };
    register const u16 *position asm("r4");
    u8 *player;
    register u8 *playerBase asm("r3");
    register u32 playerOffset asm("r2");
    register u8 *field asm("r1");
    register u8 *checkBase asm("r1");
    register u32 checkStride asm("r2");
    register u32 checkOffset asm("r0");
    s32 *coordinates;
    extern struct StateA83091 *stateA83091 asm("gUnk_03005CF4");
    extern u8 playersA83091[] asm("gUnk_03003CE0");
    extern u8 coordsA83091[] asm("gUnk_03003D6C");
    extern u32 scriptsA83091[] asm("gUnk_084F0AC0");
    extern void callbackA83091(void) asm("sub_0802E110");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId;

    if (stateA83091->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        position = (u16 *)(table + (stateA83091->row * 0x24 + 4));
        sub_0800CCDC();
        playerOffset = sub_080020F4();
        playerBase = playersA83091;
        playerOffset *= 0x14C;
        field = playerBase;
        field += 0x8C;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[0] << 8;
        field = playerBase;
        field += 0x90;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[1] << 8;
        player = (u8 *)(playerOffset + (u32)playerBase);
        *(struct PosA83091 *)(player + 0x94) = *(struct PosA83091 *)(player + 0x8C);
        sub_08009930(0, 9);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA83091 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackA83091);
        sub_08015EF8();
        sub_08015C38();
        stateA83091->step = 1;
        stateA83091->active = 1;
    } else if (sub_08088B6C(table, 1) != 0) {
        return 1;
    }
    checkOffset = sub_080020F4();
    checkBase = playersA83091;
    checkStride = 0x14C;
    checkOffset *= checkStride;
    checkBase += 0x90;
    if ((*(s32 *)(checkOffset + (u32)checkBase) >> 11) > 0x25) {
        sub_08015EF8();
        sub_0801ABE8(3);
        sub_0800BB40();
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        sub_0800BB40();
        stateA83091->row = 2;
        stateA83091->destination = 0xD;
        stateA83091->script = scriptsA83091[13];
        stateA83091->step = 0;
        stateA83091->active = 0;
        return 1;
    }
    return 0;
}
s32 sub_0808A984(u8 *table)
{
    struct StateA98491 { u8 p0[0x10]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; };
    struct PosA98491 { u32 x, y; };
    register const u16 *position asm("r4");
    u8 *player;
    register u8 *playerBase asm("r3");
    register u32 playerOffset asm("r2");
    register u8 *field asm("r1");
    s32 *coordinates;
    extern struct StateA98491 *stateA98491 asm("gUnk_03005CF4");
    extern u8 playersA98491[] asm("gUnk_03003CE0");
    extern u8 coordsA98491[] asm("gUnk_03003D6C");
    extern void callbackA98491(void) asm("sub_0802E444");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId;

    if (stateA98491->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        position = (u16 *)(table + (stateA98491->row * 0x24 + 4));
        sub_0800CCDC();
        playerOffset = sub_080020F4();
        playerBase = playersA98491;
        playerOffset *= 0x14C;
        field = playerBase;
        field += 0x8C;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[0] << 8;
        field = playerBase;
        field += 0x90;
        field = (u8 *)(playerOffset + (u32)field);
        *(u32 *)field = (u32)position[1] << 8;
        player = (u8 *)(playerOffset + (u32)playerBase);
        *(struct PosA98491 *)(player + 0x94) = *(struct PosA98491 *)(player + 0x8C);
        sub_08009930(0, 0xF);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsA98491 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackA98491);
        sub_08015EF8();
        sub_08015C38();
        stateA98491->step = 1;
        stateA98491->active = 1;
    } else if (sub_08088B6C(table, 1) != 0) {
        return 1;
    }
    return 0;
}
s32 sub_0808AA70(u8 *table)
{
    struct StateAA7091 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosAA7091 { u32 x, y; };
    struct ExitAA7091 { u16 x, y, destination, unused; };
    register const u16 *position asm("r5");
    u8 *player;
    s32 *coordinates;
    register const struct ExitAA7091 *exit asm("r5");
    u32 exitIndex;
    s32 difference;
    register u32 zero asm("r8");
    extern struct StateAA7091 *stateAA7091 asm("gUnk_03005CF4");
    extern u8 playersAA7091[] asm("gUnk_03003CE0");
    extern u8 coordsAA7091[] asm("gUnk_03003D6C");
    extern u32 scriptsAA7091[] asm("gUnk_084F0AC0");
    extern void callbackAA7091(void) asm("sub_08059FBC");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    register s32 myId asm("r4"); register s32 offset asm("r2");

    if (stateAA7091->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=stateAA7091->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=playersAA7091;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct PosAA7091 *)(p+0x94)=*(struct PosAA7091 *)(p+0x8C);}}
        sub_08009930(0, 0x11);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsAA7091 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackAA7091);
        sub_08015EF8();
        stateAA7091->step = 1;
        stateAA7091->active = 1;
        return 0;
    }
    player = playersAA7091 + sub_080020F4() * 0x14C;
    exitIndex=1;{register struct StateAA7091 **p asm("r6")=&stateAA7091;asm("" : "=r"(zero) : "r"(p), "0"(0));}
    for (; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=stateAA7091->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct ExitAA7091 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            if (exitIndex == 1)
                stateAA7091->row = exitIndex;
            else {
                register struct StateAA7091 *p asm("r0")=stateAA7091;
                register u32 z asm("r1")=zero;
                p->row=z;
            }
            {register struct StateAA7091 *p asm("r1")=stateAA7091;
            p->destination=exit->destination;
            p->script=scriptsAA7091[exit->destination];
            p->step=zero;p->active=zero;}
            return 1;
        }
    }
    return 0;
}
s32 sub_0808AC08(u8 *input)
{
    struct StateAC0891 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosAC0891 { u32 x, y; };
    struct ExitAC0891 { u16 x, y, destination, unused; };
    register u8 *table asm("r4")=input;
    register const u16 *position asm("r5");
    u8 *player;
    s32 *coordinates;
    const struct ExitAC0891 *exit;
    u32 exitIndex;
    s32 difference;
    extern struct StateAC0891 *stateAC0891 asm("gUnk_03005CF4");
    extern u8 playersAC0891[] asm("gUnk_03003CE0");
    extern u8 coordsAC0891[] asm("gUnk_03003D6C");
    extern u32 scriptsAC0891[] asm("gUnk_084F0AC0");
    extern void callbackAC0891(void) asm("sub_08059FBC");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    s32 myId; register s32 offset asm("r2");

    if (stateAC0891->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=stateAC0891->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=playersAC0891;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct PosAC0891 *)(p+0x94)=*(struct PosAC0891 *)(p+0x8C);}}
        sub_08009930(0, 0x12);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsAC0891 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackAC0891);
        sub_08015EF8();
        sub_08015C38();
        stateAC0891->step = 1;
        stateAC0891->active = 1;
        return 0;
    }
    player = playersAC0891 + sub_080020F4() * 0x14C;
    for (exitIndex = 1; exitIndex <= 3; exitIndex++) {
        {register u32 row asm("r0")=stateAC0891->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct ExitAC0891 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_0800BB40();
            stateAC0891->row = 1;
            stateAC0891->destination = exit->destination;
            stateAC0891->script = scriptsAC0891[exit->destination];
            stateAC0891->step = 0;
            stateAC0891->active = 0;
            return 1;
        }
    }
    return 0;
}
s32 sub_0808AD90(u8 *input)
{
    struct StateAD9091 { u8 p0[2]; u16 destination; u8 p4[0xC]; u16 step; u8 p12[0xA]; u16 active; u8 p1E[0x18]; u16 row; u8 p38[0x6E4]; u32 script; };
    struct PosAD9091 { u32 x, y; };
    struct ExitAD9091 { u16 x, y, destination, unused; };
    register u8 *table asm("r6")=input;
    register const u16 *position asm("r5");
    u8 *player;
    s32 *coordinates;
    register const struct ExitAD9091 *exit asm("r5");
    register u32 exitIndex asm("r2");
    register u32 zero asm("r4");
    s32 difference;
    extern struct StateAD9091 *stateAD9091 asm("gUnk_03005CF4");
    extern u8 playersAD9091[] asm("gUnk_03003CE0");
    extern u8 coordsAD9091[] asm("gUnk_03003D6C");
    extern u32 scriptsAD9091[] asm("gUnk_084F0AC0");
    extern void callbackAD9091(void) asm("sub_0802E6E0");
    extern s32 sub_08009930(u32, u32);
    extern s32 sub_0800AD04(s32 *, s32 *, s32);
    extern void eventAD9091(void) asm("sub_080444C0");
    extern void sub_08026C54(void);
    register s32 myId asm("r4"); register s32 offset asm("r2"); s32 eventId, result;

    if (stateAD9091->step == 0) {
        while (sub_0801AAE0() == 0)
            sub_080003F0();
        myId = sub_080020F4();
        {register u32 delta asm("r0")=stateAD9091->row*0x24;delta+=4;asm("" : "+r"(delta));position=(u16 *)(table+delta);}
        sub_0800CCDC();
        {register u8 *base asm("r3"); register u8 *px asm("r1");
        offset=sub_080020F4();base=playersAD9091;asm("" : "+r"(base));offset*=0x14C;px=base+0x8C;px=(u8 *)((u32)offset+(u32)px);
        *(u32 *)px=(u32)position[0]<<8;
        px=base+0x90;px=(u8 *)((u32)offset+(u32)px);*(u32 *)px=(u32)position[1]<<8;
        {register u8 *p asm("r2");offset+=(u32)base;p=(u8 *)offset;*(struct PosAD9091 *)(p+0x94)=*(struct PosAD9091 *)(p+0x8C);}}
        sub_08009930(0, 0x13);
        while (sub_0800BA6C() == 0)
            sub_080003F0();
        coordinates = (s32 *)(coordsAD9091 + myId * 0x14C);
        sub_0800AD04(coordinates, coordinates + 1, sub_0800CCCC());
        sub_08057328(0, (u32)callbackAD9091);
        sub_08015EF8();
        sub_08015C38();
        sub_08026C54();
        stateAD9091->step = 1;
        stateAD9091->active = 1;
    } else {
    player = playersAD9091 + sub_080020F4() * 0x14C;
    exitIndex=1;zero=0;
    do {
        {register u32 row asm("r0")=stateAD9091->row*0x24;register u32 col asm("r1");row+=4;asm("" : "+r"(row));row=(u32)table+row;col=exitIndex*8;exit=(const struct ExitAD9091 *)(row+col);}
        difference = (*(s32 *)(player + 0x8C) >> 11) - exit->x;
        if (difference < 0)
            difference = -difference;
        if (difference <= 1 && (*(s32 *)(player + 0x90) >> 11) == exit->y) {
            sub_08015ED4();
            sub_0801ABE8(3);
            sub_0800BB40();
            while (sub_0801AAE0() == 0)
                sub_080003F0();
            sub_08056EA4();
            sub_0800BB40();
            {register struct StateAD9091 *p asm("r1")=stateAD9091;p->row=2;
            p->destination=exit->destination;p->script=scriptsAD9091[exit->destination];p->step=zero;p->active=zero;}
            return 1;
        }
    } while (++exitIndex <= 3);
    }
    if (sub_08056E90() != 0) {
        eventId = sub_08057328(0, (u32)eventAD9091);
        while ((result = sub_08057424(eventId)) != 0)
            sub_08057624(1);
        sub_08056FB8(0xD, 0);
        sub_08056E78();
        {register struct StateAD9091 **st asm("r8");register struct StateAD9091 **r asm("r1")=&stateAD9091;register struct StateAD9091 *p asm("r0");
         register u32 one asm("r4");register u8 *base asm("r6");register u32 stride asm("r5");st=r;p=*r;one=1;p->row=one;
         {register s32 idx asm("r2")=sub_080020F4();register u8 *p asm("r0");base=playersAD9091;stride=0x14c;idx*=stride;p=base+0x30;idx+=(u32)p;*(u32 *)idx &= ~2;}
         {register s32 idx asm("r0")=sub_080020F4();idx*=stride;idx+=(u32)base;*(u16 *)(idx+0x20)=result;}
         {register struct StateAD9091 **r asm("r1")=st;register struct StateAD9091 *p asm("r0")=*r;*(u16 *)((u8 *)p+0x30)=one;*(u16 *)((u8 *)p+0x24)=one;}}
        return 1;
    }
    return 0;
}
void sub_0808AFA4(const u16 *pos)
{
    struct PositionPairAFA4 { u32 x, y; };
    register u8 *base asm("r3");
    register u32 offset asm("r2");
    register u8 *field asm("r1");
    u8 *state;
    offset = sub_080020F4();
    base = (u8 *)gUnk_03003CE0;
    offset *= 0x14C;
    field = base;
    field += 0x8C;
    field = (u8 *)(offset + (u32)field);
    *(u32 *)field = (u32)pos[0] << 8;
    field = base;
    field += 0x90;
    field = (u8 *)(offset + (u32)field);
    *(u32 *)field = (u32)pos[1] << 8;
    state = (u8 *)(offset + (u32)base);
    *(struct PositionPairAFA4 *)(state + 0x94) = *(struct PositionPairAFA4 *)(state + 0x8C);
}
#ifdef NONMATCHING
extern void sub_0808AFE8_v(void) asm("sub_0808AFE8");
void sub_0808AFE8_v(void) {
    struct AnimAF91 { u8 p0[0xC]; u32 data; u8 p10[0xC]; u8 flags; u8 p1D[0x17]; };
    struct RecordAF91 { u32 words[4]; };
    /* The original stack places the animation at sp+8 and records at sp+0x48. */
    struct { struct AnimAF91 anim; u8 pad[12]; struct RecordAF91 records[30]; struct AnimAF91 arg86, arg93; u16 argA0; u16 align; } work;
    u8 *var_r0;
    s32 *var_r2;
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r1;
    s32 temp_r1_2;
    s32 temp_r4_4;
    s32 temp_r4_7;
    s32 var_r1;
    s32 var_r3;
    s32 var_r4_2;
    s32 var_r5_2;
    s32 var_r5_3;
    u32 temp_r0_4;
    u16 *temp_r4_2;
    u16 *temp_r4_5;
    u16 *var_r2_2;
    u16 *var_r3_2;
    u16 *var_r5;
    register u16 *var_r7 asm("r7");
    u32 temp_r8;
    register u32 var_r6 asm("r6");
    u32 var_r6_2;
    u32 var_r6_3;
    register u32 var_r8 asm("r8");
    u32 var_r8_2;
    u8 *temp_r4_3;
    u8 *temp_r4_6;
    u8 *temp_r0_5;
    u8 *temp_r1_3;
    u8 *temp_r4;
    u8 *temp_r7;
    u8 *temp_r7_2;
    u8 *var_r4;
    u8 *var_r4_3;
    u8 *var_r4_4;

    extern u16 gUnk_03001308;
    extern u32 sub_08058878(u32, u32);
    extern u32 sub_08058900(u32);
    extern u32 sub_08058934(u32);
    extern u16 keysAF91[] asm("gUnk_03001250");
    extern u8 *stateAF91 asm("gUnk_03005CF4");
    extern u8 playersAF91[] asm("gUnk_03003CE0");
    extern u8 saveAF91[] asm("gUnk_03001F40");
    extern u16 stagesAF91[] asm("gUnk_084EBD38");
    extern u8 objectsAF91[] asm("gUnk_08479140");
    extern u8 tableAAF91[] asm("gUnk_0847AC64");
    extern u8 tableBAF91[] asm("gUnk_0848529C");
    extern u8 recordTypesAF91[] asm("gUnk_084F0B10");
    extern u16 timesAF91[] asm("gUnk_084F0C00");
    extern u32 sub_08065158(void *, u32, u32, s32, s32);
    extern void sub_080659BC(void *, s32, s32, u16, s32, s32);
    extern void sub_080009F8(u32, u32, u32);
    extern void sub_0801A3D0(u8 *, u16, s32);
    extern void sub_0801A664(s32, s32);
    extern void sub_0801AA8C(s32);
    extern void sub_0801AB50(s32);
    extern void sub_0805FB7C(s32, s32, u32, u8);
    extern void sub_0805FC80(s32, s32, void *, s32);
    extern void sub_0805FFBC(s32, s32, void *, u32);
    extern void sub_080815F4(void *);
    extern u16 data084AA9E8AF91[] asm("gUnk_084AA9E8");
    extern u16 data084AAB38AF91[] asm("gUnk_084AAB38");
    extern u16 data084AAC88AF91[] asm("gUnk_084AAC88");
    extern u16 data084AADD8AF91[] asm("gUnk_084AADD8");
    extern u16 data084AAF28AF91[] asm("gUnk_084AAF28");
    extern u16 data084AB078AF91[] asm("gUnk_084AB078");
    extern u16 data084AB1C8AF91[] asm("gUnk_084AB1C8");
    extern u16 data084AB318AF91[] asm("gUnk_084AB318");
    extern u16 data084AB468AF91[] asm("gUnk_084AB468");
    extern u16 data084AB5B8AF91[] asm("gUnk_084AB5B8");


    u32 argA1;
    s32 * argAD;
    s32 argAA;
    s32 argA6;
    u8 * argAC;
    u8 * argA4;
    s32 argA5;
    s32 argAE;
    u32 argA2;
    u32 argA7;
    u8 * argAB;
    u16 * argA8;
    u32 argA9;
    s32 argA3;
    keysAF91[0] = 0;
    keysAF91[1] = 0xFFFD;
    keysAF91[3] = 0;
    keysAF91[2] = 0;
    keysAF91[4] = 0;
    keysAF91[5] = 0;
    keysAF91[7] = 0;
    keysAF91[6] = 0;
    sub_0800B974(0x36U, 0x1EU);
    sub_0800B974(0x3CU, 0x1FU);
    sub_0800B650(0x35, 0x1D, 0x06000000, 0U, 0xF);
    {register u8 *save asm("r2")=saveAF91;register u16 *stages asm("r1")=stagesAF91;register u8 *state asm("r0")=stateAF91;register u32 delta asm("r3")=0x14a;register u32 value asm("r0");value=*(u16 *)(state+delta);value=stages[value];delta+=0xb0;{register u8 *dest asm("r1")=save+delta;asm("" : : "r"(delta));*(u16 *)dest=value;}}
    sub_08065158(&work.anim, 0x50067, 9, -1, 0);
    argA4 = (u8 *)sub_080653CC();
    sub_080009F8(0x200, 0, 1);
    sub_080009C0(0x1D00, 0, 1);
    work.argA0 = 0x5E0A;
    sub_08000AA8(2U, &work.argA0);
    work.argA0 = 0x1D03;
    sub_08000AA8(3U, &work.argA0);
    argA1 = 0U;
    temp_r0 = sub_0800CE30();
    argA3 = 0;
    if (temp_r0 != 0) {
        argA3 = 0xA;
    }
    var_r8 = 0;
    argAB = (u8 *)work.records;
    argAC = (u8 *)work.records + 4;
    var_r3 = 0;
    do {
        var_r6 = 0;
        {
        u32 next = var_r8 + 1;
        temp_r0_2 = var_r8 * 0x30;
        var_r4 = temp_r0_2 + argAB;
        var_r2 = (s32 *)(temp_r0_2 + argAC);
        temp_r0_3 = (argA3 + var_r8) * 0xC;
        var_r7 = (u16 *)(temp_r0_3 + recordTypesAF91 + 2);
        var_r5 = (u16 *)(temp_r0_3 + recordTypesAF91);
loop_4:
        *var_r2 = var_r3;
        argAD = var_r2;
        argAE = var_r3;
        temp_r0_4 = sub_08058878(var_r8, var_r6);
        var_r3 = argAE;
        if (temp_r0_4 != 0) {
            (*(u16 *)(var_r4 + 0x0)) = 1U;
            (*(u16 *)(var_r4 + 0x2)) = (u16) var_r3;
        } else {
            (*(u8 *)(var_r4 + 0x8)) = temp_r0_4;
            (*(u8 *)(var_r4 + 0x9)) = temp_r0_4;
            (*(u16 *)(var_r4 + 0x0)) = (u16) *var_r5;
            (*(u16 *)(var_r4 + 0x2)) = (u16) *var_r7;
        }
        var_r4 += 0x10;
        var_r2 = (s32 *)((u8 *)argAD + 0x10);
        var_r7 += 2;
        var_r5 += 2;
        var_r6 += 1;
        if (var_r6 <= 2U) {
            goto loop_4;
        }
        var_r8 = next;
        }
    } while (var_r8 <= 9U);
    argA7 = 0U;
    argA6 = 0;
    argA5 = 0;
    sub_080003F0();
    sub_080003F0();
    sub_0800CF90();
    sub_080003F0();
    sub_0801A664(0, 0x13);
    sub_080003F0();
    argAA = (s32) (u8) sub_08001108(0x88U);
    argA9 = sub_0800115C((u32) sub_0808528C);
    sub_08000D8C();
    sub_0801AB50(6);
    goto wcheck;
wloop:
    sub_080003F0();
wcheck:
    if (sub_0801AAE0() == 0) goto wloop;
loop_12:
    if (argA5 == 0) {
        var_r8_2 = 0;
        var_r4_2 = 0x30;
loop_14:
        if ((var_r8_2 <= 9U) && (sub_080589D8((s32) var_r8_2) != 0)) {
                            sub_080659BC(&work.anim, var_r4_2, 0x10, 0U, 0, 1);
            var_r4_2 += 0x10;
            var_r8_2 += 1;
            goto loop_14;
        }
        if (argA6 != 0) {
            sub_08065230(argA4, (argA7 * 0x18) + 0xA8, 0x72, 0xBU, 0);
        } else {
            argA2 = var_r8_2 - 1;
            sub_08065230(argA4, (argA1 * 0x10) + 0x30, 0x10, 0xBU, 0);
        }
    }
    if (argA5 == 1) {
        gUnk_03001308 &= 0xFF0F;
    }
    if (0x20 & gUnk_03001308) {
        if (argA6 != 0) {
            if (argA7 == 0) {

            } else {
                argA7 -= 1;
                goto block_42;
            }
        } else if (argA1 == 0) {

        } else {
            argA1 -= 1;
block_42:
            sub_0805865C(0xE);
        }
block_63:
        if (argA5 != 0) {
block_64:
            if (argA5 == 1) {
                keysAF91[4] = 0x100;
                temp_r4 = argAB + (argA1 * 0x30) + (argA7 * 0x10);
                sub_0805FFBC(0xF, 0x12, temp_r4, 0x80000000);
                sub_080815F4(temp_r4);
            }
        } else {
            var_r6_2 = 0;
            var_r4_3 = argAB + (argA1 * 0x30);
            var_r5_2 = 0xA8;
            do {
                sub_0805FC80(var_r5_2, 0x6E, var_r4_3, 0);
                var_r4_3 += 0x10;
                var_r5_2 += 0x18;
                var_r6_2 += 1;
            } while (var_r6_2 <= 2U);
            temp_r4_2 = timesAF91 + argA1;
            sub_0805FB7C(2, 5, (u16) ((u16) *temp_r4_2 / 3600U), 0);
            sub_0805FB7C(5, 5, (u16) ((u16) ((u16) *temp_r4_2 % 3600U) / 60U), 0);
            sub_0805FB7C(8, 5, 0U, 0);
            sub_0805FB7C(2, 8, (u16) (sub_08058900(argA1) / 3600U), 0);
            sub_0805FB7C(5, 8, (u16) ((u32) (sub_08058900(argA1) % 3600U) / 60U), 0);
            sub_0805FB7C(8, 8, (u16)sub_08058934(argA1), 0);
            if (argA6 != 0) {
                sub_0805FFBC(0xF, 0x12, argAB + (argA1 * 0x30) + (argA7 * 0x10), 0x80000000);
            } else {
                temp_r4_3 = (u8 *)sub_08007290((argA1 + 0x49F) | 0x140000) + 2;
                sub_0801A3D0(temp_r4_3, (u16) (0xF - ((u32) sub_0801A638(temp_r4_3) >> 1)), 0x12);
            }
            switch (argA1) {                        /* switch 2 */
            case 0:                                 /* switch 2 */
                argA8 = data084AA9E8AF91;
                break;
            case 1:                                 /* switch 2 */
                argA8 = data084AAB38AF91;
                break;
            case 2:                                 /* switch 2 */
                argA8 = data084AAC88AF91;
                break;
            case 3:                                 /* switch 2 */
                argA8 = data084AADD8AF91;
                break;
            case 4:                                 /* switch 2 */
                var_r3_2 = data084AAF28AF91;
block_84:
                argA8 = var_r3_2;
                break;
            case 5:                                 /* switch 2 */
                argA8 = data084AB078AF91;
                break;
            case 6:                                 /* switch 2 */
                argA8 = data084AB1C8AF91;
                break;
            case 7:                                 /* switch 2 */
                argA8 = data084AB318AF91;
                break;
            case 8:                                 /* switch 2 */
                argA8 = data084AB468AF91;
                break;
            case 9:                                 /* switch 2 */
                var_r3_2 = data084AB5B8AF91;
                goto block_84;
            }
            if (sub_0800CE30() != 0) {
                var_r1 = (0xFFF & *argA8) * 0xD8;
                var_r0 = tableBAF91;
            } else {
                var_r1 = (0xFFF & *argA8) * 0xD8;
                var_r0 = tableAAF91;
            }
            temp_r7 = var_r1 + var_r0;
            sub_08065158(&work.arg86, *(u32 *)((((*(u16 *)(temp_r7 + 0xD4)) + 0xA) * 0x58) + objectsAF91), 4, -1, 0);
            work.arg86.flags = 4;
            sub_08000AF0(0x14U, (void *)(work.arg86.data + ((*(u16 *)(temp_r7 + 0xD6)) << 5)), 1U);
            sub_08065230(&work.arg86, 0x90, 0x38, 1U, 0);
            temp_r4_4 = sub_080020F4();
            temp_r1 = *(u32 *)(((*(u16 *)(playersAF91 + 0x14C * temp_r4_4 + 0x10)) * 4) + ((*(u16 *)(playersAF91 + 0x14C * sub_080020F4() + 0x64)) * 0x58) + objectsAF91);
            sub_08065158(&work.arg93, temp_r1, 0, -1, 0);
            sub_08065230(&work.arg93, 0x60, 0x68, 5U, 0);
            sub_08000AF0(0x10U, (void *)(work.arg93.data + ((*(u8 *)(playersAF91 + 0x14C * sub_080020F4() + 0x66)) << 5)), 1U);
            keysAF91[4] = 0;
        }
        sub_080003F0();
        goto loop_12;
    }
    if (0x10 & gUnk_03001308) {
        if (argA6 != 0) {
            if (argA7 <= 1U) {
                argA7 += 1;
                goto block_42;
            }
        } else if (argA1 < argA2) {
            argA1 += 1;
            goto block_42;
        }
        goto block_63;
    }
    if (0x80 & gUnk_03001308) {
        if (argA6 == 0) {
            argA6 = 1;
            goto block_42;
        }
        goto block_63;
    }
    if (0x40 & gUnk_03001308) {
        if (argA6 != 0) {
            argA6 = 0;
            goto block_42;
        }
        goto block_63;
    }
    if (4 & gUnk_03001324) {
        if (argA6 != 0) {
            switch (argA5) {                        /* switch 1; irregular */
            case 0:                                 /* switch 1 */
                argA5 = 1;
                break;
            case 1:                                 /* switch 1 */
                argA5 = 0;
                break;
            }
block_57:
            sub_0801A664(0, 0x14);
            sub_0805865C(0x62);
        }
        goto block_63;
    }
    if ((u16) gUnk_03001324 != 1) {
        if (2 & gUnk_03001324) {
            if (argA5 == 0) {
                if (argA6 != 0) {
                    argA6 = 0;
                    sub_0805865C(0x10);
                }
            } else {
                argA5 = 0;
                sub_0801A664(0, 0x14);
                sub_0805865C(0x10);
            }
        }
        goto block_63;
    }
    if (argA6 != 0) {
        if (argA5 == 0) {
            argA5 = 1;
        } else {
            argA5 = 0;
        }
        goto block_57;
    }
    if (argA5 != 0) {
        goto block_64;
    }
    sub_0805865C(0xF);
    sub_0801AA8C(0x1E);
loop_107:
    if (sub_0801AAE0() == 0) {
        var_r6_3 = 0;
        var_r4_4 = argAB + (argA1 * 0x30);
        var_r5_3 = 0xA8;
        do {
            sub_0805FC80(var_r5_3, 0x6E, var_r4_4, 0);
            var_r4_4 += 0x10;
            var_r5_3 += 0x18;
            var_r6_3 += 1;
        } while (var_r6_3 <= 2U);
        temp_r4_5 = timesAF91 + argA1;
        sub_0805FB7C(2, 5, (u16) ((u16) *temp_r4_5 / 3600U), 0);
        sub_0805FB7C(5, 5, (u16) ((u16) ((u16) *temp_r4_5 % 3600U) / 60U), 0);
        sub_0805FB7C(8, 5, 0U, 0);
        sub_0805FB7C(2, 8, (u16) (sub_08058900(argA1) / 3600U), 0);
        sub_0805FB7C(5, 8, (u16) ((u32) (sub_08058900(argA1) % 3600U) / 60U), 0);
        sub_0805FB7C(8, 8, (u16)sub_08058934(argA1), 0);
        temp_r4_6 = (u8 *)sub_08007290((argA1 + 0x49F) | 0x140000) + 2;
        sub_0801A3D0(temp_r4_6, (u16) (0xF - ((u32) sub_0801A638(temp_r4_6) >> 1)), 0x12);
        switch (argA1) {                            /* switch 3 */
        case 0:                                     /* switch 3 */
            argA8 = data084AA9E8AF91;
            break;
        case 1:                                     /* switch 3 */
            argA8 = data084AAB38AF91;
            break;
        case 2:                                     /* switch 3 */
            argA8 = data084AAC88AF91;
            break;
        case 3:                                     /* switch 3 */
            argA8 = data084AADD8AF91;
            break;
        case 4:                                     /* switch 3 */
            var_r2_2 = data084AAF28AF91;
block_105:
            argA8 = var_r2_2;
            break;
        case 5:                                     /* switch 3 */
            argA8 = data084AB078AF91;
            break;
        case 6:                                     /* switch 3 */
            argA8 = data084AB1C8AF91;
            break;
        case 7:                                     /* switch 3 */
            argA8 = data084AB318AF91;
            break;
        case 8:                                     /* switch 3 */
            argA8 = data084AB468AF91;
            break;
        case 9:                                     /* switch 3 */
            var_r2_2 = data084AB5B8AF91;
            goto block_105;
        }
        temp_r7_2 = ((0xFFF & *argA8) * 0xD8) + tableAAF91;
            sub_08065158(&work.arg86, *(u32 *)((0x58 * ((*(u16 *)(temp_r7_2 + 0xD4)) + 0xA)) + objectsAF91), 4, -1, 0);
        work.arg86.flags = 4;
        sub_08000AF0(0x14U, (void *)(work.arg86.data + ((*(u16 *)(temp_r7_2 + 0xD6)) << 5)), 1U);
            sub_08065230(&work.arg86, 0x90, 0x38, 1U, 0);
        temp_r4_7 = sub_080020F4();
        temp_r1_2 = *(u32 *)(((*(u16 *)(playersAF91 + 0x14C * temp_r4_7 + 0x10)) * 4) + (0x58 * (*(u16 *)(playersAF91 + 0x14C * sub_080020F4() + 0x64))) + objectsAF91);
            sub_08065158(&work.arg93, temp_r1_2, 0, -1, 0);
            sub_08065230(&work.arg93, 0x60, 0x68, 5U, 0);
        sub_080003F0();
        goto loop_107;
    }
    sub_08000E48();
    sub_0800115C(argA9);
    sub_08001108((u8) argAA);
    keysAF91[0] = 0;
    keysAF91[1] = 0;
    keysAF91[3] = 0;
    keysAF91[2] = 0;
    keysAF91[4] = 0;
    keysAF91[5] = 0;
    keysAF91[7] = 0;
    keysAF91[6] = 0;
    sub_0801A664(0, 0x14);
    sub_0800CFA4();
    temp_r8 = sub_080008C8() % 3U;
    (*(u32 *)(stateAF91 + 0x40)) = 1;
    (*(u16 *)(stateAF91 + 0x36)) = (s16) ((temp_r8 << 8) | argA1 | 0x8000);
    temp_r1_3 = stateAF91 + 0x5C;
    temp_r0_5 = argAB + (((argA1 * 3) + temp_r8) * 0x10);
    (*(u32 *)(stateAF91 + 0x5C)) = (s32) (*(u32 *)(temp_r0_5 + 0x0));
    (*(u32 *)(temp_r1_3 + 0x4)) = (s32) (*(u32 *)(temp_r0_5 + 0x4));
    (*(u32 *)(temp_r1_3 + 0x8)) = (s32) (*(u32 *)(temp_r0_5 + 0x8));
    (*(u32 *)(temp_r1_3 + 0xC)) = (s32) (*(u32 *)(temp_r0_5 + 0xC));
    sub_08000420(0x02688420);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808AFE8);
#endif
extern void B978SetTime(u32,u32) asm("sub_0805896C");
extern u8 *gStateB978 asm("gUnk_03005CF4");
extern s16 gUnk_084AA9E0, gUnk_084AAB30, gUnk_084AAC80, gUnk_084AADD0, gUnk_084AAF20, gUnk_084AB070, gUnk_084AB1C0, gUnk_084AB310, gUnk_084AB460, gUnk_084AB5B0;
extern u16 gTimeB978[] asm("gUnk_084F0C00");
extern u8 gUnk_084F0C28[], gUnk_0850CAA8[];
extern s32 B978PlayerTime[] asm("gUnk_03003D70");
extern void sub_0802F208(void);
void sub_0808B978(void) {
    s32 hours83, minutes83, hours91, minutes91;
    u8 sp4[0x34];
    volatile u32 sp38;
    volatile u32 sp3C;
    register s16 *var_r1_2 asm("r1");
    register s16 *var_r9 asm("r9");
    s32 temp_r0;
    s32 temp_r0_2;
    s32 temp_r0_3;
    s32 temp_r0_4;
    s32 temp_r0_5;
    s32 temp_r0_6;
    s32 temp_r0_7;
    register s32 temp_r1 asm("r1");
    s32 var_r1;
    register s32 var_r8 asm("r8");
    u16 temp_r1_2;
    register s32 var_r6 asm("r6");
    u32 temp_r2;
    u32 temp_r4;
    u32 temp_r4_2;
    u32 temp_r4_3;
    u32 temp_r4_4;
    register u32 var_r1_3 asm("r1");
    register u32 temp_r5 asm("r5");
    register u32 temp_r5_2 asm("r5");
    register u32 temp_r5_3 asm("r5");
    register u32 temp_r5_4 asm("r5");
    u32 var_r7;
    register u32 entry_r7 asm("r7");
    register u32 saved_reg_r8 asm("r8");
    register s32 divisor asm("r10");

    asm("" : "=r"(var_r9), "=r"(entry_r7), "=r"(saved_reg_r8));

    var_r7 = entry_r7;
    switch (gUnk_03003470) {                        /* switch 1 */
    case 0:                                         /* switch 1 */
        var_r1 = 0x50006;
        goto block_6;
    case 1:                                         /* switch 1 */
        var_r1 = 0x50007;
        goto block_6;
    case 2:                                         /* switch 1 */
        var_r1 = 0x50008;
        goto block_6;
    case 3:                                         /* switch 1 */
        var_r1 = 0x50009;
block_6:
        sub_08065158(&sp4, var_r1, 0, -1, 0);
        break;
    case 4:                                         /* switch 1 */
        sub_08065158(&sp4, 0x5000A, 0, -1, 0);
        break;
    }
    sub_0800CF58();
    sub_08057934();
    sub_08028AAC(0, 0x79, 0x1BE, 0);
    sub_080290E4(0, 4);
    sub_08057328(0, &sub_0802F208);
    (*(u16 *)(gStateB978 + 0x5A)) = 0U;
    sub_080003F4(0x09999000);
    {
        register u16 *times asm("r1") = gTimeB978;
        asm("" : "+r"(times));
        temp_r2 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
        var_r6 = times[temp_r2];
    }
    asm("" : "+r"(var_r6));
    sp38 = 0;
    switch (temp_r2) {                              /* switch 2 */
    case 0:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AA9E0;
        goto block_20;
    case 1:                                         /* switch 2 */
        {
            register s16 *selected asm("r2") = &gUnk_084AAB30;
            asm("" : "+r"(selected));
            var_r9 = selected;
        }
        break;
    case 2:                                         /* switch 2 */
        {
            register s16 *selected asm("r0") = &gUnk_084AAC80;
            asm("" : "+r"(selected));
            var_r9 = selected;
        }
        break;
    case 3:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AADD0;
        goto block_20;
    case 4:                                         /* switch 2 */
        {
            register s16 *selected asm("r2") = &gUnk_084AAF20;
            asm("" : "+r"(selected));
            var_r9 = selected;
        }
        break;
    case 5:                                         /* switch 2 */
        {
            register s16 *selected asm("r0") = &gUnk_084AB070;
            asm("" : "+r"(selected));
            var_r9 = selected;
        }
        break;
    case 6:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AB1C0;
        goto block_20;
    case 7:                                         /* switch 2 */
        {
            register s16 *selected asm("r2") = &gUnk_084AB310;
            asm("" : "+r"(selected));
            var_r9 = selected;
        }
        break;
    case 8:                                         /* switch 2 */
        {
            register s16 *selected asm("r0") = &gUnk_084AB460;
            asm("" : "+r"(selected));
            var_r9 = selected;
        }
        break;
    case 9:                                         /* switch 2 */
        var_r1_2 = &gUnk_084AB5B0;
block_20:
        asm("" : "+r"(var_r1_2));
        var_r9 = var_r1_2;
        break;
    }
scripts_test:
    {
        register s16 *script asm("r2") = var_r9;
        asm("" : "+r"(script));
        if (*script == 0) goto block_67;
    }
loop_23:
    sub_08057170();
    (*(u16 *)(gStateB978 + 0xA)) = 0U;
    sub_08058620(var_r9);
    goto scriptwait;
loop_42:
    {
        temp_r4 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
        {
            u32 best;
            if ((s32)var_r6 < (s32)(gTimeB978[temp_r4] >> 1)) {
                var_r7 = 1;
                goto category_done_29;
            }
            if (sub_08058900(temp_r4) > (u32)var_r6) goto category_two_29;
            if (sub_08058900(temp_r4) != var_r6) goto category_zero_29;
            best = sub_08058934(temp_r4);
            var_r7 = 0;
            asm("" : "+r"(var_r7));
            if (best <= (u32)saved_reg_r8) goto category_done_29;
category_two_29:
            var_r7 = 2;
            goto category_done_29;
category_zero_29:
            var_r7 = 0;
category_done_29: ;
        }
        if (sub_0800CC98() == 0) {
            temp_r0 = sub_0800CD8C();
            if (temp_r0 == 0) {
                if (sub_08000440(0x18A92) != 0) {
                    sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0);
                    sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0);
                }
                {
                register s32 numerator asm("r0") = var_r6;
                register s32 denominator asm("r1") = 3600;
                register s32 quotient asm("r2");
                asm("" : "+r"(numerator), "+r"(denominator));
                quotient = numerator / denominator;
                asm("" : "+r"(quotient));
                temp_r5 = (u8)var_r7;
                sub_0805FB7C(1, 4, quotient, temp_r5);
                }
                {
                register s32 numerator asm("r0") = var_r6;
                register s32 denominator asm("r1") = 3600;
                asm("" : "+r"(numerator), "+r"(denominator));
                temp_r0_2 = numerator % denominator;
                }
                sub_0805FB7C(4, 4, temp_r0_2 / 60, temp_r5);
                sub_0805FB7C(7, 4, (s32) (0x64 * (temp_r0_2 % 60)) / 60, temp_r5);
            }
        }
        if ((*(u16 *)(gStateB978 + 0x5A)) != 0) {
            var_r6 -= 1;
            {
                register u32 elapsed asm("r2") = sp38;
                asm("" : "+r"(elapsed));
                elapsed += 1;
                asm("" : "+r"(elapsed));
                sp38 = elapsed;
            }
        }
        sub_08057624(1U);
        if ((s32) var_r6 <= 0) {
            var_r6 = 0;
            goto block_44;
        }
        if (gUnk_03003CE0[sub_080020F4()].state == 0xB) {
            goto finish;
        } else {
            goto scriptwait;
        }
scriptwait:
        if (sub_08058420() == 0) goto loop_42;
    }
    {
block_44:
        {
            register s32 initial asm("r0") = 3600;
            asm("" : "+r"(initial));
            divisor = initial;
        }
        asm("" : "+r"(divisor));
        goto second_body;
loop_48:
        if (gUnk_03003CE0[sub_080020F4()].state == 0xB) goto finish;
        if ((*(u16 *)(gStateB978 + 0xA)) != 1) goto block_64;
second_body:
        temp_r4_2 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
        {
            u32 best;
            if ((s32)var_r6 < (s32)(gTimeB978[temp_r4_2] >> 1)) {
                var_r7 = 1;
                goto category_done_53;
            }
            if (sub_08058900(temp_r4_2) > (u32)var_r6) goto category_two_53;
            if (sub_08058900(temp_r4_2) != var_r6) goto category_zero_53;
            best = sub_08058934(temp_r4_2);
            var_r7 = 0;
            if (best <= (u32)saved_reg_r8) goto category_done_53;
category_two_53:
            var_r7 = 2;
            goto category_done_53;
category_zero_53:
            var_r7 = 0;
category_done_53: ;
        }
        if (sub_0800CC98() == 0) {
            temp_r0_3 = sub_0800CD8C();
            if (temp_r0_3 == 0) {
                if (sub_08000440(0x18A92) != 0) {
                    sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0_3);
                    sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0_3);
                }
                {
                register s32 quotient asm("r2") = var_r6 / divisor;
                temp_r5_2 = (u8)var_r7;
                sub_0805FB7C(1, 4, quotient, temp_r5_2);
                }
                temp_r0_4 = (s32) var_r6 % divisor;
                sub_0805FB7C(4, 4, temp_r0_4 / 60, temp_r5_2);
                sub_0805FB7C(7, 4, (s32) (0x64 * (temp_r0_4 % 60)) / 60, temp_r5_2);
            }
        }
        if ((*(u16 *)(gStateB978 + 0x5A)) != 0) {
            var_r6 -= 1;
            {
                register u32 elapsed asm("r1") = sp38;
                elapsed += 1;
                asm("" : "+r"(elapsed));
                sp38 = elapsed;
            }
        }
        sub_08057624(1U);
        if (var_r6 > 0) goto loop_48;
        goto block_64;
        {
block_64:
            if ((s32) var_r6 > 0) {
                sub_08057624(3U);
                {
                    register u32 step asm("r2") = 0x38;
                    asm("" : "+r"(step));
                    var_r9 = (s16 *)((u8 *)var_r9 + step);
                }
                {
                    register s16 *script asm("r1") = var_r9;
                    asm("" : "+r"(script));
                    if (*script != 0) goto loop_23;
                }
block_67:
                if ((s32) var_r6 > 0) {
                    sub_0805A4BC(&gUnk_0850CAA8);
                    {
                    register s32 cutoff asm("r4") = 3600;
                    register s32 hundred asm("r5");
                    s32 remainder;
                    asm("" : "+r"(cutoff));
                    remainder = (var_r6 % cutoff) % 60;
                    hundred = 100;
                    asm("" : "+r"(hundred));
                    var_r8 = (hundred * remainder) / 60;
                    asm("" : "+r"(var_r8));
                    if (var_r6 == 1) {
                        register s32 three asm("r4") = 3;
                        asm("" : "+r"(three));
                        {
                            u32 random = sub_080008C8() % (u32)(three - var_r8);
                            temp_r1 = var_r8;
                            asm("" : "+r"(temp_r1));
                            temp_r1 -= random;
                        }
                        asm("" : "+r"(temp_r1));
                        var_r8 = temp_r1;
                        var_r1_3 = hundred - temp_r1;
                    } else {
                        register s32 previous asm("r4") = ((s32) (hundred * ((s32) ((s32) (var_r6 - 1) % cutoff) % 60)) / 60);
                        asm("" : "+r"(previous));
                        {
                            register s32 current asm("r2") = var_r8;
                            asm("" : "+r"(current));
                            temp_r4_3 = current - previous;
                        }
                        if (temp_r4_3 <= 0x63U) {
                            var_r8 = var_r8 + (sub_080008C8() % temp_r4_3);
                        } else {
                            register s32 full asm("r0") = 100;
                            asm("" : "+r"(full));
                            var_r8 = full;
                        }
                        {
                            register s32 full asm("r0") = 100;
                            register s32 current asm("r1") = var_r8;
                            asm("" : "+r"(full), "+r"(current));
                            var_r1_3 = full - current;
                        }
                    }
                    }
                    asm("" : "+r"(var_r1_3));
                    sp3C = var_r1_3;
                    (*(u16 *)(gStateB978 + 0x58)) = 1;
                } else {
                    goto block_75;
                }
                goto block_76;
            }
block_75:
            var_r6 = 0;
            var_r8 = 0;
            (*(u16 *)(gStateB978 + 0x58)) = 2;
            sub_080169C8();
block_76:
            asm("" : "+r"(var_r8), "+r"(var_r6));
            hours83 = var_r6 / 3600;
            asm("" : "+r"(var_r7));
            {
                register u32 shifted asm("r0") = var_r7 << 24;
                asm("" : "+r"(shifted));
                temp_r5_3 = shifted >> 24;
                asm("" : "+r"(temp_r5_3));
            }
            minutes83 = (var_r6 % 3600) / 60;
goto test_83;
loop_83:
{
                if (sub_0800CC98() == 0) {
                    temp_r0_6 = sub_0800CD8C();
                    if (temp_r0_6 == 0) {
                        if (sub_08000440(0x18A92) != 0) {
                            sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0_6);
                            sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0_6);
                        }
                        sub_0805FB7C(1, 4, hours83, temp_r5_3);
                        sub_0805FB7C(4, 4, minutes83, temp_r5_3);
                        sub_0805FB7C(7, 4, var_r8, temp_r5_3);
                    }
                }
                sub_08057624(1U);
                test_83:
{
    register u32 offset asm("r0") = sub_080020F4() * 0x14C;
    register s32 *base asm("r2");
    asm("" : "+r"(offset));
    base = B978PlayerTime;
    asm("" : "+r"(base));
    offset += (u32)base;
    if (*(s32 *)offset > 0x1C1FF) goto loop_83;
}
            }
            sub_080257D4(&gUnk_084F0C28, 0);
            sub_08056E24();
            hours91 = var_r6 / 3600;
            asm("" : "+r"(var_r7));
            {
                register u32 shifted asm("r0") = var_r7 << 24;
                asm("" : "+r"(shifted));
                temp_r5_4 = shifted >> 24;
                asm("" : "+r"(temp_r5_4));
            }
            minutes91 = (var_r6 % 3600) / 60;
goto test_91;
loop_91:
{
                if (sub_0800CC98() == 0) {
                    temp_r0_7 = sub_0800CD8C();
                    if (temp_r0_7 == 0) {
                        if (sub_08000440(0x18A92) != 0) {
                            sub_08065230(&sp4, 0, 0x20, 0x22U, temp_r0_7);
                            sub_08065230(&sp4, 0, 0x28, 0x17U, temp_r0_7);
                        }
                        sub_0805FB7C(1, 4, hours91, temp_r5_4);
                        sub_0805FB7C(4, 4, minutes91, temp_r5_4);
                        sub_0805FB7C(7, 4, var_r8, temp_r5_4);
                    }
                }
                sub_08057624(1U);
                test_91:
if (sub_08056E90() == 0) goto loop_91;
            }
            if ((s32) var_r6 > 0) {
                u32 previous, elapsed;
                temp_r4_4 = 0xFF & (*(u16 *)(gStateB978 + 0x36));
                previous = sub_08058900(temp_r4_4);
                elapsed = sp38;
                if (previous > elapsed) {
                    B978SetTime(temp_r4_4, elapsed);
                    {
                        register u32 index asm("r0") = temp_r4_4;
                        asm("" : "+r"(index));
                        sub_080589A0(index, sp3C);
                    }
                } else {
                    u32 old;
                    register u32 elapsed asm("r2");
                    old = sub_08058900(temp_r4_4);
                    elapsed = sp38;
                    asm("" : "+r"(elapsed));
                    if ((old == elapsed) && (sub_08058934(temp_r4_4) > sp3C)) {
                    {
                        register u32 index asm("r0") = temp_r4_4;
                        asm("" : "+r"(index));
                        B978SetTime(index, sp38);
                    }
                    {
                        register u32 index asm("r0") = temp_r4_4;
                        asm("" : "+r"(index));
                        sub_080589A0(index, sp3C);
                    }
                }
                }
                sub_08058A18(temp_r4_4 + 1);
                if (temp_r4_4 <= 9U) {
                    {
                        register u32 flags asm("r1") = *(u16 *)(gStateB978 + 0x36);
                        register u32 masked asm("r0");
                        register u32 upper asm("r4");
                        asm("" : "+r"(flags));
                        masked = 0x7FFF & flags;
                        asm("" : "+r"(masked));
                        upper = masked >> 8;
                        asm("" : "+r"(upper));
                        sub_080588C0(0xFF & flags, upper);
                    }
                }
            }
        }
    }
finish:
    {
        u8 *finished = gStateB978;
        (*(u32 *)(finished + 0x40)) = 0;
        (*(u16 *)(finished + 0x36)) = 1U;
    }
    sub_0801A664(0, 0x14);
}













extern u16 gFlagC020 asm("gUnk_03001324");
extern u32 sub_08058260(void);
void sub_0808C020_v(void) asm("sub_0808C020");

extern void C020Launch(s32,s32,s32,s32,void (*)(void),u32) asm("sub_08057DD0");
static inline __attribute__((always_inline)) void C020Forward(s32 a,s32 b,s32 c,s32 d,void (*e)(void),u32 f) { C020Launch(a,b,c,d,e,f); }
void sub_0808C020_v(void)
{
    s32 text;
    struct Player *player;
    u16 flag;
    player = &gUnk_03003CE0[sub_080020F4()];
    text = sub_08007290(0x1403D1);
    goto test;
loop:
    if (sub_08058260() <= 0x149U) {
        C020Forward(0x78, 0x14A, 0xF0, 0x50, sub_0808C020_v, flag);
        return;
    }
    sub_08057624(1);
test:
    sub_0801A3D0(text + 2, 9, 0x12);
    flag = gFlagC020;
    if (flag == 0) goto loop;
    sub_08015C5C(sub_08058240(), 0x16C);
    while (sub_08015F20() != 0 && sub_08056E90() == 0) {
        sub_08057624(1);
    }
    player->flags |= 0x403;
}
#ifdef NONMATCHING
struct C0Item {u16 unk0;u8 unk2;u8 unk3;};
struct C0Player {u8 p0[16];u16 unk10;u8 p12[10];s16 unk1C;u8 p1e[2];u16 state;u8 p22[14];u32 flags;u8 p34[48];u16 unk64;u8 p66[2];u8 unk68;u8 p69[35];s32 unk8C;s32 unk90;u8 p94[180];struct C0Item *unk148;};

extern struct C0Player gPlayersC0[] asm("gUnk_03003CE0");
extern u16 gKeysC0[] asm("gUnk_03001250");
extern u16 gFlagC0 asm("gUnk_03001324");
extern u16 gHeldC0 asm("gUnk_03001308");
extern u8 *gStateC0 asm("gUnk_03005CF4");
extern u8 gPortraitC0[] asm("gUnk_08479140");
extern u8 gCoordsC0[] asm("gUnk_084F0C30");
extern u8 gCoordsThirdC0[] asm("gUnk_084F0C34");
extern struct C0Item *gItemsC0 asm("gUnk_03003E28");
extern void sub_0808C0C4_v(void) asm("sub_0808C0C4");
void sub_0808C0C4_v(void) {
    u16 sp10[2];
    u16 sp14[2];
    u8 sp18[0x34];
    u8 sp4C[0x34];
    struct { s32 resource; s32 unknown4; s32 data8; u8 tail[40]; } portraitsC0[4];
    u16 sp150[6];

    /* Persistent menu words occupy original stack offsets 0x15C..0x16C. */
    struct {
        u32 sp15C;
        u32 sp160;
        u32 sp164;
        s32 sp168;
        s32 sp16C;
    } menu;
    u32 loopCounterC0;
    register u32 bgMaskC0 asm("r1");
    register u16 *bgHalfC0 asm("r5");
    register u32 bgValueC0 asm("r0");
    register u32 portraitLookupC0 asm("r1");
    register u32 portraitRowC0 asm("r0");
    /* This product dies before r3 becomes the draw call fourth argument. */
    register u32 countTripletC0 asm("r3");
    u8 *portraitBaseC0;
    u8 *portraitTableC0;
    struct C0Player *playerTableC0;
    u8 *coordsBaseC0;
    u8 *coordsThirdC0;
    u16 *countsC0;
    u8 *temp_r4;
    s32 temp_r1_4;
    s32 temp_r1_5;
    s32 *temp_r4_12;
    s32 *temp_r5;
    s32 *temp_r5_3;
    s32 *temp_r5_4;
    s32 *temp_r5_5;
    s32 *temp_r5_6;
    s32 temp_r2;
    s32 temp_r2_3;
    s32 temp_r2_4;
    s32 temp_r2_5;
    s32 temp_r2_6;
    s32 temp_r2_7;
    s32 temp_r4_14;
    s32 temp_r4_17;
    s32 temp_r4_19;
    s32 temp_r4_22;
    s32 temp_r4_25;
    s32 temp_r4_4;
    s32 temp_r5_2;
    register s32 temp_r6 asm("r6");
    s32 var_r2;
    s32 var_r9;
    struct C0Player *temp_r0;
    u16 *temp_r0_10;
    u16 *temp_r0_3;
    u16 *temp_r0_5;
    u16 *temp_r0_6;
    u16 *temp_r0_8;
    u16 *temp_r0_9;
    u16 *temp_r1_3;
    u16 *temp_r1_8;
    u16 *var_r0;
    u16 *var_r0_2;
    u16 *var_r0_3;
    u16 *var_r0_4;
    u16 *var_r0_5;
    u16 *var_r0_6;
    u16 *var_r0_7;
    u16 *var_r1_2;
    u16 temp_r0_4;
    u16 selectedValueC0;
    /* These values expire before the selected player fields are loaded. */
    register u32 playerStrideC0 asm("r1");
    register s32 selectedOffsetC0 asm("r0");
    register struct C0Player *selectedBaseC0 asm("r2");
    register u16 temp_r0_7 asm("r1");
    register u32 confirmFlagsC0 asm("r0");
    u16 temp_r1_6;
    u16 temp_r2_2;
    /* Keep raw bits for halfword arithmetic and derive both comparison views. */
    u32 downShiftedC0;
    register s32 downResultC0 asm("r0");
    u16 temp_r3;
    u16 temp_r4_9;
    u32 temp_r1_10;
    u32 temp_r1_12;
    u32 temp_r1_14;
    u32 temp_r1_16;
    u32 temp_r1_2;
    u32 temp_r3_2;
    u32 temp_r4_11;
    u32 temp_r4_16;
    u32 temp_r4_18;
    u32 temp_r4_21;
    u32 temp_r4_24;
    u32 temp_r4_3;
    u32 var_r5;
    u32 var_r5_2;
    u32 var_r5_3;
    u32 var_r5_4;
    u32 var_r6_4;
    register u8 *temp_r4_10 asm("r4");
    register u8 *temp_r4_15 asm("r4");
    register u8 *temp_r4_20 asm("r4");
    register u8 *temp_r4_23 asm("r4");
    register u8 *temp_r4_2 asm("r4");
    struct C0Item **temp_r0_2;
    struct C0Item **temp_r4_13;
    struct C0Item **temp_r7;
    struct C0Item **temp_r7_2;
    struct C0Item **temp_r7_3;
    struct C0Item **temp_r7_4;
    struct C0Item **var_r7;
    struct C0Item *temp_r1;
    struct C0Item *temp_r1_11;
    struct C0Item *temp_r1_13;
    struct C0Item *temp_r1_15;
    struct C0Item *temp_r1_7;
    struct C0Item *temp_r1_9;
    register struct C0Player *temp_r4_5 asm("r4");
    register struct C0Player *temp_r4_6 asm("r4");
    register struct C0Player *temp_r4_7 asm("r4");
    register struct C0Player *temp_r4_8 asm("r4");

    gKeysC0[0x2 / 2] = 0;
    gKeysC0[0x0 / 2] = 0;
    gKeysC0[0x6 / 2] = 0;
    gKeysC0[0x4 / 2] = 0;
    gKeysC0[0xA / 2] = 0;
    gKeysC0[0x8 / 2] = 0;
    gKeysC0[0xE / 2] = 0;
    gKeysC0[0xC / 2] = 0;
    sub_0800B974(0x38U, 0x1EU);
    sub_0800B650(0x35, 0x1F, 0x06000000, 0U, 0xF);
    sub_08065158(&sp18, 0x50067, 9, -1, 0);
    sub_080653CC();
    sub_080009F8(0x200, 0, 1);
    sub_080009C0(0x1D00, 0, 1);
    /* The BG API consumes the low half of this preserved word. */
    bgMaskC0 = 0xFFFF0000;
    bgValueC0 = menu.sp15C;
    bgValueC0 &= bgMaskC0;
    bgMaskC0 = 0x1E0A;
    bgValueC0 |= bgMaskC0;
    menu.sp15C = bgValueC0;
    bgHalfC0 = (u16 *)&menu.sp15C;
    sub_08000AA8(2U, bgHalfC0);
    bgValueC0 = 0x1F03;
    *(u16 *)&menu.sp15C = bgValueC0;
    sub_08000AA8(3U, bgHalfC0);
    loopCounterC0 = 0;
    portraitBaseC0 = ((u8 *)portraitsC0);
    portraitTableC0 = gPortraitC0;
    playerTableC0 = gPlayersC0;
    goto portraitCheckC0;
portraitBodyC0:
    temp_r4 = portraitBaseC0 + (0x34 * loopCounterC0);
    temp_r0 = (struct C0Player *)(loopCounterC0 * 0x14C + (u32)playerTableC0);
    /* Accumulate both table offsets before materializing the resource. */
    portraitLookupC0 = temp_r0->unk10 * 4;
    portraitRowC0 = temp_r0->unk64 * 0x58;
    portraitLookupC0 += portraitRowC0;
    portraitLookupC0 += (u32)portraitTableC0;
    portraitLookupC0 = *(u32 *)portraitLookupC0;
    sub_08065158(temp_r4, portraitLookupC0, 0, -1, 0);
    temp_r4[0x1C] = (s8) loopCounterC0;
    loopCounterC0++;
portraitCheckC0:
    if (loopCounterC0 < sub_08002164())
        goto portraitBodyC0;
    switch (gUnk_03003470) {
    case 0:
        sub_08065158(&sp4C, 0x50002, 0, 0x80000000, 0);
        break;
    case 1:
        sub_08065158(&sp4C, 0x5015B, 0, 0x80000000, 0);
        break;
    case 2:
        sub_08065158(&sp4C, 0x5015C, 0, 0x80000000, 0);
        break;
    case 3:
        sub_08065158(&sp4C, 0x5015D, 0, 0x80000000, 0);
        break;
block_10:
        sub_0805865C(0x10);
        goto loop_15;
    case 4:
        sub_08065158(&sp4C, 0x5015E, 0, 0x80000000, 0);
        break;
    }
    menu.sp160 = 0;
    sub_080003F0();
    sub_080003F0();
    sub_0800CF90();
    sub_080003F0();
    sub_0801A664(0, 0x13);
    sub_080003F0();
    sub_0801AB50(6);
    gPlayersC0[sub_080020F4()].unk1C = (u16) menu.sp160;
    menu.sp168 = (s32) (u8) sub_08001108(0x88U);
    menu.sp164 = sub_0800115C((u32) sub_0808528C);
    sub_08000D8C();
    goto loop_14CheckC0;
loop_14:
    sub_080003F0();
loop_14CheckC0:
    if (sub_0801AAE0() == 0)
        goto loop_14;
loop_15:
    gPlayersC0[sub_080020F4()].unk90 = 0;
    gPlayersC0[sub_080020F4()].unk8C = 0;
    gFlagC0 = 0;
loop_16:
    temp_r4_2 = sub_08007290(0x1401F6) + 2;
    sub_0801A3D0(temp_r4_2, (u16) (0xF - ((u32) sub_0801A638(temp_r4_2) >> 1)), 0x12);
    loopCounterC0 = 0;
    var_r0 = &sp150[0];
    do {
        *var_r0 = 0;
        var_r0 += 1;
        loopCounterC0 += 1;
    } while (loopCounterC0 <= 4U);
    loopCounterC0 = 0;
    var_r9 = 0;
    goto loop_24CheckC0;
loop_24BodyC0:
    temp_r0_2 = (struct C0Item **)((u8 *)gPlayersC0 + 0x148 + var_r9);
    temp_r1 = *temp_r0_2;
    temp_r4_3 = (u16) temp_r1->unk0 >> 4;
    if (temp_r4_3 == 0) {
        countsC0 = sp150;
        temp_r1_2 = (u8) temp_r1->unk3 >> 4;
        countTripletC0 = countsC0[temp_r1_2] * 3;
        temp_r2 = ((temp_r1_2 * 9) + countTripletC0) * 2;
        sub_08007870(*(u16 *)(gCoordsC0 + temp_r2), *(u16 *)(gCoordsC0 + temp_r2 + 2), *(u16 *)(gCoordsThirdC0 + temp_r2), 0, temp_r4_3, portraitsC0[loopCounterC0].tail + 16, portraitsC0[loopCounterC0].data8, portraitsC0[loopCounterC0].resource);
        if (sub_080020F4() == loopCounterC0) {
            temp_r1_3 = &countsC0[((struct C0Player *)((u8 *)gPlayersC0 + var_r9))->unk1C];
            *temp_r1_3 += 1;
        } else {
            temp_r0_3 = &countsC0[(u8) (*temp_r0_2)->unk3 >> 4];
            *temp_r0_3 += 1;
        }
    }
    var_r9 += 0x14C;
    loopCounterC0 += 1;
loop_24CheckC0:
    if (loopCounterC0 < sub_08002164())
        goto loop_24BodyC0;
    temp_r6 = sub_080020F4();
    if (0x20 & gHeldC0) {
        playerStrideC0 = 0x14C;
        selectedOffsetC0 = temp_r6 * playerStrideC0;
        selectedBaseC0 = gPlayersC0;
        temp_r4_5 = (struct C0Player *)((u32)selectedOffsetC0 + (u32)selectedBaseC0);
        selectedValueC0 = (u16)temp_r4_5->unk1C;
        temp_r1_4 = (s16) temp_r4_5->unk1C;
        if ((temp_r1_4 != 1) && (temp_r1_4 != 3)) {

        } else {
            temp_r4_5->unk1C = (u16) (selectedValueC0 - 1);
            goto block_47;
        }
        goto block_81;
    }
    if (0x10 & gHeldC0) {
        playerStrideC0 = 0x14C;
        selectedOffsetC0 = temp_r6 * playerStrideC0;
        selectedBaseC0 = gPlayersC0;
        temp_r4_6 = (struct C0Player *)((u32)selectedOffsetC0 + (u32)selectedBaseC0);
        selectedValueC0 = (u16)temp_r4_6->unk1C;
        temp_r1_5 = (s16) temp_r4_6->unk1C;
        if ((temp_r1_5 != 0) && (temp_r1_5 != 2)) {

        } else {
            temp_r4_6->unk1C = (u16) (selectedValueC0 + 1);
            goto block_47;
        }
        goto block_81;
    }
    temp_r3 = 0x40 & gHeldC0;
    if (temp_r3 != 0) {
        playerStrideC0 = 0x14C;
        selectedOffsetC0 = temp_r6 * playerStrideC0;
        selectedBaseC0 = gPlayersC0;
        temp_r4_7 = (struct C0Player *)((u32)selectedOffsetC0 + (u32)selectedBaseC0);
        temp_r0_4 = temp_r4_7->unk1C;
        if ((u32) temp_r0_4 <= 1U) {
            temp_r4_7->unk1C = 4U;
            goto block_47;
        }
        temp_r1_6 = temp_r0_4 - 2;
        if ((u32) temp_r1_6 > 1U) {

        } else {
            temp_r4_7->unk1C = temp_r1_6;
            goto block_47;
        }
        goto block_81;
    }
    if (0x80 & gHeldC0) {
        playerStrideC0 = 0x14C;
        selectedOffsetC0 = temp_r6 * playerStrideC0;
        selectedBaseC0 = gPlayersC0;
        temp_r4_8 = (struct C0Player *)((u32)selectedOffsetC0 + (u32)selectedBaseC0);
        temp_r2_2 = temp_r4_8->unk1C;
        downShiftedC0 = (u32)temp_r2_2 << 16;
        if ((downShiftedC0 >> 16) <= 1U) {
            downResultC0 = temp_r2_2 + 2;
            temp_r4_8->unk1C = (u16)downResultC0;
            goto block_47;
        }
        downResultC0 = (s32)downShiftedC0 >> 16;
        if (downResultC0 != 4) {

        } else {
            temp_r4_8->unk1C = temp_r3;
            goto block_47;
        }
        goto block_81;
    }
    goto selectionCheckC0;
block_47:
    sub_0805865C(0xE);
    goto block_81;
selectionCheckC0:
    if (gFlagC0 != 1) {
        goto block_81;
    }
    temp_r4_9 = (&sp150[0])[gPlayersC0[temp_r6].unk1C];
    if ((s32) temp_r4_9 >= (s32) sub_08002164()) {
        goto errorFullC0;
    }
    var_r6_4 = 0;
    do {
        temp_r4_10 = sub_08007290(0x1401F6) + 2;
        sub_0801A3D0(temp_r4_10, (u16) (0xF - ((u32) sub_0801A638(temp_r4_10) >> 1)), 0x12);
        var_r5 = 0;
        var_r0_2 = &sp150[0];
loop_54:
        *var_r0_2 = 0;
        var_r0_2 += 1;
        var_r5 += 1;
        if (var_r5 <= 4U) {
            goto loop_54;
        }
        loopCounterC0 = 0;
        var_r7 = &gItemsC0;
        goto loop_59CheckC0;
loop_59BodyC0:
        temp_r1_7 = *var_r7;
        temp_r4_11 = (u16) temp_r1_7->unk0 >> 4;
        if (temp_r4_11 == 0) {
            temp_r3_2 = (u8) temp_r1_7->unk3 >> 4;
            temp_r2_3 = (&sp150[0])[temp_r3_2] * 3;
            temp_r2_3 = ((temp_r3_2 * 9) + temp_r2_3) * 2;
            sub_08007870(*(u16 *)(gCoordsC0 + temp_r2_3), *(u16 *)(gCoordsC0 + temp_r2_3 + 2), *(u16 *)(gCoordsThirdC0 + temp_r2_3), 0, temp_r4_11, portraitsC0[loopCounterC0].tail + 16, portraitsC0[loopCounterC0].data8, portraitsC0[loopCounterC0].resource);
        }
        var_r7 = (struct C0Item **)((u8 *)var_r7 + 0x14C);
        loopCounterC0 += 1;

    loop_59CheckC0:
        if (loopCounterC0 < sub_08002164())
            goto loop_59BodyC0;
        var_r6_4 += 1;
        sub_080003F0();
    } while (var_r6_4 <= 7U);
    var_r5_2 = 0;
    var_r0_3 = &sp150[0];
    do {
        *var_r0_3 = 0;
        var_r0_3 += 1;
        var_r5_2 += 1;
    } while (var_r5_2 <= 4U);
    var_r5_3 = 0;
    var_r2 = 0;
    goto loop_69CheckC0;
loop_69:
    {
        temp_r4_13 = (struct C0Item **)((u8 *)gPlayersC0 + 0x148 + var_r2);
        if (((u16) (*temp_r4_13)->unk0 >> 4) == 0) {
            menu.sp16C = var_r2;
            if (var_r5_3 == sub_080020F4()) {
                temp_r1_8 = &(&sp150[0])[((struct C0Player *)((u8 *)gPlayersC0 + var_r2))->unk1C];
                *temp_r1_8 += 1;
            } else {
                temp_r0_5 = &(&sp150[0])[(u8) (*temp_r4_13)->unk3 >> 4];
                *temp_r0_5 += 1;
            }
        }
        var_r2 += 0x14C;
        var_r5_3 += 1;
    }
loop_69CheckC0:
    menu.sp16C = var_r2;
    if (var_r5_3 < sub_08002164())
        goto loop_69;
    loopCounterC0 = 0;
    var_r5_4 = 0;
    var_r1_2 = &sp150[0];
    do {
        if (*var_r1_2 != 0) {
            loopCounterC0 += 1;
        }
        var_r1_2 += 1;
        var_r5_4 += 1;
    } while (var_r5_4 <= 3U);
    if (loopCounterC0 <= 1U) {
        goto errorSingleC0;
    }
    gPlayersC0[sub_080020F4()].unk90 = 0x100;
    if (gPlayersC0[sub_080020F4()].unk1C != 4) {
        temp_r4_14 = sub_080020F4();
        gPlayersC0[temp_r4_14].unk68 = (s8) (gPlayersC0[sub_080020F4()].unk1C + 3);
    } else {
        gPlayersC0[sub_080020F4()].unk68 = 0;
    }
    sub_0805865C(0xF);
    gFlagC0 = 0;
    goto loop_82;
errorFullC0:
    sub_0805865C(0x61);
    goto block_81;
errorSingleC0:
    sub_0805865C(0x61);
block_81:
    sub_080003F0();
    goto loop_16;
loop_82:
    temp_r0_7 = gFlagC0;
    if (0x20 & temp_r0_7) {
        if (menu.sp160 == 1) {
            menu.sp160 = 0;
            sub_0805865C(0xC6);
        }
        goto block_94;
    }
    if (0x10 & temp_r0_7) {
        if (menu.sp160 == 0) {
            menu.sp160 = 1;
            sub_0805865C(0xC7);
        }
        goto block_94;
    }
    confirmFlagsC0 = temp_r0_7;
    switch (confirmFlagsC0) {
    case 1:
        if (menu.sp160 != 0)
            goto block_10;
        sub_0805865C(0xF);
        goto loop_113CheckC0;
    case 2:
        goto block_10;
    default:
        goto block_94;
    }
block_94:
        temp_r4_15 = sub_08007290(0x1401F7) + 2;
        sub_0801A3D0(temp_r4_15, (u16) (0xF - ((u32) sub_0801A638(temp_r4_15) >> 1)), 0x12);
        sub_08065370(&sp4C, 4U, (s32)&sp10[1], (s32)&sp14[1], 1);
        sub_08065370(&sp4C, 5U, (s32) &sp10, (s32) &sp14, 1);
        if (menu.sp160 != 0) {
            sub_08065230(&sp4C, 0x78, 0x78, 9U, 0);
            sub_08065264(&sp4C, 0x88, 0x78, 5, (u32) sp10[1]);
            sub_08065230(&sp4C, 0x68, 0x78, 4U, (u32) sp10[0]);
        } else {
            sub_08065230(&sp4C, 0x78, 0x78, 8U, menu.sp160);
            sub_08065230(&sp4C, 0x88, 0x78, 5U, (u32) sp10[1]);
            sub_08065264(&sp4C, 0x68, 0x78, 4, (u32) sp10[0]);
        }
        loopCounterC0 = 0;
        var_r0_4 = &sp150[0];
        do {
            *var_r0_4 = 0;
            var_r0_4 += 1;
            loopCounterC0 += 1;
        } while (loopCounterC0 <= 4U);
        coordsBaseC0 = gCoordsC0;
        coordsThirdC0 = coordsBaseC0 + 4;
        countsC0 = sp150;
        loopCounterC0 = 0;
        goto loop_103CheckC0;
loop_103BodyC0:
        temp_r7 = (struct C0Item **)((u8 *)&gItemsC0 + 0x14C * loopCounterC0);
        temp_r1_9 = *temp_r7;
        temp_r4_16 = (u16) temp_r1_9->unk0 >> 4;
        if (temp_r4_16 == 0) {
            temp_r1_10 = (u8) temp_r1_9->unk3 >> 4;
            countTripletC0 = countsC0[temp_r1_10] * 3;
            temp_r2_4 = ((temp_r1_10 * 9) + countTripletC0) * 2;
            sub_08007870(*(u16 *)(coordsBaseC0 + temp_r2_4), *(u16 *)(coordsBaseC0 + temp_r2_4 + 2), *(u16 *)(coordsThirdC0 + temp_r2_4), 0, temp_r4_16, portraitsC0[loopCounterC0].tail + 16, portraitsC0[loopCounterC0].data8, portraitsC0[loopCounterC0].resource);
            temp_r0_6 = &countsC0[(u8) (*temp_r7)->unk3 >> 4];
            *temp_r0_6 += 1;
        }
        loopCounterC0 += 1;

    loop_103CheckC0:
        if (loopCounterC0 < sub_08002164())
            goto loop_103BodyC0;
        sub_080003F0();
        goto loop_82;
loop_113:
    {
        coordsBaseC0 = gCoordsC0;
        coordsThirdC0 = coordsBaseC0 + 4;
        countsC0 = sp150;
        loopCounterC0 = 0;
        var_r0_5 = countsC0;
        do {
            *var_r0_5 = 0;
            var_r0_5 += 1;
            loopCounterC0 += 1;
        } while (loopCounterC0 <= 4U);
        loopCounterC0 = 0;
        goto loop_111CheckC0;
loop_111BodyC0:
        temp_r7_2 = (struct C0Item **)((u8 *)&gItemsC0 + 0x14C * loopCounterC0);
        temp_r1_11 = *temp_r7_2;
        temp_r4_18 = (u16) temp_r1_11->unk0 >> 4;
        if (temp_r4_18 == 0) {
            temp_r1_12 = (u8) temp_r1_11->unk3 >> 4;
            countTripletC0 = countsC0[temp_r1_12] * 3;
            temp_r2_5 = ((temp_r1_12 * 9) + countTripletC0) * 2;
            sub_08007870(*(u16 *)(coordsBaseC0 + temp_r2_5), *(u16 *)(coordsBaseC0 + temp_r2_5 + 2), *(u16 *)(coordsThirdC0 + temp_r2_5), 0, temp_r4_18, portraitsC0[loopCounterC0].tail + 16, portraitsC0[loopCounterC0].data8, portraitsC0[loopCounterC0].resource);
            temp_r0_8 = &countsC0[(u8) (*temp_r7_2)->unk3 >> 4];
            *temp_r0_8 += 1;
        }
        loopCounterC0 += 1;

    loop_111CheckC0:
        if (loopCounterC0 < sub_08002164())
            goto loop_111BodyC0;
        temp_r4_20 = sub_08007290(0x1401F8) + 2;
        sub_0801A3D0(temp_r4_20, (u16) (0xF - ((u32) sub_0801A638(temp_r4_20) >> 1)), 0x12);
        sub_080003F0();
    }
loop_113CheckC0:
    if (sub_08067C18() == 0)
        goto loop_113;
    goto loop_123CheckC0;
loop_123:
    {
        coordsBaseC0 = gCoordsC0;
        coordsThirdC0 = coordsBaseC0 + 4;
        countsC0 = sp150;
        loopCounterC0 = 0;
        var_r0_6 = countsC0;
        do {
            *var_r0_6 = 0;
            var_r0_6 += 1;
            loopCounterC0 += 1;
        } while (loopCounterC0 <= 4U);
        loopCounterC0 = 0;
        goto loop_121CheckC0;
loop_121BodyC0:
        temp_r7_3 = (struct C0Item **)((u8 *)&gItemsC0 + 0x14C * loopCounterC0);
        temp_r1_13 = *temp_r7_3;
        temp_r4_21 = (u16) temp_r1_13->unk0 >> 4;
        if (temp_r4_21 == 0) {
            temp_r1_14 = (u8) temp_r1_13->unk3 >> 4;
            countTripletC0 = countsC0[temp_r1_14] * 3;
            temp_r2_6 = ((temp_r1_14 * 9) + countTripletC0) * 2;
            sub_08007870(*(u16 *)(coordsBaseC0 + temp_r2_6), *(u16 *)(coordsBaseC0 + temp_r2_6 + 2), *(u16 *)(coordsThirdC0 + temp_r2_6), 0, temp_r4_21, portraitsC0[loopCounterC0].tail + 16, portraitsC0[loopCounterC0].data8, portraitsC0[loopCounterC0].resource);
            temp_r0_9 = &countsC0[(u8) (*temp_r7_3)->unk3 >> 4];
            *temp_r0_9 += 1;
        }
        loopCounterC0 += 1;

    loop_121CheckC0:
        if (loopCounterC0 < sub_08002164())
            goto loop_121BodyC0;
        temp_r4_23 = sub_08007290(0x1401F8) + 2;
        sub_0801A3D0(temp_r4_23, (u16) (0xF - ((u32) sub_0801A638(temp_r4_23) >> 1)), 0x12);
        sub_080003F0();
    }
loop_123CheckC0:
    if (sub_08067C08() == 0)
        goto loop_123;
    sub_08067BF8();
    if (sub_08002204() != 0) {
        gPlayersC0[0].unk90 = 0x200;
    }
    sub_0806617C();
    sub_08066220();
    sub_0801AA8C(0x1E);
    goto loop_135CheckC0;
loop_135:
    {
        coordsBaseC0 = gCoordsC0;
        coordsThirdC0 = coordsBaseC0 + 4;
        countsC0 = sp150;
        loopCounterC0 = 0;
        var_r0_7 = countsC0;
        do {
            *var_r0_7 = 0;
            var_r0_7 += 1;
            loopCounterC0 += 1;
        } while (loopCounterC0 <= 4U);
        loopCounterC0 = 0;
        goto loop_133CheckC0;
loop_133BodyC0:
        temp_r7_4 = (struct C0Item **)((u8 *)&gItemsC0 + 0x14C * loopCounterC0);
        temp_r1_15 = *temp_r7_4;
        temp_r4_24 = (u16) temp_r1_15->unk0 >> 4;
        if (temp_r4_24 == 0) {
            temp_r1_16 = (u8) temp_r1_15->unk3 >> 4;
            countTripletC0 = countsC0[temp_r1_16] * 3;
            temp_r2_7 = ((temp_r1_16 * 9) + countTripletC0) * 2;
            sub_08007870(*(u16 *)(coordsBaseC0 + temp_r2_7), *(u16 *)(coordsBaseC0 + temp_r2_7 + 2), *(u16 *)(coordsThirdC0 + temp_r2_7), 0, temp_r4_24, portraitsC0[loopCounterC0].tail + 16, portraitsC0[loopCounterC0].data8, portraitsC0[loopCounterC0].resource);
            temp_r0_10 = &countsC0[(u8) (*temp_r7_4)->unk3 >> 4];
            *temp_r0_10 += 1;
        }
        loopCounterC0 += 1;

    loop_133CheckC0:
        if (loopCounterC0 < sub_08002164())
            goto loop_133BodyC0;
        sub_080003F0();
    }
loop_135CheckC0:
    if (sub_0801AAE0() == 0)
        goto loop_135;
    sub_0801A664(0, 0x14);
    sub_0800CFA4();
    (*(u32 *)(gStateC0 + 0x40)) = 1;
    (*(u16 *)(gStateC0 + 0x36)) = 0;
    sub_08000E48();
    sub_0800115C(menu.sp164);
    sub_08001108((u8) menu.sp168);
    sub_08000420(0x02688420);
}
#else
INCLUDE_ASM("asm/nonmatchings/code_08087CC0", sub_0808C0C4);
#endif
extern u8 gUnk_084F0C28[];
extern u8 gUnk_084F0C8A[];
extern void sub_080003F4(s32);
extern u32 sub_08065158(void *, u32, u32, s32, s32);
extern void sub_080290E4(s32, s32);
extern void sub_080257D4(void *, s32);
extern void sub_0801A664(s32, s32);
void sub_0808CB58(void) {
    u32 anim[13];
    s32 counts[4];
    s32 teams[4];
    u32 textId;
    s32 *sp5C;
    s16 *var_r0_3;
    s32 *temp_r0_2;
    s32 *temp_r2_3;
    s32 *var_r0;
    s32 *var_r1;
    s32 *var_r5_4;
    s32 *var_r6_2;
    s32 temp_r1;
    s32 temp_r2;
    s32 temp_r2_2;
    s32 var_r0_2;
    s32 var_r1_2;
    s32 var_r6;
    u16 temp_r0_4;
    u16 temp_r5;
    u32 temp_r0_3;
    u32 var_r2;
    register u32 var_r4 asm("r4");
    u32 var_r5_3;
    u32 var_r6_3;
    register u32 var_sl asm("r10");
    u8 *var_r5;
    u8 *var_r5_2;
    u8 temp_r0;
    u8 *players;
    u32 stride;
    s32 tableIndex;
    s32 tableOffset;
    u16 tableY;
    u8 *current;
    u8 *players2;
    register u8 *table asm("r4");
    register s32 *countBase asm("r8");


    switch ((u32)gUnk_03003470) {
    case 0: sub_08065158(anim, 0x50006, 0, -1, 0); break;
    case 1: sub_08065158(anim, 0x50007, 0, -1, 0); break;
    case 2: sub_08065158(anim, 0x50008, 0, -1, 0); break;
    case 3: sub_08065158(anim, 0x50009, 0, -1, 0); break;
    case 4: sub_08065158(anim, 0x5000A, 0, -1, 0); break;
    }
    sub_0800CF58();
    sub_08028AAC(0, 0x79, 0x1BE, 0);
    sub_080290E4(0, 4);
    sp5C = teams;
    countBase = counts;
    while (sub_08067C18() == 0) sub_080003F0();
    while (sub_08067C08() == 0) sub_080003F0();
    sub_08067BF8();
    var_r6 = 0;
    var_r4 = 0;
    players = (u8 *)gUnk_03003CE0;
    stride = 0x14C;
    var_r5 = players + 0x68;
    while ((var_r4 < sub_08002164()) && (sub_080020F4() != var_r4)) {
        {
            register u32 off asm("r0") = stride * sub_080020F4();
            asm("" : "+r"(off));
            if (*((u8 *)(off + (u32)players) + 0x68) == *var_r5) {
                var_r6 += 1;
            }
        }
        var_r5 += 0x14C;
        var_r4 += 1;
    }
    players2 = (u8 *)gUnk_03003CE0;
    if (*((players2 + 0x14C * sub_080020F4()) + 0x68) != 0) {
        table = gUnk_084F0C8A;
        {
            register s32 idx asm("r1") = *((players2 + 0x14C * sub_080020F4()) + 0x68);
            asm("" : "+r"(idx));
            tableIndex = idx - 3;
        }
        tableOffset = (s32)((((u32)tableIndex << 1) + (u32)tableIndex) << 1);
        {
            register u32 addr asm("r0") = tableOffset;
            asm("" : "+r"(addr));
            addr += (u32)table;
            asm("" : "+r"(addr));
            temp_r5 = *(u16 *)addr;
        }
        {
            register s32 idx asm("r0") = *((players2 + 0x14C * sub_080020F4()) + 0x68);
            asm("" : "+r"(idx));
            idx -= 3;
            asm("" : "+r"(idx));
            tableOffset = (s32)((((u32)idx << 1) + (u32)idx) << 1);
        }
        {
            register u32 addr asm("r1") = tableOffset;
            register u8 *base asm("r0");
            asm("" : "+r"(addr));
            base = table + 2;
            asm("" : "+r"(base), "+r"(addr));
            addr += (u32)base;
            asm("" : "+r"(addr));
            tableY = (var_r6 * 10) + *(u16 *)addr;
        }
        sub_08028AAC(0, temp_r5, tableY, 0);
        {
            register s32 idx asm("r1") = *((players2 + 0x14C * sub_080020F4()) + 0x68);
            asm("" : "+r"(idx));
            tableIndex = idx - 3;
        }
        tableOffset = (s32)((((u32)tableIndex << 1) + (u32)tableIndex) << 1);
        {
            register u32 addr asm("r0") = tableOffset;
            asm("" : "+r"(addr));
            table += 4;
            asm("" : "+r"(table));
            addr += (u32)table;
            asm("" : "+r"(addr));
            sub_080290E4(0, *(s16 *)addr);
        }
    } else {
        table = gUnk_084F0C8A;
        sub_08028AAC(0, (s32) (u16) ((var_r6 << 5) + *(u16 *)(table + 0x18)), (s32) *(u16 *)(table + 0x1A), 0);
        sub_080290E4(0, *(s16 *)(table + 0x1C));
    }
    var_r4 = 0;
    asm("" : "+r"(var_r4));
    {
        register u8 *base asm("r0") = (u8 *)gUnk_03003CE0;
        asm("" : "+r"(base));
        var_r6_2 = sp5C;
        var_r5_2 = base + 0x68;
    }
    while (var_r4 < sub_08002164()) {
        *var_r6_2 = (s32) *var_r5_2;
        var_r6_2 += 1;
        var_r5_2 += 0x14C;
        var_r4 += 1;
    }
    sub_08057328(0, &sub_0802F208);
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)) = 0U;
    sub_08057934();
    sub_080003F4(0x09999000);
    var_r5_3 = 0;
loop_27:
    {
        register u32 index asm("r0") = sub_080020F4();
        register s32 *base asm("r1");
        register u32 address asm("r0");
        asm("" : "+r"(index));
        index <<= 2;
        asm("" : "+r"(index));
        base = sp5C;
        asm("" : "+r"(base));
        address = (u32)base + index;
        asm("" : "+r"(address));
        if (*(s32 *)address == 0) sub_08015C14();
    }
    {
        register u32 zero asm("r1");
        register u8 *state asm("r0") = *(u8 **)&gUnk_03005CF4 + 0x5A;
        asm("" : "+r"(state));
        zero = 0;
        asm("" : "+r"(zero));
        *(u16 *)state = zero;
        var_r4 = 0;
        var_r0 = countBase;
        do {
            *var_r0 = zero;
            var_r0 += 1;
            var_r4 += 1;
        } while (var_r4 <= 3U);
    }
    var_r4 = 0;
    while (var_r4 < sub_08002164()) {
        {
            register u8 *base asm("r3") = (u8 *)gUnk_03003CE0;
            register u32 offset asm("r2");
            register u8 *ptr asm("r0");
            asm("" : "+r"(base));
            offset = 0x14C * var_r4;
            asm("" : "+r"(offset));
            ptr = base + 0x148;
            asm("" : "+r"(ptr));
            ptr = (u8 *)(offset + (u32)ptr);
            asm("" : "+r"(ptr), "+r"(base), "+r"(offset));
            if (((u32) (**(u8 **)ptr << 0x1C) >> 0x1C) != 0xB) {
                ptr = base + 0x30;
                asm("" : "+r"(ptr));
                ptr = (u8 *)(offset + (u32)ptr);
                asm("" : "+r"(ptr), "+r"(base), "+r"(offset));
                if (!(*(u32 *)ptr & 0x2000)) {
                    {
                        register u32 address asm("r0") = offset + (u32)base;
                        register u8 *team asm("r1");
                        asm("" : "+r"(address));
                        team = (u8 *)address;
                        asm("" : "+r"(team));
                        team += 0x68;
                        temp_r0 = *team;
                    }
                    if (temp_r0 != 0) {
                        register s32 index asm("r0") = temp_r0 - 3;
                        register s32 *counter asm("r0");
                        register s32 value asm("r1");
                        asm("" : "+r"(index));
                        counter = &countBase[index];
                        asm("" : "+r"(counter));
                        value = *counter;
                        asm("" : "+r"(value));
                        *counter = value + 1;
                    }
                }
            }
        }
        var_r4 += 1;
    }
    {
        register u8 **state asm("r3");
        var_r2 = 0;
        var_r4 = 0;
        asm("" : "+r"(var_r2), "+r"(var_r4));
        state = (u8 **)&gUnk_03005CF4;
        asm("" : "+r"(state));
        var_r1 = countBase;
        do {
            if (*var_r1 != 0) {
                var_r2 += 1;
                *(u16 *)(*state + 0x5A) = var_r4;
            }
            var_r1 += 1;
            var_r4 += 1;
        } while ((u32) var_r4 <= 3U);
    }
    if (var_r2 <= 1U) {
        temp_r0_3 = var_r5_3;
        var_r5_3 += 1;
        if (temp_r0_3 > 2U) goto stable;
    } else {
        var_r5_3 = 0;
    }
    sub_08057624(1U);
    goto loop_27;
stable:
    if (var_r2 != 1) {

    } else {
        var_r6_3 = 0;
        var_r4 = 0;
        var_r5_4 = sp5C;
        while (var_r4 < sub_08002164()) {
            temp_r1 = *var_r5_4;
            if ((temp_r1 != 0) && ((temp_r1 - 3) == (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A)))) {
                var_r6_3 += 1;
            }
            var_r5_4 += 1;
            var_r4 += 1;
            }
        while (sub_0805EF90() != 0) sub_080003F0();
        if (var_r6_3 <= 1U) {
            var_r4 = 0;
            goto check_player;
next_player:
            var_r4 += 1;
check_player:
            if (var_r4 >= sub_08002164()) goto found_player;
            {
                register u8 *base asm("r3") = (u8 *)gUnk_03003CE0;
                register u32 offset asm("r2");
                register u8 *ptr asm("r0");
                asm("" : "+r"(base));
                offset = 0x14C * var_r4;
                asm("" : "+r"(offset));
                ptr = base;
                asm("" : "+r"(ptr));
                ptr += 0x30;
                asm("" : "+r"(ptr));
                ptr = (u8 *)(offset + (u32)ptr);
                asm("" : "+r"(ptr), "+r"(base), "+r"(offset));
                if (*(u32 *)ptr & 0x2000) goto next_player;
                ptr = (u8 *)(offset + (u32)base);
                asm("" : "+r"(ptr));
                ptr += 0x68;
                if (*ptr == 0) goto next_player;
            }
found_player:
            switch (var_r4) {
            case 0: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FB); break;
            case 1: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FC); break;
            case 2: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FD); break;
            case 3: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FE); break;
            }
        } else {
            temp_r0_4 = *(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A);
            switch (temp_r0_4) {
            case 0: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x1401FF); break;
            case 1: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140200); break;
            case 2: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140201); break;
            case 3: var_sl = sub_0805DF38(1, 0xE, 0x19, 2, -1, 0x140202); break;
            }
        }
        {
            register u32 index asm("r0") = sub_080020F4();
            register u8 *base asm("r2");
            asm("" : "+r"(index));
            base = (u8 *)gUnk_03003CE0;
            asm("" : "+r"(base));
            *(base + index * 0x14C + 0x68) = 0;
        }
        sub_0806617C();
        while (sub_0805EEFC((void *)var_sl) == 0) sub_080003F0();
    }
    sub_080257D4(&gUnk_084F0C28, 0);
    sub_08056E24();
    {
        register u32 index asm("r0") = sub_080020F4();
        register s32 *base asm("r2");
        register u32 address asm("r0");
        asm("" : "+r"(index));
        index <<= 2;
        asm("" : "+r"(index));
        base = sp5C;
        asm("" : "+r"(base));
        address = (u32)base + index;
        asm("" : "+r"(address));
        var_r0_2 = *(s32 *)address;
    }
    if (var_r0_2 == 0) {
        {
            register u32 index asm("r0") = sub_080020F4();
            register u8 *base asm("r1");
            register u32 offset asm("r2");
            register s32 *target asm("r2");
            asm("" : "+r"(index));
            base = (u8 *)gUnk_03003CE0;
            asm("" : "+r"(base));
            offset = index * 0x14C;
            asm("" : "+r"(offset));
            base += 0x30;
            asm("" : "+r"(base));
            target = (s32 *)(offset + (u32)base);
            asm("" : "+r"(target));
            *target |= 0x400;
        }
        sub_08067D74();
    }
    while (sub_08056E90() == 0) sub_08057624(1U);
    {
        register u32 index asm("r0") = sub_080020F4();
        register s32 *base asm("r1");
        register u32 address asm("r0");
        asm("" : "+r"(index));
        index <<= 2;
        asm("" : "+r"(index));
        base = sp5C;
        asm("" : "+r"(base));
        address = (u32)base + index;
        asm("" : "+r"(address));
        var_r0_2 = *(s32 *)address;
    }
    if ((var_r0_2 - 3) == (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x5A))) {
        (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x58)) = 0;
    } else {
        {
            register u32 index asm("r0") = sub_080020F4();
            register s32 *base asm("r2");
            register u32 address asm("r0");
            asm("" : "+r"(index));
            index <<= 2;
            asm("" : "+r"(index));
            base = sp5C;
            asm("" : "+r"(base));
            address = (u32)base + index;
            asm("" : "+r"(address));
            var_r1_2 = *(s32 *)address;
        }
        if (var_r1_2 == 0) {
            var_r0_3 = (s16 *)(*(u8 **)&gUnk_03005CF4 + 0x58);
        } else {
            var_r0_3 = (s16 *)(*(u8 **)&gUnk_03005CF4 + 0x58);
            var_r1_2 = 2;
        }
        *var_r0_3 = (s16) var_r1_2;
    }
    (*(u32 *)(*(u8 **)&gUnk_03005CF4 + 0x40)) = 0;
    (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x36)) = 1;
    sub_0801A664(0, 0x14);
}

extern void sub_0808D118(void);
void sub_0808D05C(void)
{
    gTask6450.f20 = sub_08001494(0x1000);
    gTask6450.f10 = gTask6450.f20 + 0xFFC;
    gTask6450.f8 = 0x64;
    gTask6450.f24 = (u32)sub_0808D118;
    if (sub_0800CB9C())
        gTask6450.fC = (u32)sub_0808C0C4;
    else
        gTask6450.fC = (u32)sub_0808AFE8;
    sub_08000274((u32)&gTask6450, 0);
}
void sub_0808D0B0(void) {
    sub_08057934();
    sub_08057984();
    sub_080587E4();
}
void sub_0808D0C4(void)
{
    u8 *state = (u8 *)gUnk_03003CE0 + sub_080020F4() * 0x14C;
    if ((*(u32 *)(state + 0x30) & 0x4000) == 0) {
        do {
            sub_08057624(1);
        } while ((*(u32 *)(state + 0x30) & 0x4000) == 0);
    }
    sub_08057DD0(0x78, 0x14A, 0x78, 0x50, (u32)sub_0808C020, 0);
}
void sub_0808D118(void) {

}
u32 sub_0808D11C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D190(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D204(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F26E4;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern void sub_08098108(void);
s32 sub_0808D278(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_08098108, (u32)sub_08099720);
    sub_0800CD9C();
fail:
    return 0;
}
u32 sub_0808D31C(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
u32 sub_0808D390(u32 arg)
{
    u8 *base;
    register u8 *dest asm("r3");
    register u32 *table asm("r2");
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10) == 0) {
        sub_0802704C(arg);
        goto fail;
    }
    if (sub_08056E90() == 0)
        goto fail;
    sub_0801ABE8(3);
    sub_0800BB40();
    while (sub_0801AAE0() == 0)
        sub_080003F0();
    sub_0800BB40();
    base = *(u8 **)&gUnk_03005CF4;
    dest = base + 0x71C;
    table = gUnk_084F4818;
    * (u32 *)dest = table[*(u32 *)(base + 0x40)];
    *(u16 *)(base + 0x10) = 0;
    one = 1;
    *(u16 *)(base + 0x30) = one;
    *(u16 *)(base + 0x24) = one;
    return one;
fail:
    return 0;
}
extern void sub_08099838(void);
s32 sub_0808D404(s32 arg)
{
    u32 zero;
    u8 *base;
    register u32 one asm("r0");
    if (*(u16 *)(*(u8 **)&gUnk_03005CF4 + 0x10)) {
        if (sub_08056E90()) {
            sub_08056FB8(0, 2);
            sub_0800CDAC();
            sub_08056E78();
            base = *(u8 **)&gUnk_03005CF4;
            zero = 0;
            *(u16 *)(base + 0x36) = 3;
            sub_0805D518();
            sub_08057BD0(gUnk_03003170.curLevel);
            gUnk_03003CE0[sub_080020F4()].flags &= ~2;
            gUnk_03003CE0[sub_080020F4()].state = zero;
            base = *(u8 **)&gUnk_03005CF4;
            one = 1;
            *(u16 *)(base + 0x30) = one;
            *(u16 *)(base + 0x24) = one;
            return one;
        }
        goto fail;
    }
    sub_0800CD9C();
    sub_0802704C(arg);
    sub_0801674C((u32)sub_08099838, (u32)sub_0809ADE8);
    sub_0800CD9C();
fail:
    return 0;
}
