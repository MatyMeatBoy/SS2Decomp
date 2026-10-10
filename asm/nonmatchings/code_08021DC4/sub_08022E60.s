	thumb_func_start sub_08022E60
sub_08022E60: @ 0x08022E60
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r1, #0
	bne _08022E6A
	b _080231A2
_08022E6A:
	ldr r0, _08022E98
	ldr r1, [r0, #0]
	movs r2, #0
	strh r4, [r1, #0]
	str r2, [r1, #0x40]
	movs r7, #0
	adds r3, r0, #0
_08022E78:
	ldr r0, [r3, #0]
	lsls r1, r7, #1
	adds r0, #0xe
	adds r0, r0, r1
	strh r2, [r0, #0]
	adds r7, #1
	cmp r7, #9
	bls _08022E78
	cmp r4, #0x17
	bls _08022E8E
	b _080231A2
_08022E8E:
	lsls r0, r4, #2
	ldr r1, _08022E9C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08022E98: .4byte gUnk_03005CF4
_08022E9C: .4byte _08022EA0
_08022EA0:
	.4byte _08022F00
_08022EA4: .4byte _08022F28
_08022EA8: .4byte _08022F44
_08022EAC: .4byte _08022F60
_08022EB0: .4byte _08022F7C
_08022EB4: .4byte _08022F98
_08022EB8: .4byte _08022FB4
_08022EBC: .4byte _08022FD0
_08022EC0: .4byte _08022FEC
_08022EC4: .4byte _08023008
_08022EC8: .4byte _08023024
_08022ECC: .4byte _08023040
_08022ED0: .4byte _0802305C
_08022ED4: .4byte _08023078
_08022ED8: .4byte _08023094
_08022EDC: .4byte _080230B0
_08022EE0: .4byte _080230CC
_08022EE4: .4byte _080230E8
_08022EE8: .4byte _08023104
_08022EEC: .4byte _08023120
_08022EF0: .4byte _0802313C
_08022EF4: .4byte _08023158
_08022EF8: .4byte _08023174
_08022EFC: .4byte _08023190
_08022F00:
	bl sub_0800CCDC
	ldr r0, _08022F1C
	ldr r1, [r0, #0]
	ldr r0, _08022F20
	adds r2, r1, r0
	ldr r0, _08022F24
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1, #0x36]
	b _080231A2
	.2byte 0x0000
_08022F1C: .4byte gUnk_03005CF4
_08022F20: .4byte 0x0000071C
_08022F24: .4byte gUnk_084F0AC0
_08022F28:
	bl sub_0800CCEC
	ldr r0, _08022F38
	ldr r0, [r0, #0]
	ldr r1, _08022F3C
	adds r0, r0, r1
	ldr r1, _08022F40
	b _0802319E
_08022F38: .4byte gUnk_03005CF4
_08022F3C: .4byte 0x0000071C
_08022F40: .4byte gUnk_084F26E4
_08022F44:
	bl sub_0800CCEC
	ldr r0, _08022F54
	ldr r0, [r0, #0]
	ldr r2, _08022F58
	adds r0, r0, r2
	ldr r1, _08022F5C
	b _0802319E
_08022F54: .4byte gUnk_03005CF4
_08022F58: .4byte 0x0000071C
_08022F5C: .4byte gUnk_084F4818
_08022F60:
	bl sub_0800CCEC
	ldr r0, _08022F70
	ldr r0, [r0, #0]
	ldr r1, _08022F74
	adds r0, r0, r1
	ldr r1, _08022F78
	b _0802319E
_08022F70: .4byte gUnk_03005CF4
_08022F74: .4byte 0x0000071C
_08022F78: .4byte gUnk_084F794C
_08022F7C:
	bl sub_0800CCEC
	ldr r0, _08022F8C
	ldr r0, [r0, #0]
	ldr r2, _08022F90
	adds r0, r0, r2
	ldr r1, _08022F94
	b _0802319E
_08022F8C: .4byte gUnk_03005CF4
_08022F90: .4byte 0x0000071C
_08022F94: .4byte gUnk_084FA298
_08022F98:
	bl sub_0800CCEC
	ldr r0, _08022FA8
	ldr r0, [r0, #0]
	ldr r1, _08022FAC
	adds r0, r0, r1
	ldr r1, _08022FB0
	b _0802319E
_08022FA8: .4byte gUnk_03005CF4
_08022FAC: .4byte 0x0000071C
_08022FB0: .4byte gUnk_084FD06C
_08022FB4:
	bl sub_0800CCEC
	ldr r0, _08022FC4
	ldr r0, [r0, #0]
	ldr r2, _08022FC8
	adds r0, r0, r2
	ldr r1, _08022FCC
	b _0802319E
_08022FC4: .4byte gUnk_03005CF4
_08022FC8: .4byte 0x0000071C
_08022FCC: .4byte gUnk_0850008C
_08022FD0:
	bl sub_0800CCEC
	ldr r0, _08022FE0
	ldr r0, [r0, #0]
	ldr r1, _08022FE4
	adds r0, r0, r1
	ldr r1, _08022FE8
	b _0802319E
_08022FE0: .4byte gUnk_03005CF4
_08022FE4: .4byte 0x0000071C
_08022FE8: .4byte gUnk_085028BC
_08022FEC:
	bl sub_0800CCEC
	ldr r0, _08022FFC
	ldr r0, [r0, #0]
	ldr r2, _08023000
	adds r0, r0, r2
	ldr r1, _08023004
	b _0802319E
_08022FFC: .4byte gUnk_03005CF4
_08023000: .4byte 0x0000071C
_08023004: .4byte gUnk_085060D4
_08023008:
	bl sub_0800CCEC
	ldr r0, _08023018
	ldr r0, [r0, #0]
	ldr r1, _0802301C
	adds r0, r0, r1
	ldr r1, _08023020
	b _0802319E
_08023018: .4byte gUnk_03005CF4
_0802301C: .4byte 0x0000071C
_08023020: .4byte gUnk_08508B54
_08023024:
	bl sub_0800CCEC
	ldr r0, _08023034
	ldr r0, [r0, #0]
	ldr r2, _08023038
	adds r0, r0, r2
	ldr r1, _0802303C
	b _0802319E
_08023034: .4byte gUnk_03005CF4
_08023038: .4byte 0x0000071C
_0802303C: .4byte gUnk_0850C6E8
_08023040:
	bl sub_0800CCEC
	ldr r0, _08023050
	ldr r0, [r0, #0]
	ldr r1, _08023054
	adds r0, r0, r1
	ldr r1, _08023058
	b _0802319E
_08023050: .4byte gUnk_03005CF4
_08023054: .4byte 0x0000071C
_08023058: .4byte gUnk_0850D4EC
_0802305C:
	bl sub_0800CCEC
	ldr r0, _0802306C
	ldr r0, [r0, #0]
	ldr r2, _08023070
	adds r0, r0, r2
	ldr r1, _08023074
	b _0802319E
_0802306C: .4byte gUnk_03005CF4
_08023070: .4byte 0x0000071C
_08023074: .4byte gUnk_0850DE28
_08023078:
	bl sub_0800CCEC
	ldr r0, _08023088
	ldr r0, [r0, #0]
	ldr r1, _0802308C
	adds r0, r0, r1
	ldr r1, _08023090
	b _0802319E
_08023088: .4byte gUnk_03005CF4
_0802308C: .4byte 0x0000071C
_08023090: .4byte gUnk_0850EAC4
_08023094:
	bl sub_0800CCEC
	ldr r0, _080230A4
	ldr r0, [r0, #0]
	ldr r2, _080230A8
	adds r0, r0, r2
	ldr r1, _080230AC
	b _0802319E
_080230A4: .4byte gUnk_03005CF4
_080230A8: .4byte 0x0000071C
_080230AC: .4byte gUnk_0850ED20
_080230B0:
	bl sub_0800CCEC
	ldr r0, _080230C0
	ldr r0, [r0, #0]
	ldr r1, _080230C4
	adds r0, r0, r1
	ldr r1, _080230C8
	b _0802319E
_080230C0: .4byte gUnk_03005CF4
_080230C4: .4byte 0x0000071C
_080230C8: .4byte gUnk_0850F894
_080230CC:
	bl sub_0800CCEC
	ldr r0, _080230DC
	ldr r0, [r0, #0]
	ldr r2, _080230E0
	adds r0, r0, r2
	ldr r1, _080230E4
	b _0802319E
_080230DC: .4byte gUnk_03005CF4
_080230E0: .4byte 0x0000071C
_080230E4: .4byte gUnk_08510530
_080230E8:
	bl sub_0800CCEC
	ldr r0, _080230F8
	ldr r0, [r0, #0]
	ldr r1, _080230FC
	adds r0, r0, r1
	ldr r1, _08023100
	b _0802319E
_080230F8: .4byte gUnk_03005CF4
_080230FC: .4byte 0x0000071C
_08023100: .4byte gUnk_08511538
_08023104:
	bl sub_0800CCEC
	ldr r0, _08023114
	ldr r0, [r0, #0]
	ldr r2, _08023118
	adds r0, r0, r2
	ldr r1, _0802311C
	b _0802319E
_08023114: .4byte gUnk_03005CF4
_08023118: .4byte 0x0000071C
_0802311C: .4byte gUnk_08512670
_08023120:
	bl sub_0800CCEC
	ldr r0, _08023130
	ldr r0, [r0, #0]
	ldr r1, _08023134
	adds r0, r0, r1
	ldr r1, _08023138
	b _0802319E
_08023130: .4byte gUnk_03005CF4
_08023134: .4byte 0x0000071C
_08023138: .4byte gUnk_08513680
_0802313C:
	bl sub_0800CCEC
	ldr r0, _0802314C
	ldr r0, [r0, #0]
	ldr r2, _08023150
	adds r0, r0, r2
	ldr r1, _08023154
	b _0802319E
_0802314C: .4byte gUnk_03005CF4
_08023150: .4byte 0x0000071C
_08023154: .4byte gUnk_08514FAC
_08023158:
	bl sub_0800CCEC
	ldr r0, _08023168
	ldr r0, [r0, #0]
	ldr r1, _0802316C
	adds r0, r0, r1
	ldr r1, _08023170
	b _0802319E
_08023168: .4byte gUnk_03005CF4
_0802316C: .4byte 0x0000071C
_08023170: .4byte gUnk_08515FCC
_08023174:
	bl sub_0800CCEC
	ldr r0, _08023184
	ldr r0, [r0, #0]
	ldr r2, _08023188
	adds r0, r0, r2
	ldr r1, _0802318C
	b _0802319E
_08023184: .4byte gUnk_03005CF4
_08023188: .4byte 0x0000071C
_0802318C: .4byte gUnk_08517220
_08023190:
	bl sub_0800CCEC
	ldr r0, _08023208
	ldr r0, [r0, #0]
	ldr r1, _0802320C
	adds r0, r0, r1
	ldr r1, _08023210
_0802319E:
	ldr r1, [r1, #0]
	str r1, [r0, #0]
_080231A2:
	bl sub_08002204
	cmp r0, #0
	beq _08023242
	ldr r0, _08023208
	ldr r1, [r0, #0]
	movs r0, #9
	strh r0, [r1, #8]
	ldr r2, _0802320C
	adds r0, r1, r2
	ldr r6, [r0, #0]
	movs r0, #1
	strh r0, [r1, #0x22]
	cmp r4, #0
	beq _0802326E
	movs r7, #0
_080231C2:
	ldrh r0, [r6, #0]
	cmp r0, #0
	beq _080231FC
	bl sub_080008C8
	ldr r1, _08023208
	ldr r4, [r1, #0]
	ldrh r5, [r6, #0]
	lsls r5, r5, #1
	adds r4, #0x22
	adds r5, r4, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r6, #2]
	bl sub_080B95E4
	strh r0, [r5, #0]
	ldrh r0, [r6, #0]
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r0, [r4, #0]
	adds r0, #1
	strh r0, [r4, #0]
	adds r7, #1
	movs r0, #0x92
	lsls r0, r0, #1
	adds r6, r6, r0
	cmp r7, #9
	bls _080231C2
_080231FC:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0802326E
	b _08023218
	.2byte 0x0000
_08023208: .4byte gUnk_03005CF4
_0802320C: .4byte 0x0000071C
_08023210: .4byte gUnk_0851810C
_08023214:
	bl sub_080003F0
_08023218:
	bl sub_08065FE8
	cmp r0, #0
	beq _08023214
	b _08023226
_08023222:
	bl sub_080003F0
_08023226:
	bl sub_08067C18
	cmp r0, #0
	beq _08023222
	b _08023234
_08023230:
	bl sub_080003F0
_08023234:
	bl sub_08067C08
	cmp r0, #0
	beq _08023230
	bl sub_08067BF8
	b _0802326E
_08023242:
	cmp r4, #0
	beq _0802326E
	bl sub_0800CB9C
	cmp r0, #0
	beq _0802326E
	b _08023254
_08023250:
	bl sub_080003F0
_08023254:
	bl sub_08067C18
	cmp r0, #0
	beq _08023250
	b _08023262
_0802325E:
	bl sub_080003F0
_08023262:
	bl sub_08067C08
	cmp r0, #0
	beq _0802325E
	bl sub_08067BF8
_0802326E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08022E60
