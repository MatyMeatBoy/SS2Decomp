	thumb_func_start sub_08002B70
sub_08002B70: @ 0x08002B70
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08002C34
	add sp, r4
	add r0, sp, #0x248
	ldr r1, _08002C38
	movs r2, #2
	bl memcpy
	bl sub_08002AA0
	bl sub_080003F0
	bl sub_080003F0
	movs r0, #0xd8
	lsls r0, r0, #2
	bl sub_08001494
	str r0, [sp, #0x28c]
	bl sub_0807A378
	str r0, [sp, #0x274]
	movs r0, #3
	bl sub_0801AB50
	movs r0, #0
	str r0, [sp, #0x25c]
	movs r1, #0
	str r1, [sp, #0x258]
	movs r2, #0
	str r2, [sp, #0x254]
	movs r3, #0
	str r3, [sp, #0x26c]
	ldr r0, _08002C3C
	add r0, sp
	strh r2, [r0, #0]
	ldr r0, _08002C40
	add r0, sp
	add r1, sp, #0x254
	ldrh r1, [r1, #0]
	strh r1, [r0, #0]
	add r0, sp, #0x250
	add r2, sp, #0x254
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	add r0, sp, #0x24c
	add r3, sp, #0x254
	ldrh r3, [r3, #0]
	strh r3, [r0, #0]
	movs r5, #0
	mov r4, sp
	adds r4, #0x18
	str r4, [sp, #0x298]
	mov r8, r5
_08002BE4:
	add r0, sp, #0x218
	lsls r6, r5, #1
	adds r0, r0, r6
	mov r1, r8
	strh r1, [r0, #0]
	add r0, sp, #0x228
	adds r0, r0, r6
	strh r1, [r0, #0]
	movs r0, #0x6c
	muls r0, r5, r0
	ldr r2, [sp, #0x28c]
	adds r1, r0, r2
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08002C48
	movs r0, #0x34
	muls r0, r5, r0
	mov r4, sp
	adds r4, r4, r0
	adds r4, #0x10
	ldr r2, _08002C44
	ldrb r1, [r1, #1]
	movs r0, #0x58
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, [r0, #0]
	mov r3, r8
	str r3, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl sub_08065158
	add r0, sp, #0x238
	adds r0, r0, r6
	movs r1, #8
	strh r1, [r0, #0]
	strb r5, [r4, #0x1c]
	b _08002C64
	.2byte 0x0000
_08002C34: .4byte 0xFFFFFD64
_08002C38: .4byte gUnk_080B99D4
_08002C3C: .4byte 0x00000252
_08002C40: .4byte 0x0000024E
_08002C44: .4byte gUnk_08479140
_08002C48:
	bl sub_080653CC
	adds r1, r0, #0
	movs r0, #0x34
	muls r0, r5, r0
	add r0, sp
	adds r0, #0x10
	movs r2, #0x34
	bl memcpy
	add r0, sp, #0x238
	adds r0, r0, r6
	movs r1, #6
	strh r1, [r0, #0]
_08002C64:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _08002BE4
	add r4, sp, #0x1b0
	bl sub_080653CC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x34
	bl memcpy
	ldr r1, _08002CA8
	ldr r4, [sp, #0x258]
	lsls r2, r4, #3
	adds r0, r2, r1
	ldr r0, [r0, #0]
	str r0, [sp, #0x27c]
	str r0, [sp, #0x284]
	adds r1, #4
	adds r2, r2, r1
	ldr r2, [r2, #0]
	str r2, [sp, #0x280]
	str r2, [sp, #0x288]
	ldr r0, _08002CAC
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08002D14
	lsls r0, r0, #2
	ldr r1, _08002CB0
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08002CA8: .4byte gUnk_08366DCC
_08002CAC: .4byte gUnk_03003470
_08002CB0: .4byte _08002CB4
_08002CB4:
	.4byte _08002CC8
_08002CB8: .4byte _08002CD4
_08002CBC: .4byte _08002CE0
_08002CC0: .4byte _08002CEC
_08002CC4: .4byte _08002D04
_08002CC8:
	add r0, sp, #0x1e4
	ldr r1, _08002CD0
	b _08002CF0
	.2byte 0x0000
_08002CD0: .4byte 0x00050002
_08002CD4:
	add r0, sp, #0x1e4
	ldr r1, _08002CDC
	b _08002CF0
	.2byte 0x0000
_08002CDC: .4byte 0x0005015B
_08002CE0:
	add r0, sp, #0x1e4
	ldr r1, _08002CE8
	b _08002CF0
	.2byte 0x0000
_08002CE8: .4byte 0x0005015C
_08002CEC:
	add r0, sp, #0x1e4
	ldr r1, _08002D00
_08002CF0:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _08002D14
	.2byte 0x0000
_08002D00: .4byte 0x0005015D
_08002D04:
	add r0, sp, #0x1e4
	ldr r1, _08002D68
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_08002D14:
	movs r0, #0x88
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x294]
	ldr r0, _08002D6C
	bl sub_0800115C
	str r0, [sp, #0x290]
	bl sub_08000D8C
	movs r0, #0x6f
	bl sub_08058688
	movs r0, #1
	str r0, [sp, #0x268]
	movs r1, #1
	str r1, [sp, #0x278]
_08002D3A:
	bl sub_0801AAE0
	adds r1, r0, #0
	cmp r1, #0
	bne _08002D48
	ldr r0, _08002D70
	strh r1, [r0, #0]
_08002D48:
	lsrs r2, r7, #8
	mov sl, r2
	movs r3, #0x40
	adds r3, r3, r7
	mov r9, r3
	ldr r4, [sp, #0x25c]
	cmp r4, #7
	bls _08002D5C
	bl _0800360E
_08002D5C:
	lsls r0, r4, #2
	ldr r1, _08002D74
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08002D68: .4byte 0x0005015E
_08002D6C: .4byte sub_08006694
_08002D70: .4byte gUnk_03001324
_08002D74: .4byte _08002D78
_08002D78:
	.4byte _08002D98
_08002D7C: .4byte _08002E18
_08002D80: .4byte _08003180
_08002D84: .4byte _080032B8
_08002D88: .4byte _080033E4
_08002D8C: .4byte _0800342C
_08002D90: .4byte _0800360E
_08002D94: .4byte _08003494
_08002D98:
	ldr r0, _08002DB8
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08002DBC
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #1
	str r0, [sp, #0x25c]
	movs r0, #0x11
	movs r1, #2
	bl sub_0801A664
	lsrs r1, r7, #8
	mov sl, r1
	b _08003530
_08002DB8: .4byte gUnk_03001324
_08002DBC:
	ldr r0, _08002DF0
	bl sub_08007290
	adds r0, #2
	movs r1, #1
	movs r2, #0x11
	bl sub_0801A3D0
	ldr r2, [sp, #0x26c]
	cmp r2, #0
	beq _08002DDC
	add r0, sp, #0x248
	movs r1, #0x1c
	movs r2, #0x11
	bl sub_0801A3D0
_08002DDC:
	ldr r1, [sp, #0x270]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x270]
	cmp r1, #0x1d
	bhi _08002DF4
	movs r3, #1
	str r3, [sp, #0x26c]
	b _08002DFE
_08002DF0: .4byte 0x00140445
_08002DF4:
	ldr r4, [sp, #0x270]
	cmp r4, #0x1d
	bls _08002DFE
	movs r0, #0
	str r0, [sp, #0x26c]
_08002DFE:
	lsrs r1, r7, #8
	mov sl, r1
	adds r7, #0x40
	mov r9, r7
	ldr r2, [sp, #0x270]
	cmp r2, #0x28
	bhi _08002E10
	bl _0800360E
_08002E10:
	movs r3, #0
	str r3, [sp, #0x270]
	bl _0800360E
_08002E18:
	ldr r0, _08002E54
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _08002E22
	b _0800305A
_08002E22:
	movs r4, #1
	str r4, [sp, #0x254]
	movs r0, #0x6c
	ldr r1, [sp, #0x258]
	muls r0, r1, r0
	ldr r2, [sp, #0x28c]
	adds r4, r0, r2
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _08002E38
	b _08002F6C
_08002E38:
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #3
	bl sub_0801ABE8
	movs r0, #4
	bl sub_080586D0
	lsrs r3, r7, #8
	mov sl, r3
	adds r7, #0x40
	mov r9, r7
	b _08002E5C
_08002E54: .4byte gUnk_03001324
_08002E58:
	bl sub_080003F0
_08002E5C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08002E58
	movs r0, #0x6f
	bl sub_080586B4
	movs r0, #0x3c
	bl sub_08057624
	bl sub_08000E48
	ldr r0, [sp, #0x290]
	bl sub_0800115C
	str r0, [sp, #0x290]
	ldr r0, [sp, #0x294]
	bl sub_08001108
	movs r5, #0x6c
	ldr r0, [sp, #0x258]
	adds r4, r0, #0
	muls r4, r5, r4
	ldr r1, [sp, #0x28c]
	adds r4, r4, r1
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08002F30
	ldr r1, _08002F34
	str r1, [r0, #0xc]
	ldr r3, _08002F38
	adds r1, r2, r3
	str r1, [r0, #0x10]
	str r2, [r0, #0x20]
	movs r1, #0xa
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r1, r4, #0
	ldr r2, [sp, #0x274]
	bl sub_08000274
	ldr r6, _08002F3C
	ldr r7, _08002F40
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_080003F4
	ldr r4, [sp, #0x258]
	adds r0, r4, #0
	muls r0, r5, r0
	ldr r1, [sp, #0x28c]
	adds r0, r0, r1
	ldrb r5, [r0, #0]
	cmp r5, #0
	bne _08002F48
	movs r0, #0x88
	bl sub_08001108
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x294]
	ldr r0, _08002F44
	bl sub_0800115C
	str r0, [sp, #0x290]
	bl sub_08000D8C
	movs r0, #0x6f
	bl sub_08058688
	bl sub_08002AA0
	bl sub_080003F0
	bl sub_080003F0
	add r0, sp, #0x218
	lsls r4, r4, #1
	adds r0, r0, r4
	strh r5, [r0, #0]
	add r0, sp, #0x228
	adds r0, r0, r4
	strh r5, [r0, #0]
	bl sub_080653CC
	adds r1, r0, #0
	movs r0, #0x34
	ldr r2, [sp, #0x258]
	muls r0, r2, r0
	add r0, sp
	adds r0, #0x10
	movs r2, #0x34
	bl memcpy
	add r0, sp, #0x238
	adds r0, r0, r4
	movs r1, #6
	strh r1, [r0, #0]
	movs r0, #3
	bl sub_0801AB50
	b _08003098
_08002F30: .4byte gUnk_03003480
_08002F34: .4byte sub_08003984
_08002F38: .4byte 0x00001FFC
_08002F3C: .4byte 0x5A112EBF
_08002F40: .4byte 0x00000002
_08002F44: .4byte sub_08006694
_08002F48:
	ldr r0, _08002F68
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08002F60
	bl sub_08088914
	adds r1, r7, #0
	adds r0, r6, #0
	bl sub_080003F4
	movs r3, #0
	str r3, [sp, #0x278]
_08002F60:
	movs r4, #0
	str r4, [sp, #0x268]
	b _08003098
	.2byte 0x0000
_08002F68: .4byte gUnk_03002838
_08002F6C:
	ldrh r1, [r4, #0xc]
	ldr r0, _08002F8C
	cmp r1, r0
	beq _0800301C
	movs r0, #3
	bl sub_0801ABE8
	movs r0, #4
	bl sub_080586D0
	lsrs r0, r7, #8
	mov sl, r0
	adds r7, #0x40
	mov r9, r7
	b _08002F94
	.2byte 0x0000
_08002F8C: .4byte 0x0000FFFF
_08002F90:
	bl sub_080003F0
_08002F94:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08002F90
	bl sub_08000E48
	ldr r0, [sp, #0x290]
	bl sub_0800115C
	str r0, [sp, #0x290]
	ldr r0, [sp, #0x294]
	bl sub_08001108
	movs r0, #0x6c
	ldr r1, [sp, #0x258]
	adds r4, r1, #0
	muls r4, r0, r4
	ldr r2, [sp, #0x28c]
	adds r4, r4, r2
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _08002FD4
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _08002FE0
	ldr r1, _08002FD8
	ldr r0, _08002FDC
	b _08002FE4
	.2byte 0x0000
_08002FD4: .4byte gUnk_03002838
_08002FD8: .4byte gUnk_03003480
_08002FDC: .4byte sub_0800608C
_08002FE0:
	ldr r1, _08003008
	ldr r0, _0800300C
_08002FE4:
	str r0, [r1, #0xc]
	ldr r3, _08003010
	adds r0, r2, r3
	str r0, [r1, #0x10]
	str r2, [r1, #0x20]
	movs r0, #0xa
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r0, _08003014
	ldr r1, _08003018
	bl sub_080003F4
	b _080035F8
_08003008: .4byte gUnk_03003480
_0800300C: .4byte sub_08005B88
_08003010: .4byte 0x00001FFC
_08003014: .4byte 0x5A112EBF
_08003018: .4byte 0x00000002
_0800301C:
	bl sub_08002204
	cmp r0, #0
	beq _08003034
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _08003034
	movs r0, #7
	str r0, [sp, #0x25c]
	movs r1, #0
	str r1, [sp, #0x264]
	b _0800304A
_08003034:
	movs r0, #0x6c
	ldr r2, [sp, #0x258]
	muls r0, r2, r0
	ldr r3, [sp, #0x28c]
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0, #7]
	movs r4, #1
	str r4, [sp, #0x254]
	movs r0, #0
	str r0, [sp, #0x268]
_0800304A:
	movs r0, #0xf
	bl sub_0805865C
	lsrs r1, r7, #8
	mov sl, r1
	adds r7, #0x40
	mov r9, r7
	b _08003098
_0800305A:
	cmp r0, #2
	bne _08003072
	movs r0, #0x10
	bl sub_0805865C
	movs r2, #0
	str r2, [sp, #0x254]
	movs r3, #0
	str r3, [sp, #0x268]
	lsrs r4, r7, #8
	mov sl, r4
	b _08003530
_08003072:
	lsrs r1, r7, #8
	mov sl, r1
	adds r7, #0x40
	mov r9, r7
	cmp r0, #4
	bne _08003098
	movs r0, #0x6c
	ldr r2, [sp, #0x258]
	muls r0, r2, r0
	ldr r3, [sp, #0x28c]
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08003098
	movs r4, #2
	str r4, [sp, #0x25c]
	movs r0, #0xf
	bl sub_0805865C
_08003098:
	ldr r0, _080030B8
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080030BC
	movs r0, #0xe
	bl sub_0805865C
	ldr r0, [sp, #0x258]
	cmp r0, #3
	bls _0800312C
	subs r0, #4
	str r0, [sp, #0x258]
	b _0800312C
	.2byte 0x0000
_080030B8: .4byte gUnk_03001308
_080030BC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080030D4
	movs r0, #0xe
	bl sub_0805865C
	ldr r1, [sp, #0x258]
	cmp r1, #3
	bhi _0800312C
	adds r1, #4
	b _0800312A
_080030D4:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08003100
	movs r0, #0xe
	bl sub_0805865C
	ldr r2, [sp, #0x258]
	cmp r2, #0
	bne _080030EE
	movs r3, #3
	str r3, [sp, #0x258]
	b _0800312C
_080030EE:
	ldr r4, [sp, #0x258]
	cmp r4, #4
	bne _080030FA
	movs r0, #7
	str r0, [sp, #0x258]
	b _0800312C
_080030FA:
	ldr r1, [sp, #0x258]
	subs r1, #1
	b _0800312A
_08003100:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _0800312C
	movs r0, #0xe
	bl sub_0805865C
	ldr r2, [sp, #0x258]
	cmp r2, #3
	bne _0800311A
	movs r3, #0
	str r3, [sp, #0x258]
	b _0800312C
_0800311A:
	ldr r4, [sp, #0x258]
	cmp r4, #7
	bne _08003126
	movs r0, #4
	str r0, [sp, #0x258]
	b _0800312C
_08003126:
	ldr r1, [sp, #0x258]
	adds r1, #1
_0800312A:
	str r1, [sp, #0x258]
_0800312C:
	ldr r2, [sp, #0x258]
	ldr r3, [sp, #0x260]
	cmp r2, r3
	beq _08003148
	str r2, [sp, #0x260]
	ldr r0, _08003160
	lsls r2, r2, #3
	adds r1, r2, r0
	ldr r1, [r1, #0]
	str r1, [sp, #0x284]
	adds r0, #4
	adds r2, r2, r0
	ldr r2, [r2, #0]
	str r2, [sp, #0x288]
_08003148:
	movs r0, #0x6c
	ldr r4, [sp, #0x258]
	muls r0, r4, r0
	ldr r1, [sp, #0x28c]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _08003168
	ldr r0, _08003164
	bl sub_08007290
	b _0800316E
_08003160: .4byte gUnk_08366DCC
_08003164: .4byte 0x00140449
_08003168:
	ldr r0, _0800317C
	bl sub_08007290
_0800316E:
	adds r0, #2
	movs r1, #1
	movs r2, #0x11
	bl sub_0801A3D0
	b _0800360E
	.2byte 0x0000
_0800317C: .4byte 0x0014044A
_08003180:
	ldr r0, _080031A0
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080031A4
	ldr r2, [sp, #0x264]
	cmp r2, #1
	bne _08003198
	movs r0, #0xc6
	bl sub_0805865C
_08003198:
	movs r3, #0
	str r3, [sp, #0x264]
	b _08003250
	.2byte 0x0000
_080031A0: .4byte gUnk_03001308
_080031A4:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080031BE
	ldr r4, [sp, #0x264]
	cmp r4, #0
	bne _080031B8
	movs r0, #0xc7
	bl sub_0805865C
_080031B8:
	movs r0, #1
	str r0, [sp, #0x264]
	b _08003200
_080031BE:
	ldr r0, _080031DC
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080031EC
	ldr r1, [sp, #0x264]
	cmp r1, #0
	bne _080031E0
	movs r2, #3
	str r2, [sp, #0x25c]
	movs r3, #1
	str r3, [sp, #0x264]
	movs r0, #0xf
	bl sub_0805865C
	b _080031FA
_080031DC: .4byte gUnk_03001324
_080031E0:
	movs r4, #1
	str r4, [sp, #0x25c]
	movs r0, #0x10
	bl sub_0805865C
	b _080031FA
_080031EC:
	cmp r0, #2
	bne _080031FA
	movs r0, #1
	str r0, [sp, #0x25c]
	movs r0, #0x10
	bl sub_0805865C
_080031FA:
	ldr r1, [sp, #0x264]
	cmp r1, #0
	beq _08003250
_08003200:
	add r4, sp, #0x1e4
	add r5, sp, #0x24c
	ldr r3, _0800324C
	add r3, sp
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #5
	adds r2, r5, #0
	bl sub_08065370
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #9
	bl sub_08065230
	add r0, sp, #0x250
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065264
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065230
	b _08003298
	.2byte 0x0000
_0800324C: .4byte 0x0000024E
_08003250:
	add r4, sp, #0x1e4
	add r5, sp, #0x250
	ldr r3, _080032B0
	add r3, sp
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #4
	adds r2, r5, #0
	bl sub_08065370
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #8
	bl sub_08065230
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065230
	add r0, sp, #0x24c
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065264
_08003298:
	ldr r0, _080032B4
	bl sub_08007290
	adds r0, #2
	movs r1, #2
	movs r2, #0x11
	bl sub_0801A3D0
	lsrs r2, r7, #8
	mov sl, r2
	b _08003530
	.2byte 0x0000
_080032B0: .4byte 0x00000252
_080032B4: .4byte 0x00140446
_080032B8:
	ldr r0, _080032D8
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080032DC
	ldr r3, [sp, #0x264]
	cmp r3, #1
	bne _080032D0
	movs r0, #0xc6
	bl sub_0805865C
_080032D0:
	movs r4, #0
	str r4, [sp, #0x264]
	b _0800337C
	.2byte 0x0000
_080032D8: .4byte gUnk_03001308
_080032DC:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080032F6
	ldr r0, [sp, #0x264]
	cmp r0, #0
	bne _080032F0
	movs r0, #0xc7
	bl sub_0805865C
_080032F0:
	movs r1, #1
	str r1, [sp, #0x264]
	b _0800332C
_080032F6:
	ldr r0, _08003318
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08003326
	ldr r2, [sp, #0x264]
	cmp r2, #0
	bne _0800331C
	movs r3, #4
	str r3, [sp, #0x25c]
	movs r0, #0x11
	movs r1, #2
	bl sub_0801A664
	lsrs r4, r7, #8
	mov sl, r4
	b _08003530
	.2byte 0x0000
_08003318: .4byte gUnk_03001324
_0800331C:
	movs r0, #0x10
	bl sub_0805865C
	movs r0, #1
	str r0, [sp, #0x25c]
_08003326:
	ldr r1, [sp, #0x264]
	cmp r1, #0
	beq _0800337C
_0800332C:
	add r4, sp, #0x1e4
	add r5, sp, #0x24c
	ldr r3, _08003378
	add r3, sp
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #5
	adds r2, r5, #0
	bl sub_08065370
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #9
	bl sub_08065230
	add r0, sp, #0x250
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065264
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065230
	b _080033C4
	.2byte 0x0000
_08003378: .4byte 0x0000024E
_0800337C:
	add r4, sp, #0x1e4
	add r5, sp, #0x250
	ldr r3, _080033DC
	add r3, sp
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #4
	adds r2, r5, #0
	bl sub_08065370
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x78
	movs r2, #0x78
	movs r3, #8
	bl sub_08065230
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x88
	movs r2, #0x78
	movs r3, #5
	bl sub_08065230
	add r0, sp, #0x24c
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x68
	movs r2, #0x78
	movs r3, #4
	bl sub_08065264
_080033C4:
	ldr r0, _080033E0
	bl sub_08007290
	adds r0, #2
	movs r1, #2
	movs r2, #0x11
	bl sub_0801A3D0
	lsrs r2, r7, #8
	mov sl, r2
	b _08003530
	.2byte 0x0000
_080033DC: .4byte 0x00000252
_080033E0: .4byte 0x00140447
_080033E4:
	bl sub_08006C14
	ldr r3, [sp, #0x258]
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	bl sub_0807A2E0
	bl sub_08006BF8
	movs r4, #1
	str r4, [sp, #0x264]
	movs r0, #5
	str r0, [sp, #0x25c]
	ldr r0, [sp, #0x28c]
	bl sub_0807A378
	bl sub_080653CC
	adds r1, r0, #0
	movs r0, #0x34
	ldr r2, [sp, #0x258]
	muls r0, r2, r0
	add r0, sp
	adds r0, #0x10
	movs r2, #0x34
	bl memcpy
	add r1, sp, #0x238
	ldr r3, [sp, #0x258]
	lsls r0, r3, #1
	adds r1, r1, r0
	movs r0, #6
	strh r0, [r1, #0]
	lsrs r4, r7, #8
	mov sl, r4
	b _08003530
_0800342C:
	ldr r0, _0800346C
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _08003438
	movs r0, #1
	str r0, [sp, #0x25c]
_08003438:
	ldr r0, _08003470
	bl sub_08007290
	adds r0, #2
	movs r1, #2
	movs r2, #0x11
	bl sub_0801A3D0
	ldr r1, [sp, #0x26c]
	cmp r1, #0
	beq _08003458
	add r0, sp, #0x248
	movs r1, #0x1b
	movs r2, #0x11
	bl sub_0801A3D0
_08003458:
	ldr r1, [sp, #0x270]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x270]
	cmp r1, #0x1d
	bhi _08003474
	movs r2, #1
	str r2, [sp, #0x26c]
	b _0800347E
_0800346C: .4byte gUnk_03001324
_08003470: .4byte 0x00140448
_08003474:
	ldr r3, [sp, #0x270]
	cmp r3, #0x1d
	bls _0800347E
	movs r4, #0
	str r4, [sp, #0x26c]
_0800347E:
	lsrs r0, r7, #8
	mov sl, r0
	adds r7, #0x40
	mov r9, r7
	ldr r1, [sp, #0x270]
	cmp r1, #0x28
	bhi _0800348E
	b _0800360E
_0800348E:
	movs r2, #0
	str r2, [sp, #0x270]
	b _0800360E
_08003494:
	add r4, sp, #0x1b0
	ldr r3, [sp, #0x264]
	negs r0, r3
	orrs r0, r3
	lsrs r0, r0, #0x1f
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0x82
	movs r2, #0x28
	movs r3, #0x26
	bl sub_08065230
	movs r0, #0
	ldr r1, [sp, #0x264]
	cmp r1, #0
	bne _080034B6
	movs r0, #1
_080034B6:
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #0xb4
	movs r2, #0x28
	movs r3, #0x27
	bl sub_08065230
	ldr r2, [sp, #0x264]
	cmp r2, #0
	beq _080034D8
	ldr r0, _080034D4
	bl sub_08007290
	b _080034DE
	.2byte 0x0000
_080034D4: .4byte 0x0014044C
_080034D8:
	ldr r0, _0800350C
	bl sub_08007290
_080034DE:
	adds r0, #2
	movs r1, #2
	movs r2, #0x11
	bl sub_0801A3D0
	ldr r0, _08003510
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08003514
	ldr r3, [sp, #0x264]
	cmp r3, #1
	bne _08003500
	movs r0, #0xe
	bl sub_0805865C
_08003500:
	movs r4, #0
	str r4, [sp, #0x264]
	lsrs r0, r7, #8
	mov sl, r0
	b _08003530
	.2byte 0x0000
_0800350C: .4byte 0x0014044B
_08003510: .4byte gUnk_03001308
_08003514:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08003536
	ldr r1, [sp, #0x264]
	cmp r1, #0
	bne _08003528
	movs r0, #0xe
	bl sub_0805865C
_08003528:
	movs r2, #1
	str r2, [sp, #0x264]
	lsrs r3, r7, #8
	mov sl, r3
_08003530:
	adds r7, #0x40
	mov r9, r7
	b _0800360E
_08003536:
	ldr r0, _08003558
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080035FE
	movs r4, #1
	str r4, [sp, #0x254]
	movs r0, #3
	bl sub_0801ABE8
	movs r0, #4
	bl sub_080586D0
	lsrs r0, r7, #8
	mov sl, r0
	adds r7, #0x40
	mov r9, r7
	b _08003560
_08003558: .4byte gUnk_03001324
_0800355C:
	bl sub_080003F0
_08003560:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0800355C
	bl sub_08000E48
	ldr r0, [sp, #0x290]
	bl sub_0800115C
	str r0, [sp, #0x290]
	ldr r0, [sp, #0x294]
	bl sub_08001108
	movs r0, #0x6c
	ldr r1, [sp, #0x258]
	muls r0, r1, r0
	ldr r3, [sp, #0x28c]
	adds r2, r0, r3
	add r4, sp, #0x264
	ldrb r4, [r4, #0]
	strb r4, [r2, #7]
	ldrh r1, [r2, #0xc]
	ldr r0, _080035AC
	cmp r1, r0
	beq _080035F8
	adds r4, r2, #0
	movs r0, #0x80
	lsls r0, r0, #6
	bl sub_08001494
	adds r2, r0, #0
	ldr r0, _080035B0
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _080035BC
	ldr r1, _080035B4
	ldr r0, _080035B8
	b _080035C0
_080035AC: .4byte 0x0000FFFF
_080035B0: .4byte gUnk_03002838
_080035B4: .4byte gUnk_03003480
_080035B8: .4byte sub_0800608C
_080035BC:
	ldr r1, _080035E4
	ldr r0, _080035E8
_080035C0:
	str r0, [r1, #0xc]
	ldr r3, _080035EC
	adds r0, r2, r3
	str r0, [r1, #0x10]
	str r2, [r1, #0x20]
	movs r0, #0xa
	str r0, [r1, #8]
	movs r0, #0
	str r0, [r1, #0x24]
	adds r0, r1, #0
	adds r1, r4, #0
	bl sub_08000274
	ldr r0, _080035F0
	ldr r1, _080035F4
	bl sub_080003F4
	b _0800360E
_080035E4: .4byte gUnk_03003480
_080035E8: .4byte sub_08005B88
_080035EC: .4byte 0x00001FFC
_080035F0: .4byte 0x5A112EBF
_080035F4: .4byte 0x00000002
_080035F8:
	movs r4, #0
	str r4, [sp, #0x268]
	b _0800360E
_080035FE:
	lsrs r1, r7, #8
	mov sl, r1
	adds r7, #0x40
	mov r9, r7
	cmp r0, #2
	bne _0800360E
	movs r2, #1
	str r2, [sp, #0x25c]
_0800360E:
	ldr r3, [sp, #0x284]
	ldr r4, [sp, #0x27c]
	subs r0, r3, r4
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r4, r4, r0
	str r4, [sp, #0x27c]
	ldr r1, [sp, #0x288]
	ldr r2, [sp, #0x280]
	subs r0, r1, r2
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r2, r2, r0
	str r2, [sp, #0x280]
	ldr r3, [sp, #0x25c]
	cmp r3, #0
	beq _08003642
	add r0, sp, #0x1b0
	movs r1, #0
	str r1, [sp, #0]
	adds r1, r4, #0
	movs r3, #0xb
	bl sub_08065230
_08003642:
	movs r5, #0
_08003644:
	movs r0, #0x34
	adds r6, r5, #0
	muls r6, r0, r6
	mov r7, sp
	adds r7, r7, r6
	adds r7, #0x10
	add r0, sp, #0x238
	lsls r2, r5, #1
	adds r0, r0, r2
	mov r8, r0
	ldrh r1, [r0, #0]
	add r0, sp, #0x218
	adds r4, r0, r2
	add r3, sp, #0x228
	adds r3, r3, r2
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r7, #0
	adds r2, r4, #0
	bl sub_08065370
	movs r1, #0x6c
	adds r0, r5, #0
	muls r0, r1, r0
	ldr r3, [sp, #0x28c]
	adds r2, r0, r3
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq _08003694
	adds r0, r5, #0
	adds r0, #0x10
	add r1, sp, #0x1c
	adds r1, r1, r6
	ldrb r2, [r2, #2]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
_08003694:
	lsls r1, r5, #3
	ldr r2, _08003720
	adds r0, r1, r2
	ldr r0, [r0, #0]
	ldr r3, _08003724
	adds r1, r1, r3
	ldr r1, [r1, #0]
	mov r3, r8
	ldrh r2, [r3, #0]
	ldrh r3, [r4, #0]
	movs r4, #0
	str r4, [sp, #0]
	adds r4, r7, #0
	adds r4, #0x1c
	str r4, [sp, #4]
	ldr r4, [sp, #0x298]
	adds r6, r4, r6
	ldr r4, [r6, #0]
	str r4, [sp, #8]
	ldr r4, [r7, #0]
	str r4, [sp, #0xc]
	bl sub_08007CF0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #7
	bls _08003644
	ldr r1, [sp, #0x258]
	movs r2, #0x6c
	adds r0, r1, #0
	muls r0, r2, r0
	ldr r3, [sp, #0x28c]
	adds r4, r0, r3
	ldr r2, [r4, #0x2c]
	adds r2, #1
	movs r0, #0x15
	movs r1, #1
	movs r3, #0
	bl sub_0805FB7C
	ldrh r1, [r4, #0xc]
	ldr r0, _08003728
	cmp r1, r0
	beq _08003738
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _08003778
	ldr r1, _0800372C
	ldr r4, _08003730
	adds r0, r4, #0
	strh r0, [r1, #0]
	adds r1, #2
	movs r2, #0xde
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r3, _08003734
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	adds r4, #3
	adds r0, r4, #0
	strh r0, [r1, #0]
	adds r1, #2
	adds r2, #3
	adds r0, r2, #0
	strh r0, [r1, #0]
	b _0800378E
_08003720: .4byte gUnk_08366DCC
_08003724: .4byte gUnk_08366DD0
_08003728: .4byte 0x0000FFFF
_0800372C: .4byte 0x0600E86E
_08003730: .4byte 0x000001BB
_08003734: .4byte 0x000001BD
_08003738:
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _08003778
	ldr r1, _0800376C
	ldr r3, _08003770
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	movs r4, #0xee
	lsls r4, r4, #1
	adds r0, r4, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, _08003774
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	adds r3, #3
	adds r0, r3, #0
	strh r0, [r1, #0]
	adds r1, #2
	adds r4, #3
	adds r0, r4, #0
	strh r0, [r1, #0]
	b _0800378E
	.2byte 0x0000
_0800376C: .4byte 0x0600E86E
_08003770: .4byte 0x000001DB
_08003774: .4byte 0x000001DD
_08003778:
	ldr r0, _0800386C
	movs r1, #0
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
_0800378E:
	movs r0, #0x6c
	ldr r1, [sp, #0x258]
	muls r0, r1, r0
	ldr r2, [sp, #0x28c]
	adds r4, r0, r2
	movs r3, #0x3c
	ldrsh r2, [r4, r3]
	movs r0, #0x15
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x3e
	ldrsh r2, [r4, r0]
	movs r0, #0x15
	movs r1, #7
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x22
	ldrsh r2, [r4, r1]
	movs r0, #0x15
	movs r1, #9
	movs r3, #0
	bl sub_0805FB7C
	movs r3, #0x1c
	ldrsh r2, [r4, r3]
	movs r0, #0x15
	movs r1, #0xb
	movs r3, #0
	bl sub_0805FB7C
	movs r0, #0x1e
	ldrsh r2, [r4, r0]
	movs r0, #0x15
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	movs r1, #0x20
	ldrsh r2, [r4, r1]
	movs r0, #0x15
	movs r1, #0xf
	movs r3, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	adds r0, #0x60
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x1c
	movs r1, #5
	movs r3, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	adds r0, #0x62
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x1c
	movs r1, #7
	movs r3, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	adds r0, #0x64
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x1c
	movs r1, #9
	movs r3, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	adds r0, #0x66
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x1c
	movs r1, #0xb
	movs r3, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	adds r0, #0x68
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r0, #0x1c
	movs r1, #0xd
	movs r3, #0
	bl sub_0805FB7C
	adds r0, r4, #0
	adds r0, #0x6a
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r0, #0x1c
	movs r1, #0xf
	movs r3, #0
	bl sub_0805FB7C
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq _08003870
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #0x10
	movs r2, #2
	bl sub_0801A3D0
	b _08003878
_0800386C: .4byte 0x0600E86E
_08003870:
	movs r0, #2
	movs r1, #2
	bl sub_0801A664
_08003878:
	ldr r0, _080038A8
	mov r2, sl
	strh r2, [r0, #0xc]
	mov r7, r9
	bl sub_080003F0
	ldr r3, [sp, #0x268]
	cmp r3, #0
	beq _0800388E
	bl _08002D3A
_0800388E:
	ldr r0, [sp, #0x258]
	lsls r4, r0, #0x18
	ldr r1, [sp, #0x278]
	cmp r1, #0
	beq _080038B8
	movs r0, #5
	bl sub_080586D0
	movs r0, #6
	bl sub_0801ABE8
	b _080038B0
	.2byte 0x0000
_080038A8: .4byte gUnk_03001250
_080038AC:
	bl sub_080003F0
_080038B0:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080038AC
_080038B8:
	bl sub_080003F0
	bl sub_080003F0
	bl sub_08000E48
	ldr r0, [sp, #0x290]
	bl sub_0800115C
	ldr r0, [sp, #0x294]
	bl sub_08001108
	movs r0, #2
	movs r1, #0x11
	bl sub_0801A664
	bl sub_080003F0
	lsrs r1, r4, #0x18
	ldr r0, [sp, #0x28c]
	bl sub_0807A4B4
	ldr r2, [sp, #0x254]
	cmp r2, #0
	beq _0800391A
	ldr r5, _08003944
	ldr r1, [r5, #0]
	ldr r4, [r1, #0]
	subs r0, r4, #3
	cmp r0, #1
	bhi _0800391A
	movs r0, #2
	str r0, [r1, #0]
	bl sub_08006C14
	bl sub_0807A124
	bl sub_08006BF8
	movs r0, #0x6c
	ldr r3, [sp, #0x258]
	muls r0, r3, r0
	ldr r1, [sp, #0x28c]
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	cmp r0, #0
	bne _0800391A
	ldr r0, [r5, #0]
	str r4, [r0, #0]
_0800391A:
	movs r0, #0x24
	bl sub_0805865C
	movs r0, #0
	str r0, [sp, #0]
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r0, [sp, #0x28c]
	bl sub_08001538
	ldr r2, [sp, #0x254]
	cmp r2, #0
	beq _08003948
	cmp r2, #1
	beq _08003950
	b _08003970
	.2byte 0x0000
_08003944: .4byte gUnk_03004210
_08003948:
	movs r0, #0x14
	bl sub_08000420
	b _08003970
_08003950:
	ldr r0, _08003960
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08003964
	cmp r0, #1
	beq _0800396C
	b _08003970
	.2byte 0x0000
_08003960: .4byte gUnk_03002838
_08003964:
	movs r0, #0
	bl sub_0800CB3C
	b _08003970
_0800396C:
	bl sub_08006B2C
_08003970:
	movs r3, #0xa7
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08002B70
