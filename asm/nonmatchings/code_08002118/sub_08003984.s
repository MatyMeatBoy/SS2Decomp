	thumb_func_start sub_08003984
sub_08003984: @ 0x08003984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _080039D0
	add sp, r4
	movs r2, #0x9a
	lsls r2, r2, #3
	add r2, sp
	str r0, [r2, #0]
	ldr r3, _080039D4
	add r3, sp
	str r1, [r3, #0]
	ldr r0, _080039D8
	add r0, sp
	ldr r1, _080039DC
	movs r2, #2
	bl memcpy
	add r4, sp, #0x3f4
	bl sub_080653CC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x34
	bl memcpy
	ldr r0, _080039E0
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08003A5C
	lsls r0, r0, #2
	ldr r1, _080039E4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_080039D0: .4byte 0xFFFFFAB4
_080039D4: .4byte 0x000004D4
_080039D8: .4byte 0x0000045C
_080039DC: .4byte gUnk_080B99D4
_080039E0: .4byte gUnk_03003470
_080039E4: .4byte _080039E8
_080039E8:
	.4byte _080039FC
_080039EC: .4byte _08003A0C
_080039F0: .4byte _08003A1C
_080039F4: .4byte _08003A2C
_080039F8: .4byte _08003A48
_080039FC:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	ldr r1, _08003A08
	b _08003A34
	.2byte 0x0000
_08003A08: .4byte 0x00050002
_08003A0C:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	ldr r1, _08003A18
	b _08003A34
	.2byte 0x0000
_08003A18: .4byte 0x0005015B
_08003A1C:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	ldr r1, _08003A28
	b _08003A34
	.2byte 0x0000
_08003A28: .4byte 0x0005015C
_08003A2C:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	ldr r1, _08003A44
_08003A34:
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
	b _08003A5C
	.2byte 0x0000
_08003A44: .4byte 0x0005015D
_08003A48:
	movs r0, #0x85
	lsls r0, r0, #3
	add r0, sp
	ldr r1, _08003CF8
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r2, #0
	str r2, [sp, #0]
	bl sub_08065158
_08003A5C:
	movs r0, #0
	bl sub_0801A6D4
	ldr r0, _08003CFC
	movs r7, #0
	strh r7, [r0, #2]
	strh r7, [r0, #0]
	strh r7, [r0, #6]
	strh r7, [r0, #4]
	strh r7, [r0, #0xa]
	strh r7, [r0, #8]
	strh r7, [r0, #0xe]
	strh r7, [r0, #0xc]
	movs r0, #2
	movs r1, #0x11
	bl sub_0801A664
	ldr r1, _08003D00
	ldr r4, _08003D04
	add r4, sp
	ldr r0, [r4, #0]
	ands r0, r1
	movs r1, #0xd8
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #0]
	ldr r5, _08003D04
	add r5, sp
	mov r8, r5
	movs r0, #1
	mov r1, r8
	bl sub_08000AA8
	ldr r0, _08003D08
	strh r0, [r4, #0]
	movs r0, #3
	mov r1, r8
	bl sub_08000AA8
	movs r4, #0xc0
	lsls r4, r4, #0x13
	movs r5, #0xf
	str r5, [sp, #0]
	movs r0, #0x15
	movs r1, #3
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800BCDC
	str r5, [sp, #0]
	movs r0, #0x16
	movs r1, #2
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800BCDC
	str r5, [sp, #0]
	movs r0, #0x3b
	movs r1, #0x1b
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B650
	ldr r0, _08003D0C
	str r5, [sp, #0]
	movs r1, #0x1a
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B650
	str r5, [sp, #0]
	movs r0, #0x12
	movs r1, #0x19
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B650
	str r5, [sp, #0]
	movs r0, #0x18
	movs r1, #0x18
	adds r2, r4, #0
	movs r3, #0
	bl sub_0800B650
	movs r0, #0x10
	str r0, [sp, #0]
	str r7, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #8
	bl sub_0800903C
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	ldr r0, _08003D10
	bl sub_08007290
	ldr r6, _08003D14
	add r6, sp
	str r0, [r6, #0]
	movs r6, #0
	mov r0, sp
	adds r0, #0x4c
	movs r1, #0xa9
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	mov r2, sp
	adds r2, #0x30
	movs r3, #0xa7
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	mov r4, sp
	adds r4, #0x1c
	ldr r5, _08003D18
	add r5, sp
	str r4, [r5, #0]
	subs r0, #8
	movs r1, #0xa8
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	adds r2, #0x18
	ldr r3, _08003D1C
	add r3, sp
	str r2, [r3, #0]
	ldr r4, _08003D20
	mov r8, r4
_08003B68:
	movs r0, #0x34
	adds r4, r6, #0
	muls r4, r0, r4
	movs r0, #0xa9
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	adds r5, r0, r4
	ldr r2, _08003D24
	adds r1, r6, r2
	str r7, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #1
	bl sub_08065158
	add r0, sp, #0x220
	adds r0, r0, r4
	movs r1, #0x58
	muls r1, r6, r1
	add r1, r8
	ldr r1, [r1, #0]
	str r7, [sp, #0]
	movs r2, #0
	movs r3, #1
	bl sub_08065158
	strb r6, [r5, #0x1c]
	lsls r1, r6, #1
	movs r3, #0xa7
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	adds r0, r3, r1
	strh r7, [r0, #0]
	mov r0, sp
	adds r0, r0, r1
	adds r0, #8
	strh r7, [r0, #0]
	ldr r4, _08003D18
	add r4, sp
	ldr r4, [r4, #0]
	adds r1, r4, r1
	strh r7, [r1, #0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #8
	bls _08003B68
	bl sub_080003F0
	bl sub_080003F0
	movs r0, #3
	bl sub_0801AB50
	ldr r0, _08003D28
	bl sub_08007290
	movs r5, #0
	ldr r6, _08003D2C
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0x9d
	lsls r0, r0, #3
	add r0, sp
	str r5, [r0, #0]
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r5, [r1, #0]
	movs r2, #0xa
	ldr r3, _08003D30
	add r3, sp
	str r2, [r3, #0]
	movs r4, #8
	movs r5, #0x9e
	lsls r5, r5, #3
	add r5, sp
	str r4, [r5, #0]
	movs r6, #0
	movs r0, #0xa3
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	ldr r0, _08003D34
	add r0, sp
	ldrh r1, [r1, #0]
	strh r1, [r0, #0]
	movs r0, #0x99
	lsls r0, r0, #3
	add r0, sp
	movs r2, #0x9b
	lsls r2, r2, #3
	add r2, sp
	ldrh r2, [r2, #0]
	strh r2, [r0, #0]
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	ldrh r4, [r4, #0]
	ldr r3, _08003D1C
	add r3, sp
	ldr r3, [r3, #0]
	strh r4, [r3, #0]
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	ldrh r6, [r6, #0]
	movs r5, #0xa8
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	strh r6, [r5, #0]
	movs r0, #0x9b
	lsls r0, r0, #3
	add r0, sp
	ldrh r0, [r0, #0]
	strh r0, [r3, #2]
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	ldrh r1, [r1, #0]
	strh r1, [r5, #2]
	movs r2, #0
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	ldr r4, _08003D38
	add r4, sp
	str r2, [r4, #0]
	movs r5, #0x9f
	lsls r5, r5, #3
	add r5, sp
	str r2, [r5, #0]
	ldr r6, _08003D3C
	add r6, sp
	str r2, [r6, #0]
	movs r0, #0xa1
	lsls r0, r0, #3
	add r0, sp
	str r2, [r0, #0]
	ldr r1, _08003D40
	add r1, sp
	str r2, [r1, #0]
	ldr r3, _08003D44
	add r3, sp
	str r2, [r3, #0]
	ldr r0, _08003D48
	ldrh r4, [r0, #0]
	ldr r5, _08003D4C
	add r5, sp
	str r4, [r5, #0]
	ldrh r0, [r0, #2]
	movs r6, #0xa6
	lsls r6, r6, #3
	add r6, sp
	str r0, [r6, #0]
	ldr r0, _08003D50
	add r0, sp
	str r4, [r0, #0]
	ldr r1, [r6, #0]
	movs r2, #0xa4
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2, #0]
	movs r0, #0x71
	bl sub_08058688
_08003CBC:
	bl sub_0801AAE0
	adds r1, r0, #0
	cmp r1, #0
	bne _08003CCA
	ldr r0, _08003D54
	strh r1, [r0, #0]
_08003CCA:
	add r0, sp, #0x3f4
	ldr r1, [r0, #0xc]
	movs r3, #0x90
	lsls r3, r3, #1
	adds r1, r1, r3
	movs r0, #0x19
	movs r2, #1
	bl sub_08000AF0
	movs r4, #0xa3
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, #6
	bls _08003CEC
	bl _080057C0
_08003CEC:
	lsls r0, r4, #2
	ldr r1, _08003D58
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08003CF8: .4byte 0x0005015E
_08003CFC: .4byte gUnk_03001250
_08003D00: .4byte 0xFFFF0000
_08003D04: .4byte 0x000004CC
_08003D08: .4byte 0x00001F03
_08003D0C: .4byte 0x40000017
_08003D10: .4byte 0x00010023
_08003D14: .4byte 0x000004FC
_08003D18: .4byte 0x00000534
_08003D1C: .4byte 0x00000544
_08003D20: .4byte gUnk_08479140
_08003D24: .4byte 0x0005006B
_08003D28: .4byte 0x00140441
_08003D2C: .4byte 0x000004EC
_08003D30: .4byte 0x000004DC
_08003D34: .4byte 0x000004CA
_08003D38: .4byte 0x000004F4
_08003D3C: .4byte 0x0000050C
_08003D40: .4byte 0x00000504
_08003D44: .4byte 0x00000514
_08003D48: .4byte gUnk_08366E0C
_08003D4C: .4byte 0x0000052C
_08003D50: .4byte 0x0000051C
_08003D54: .4byte gUnk_03001324
_08003D58: .4byte _08003D5C
_08003D5C:
	.4byte _08003D78
_08003D60: .4byte _08003EFC
_08003D64: .4byte _080048BC
_08003D68: .4byte _08004954
_08003D6C: .4byte _08004E30
_08003D70: .4byte _08004FBC
_08003D74: .4byte _08005728
_08003D78:
	ldr r0, _08003DD4
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08003DE4
	movs r0, #0xf
	bl sub_0805865C
	ldr r1, _08003DD8
	movs r0, #0
	strh r0, [r1, #0]
	movs r6, #1
	movs r0, #0xa3
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	movs r0, #0
	movs r1, #5
	bl sub_0801A664
	movs r0, #0x1f
	bl sub_08001108
	ldr r0, _08003DDC
	bl sub_0800115C
	movs r1, #0xd8
	lsls r1, r1, #5
	ldr r0, _08003DE0
	add r0, sp
	strh r1, [r0, #0]
	movs r0, #1
	ldr r1, _08003DE0
	add r1, sp
	bl sub_08000AA8
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	bl sub_08000D8C
	bl _080057C0
	.2byte 0x0000
_08003DD4: .4byte gUnk_03001324
_08003DD8: .4byte gUnk_03001250
_08003DDC: .4byte sub_080066A8
_08003DE0: .4byte 0x000004CC
_08003DE4:
	ldr r0, _08003E28
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
	ldr r0, _08003E2C
	add r0, sp
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _08003E30
	add r0, sp
	strb r1, [r0, #0]
	mov r8, r1
	ldr r2, _08003E34
	add r2, sp
	ldr r1, [r2, #0]
	adds r1, #1
	mov sl, r1
	movs r5, #0
_08003E0A:
	movs r6, #0
	ldrb r1, [r7, #0]
	cmp r1, #0xfd
	beq _08003E46
	ldr r3, _08003E2C
	add r3, sp
	adds r2, r5, #0
_08003E18:
	adds r0, r6, r2
	adds r0, r3, r0
	strb r1, [r0, #0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08003E38
	adds r7, #1
	b _08003E46
_08003E28: .4byte 0x00140441
_08003E2C: .4byte 0x00000484
_08003E30: .4byte 0x000004A5
_08003E34: .4byte 0x00000504
_08003E38:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r7, #1
	ldrb r1, [r7, #0]
	cmp r1, #0xfd
	bne _08003E18
_08003E46:
	ldr r4, _08003EA0
	add r4, sp
	adds r0, r6, r5
	adds r0, r4, r0
	movs r1, #0xfd
	strb r1, [r0, #0]
	cmp r6, #0
	beq _08003E86
	adds r4, r4, r5
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r3, r8
	lsls r2, r3, #0x11
	lsrs r2, r2, #0x10
	adds r0, r4, #0
	bl sub_0801A3D0
	ldrb r0, [r7, #0]
	cmp r0, #0xfd
	beq _08003E86
	adds r5, #0x21
	movs r4, #1
	add r8, r4
	mov r6, r8
	cmp r6, #1
	bls _08003E0A
_08003E86:
	ldr r1, _08003EA4
	add r1, sp
	ldr r0, [r1, #0]
	mov r2, sl
	str r2, [r1, #0]
	cmp r0, #0x1d
	bhi _08003EA8
	movs r3, #1
	movs r4, #0xa1
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	b _08003EBC
_08003EA0: .4byte 0x00000484
_08003EA4: .4byte 0x00000504
_08003EA8:
	ldr r5, _08003EF4
	add r5, sp
	ldr r5, [r5, #0]
	cmp r5, #0x1d
	bls _08003EBC
	movs r6, #0
	movs r0, #0xa1
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
_08003EBC:
	ldr r1, _08003EF4
	add r1, sp
	ldr r1, [r1, #0]
	cmp r1, #0x28
	bls _08003ECE
	movs r2, #0
	ldr r3, _08003EF4
	add r3, sp
	str r2, [r3, #0]
_08003ECE:
	movs r4, #0xa1
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, #0
	bne _08003EDE
	bl _080057C0
_08003EDE:
	ldr r0, _08003EF8
	add r0, sp
	mov r5, r8
	lsls r2, r5, #0x11
	lsrs r2, r2, #0x10
	movs r1, #0x1c
	bl sub_0801A3D0
	bl _080057C0
	.2byte 0x0000
_08003EF4: .4byte 0x00000504
_08003EF8: .4byte 0x0000045C
_08003EFC:
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #8
	bls _08003F0A
	b _0800438A
_08003F0A:
	lsls r0, r6, #2
	ldr r1, _08003F14
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08003F14: .4byte _08003F18
_08003F18:
	.4byte _08003F3C
_08003F1C: .4byte _08003FC8
_08003F20: .4byte _08004058
_08003F24: .4byte _080040A4
_08003F28: .4byte _080040F6
_08003F2C: .4byte _080041D0
_08003F30: .4byte _08004214
_08003F34: .4byte _080042A8
_08003F38: .4byte _080042FE
_08003F3C:
	ldr r0, _08003F58
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08003F5C
	movs r2, #1
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	b _080042C2
_08003F58: .4byte gUnk_03001308
_08003F5C:
	movs r4, #0x60
	ands r4, r1
	cmp r4, #0
	beq _08003FA8
	movs r4, #6
	movs r5, #0x9b
	lsls r5, r5, #3
	add r5, sp
	str r4, [r5, #0]
	ldr r6, _08003FA0
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0
	beq _08003F7C
	movs r0, #8
	str r0, [r5, #0]
_08003F7C:
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	lsls r0, r1, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldr r3, _08003FA4
	add r3, sp
	ldr r3, [r3, #0]
	adds r0, r3, r0
	strh r2, [r0, #0]
	strh r2, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	b _0800438A
_08003FA0: .4byte 0x000004D4
_08003FA4: .4byte 0x00000534
_08003FA8:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08003FB2
	b _0800438A
_08003FB2:
	movs r5, #4
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r1, sp, #0x10
	add r0, sp, #0x24
	b _08004364
_08003FC8:
	ldr r0, _08003FF0
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08003FF4
	movs r0, #5
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	mov r2, sp
	adds r2, #0x12
	mov r1, sp
	adds r1, #0x26
	b _080042D0
	.2byte 0x0000
_08003FF0: .4byte gUnk_03001308
_08003FF4:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08004034
	movs r2, #0
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r0, sp, #8
	movs r5, #0x9b
	lsls r5, r5, #3
	add r5, sp
	ldrh r5, [r5, #0]
	ldr r4, _08004030
	add r4, sp
	ldr r4, [r4, #0]
	strh r5, [r4, #0]
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	ldrh r6, [r6, #0]
	strh r6, [r0, #0]
	b _0800438A
	.2byte 0x0000
_08004030: .4byte 0x00000534
_08004034:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800403E
	b _0800438A
_0800403E:
	movs r0, #7
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	mov r1, sp
	adds r1, #0x16
	mov r0, sp
	adds r0, #0x2a
	b _08004364
_08004058:
	ldr r0, _0800407C
	ldrh r1, [r0, #0]
	movs r4, #0x50
	ands r4, r1
	cmp r4, #0
	beq _08004080
	movs r2, #6
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r2, sp, #0x14
	add r1, sp, #0x28
	b _080042D0
	.2byte 0x0000
_0800407C: .4byte gUnk_03001308
_08004080:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800408A
	b _0800438A
_0800408A:
	movs r5, #3
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0xe
	bl sub_0805865C
	mov r1, sp
	adds r1, #0xe
	mov r0, sp
	adds r0, #0x22
	b _08004364
_080040A4:
	ldr r0, _080040CC
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080040D0
	movs r0, #4
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r2, sp, #0x10
	add r1, sp, #0x24
	b _080042D0
	.2byte 0x0000
_080040CC: .4byte gUnk_03001308
_080040D0:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _080040F2
	movs r2, #2
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r1, sp, #0xc
	add r0, sp, #0x20
	b _08004364
_080040F2:
	movs r0, #0x40
	b _0800436C
_080040F6:
	ldr r0, _08004134
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800413C
	movs r0, #0
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r0, sp, #8
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	ldrh r3, [r3, #0]
	ldr r2, _08004138
	add r2, sp
	ldr r2, [r2, #0]
	strh r3, [r2, #0]
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	ldrh r4, [r4, #0]
	strh r4, [r0, #0]
	b _0800438A
_08004134: .4byte gUnk_03001308
_08004138: .4byte 0x00000534
_0800413C:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0800415E
	movs r5, #2
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r1, sp, #0xc
	add r0, sp, #0x20
	b _08004364
_0800415E:
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080041AC
	movs r0, #6
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	ldr r2, _080041A4
	add r2, sp
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _08004182
	movs r3, #8
	str r3, [r1, #0]
_08004182:
	movs r0, #0xe
	bl sub_0805865C
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldr r6, _080041A8
	add r6, sp
	ldr r6, [r6, #0]
	adds r0, r6, r0
	b _08004386
	.2byte 0x0000
_080041A4: .4byte 0x000004D4
_080041A8: .4byte 0x00000534
_080041AC:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080041B6
	b _0800438A
_080041B6:
	movs r0, #3
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	mov r1, sp
	adds r1, #0xe
	mov r0, sp
	adds r0, #0x22
	b _08004364
_080041D0:
	ldr r0, _080041EC
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080041F0
	movs r2, #1
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	b _080042C2
_080041EC: .4byte gUnk_03001308
_080041F0:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080041FA
	b _0800438A
_080041FA:
	movs r5, #7
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0xe
	bl sub_0805865C
	mov r1, sp
	adds r1, #0x16
	mov r0, sp
	adds r0, #0x2a
	b _08004364
_08004214:
	ldr r0, _0800423C
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08004240
	movs r0, #2
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r2, sp, #0xc
	add r1, sp, #0x20
	b _080042D0
	.2byte 0x0000
_0800423C: .4byte gUnk_03001308
_08004240:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08004288
	ldr r2, _08004280
	add r2, sp
	ldr r2, [r2, #0]
	negs r0, r2
	orrs r0, r2
	asrs r0, r0, #0x1f
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	str r0, [r4, #0]
	movs r0, #8
	ldr r6, [r4, #0]
	ands r6, r0
	str r6, [r4, #0]
	movs r0, #0xe
	bl sub_0805865C
	lsls r0, r6, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #8
	ldr r2, _08004284
	add r2, sp
	ldr r2, [r2, #0]
	adds r0, r2, r0
	b _08004386
_08004280: .4byte 0x000004D4
_08004284: .4byte 0x00000534
_08004288:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _08004292
	b _0800438A
_08004292:
	movs r3, #4
	movs r5, #0x9b
	lsls r5, r5, #3
	add r5, sp
	str r3, [r5, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r1, sp, #0x10
	add r0, sp, #0x24
	b _08004364
_080042A8:
	ldr r0, _080042D8
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080042DC
	movs r6, #1
	movs r0, #0x9b
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
_080042C2:
	movs r0, #0xe
	bl sub_0805865C
	mov r2, sp
	adds r2, #0xa
	mov r1, sp
	adds r1, #0x1e
_080042D0:
	movs r0, #0
	strh r0, [r1, #0]
	strh r0, [r2, #0]
	b _0800438A
_080042D8: .4byte gUnk_03001308
_080042DC:
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800438A
	movs r1, #5
	movs r2, #0x9b
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2, #0]
	movs r0, #0xe
	bl sub_0805865C
	mov r1, sp
	adds r1, #0x12
	mov r0, sp
	adds r0, #0x26
	b _08004364
_080042FE:
	ldr r0, _0800433C
	ldrh r1, [r0, #0]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08004344
	movs r3, #0
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r0, sp, #8
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	ldrh r6, [r6, #0]
	ldr r5, _08004340
	add r5, sp
	ldr r5, [r5, #0]
	strh r6, [r5, #0]
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	ldrh r1, [r1, #0]
	strh r1, [r0, #0]
	b _0800438A
_0800433C: .4byte gUnk_03001308
_08004340: .4byte 0x00000534
_08004344:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0800436A
	movs r2, #6
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r1, sp, #0x14
	add r0, sp, #0x28
_08004364:
	strh r4, [r0, #0]
	strh r4, [r1, #0]
	b _0800438A
_0800436A:
	movs r0, #0x80
_0800436C:
	ands r0, r1
	cmp r0, #0
	beq _0800438A
	movs r4, #4
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	str r4, [r6, #0]
	movs r0, #0xe
	bl sub_0805865C
	add r1, sp, #0x10
	add r0, sp, #0x24
_08004386:
	strh r5, [r0, #0]
	strh r5, [r1, #0]
_0800438A:
	ldr r0, _080043FC
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _08004394
	b _080044E8
_08004394:
	movs r0, #0xf
	bl sub_0805865C
	movs r1, #0
	movs r2, #0x9b
	lsls r2, r2, #3
	add r2, sp
	ldrb r2, [r2, #0]
	movs r0, #0x9a
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	strb r2, [r0, #1]
	ldr r0, _08004400
	strh r1, [r0, #0]
	ldr r0, _08004404
	str r1, [r0, #0]
	movs r0, #0
	movs r1, #0xa
	bl sub_0801A664
	movs r3, #3
	movs r4, #0xa3
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	movs r5, #0x9b
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	ldr r6, _08004408
	adds r0, r5, r6
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
	movs r6, #0
	ldrb r0, [r7, #0]
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r5, [r1, #0]
	adds r5, #0x10
	cmp r0, #0xff
	bne _0800440C
	movs r0, #0xfd
	ldr r2, [r1, #0]
	strb r0, [r2, #0x10]
	b _0800442C
_080043FC: .4byte gUnk_03001324
_08004400: .4byte gUnk_03001250
_08004404: .4byte gUnk_03003474
_08004408: .4byte 0x00000454
_0800440C:
	adds r1, r5, r6
	adds r0, r7, r6
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #8
	bhi _0800442C
	adds r0, r7, r6
	ldrb r0, [r0, #0]
	cmp r0, #0xff
	bne _0800440C
	adds r1, r5, r6
	movs r0, #0xfd
	strb r0, [r1, #0]
_0800442C:
	adds r0, r6, #1
	adds r0, r5, r0
	movs r4, #0
	strb r4, [r0, #0]
	movs r3, #0xa
	ldr r6, _080044D8
	add r6, sp
	str r3, [r6, #0]
	bl sub_08000E48
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x9b
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	cmp r0, #8
	beq _0800445E
	bl _080057C0
_0800445E:
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	ldr r0, _080044DC
	strh r4, [r0, #0]
	adds r0, r5, #0
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, _080044E0
	add r1, sp
	str r0, [r1, #0]
	movs r2, #0
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	movs r1, #0xd8
	lsls r1, r1, #8
	ldr r0, _080044E4
	add r0, sp
	strh r1, [r0, #0]
	movs r0, #1
	ldr r1, _080044E4
	add r1, sp
	bl sub_08000AA8
	adds r0, r6, #0
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #6
	str r0, [sp, #0]
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	str r4, [sp, #4]
	movs r0, #0xc
	movs r1, #0x28
	movs r2, #1
	movs r3, #8
	bl sub_0800903C
	movs r0, #0x10
	movs r1, #9
	movs r2, #0x32
	bl sub_08006550
	movs r5, #5
	movs r6, #0xa3
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	bl _080057C0
	.2byte 0x0000
_080044D8: .4byte 0x000004DC
_080044DC: .4byte gUnk_03001250
_080044E0: .4byte 0x000004E4
_080044E4: .4byte 0x000004CC
_080044E8:
	cmp r0, #2
	bne _0800452A
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x10
	bl sub_0805865C
	movs r0, #0
	movs r1, #0xa
	bl sub_0801A664
	movs r0, #6
	bl sub_0801ABE8
	b _08004512
_0800450E:
	bl sub_080003F0
_08004512:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0800450E
	bl sub_08000E48
	bl sub_080003F0
	bl sub_080003F0
	bl _080057AC
_0800452A:
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldr r2, _08004790
	adds r0, r1, r2
	movs r2, #0xa0
	lsls r2, r2, #0xd
	mov r8, r2
	orrs r0, r2
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
	adds r0, r7, #0
	bl sub_0801A638
	ldr r2, _08004794
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	lsls r4, r3, #2
	adds r5, r4, r2
	ldrh r1, [r5, #0]
	lsls r0, r0, #2
	subs r1, r1, r0
	adds r2, #2
	adds r4, r4, r2
	ldrh r2, [r4, #0]
	subs r2, #0x28
	adds r0, r7, #0
	bl sub_0801A764
	ldrh r5, [r5, #0]
	ldr r6, _08004798
	add r6, sp
	str r5, [r6, #0]
	ldrh r4, [r4, #0]
	movs r0, #0xa6
	lsls r0, r0, #3
	add r0, sp
	str r4, [r0, #0]
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	lsls r4, r1, #1
	ldr r2, _0800479C
	adds r0, r4, r2
	mov r3, r8
	orrs r0, r3
	bl sub_08007290
	adds r7, r0, #0
	adds r7, #2
	adds r0, r7, #0
	bl sub_0801A638
	lsrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r7, #0
	movs r2, #1
	bl sub_0801A3D0
	ldr r5, _080047A0
	add r5, sp
	ldr r1, [r5, #0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r5, #0]
	movs r6, #0x9e
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, r1
	bhi _080045FE
	movs r0, #0
	str r0, [r5, #0]
	movs r1, #0x9d
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0]
	cmp r0, #7
	bls _080045FE
	movs r2, #0
	str r2, [r1, #0]
	bl sub_080008C8
	movs r3, #0x9e
	lsls r3, r3, #3
	add r3, sp
	str r0, [r3, #0]
	movs r0, #7
	ldr r5, [r3, #0]
	ands r5, r0
	adds r5, #1
	str r5, [r3, #0]
_080045FE:
	ldr r6, _080047A0
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0
	bne _0800462C
	movs r1, #0x9d
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	lsls r0, r1, #7
	movs r1, #0xe0
	lsls r1, r1, #7
	adds r0, r0, r1
	ldr r2, _080047A4
	add r2, sp
	ldr r2, [r2, #0]
	adds r0, r2, r0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r3, r1
	movs r2, #0x80
	bl sub_08001348
_0800462C:
	ldr r6, _08004798
	add r6, sp
	ldr r6, [r6, #0]
	ldr r0, _080047A8
	add r0, sp
	ldr r0, [r0, #0]
	subs r5, r6, r0
	ldr r1, _080047AC
	add r1, sp
	ldr r1, [r1, #0]
	movs r2, #0x9b
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	cmp r1, r2
	beq _080046AE
	movs r3, #0
	movs r6, #0xa2
	lsls r6, r6, #3
	add r6, sp
	str r3, [r6, #0]
	ldr r0, _080047B0
	add r0, sp
	str r3, [r0, #0]
	ldr r1, _080047B4
	add r1, sp
	str r3, [r1, #0]
	ldr r2, _080047B8
	add r2, sp
	str r3, [r2, #0]
	ldr r0, _080047BC
	ldr r3, [r1, #0]
	str r3, [r0, #0]
	movs r6, #0
	movs r1, #0x8c
	lsls r1, r1, #3
	add r1, sp
	movs r2, #0xfd
_08004678:
	adds r0, r1, r6
	strb r2, [r0, #0]
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0x1f
	bls _08004678
	movs r6, #0x86
	lsls r6, r6, #3
	adds r0, r4, r6
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	movs r1, #0xa0
	lsls r1, r1, #3
	add r1, sp
	adds r0, #2
	str r0, [r1, #0]
	movs r2, #0x9b
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	ldr r3, _080047AC
	add r3, sp
	str r2, [r3, #0]
_080046AE:
	ldr r3, _080047B4
	add r3, sp
	ldr r0, [r3, #0]
	adds r6, r0, #0
	adds r6, #1
	str r6, [r3, #0]
	cmp r0, #2
	bls _08004760
	movs r0, #0
	str r0, [r3, #0]
	movs r1, #0xa0
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0xff
	bne _080046DA
	adds r1, #1
	movs r2, #0xa0
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2, #0]
_080046DA:
	movs r3, #0xa0
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	ldrb r0, [r3, #0]
	cmp r0, #0xfe
	bne _080046F2
	adds r3, #3
	movs r6, #0xa0
	lsls r6, r6, #3
	add r6, sp
	str r3, [r6, #0]
_080046F2:
	movs r1, #0xa0
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0xfd
	bne _0800471A
	movs r2, #0x86
	lsls r2, r2, #3
	adds r0, r4, r2
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	movs r3, #0xa0
	lsls r3, r3, #3
	add r3, sp
	adds r0, #2
	str r0, [r3, #0]
_0800471A:
	movs r0, #0x8c
	lsls r0, r0, #3
	add r0, sp
	ldr r4, _080047B8
	add r4, sp
	ldr r4, [r4, #0]
	adds r0, r0, r4
	movs r6, #0xa0
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	ldrb r1, [r6, #0]
	strb r1, [r0, #0]
	adds r6, #1
	movs r0, #0xa0
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	adds r4, #1
	ldr r1, _080047B8
	add r1, sp
	str r4, [r1, #0]
	cmp r4, #0x1f
	bls _08004760
	movs r2, #0
	str r2, [r1, #0]
	movs r1, #0x90
	lsls r1, r1, #3
	add r1, sp
	movs r0, #0xfd
	strb r0, [r1, #0]
	movs r3, #1
	ldr r4, _080047B0
	add r4, sp
	str r3, [r4, #0]
_08004760:
	ldr r6, _080047B0
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0
	beq _080047C8
	ldr r1, _080047BC
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r1, #0xa2
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #7
	bls _080047C0
	movs r2, #0
	str r2, [r1, #0]
	movs r3, #0xa
	ldr r4, _080047B4
	add r4, sp
	str r3, [r4, #0]
	b _080047C8
_08004790: .4byte 0x00000454
_08004794: .4byte gUnk_08366E0C
_08004798: .4byte 0x0000052C
_0800479C: .4byte 0x0000042F
_080047A0: .4byte 0x000004EC
_080047A4: .4byte 0x000004FC
_080047A8: .4byte 0x0000051C
_080047AC: .4byte 0x000004DC
_080047B0: .4byte 0x0000050C
_080047B4: .4byte 0x00000504
_080047B8: .4byte 0x00000514
_080047BC: .4byte gUnk_03003474
_080047C0:
	movs r6, #0
	ldr r0, _0800488C
	add r0, sp
	str r6, [r0, #0]
_080047C8:
	movs r0, #0x8c
	lsls r0, r0, #3
	add r0, sp
	movs r1, #0
	movs r2, #4
	bl sub_0801A3D0
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	ldr r1, _08004890
	add r1, sp
	ldr r1, [r1, #0]
	adds r0, r1, r0
	ldr r1, _08004890
	add r1, sp
	str r0, [r1, #0]
	movs r2, #0xa6
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	movs r3, #0xa4
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	subs r0, r2, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r3, r0
	movs r4, #0xa4
	lsls r4, r4, #3
	add r4, sp
	str r0, [r4, #0]
	ldr r5, _08004894
	add r5, sp
	ldr r5, [r5, #0]
	ldr r6, _08004890
	add r6, sp
	ldr r6, [r6, #0]
	subs r0, r5, r6
	cmp r0, #0
	bge _08004820
	negs r0, r0
_08004820:
	cmp r0, #1
	bgt _08004830
	ldr r0, _08004894
	add r0, sp
	ldr r0, [r0, #0]
	ldr r1, _08004890
	add r1, sp
	str r0, [r1, #0]
_08004830:
	movs r1, #0xa6
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	movs r2, #0xa4
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	subs r0, r1, r2
	cmp r0, #0
	bge _08004848
	negs r0, r0
_08004848:
	cmp r0, #1
	bgt _0800485C
	movs r3, #0xa6
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	movs r4, #0xa4
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
_0800485C:
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, #7
	bne _08004898
	add r0, sp, #0x3f4
	ldr r5, _08004890
	add r5, sp
	ldr r1, [r5, #0]
	subs r1, #0xa
	movs r6, #0xa4
	lsls r6, r6, #3
	add r6, sp
	ldr r2, [r6, #0]
	subs r2, #4
	movs r3, #0
	str r3, [sp, #0]
	movs r3, #0x15
	bl sub_08065230
	bl _080057C0
	.2byte 0x0000
_0800488C: .4byte 0x00000504
_08004890: .4byte 0x0000051C
_08004894: .4byte 0x0000052C
_08004898:
	add r0, sp, #0x3f4
	movs r1, #0
	str r1, [sp, #0]
	ldr r2, _080048B8
	add r2, sp
	ldr r1, [r2, #0]
	movs r3, #0xa4
	lsls r3, r3, #3
	add r3, sp
	ldr r2, [r3, #0]
	movs r3, #0xb
	bl sub_08065230
	bl _080057C0
	.2byte 0x0000
_080048B8: .4byte 0x0000051C
_080048BC:
	ldr r0, _080048E4
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080048EC
	movs r0, #0xf
	bl sub_0805865C
	ldr r1, _080048E8
	movs r0, #0
	strh r0, [r1, #0]
	movs r4, #3
	movs r5, #0xa3
	lsls r5, r5, #3
	add r5, sp
	str r4, [r5, #0]
	movs r1, #5
	bl sub_0801A664
	bl _080057C0
_080048E4: .4byte gUnk_03001324
_080048E8: .4byte gUnk_03001250
_080048EC:
	ldr r6, _08004908
	add r6, sp
	ldr r0, [r6, #0]
	adds r1, r0, #0
	adds r1, #1
	str r1, [r6, #0]
	cmp r0, #0x1d
	bhi _0800490C
	movs r2, #1
	movs r3, #0xa1
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	b _08004920
_08004908: .4byte 0x00000504
_0800490C:
	ldr r4, _0800494C
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, #0x1d
	bls _08004920
	movs r5, #0
	movs r6, #0xa1
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
_08004920:
	ldr r0, _0800494C
	add r0, sp
	ldr r0, [r0, #0]
	cmp r0, #0x28
	bls _08004932
	movs r1, #0
	ldr r2, _0800494C
	add r2, sp
	str r1, [r2, #0]
_08004932:
	movs r3, #0xa1
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	cmp r3, #0
	bne _08004942
	bl _080057C0
_08004942:
	ldr r0, _08004950
	add r0, sp
	movs r1, #0x1c
	b _08004E14
	.2byte 0x0000
_0800494C: .4byte 0x00000504
_08004950: .4byte 0x0000045C
_08004954:
	ldr r0, _08004990
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08004998
	movs r4, #5
	ldr r5, _08004994
	add r5, sp
	str r4, [r5, #0]
	movs r0, #0xe
	bl sub_0805865C
	movs r6, #0x9a
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	ldrb r0, [r6, #2]
	subs r0, #1
	strb r0, [r6, #2]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800498A
	b _08004A92
_0800498A:
	movs r0, #9
	strb r0, [r6, #2]
	b _08004A92
_08004990: .4byte gUnk_03001308
_08004994: .4byte 0x000004F4
_08004998:
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _080049CE
	movs r3, #5
	movs r4, #0x9f
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	movs r0, #0xe
	bl sub_0805865C
	movs r6, #0x9a
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	ldrb r0, [r6, #2]
	adds r0, #1
	strb r0, [r6, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bls _08004A92
	strb r5, [r6, #2]
	b _08004A92
_080049CE:
	ldr r0, _08004A64
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08004A74
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	ldr r0, _08004A68
	strh r4, [r0, #0]
	movs r3, #0
	mov r9, r3
	movs r4, #0x9a
	lsls r4, r4, #3
	add r4, sp
	ldr r0, [r4, #0]
	adds r0, #0x10
	bl sub_0801A638
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _08004A6C
	add r5, sp
	str r0, [r5, #0]
	cmp r0, #7
	bls _08004A0C
	movs r6, #7
	str r6, [r5, #0]
_08004A0C:
	movs r1, #0xd8
	lsls r1, r1, #8
	ldr r0, _08004A70
	add r0, sp
	strh r1, [r0, #0]
	movs r0, #1
	ldr r1, _08004A70
	add r1, sp
	bl sub_08000AA8
	movs r0, #0x80
	lsls r0, r0, #2
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #6
	str r0, [sp, #0]
	mov r0, r9
	str r0, [sp, #4]
	movs r0, #0xc
	movs r1, #0x28
	movs r2, #1
	movs r3, #8
	bl sub_0800903C
	movs r0, #0x10
	movs r1, #9
	movs r2, #0x32
	bl sub_08006550
	movs r1, #5
	movs r2, #0xa3
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2, #0]
	mov r3, r9
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	bl _080057C0
	.2byte 0x0000
_08004A64: .4byte gUnk_03001324
_08004A68: .4byte gUnk_03001250
_08004A6C: .4byte 0x000004E4
_08004A70: .4byte 0x000004CC
_08004A74:
	cmp r0, #2
	bne _08004A92
	movs r0, #0x10
	bl sub_0805865C
	movs r5, #0
	movs r6, #0xa3
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0x9a
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	strb r5, [r0, #2]
_08004A92:
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldrb r0, [r1, #2]
	ldr r2, _08004AF8
	adds r0, r0, r2
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r7, r0, #0
	movs r3, #0x9b
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	cmp r3, #2
	bne _08004ABA
	b _08004C30
_08004ABA:
	adds r5, r7, #2
	adds r0, r5, #0
	bl sub_0801A638
	ldr r2, _08004AFC
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	lsls r4, r6, #2
	adds r1, r4, r2
	ldrh r1, [r1, #0]
	lsls r0, r0, #2
	subs r1, r1, r0
	adds r2, #2
	adds r2, r4, r2
	ldrh r2, [r2, #0]
	subs r2, #0x28
	adds r0, r5, #0
	bl sub_0801A764
	ldr r0, _08004B00
	ldr r0, [r0, #0]
	adds r2, r4, #0
	cmp r0, #4
	bhi _08004B7E
	lsls r0, r0, #2
	ldr r1, _08004B04
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_08004AF8: .4byte 0x000004C5
_08004AFC: .4byte gUnk_08366E0C
_08004B00: .4byte gUnk_03003470
_08004B04: .4byte _08004B08
_08004B08:
	.4byte _08004B1C
_08004B0C: .4byte _08004B2C
_08004B10: .4byte _08004B3C
_08004B14: .4byte _08004B54
_08004B18: .4byte _08004B6C
_08004B1C:
	movs r0, #0x23
	ldr r1, _08004B28
	add r1, sp
	str r0, [r1, #0]
	movs r3, #0x1d
	b _08004B5E
_08004B28: .4byte 0x00000524
_08004B2C:
	movs r5, #0x2b
	ldr r6, _08004B38
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0x25
	b _08004B76
_08004B38: .4byte 0x00000524
_08004B3C:
	movs r3, #0x23
	ldr r4, _08004B50
	add r4, sp
	str r3, [r4, #0]
	movs r5, #0x1d
	movs r6, #0xa5
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	b _08004B7E
_08004B50: .4byte 0x00000524
_08004B54:
	movs r0, #0x2b
	ldr r1, _08004B68
	add r1, sp
	str r0, [r1, #0]
	movs r3, #0x25
_08004B5E:
	movs r4, #0xa5
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	b _08004B7E
_08004B68: .4byte 0x00000524
_08004B6C:
	movs r5, #0x23
	ldr r6, _08004BD0
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0x1d
_08004B76:
	movs r1, #0xa5
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
_08004B7E:
	movs r3, #0x9a
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	ldrb r0, [r3, #2]
	cmp r0, #8
	bhi _08004BDC
	add r7, sp, #0x3f4
	ldr r4, _08004BD4
	adds r5, r2, r4
	ldrh r1, [r5, #0]
	ldr r6, _08004BD0
	add r6, sp
	ldr r6, [r6, #0]
	subs r1, r1, r6
	ldr r0, _08004BD8
	add r0, sp
	ldr r0, [r0, #0]
	subs r1, r1, r0
	adds r4, #2
	adds r4, r2, r4
	ldrh r2, [r4, #0]
	subs r2, #0x20
	movs r0, #2
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r3, #3
	bl sub_08065230
	ldrh r1, [r5, #0]
	movs r2, #0xa5
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	adds r1, r1, r2
	movs r3, #0x9f
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	adds r1, r1, r3
	b _08004D36
_08004BD0: .4byte 0x00000524
_08004BD4: .4byte gUnk_08366E0C
_08004BD8: .4byte 0x000004F4
_08004BDC:
	add r7, sp, #0x3f4
	ldr r4, _08004C24
	adds r5, r2, r4
	ldrh r1, [r5, #0]
	ldr r6, _08004C28
	add r6, sp
	ldr r6, [r6, #0]
	subs r1, r1, r6
	ldr r3, _08004C2C
	add r3, sp
	ldr r0, [r3, #0]
	adds r0, #5
	subs r1, r1, r0
	adds r4, #2
	adds r4, r2, r4
	ldrh r2, [r4, #0]
	subs r2, #0x20
	movs r0, #2
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r3, #3
	bl sub_08065230
	ldrh r1, [r5, #0]
	movs r5, #0xa5
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	adds r1, r1, r5
	movs r6, #0x9f
	lsls r6, r6, #3
	add r6, sp
	ldr r0, [r6, #0]
	adds r0, #5
	adds r1, r1, r0
	b _08004D36
_08004C24: .4byte gUnk_08366E0C
_08004C28: .4byte 0x00000524
_08004C2C: .4byte 0x000004F4
_08004C30:
	ldr r0, _08004C44
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _08004CD2
	lsls r0, r0, #2
	ldr r1, _08004C48
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0x0000
_08004C44: .4byte gUnk_03003470
_08004C48: .4byte _08004C4C
_08004C4C:
	.4byte _08004C60
_08004C50: .4byte _08004C78
_08004C54: .4byte _08004C90
_08004C58: .4byte _08004CA8
_08004C5C: .4byte _08004CC0
_08004C60:
	movs r0, #0x23
	ldr r1, _08004C74
	add r1, sp
	str r0, [r1, #0]
	movs r2, #0x18
	movs r3, #0xa5
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	b _08004CD2
_08004C74: .4byte 0x00000524
_08004C78:
	movs r4, #0x2b
	ldr r5, _08004C8C
	add r5, sp
	str r4, [r5, #0]
	movs r6, #0x28
	movs r0, #0xa5
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	b _08004CD2
_08004C8C: .4byte 0x00000524
_08004C90:
	movs r1, #0x23
	ldr r2, _08004CA4
	add r2, sp
	str r1, [r2, #0]
	movs r3, #0x18
	movs r4, #0xa5
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	b _08004CD2
_08004CA4: .4byte 0x00000524
_08004CA8:
	movs r5, #0x2b
	ldr r6, _08004CBC
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0x20
	movs r1, #0xa5
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	b _08004CD2
_08004CBC: .4byte 0x00000524
_08004CC0:
	movs r2, #0x23
	ldr r3, _08004D48
	add r3, sp
	str r2, [r3, #0]
	movs r4, #0x18
	movs r5, #0xa5
	lsls r5, r5, #3
	add r5, sp
	str r4, [r5, #0]
_08004CD2:
	movs r6, #0x9a
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	ldrb r0, [r6, #2]
	cmp r0, #8
	bhi _08004D54
	adds r0, r7, #2
	ldr r2, _08004D4C
	movs r1, #0x9b
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	lsls r4, r1, #2
	adds r5, r4, r2
	ldrh r1, [r5, #0]
	subs r1, #9
	adds r2, #2
	adds r4, r4, r2
	ldrh r2, [r4, #0]
	subs r2, #0x28
	bl sub_0801A764
	add r7, sp, #0x3f4
	ldrh r1, [r5, #0]
	ldr r2, _08004D50
	add r2, sp
	ldr r0, [r2, #0]
	adds r0, #0x10
	subs r1, r1, r0
	ldrh r2, [r4, #0]
	subs r2, #0x20
	movs r0, #2
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r3, #3
	bl sub_08065230
	movs r3, #0xa5
	lsls r3, r3, #3
	add r3, sp
	ldr r1, [r3, #0]
	adds r1, #0x18
	ldrh r5, [r5, #0]
	adds r1, r1, r5
	movs r5, #0x9f
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	adds r1, r1, r5
_08004D36:
	ldrh r2, [r4, #0]
	subs r2, #0x20
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r3, #3
	bl sub_08065230
	b _08004DC8
_08004D48: .4byte 0x00000524
_08004D4C: .4byte gUnk_08366E0C
_08004D50: .4byte 0x000004F4
_08004D54:
	adds r7, #2
	adds r0, r7, #0
	bl sub_0801A638
	ldr r2, _08004E20
	movs r6, #0x9b
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	lsls r4, r6, #2
	adds r5, r4, r2
	ldrh r1, [r5, #0]
	lsls r0, r0, #2
	subs r0, #0x18
	subs r1, r1, r0
	adds r2, #2
	adds r4, r4, r2
	ldrh r2, [r4, #0]
	subs r2, #0x28
	adds r0, r7, #0
	bl sub_0801A764
	add r7, sp, #0x3f4
	ldrh r1, [r5, #0]
	ldr r2, _08004E24
	add r2, sp
	ldr r0, [r2, #0]
	adds r0, #0x10
	subs r1, r1, r0
	ldrh r2, [r4, #0]
	subs r2, #0x20
	movs r0, #2
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r3, #3
	bl sub_08065230
	movs r3, #0xa5
	lsls r3, r3, #3
	add r3, sp
	ldr r1, [r3, #0]
	adds r1, #0x18
	ldrh r5, [r5, #0]
	adds r1, r1, r5
	movs r5, #0x9f
	lsls r5, r5, #3
	add r5, sp
	ldr r0, [r5, #0]
	adds r0, #9
	adds r1, r1, r0
	ldrh r2, [r4, #0]
	subs r2, #0x20
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r3, #3
	bl sub_08065230
_08004DC8:
	ldr r0, _08004E28
	ldr r0, [r0, #0]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08004E08
	ldr r6, _08004E24
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0
	beq _08004DEC
	adds r0, r6, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _08004E24
	add r2, sp
	str r0, [r2, #0]
_08004DEC:
	movs r3, #0x9f
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _08004E08
	adds r0, r3, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r5, #0x9f
	lsls r5, r5, #3
	add r5, sp
	str r0, [r5, #0]
_08004E08:
	ldr r0, _08004E2C
	bl sub_08007290
	adds r7, r0, #0
	adds r0, r7, #2
	movs r1, #0
_08004E14:
	movs r2, #0
	bl sub_0801A3D0
	bl _080057C0
	.2byte 0x0000
_08004E20: .4byte gUnk_08366E0C
_08004E24: .4byte 0x000004F4
_08004E28: .4byte gUnk_03002344
_08004E2C: .4byte 0x00140442
_08004E30:
	ldr r0, _08004E5C
	ldrh r1, [r0, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08004E60
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0
	beq _08004E4E
	movs r0, #0xc6
	bl sub_0805865C
_08004E4E:
	movs r0, #0
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	b _08004ED0
	.2byte 0x0000
_08004E5C: .4byte gUnk_03001324
_08004E60:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08004E86
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	cmp r2, #0
	bne _08004E7A
	movs r0, #0xc7
	bl sub_0805865C
_08004E7A:
	movs r3, #1
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	b _08004ED0
_08004E86:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08004EB0
	movs r0, #0xf
	bl sub_0805865C
	movs r5, #5
	movs r6, #0xa3
	lsls r6, r6, #3
	add r6, sp
	str r5, [r6, #0]
	movs r0, #0x9c
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _08004EC4
	movs r1, #6
	str r1, [r6, #0]
	b _08004EC4
_08004EB0:
	cmp r0, #2
	bne _08004ED0
	movs r0, #0x10
	bl sub_0805865C
	movs r2, #5
	movs r3, #0xa3
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
_08004EC4:
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
	bl _080057C0
_08004ED0:
	movs r5, #0x85
	lsls r5, r5, #3
	add r5, sp
	movs r4, #1
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r1, #4
	movs r6, #0xa8
	lsls r6, r6, #3
	add r6, sp
	ldr r2, [r6, #0]
	ldr r6, _08004F50
	add r6, sp
	ldr r3, [r6, #0]
	bl sub_08065370
	mov r2, sp
	adds r2, #0x46
	mov r3, sp
	adds r3, #0x4a
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r1, #5
	bl sub_08065370
	movs r0, #0x9c
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _08004F54
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xd2
	movs r2, #0x8e
	movs r3, #9
	bl sub_08065230
	movs r1, #0xa8
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldrh r0, [r1, #2]
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xe2
	movs r2, #0x8e
	movs r3, #5
	bl sub_08065264
	movs r2, #0xa8
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	ldrh r0, [r2, #0]
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xc2
	movs r2, #0x8e
	movs r3, #4
	bl sub_08065230
	b _08004F92
_08004F50: .4byte 0x00000544
_08004F54:
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	str r3, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xd2
	movs r2, #0x8e
	movs r3, #8
	bl sub_08065230
	movs r4, #0xa8
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	ldrh r0, [r4, #2]
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xe2
	movs r2, #0x8e
	movs r3, #5
	bl sub_08065230
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	adds r0, r5, #0
	movs r1, #0xc2
	movs r2, #0x8e
	movs r3, #4
	bl sub_08065264
_08004F92:
	ldr r0, _08004FB8
	bl sub_08007290
	adds r0, #2
	movs r1, #2
	movs r2, #0x12
	bl sub_0801A3D0
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	adds r0, #0x10
	movs r1, #0x58
	movs r2, #0x10
	bl sub_0801A764
	bl _080057C0
_08004FB8: .4byte 0x00140443
_08004FBC:
	movs r0, #8
	movs r1, #2
	bl sub_08000C08
	ldr r0, _08005018
	ldrh r2, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq _08005026
	movs r2, #0x9a
	lsls r2, r2, #3
	add r2, sp
	ldr r5, [r2, #0]
	adds r5, #0x10
	mov r3, r9
	cmp r3, #6
	bls _08004FE4
	b _08005556
_08004FE4:
	ldr r4, _0800501C
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, r9
	beq _08004FF6
	adds r0, r5, r3
	ldrb r0, [r0, #0]
	cmp r0, #0xfd
	bne _08005020
_08004FF6:
	mov r6, r9
	adds r1, r5, r6
	movs r0, #0x51
	strb r0, [r1, #0]
	mov r1, r9
	adds r1, #1
	adds r2, r5, r1
	movs r0, #0xfd
	strb r0, [r2, #0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r9, r1
	ldr r0, _0800501C
	add r0, sp
	str r1, [r0, #0]
	b _0800504E
	.2byte 0x0000
_08005018: .4byte gUnk_03001324
_0800501C: .4byte 0x000004E4
_08005020:
	mov r0, r9
	adds r0, #1
	b _08005048
_08005026:
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	beq _08005056
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r5, [r1, #0]
	adds r5, #0x10
	mov r2, r9
	cmp r2, #0
	bne _08005044
	b _08005556
_08005044:
	mov r0, r9
	subs r0, #1
_08005048:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_0800504E:
	movs r0, #0xe
	bl sub_0805865C
	b _08005556
_08005056:
	ldr r0, _08005084
	ldrh r1, [r0, #0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080050C4
	movs r0, #0x62
	bl sub_0805865C
	movs r3, #0x9a
	lsls r3, r3, #3
	add r3, sp
	ldr r5, [r3, #0]
	adds r5, #0x10
	movs r4, #2
	cmp r4, #0
	bge _0800507A
	b _08005556
_0800507A:
	cmp r4, #1
	ble _08005088
	cmp r4, #2
	beq _080050A6
	b _08005556
_08005084: .4byte gUnk_03001308
_08005088:
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0x13
	bhi _0800509A
	adds r0, r6, #0
	adds r0, #0x50
	b _080050FE
_0800509A:
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	ldr r0, [r3, #0]
	subs r0, #0x14
	b _0800521C
_080050A6:
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, #0x17
	bhi _080050B8
	adds r0, r4, #0
	adds r0, #0x78
	b _08005128
_080050B8:
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	subs r0, #0x18
	b _08005266
_080050C4:
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08005142
	movs r0, #0x62
	bl sub_0805865C
	movs r3, #0x9a
	lsls r3, r3, #3
	add r3, sp
	ldr r5, [r3, #0]
	adds r5, #0x10
	movs r4, #2
	cmp r4, #0
	bge _080050E4
	b _08005556
_080050E4:
	cmp r4, #1
	ble _080050EE
	cmp r4, #2
	beq _08005118
	b _08005556
_080050EE:
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	cmp r6, #0x4f
	bls _0800510C
	adds r0, r6, #0
	subs r0, #0x50
_080050FE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	str r0, [r2, #0]
	b _08005556
_0800510C:
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	ldr r0, [r3, #0]
	adds r0, #0x14
	b _0800521C
_08005118:
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, #0x77
	bls _08005136
	adds r0, r4, #0
	subs r0, #0x78
_08005128:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	b _08005556
_08005136:
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	adds r0, #0x18
	b _08005266
_08005142:
	movs r6, #0x10
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080051D0
	movs r0, #0x62
	bl sub_0805865C
	movs r3, #0x9a
	lsls r3, r3, #3
	add r3, sp
	ldr r5, [r3, #0]
	adds r5, #0x10
	movs r4, #2
	cmp r4, #0
	bge _08005164
	b _08005556
_08005164:
	cmp r4, #1
	ble _0800516E
	cmp r4, #2
	beq _0800519C
	b _08005556
_0800516E:
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r0, [r6, #0]
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bne _08005190
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	subs r0, #0x13
	b _08005254
_08005190:
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	adds r0, #1
	b _08005266
_0800519C:
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	ldr r0, [r3, #0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x16
	bls _080051BE
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r0, [r4, #0]
	subs r0, #0x17
	b _0800522E
_080051BE:
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r0, [r6, #0]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6, #0]
	b _08005556
_080051D0:
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0800526E
	movs r0, #0x62
	bl sub_0805865C
	movs r0, #0x9a
	lsls r0, r0, #3
	add r0, sp
	ldr r5, [r0, #0]
	adds r5, #0x10
	movs r1, #2
	cmp r1, #0
	bge _080051F4
	b _08005556
_080051F4:
	cmp r1, #1
	ble _080051FE
	cmp r1, #2
	beq _08005236
	b _08005556
_080051FE:
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08005224
	movs r3, #0x9c
	lsls r3, r3, #3
	add r3, sp
	ldr r0, [r3, #0]
	adds r0, #0x13
_0800521C:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r3, #0]
	b _08005556
_08005224:
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r0, [r4, #0]
	subs r0, #1
_0800522E:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #0]
	b _08005556
_08005236:
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r0, [r6, #0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800525C
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	adds r0, #0x17
_08005254:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r1, #0]
	b _08005556
_0800525C:
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	subs r0, #1
_08005266:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r2, #0]
	b _08005556
_0800526E:
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _08005334
	movs r0, #0xf
	bl sub_0805865C
	movs r3, #2
	cmp r3, #1
	beq _080052C0
	cmp r3, #1
	bgt _08005296
	cmp r3, #0
	beq _080052A8
	movs r4, #0x9a
	lsls r4, r4, #3
	add r4, sp
	ldr r5, [r4, #0]
	adds r5, #0x10
	b _080052FA
_08005296:
	movs r5, #2
	cmp r5, #2
	beq _080052D8
	movs r6, #0x9a
	lsls r6, r6, #3
	add r6, sp
	ldr r5, [r6, #0]
	adds r5, #0x10
	b _080052FA
_080052A8:
	movs r0, #0x9a
	lsls r0, r0, #3
	add r0, sp
	ldr r2, [r0, #0]
	adds r2, #0x10
	mov r1, r9
	adds r3, r2, r1
	ldr r1, _080052BC
	b _080052E8
	.2byte 0x0000
_080052BC: .4byte gUnk_08366E34
_080052C0:
	movs r5, #0x9a
	lsls r5, r5, #3
	add r5, sp
	ldr r2, [r5, #0]
	adds r2, #0x10
	mov r6, r9
	adds r3, r2, r6
	ldr r1, _080052D4
	b _080052E8
	.2byte 0x0000
_080052D4: .4byte gUnk_08366EFC
_080052D8:
	movs r5, #0x9a
	lsls r5, r5, #3
	add r5, sp
	ldr r2, [r5, #0]
	adds r2, #0x10
	mov r6, r9
	adds r3, r2, r6
	ldr r1, _08005320
_080052E8:
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strb r0, [r3, #0]
	adds r5, r2, #0
_080052FA:
	mov r6, r9
	cmp r6, #6
	bhi _08005328
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r0, _08005324
	add r0, sp
	ldr r0, [r0, #0]
	cmp r9, r0
	bhi _08005316
	b _08005556
_08005316:
	mov r2, r9
	adds r1, r5, r2
	movs r0, #0xfd
	strb r0, [r1, #0]
	b _080053E2
_08005320: .4byte gUnk_08366FC4
_08005324: .4byte 0x000004E4
_08005328:
	mov r0, r9
	adds r0, #1
	adds r0, r5, r0
	movs r1, #0xfd
	strb r1, [r0, #0]
	b _08005556
_08005334:
	cmp r0, #2
	beq _0800533A
	b _080054D2
_0800533A:
	movs r0, #0x10
	bl sub_0805865C
	ldr r5, _080053EC
	add r5, sp
	ldr r5, [r5, #0]
	cmp r9, r5
	bne _080053F0
	movs r0, #0x9a
	lsls r0, r0, #3
	add r0, sp
	ldr r2, [r0, #0]
	adds r2, #0x10
	mov r3, r9
	adds r1, r2, r3
	movs r0, #0xfd
	strb r0, [r1, #0]
	mov r0, r9
	adds r0, #1
	adds r0, r2, r0
	strb r4, [r0, #0]
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r4, r9
	ands r0, r4
	adds r5, r2, #0
	cmp r0, #0
	beq _080053E0
	movs r0, #0
	mov r9, r0
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldrb r0, [r1, #0x10]
	cmp r0, #0xfd
	bne _080053E0
	movs r2, #3
	movs r3, #0xa3
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	str r6, [sp, #0]
	mov r4, r9
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #8
	bl sub_0800903C
	bl sub_08006544
	movs r6, #0x9a
	lsls r6, r6, #3
	add r6, sp
	ldr r6, [r6, #0]
	ldrb r0, [r6, #1]
	cmp r0, #8
	bne _080053E0
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	movs r0, #0
	movs r1, #0xa3
	lsls r1, r1, #3
	add r1, sp
	str r0, [r1, #0]
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
_080053E0:
	mov r2, r9
_080053E2:
	ldr r3, _080053EC
	add r3, sp
	str r2, [r3, #0]
	b _08005556
	.2byte 0x0000
_080053EC: .4byte 0x000004E4
_080053F0:
	movs r5, #0x9a
	lsls r5, r5, #3
	add r5, sp
	ldr r0, [r5, #0]
	adds r0, #0x10
	mov r1, r9
	adds r2, r0, r1
	ldrb r1, [r2, #0]
	adds r5, r0, #0
	cmp r1, #0x51
	bne _08005474
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #8
	mov r2, r9
	ands r0, r2
	cmp r0, #0
	bne _0800541E
	b _08005556
_0800541E:
	movs r3, #3
	movs r0, #0xa3
	lsls r0, r0, #3
	add r0, sp
	str r3, [r0, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	str r6, [sp, #0]
	str r4, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #8
	bl sub_0800903C
	bl sub_08006544
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	ldrb r0, [r1, #1]
	cmp r0, #8
	bne _0800546E
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	movs r2, #0
	movs r3, #0xa3
	lsls r3, r3, #3
	add r3, sp
	str r2, [r3, #0]
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
_0800546E:
	movs r4, #0
	mov r9, r4
	b _08005556
_08005474:
	movs r0, #0x51
	strb r0, [r2, #0]
	mov r0, r9
	cmp r0, #0
	bne _08005556
	movs r1, #3
	movs r2, #0xa3
	lsls r2, r2, #3
	add r2, sp
	str r1, [r2, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	str r6, [sp, #0]
	mov r3, r9
	str r3, [sp, #4]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	movs r3, #8
	bl sub_0800903C
	bl sub_08006544
	movs r4, #0x9a
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _08005556
	movs r0, #0
	movs r1, #2
	bl sub_0801A664
	movs r6, #0
	movs r0, #0xa3
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
	b _08005556
_080054D2:
	movs r1, #0x9a
	lsls r1, r1, #3
	add r1, sp
	ldr r5, [r1, #0]
	adds r5, #0x10
	cmp r0, #8
	bne _08005556
	adds r0, r5, #0
	bl sub_0801A638
	cmp r0, #0
	beq _08005550
	movs r3, #0
	movs r6, #0
	movs r2, #0x9a
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	ldrb r0, [r2, #0x10]
	cmp r0, #0x51
	beq _08005508
	movs r1, #0xfd
	eors r1, r0
	negs r0, r1
	orrs r0, r1
	lsrs r3, r0, #0x1f
	b _08005520
_08005508:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bhi _08005520
	adds r0, r5, r6
	ldrb r0, [r0, #0]
	cmp r0, #0x51
	beq _08005508
	cmp r0, #0xfd
	beq _08005520
	adds r3, #1
_08005520:
	cmp r3, #0
	beq _08005548
	movs r0, #0x10
	movs r1, #8
	bl sub_08000C08
	movs r3, #4
	movs r4, #0xa3
	lsls r4, r4, #3
	add r4, sp
	str r3, [r4, #0]
	movs r6, #0
	movs r0, #0x9c
	lsls r0, r0, #3
	add r0, sp
	str r6, [r0, #0]
	movs r0, #0xdc
	bl sub_0805865C
	b _08005556
_08005548:
	movs r0, #0x61
	bl sub_0805865C
	b _08005556
_08005550:
	movs r0, #0x61
	bl sub_0805865C
_08005556:
	movs r1, #2
	cmp r1, #1
	beq _0800557C
	cmp r1, #1
	bgt _08005566
	cmp r1, #0
	beq _0800556E
	b _0800559C
_08005566:
	movs r2, #2
	cmp r2, #2
	beq _08005590
	b _0800559C
_0800556E:
	ldr r0, _08005578
	movs r3, #2
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	b _0800559C
_08005578: .4byte gUnk_03001250
_0800557C:
	ldr r0, _0800558C
	movs r2, #0
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	b _0800559C
	.2byte 0x0000
_0800558C: .4byte gUnk_03001250
_08005590:
	ldr r0, _080055AC
	movs r1, #0
	strh r1, [r0, #4]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r0, #6]
_0800559C:
	movs r4, #2
	cmp r4, #0
	blt _08005638
	cmp r4, #1
	ble _080055B0
	cmp r4, #2
	beq _080055FC
	b _08005638
_080055AC: .4byte gUnk_03001250
_080055B0:
	movs r6, #0x9c
	lsls r6, r6, #3
	add r6, sp
	ldr r0, [r6, #0]
	movs r1, #0x14
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r4, r0, #3
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	adds r0, #0xf
	adds r4, r4, r0
	ldr r1, _080055F8
	add r1, sp
	str r4, [r1, #0]
	movs r2, #0x9c
	lsls r2, r2, #3
	add r2, sp
	ldr r0, [r2, #0]
	movs r1, #0x14
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	adds r0, #0x30
	movs r3, #0xa6
	lsls r3, r3, #3
	add r3, sp
	str r0, [r3, #0]
	b _08005638
	.2byte 0x0000
_080055F8: .4byte 0x0000052C
_080055FC:
	movs r4, #0x9c
	lsls r4, r4, #3
	add r4, sp
	ldr r0, [r4, #0]
	movs r1, #0x18
	bl __umodsi3
	lsls r0, r0, #0x10
	lsrs r1, r0, #0xd
	lsrs r0, r0, #0x14
	lsls r0, r0, #4
	adds r0, #0x10
	adds r1, r1, r0
	ldr r6, _0800571C
	add r6, sp
	str r1, [r6, #0]
	movs r1, #0x9c
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	movs r1, #0x18
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0xc
	adds r0, #0x30
	movs r2, #0xa6
	lsls r2, r2, #3
	add r2, sp
	str r0, [r2, #0]
_08005638:
	adds r0, r5, #0
	movs r1, #0x58
	movs r2, #0x10
	bl sub_0801A764
	add r6, sp, #0x3f4
	movs r4, #0x99
	lsls r4, r4, #3
	add r4, sp
	ldr r3, _08005720
	add r3, sp
	movs r5, #1
	str r5, [sp, #0]
	adds r0, r6, #0
	movs r1, #5
	adds r2, r4, #0
	bl sub_08065370
	mov r3, r9
	lsls r1, r3, #3
	adds r1, #0x58
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	str r5, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x18
	movs r3, #5
	bl sub_080659BC
	ldr r4, _0800571C
	add r4, sp
	ldr r4, [r4, #0]
	ldr r5, _08005724
	add r5, sp
	ldr r5, [r5, #0]
	subs r0, r4, r5
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r5, r0
	ldr r1, _08005724
	add r1, sp
	str r0, [r1, #0]
	movs r2, #0xa6
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	movs r3, #0xa4
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	subs r0, r2, r3
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	adds r0, r3, r0
	movs r4, #0xa4
	lsls r4, r4, #3
	add r4, sp
	str r0, [r4, #0]
	ldr r5, _0800571C
	add r5, sp
	ldr r5, [r5, #0]
	ldr r1, _08005724
	add r1, sp
	ldr r1, [r1, #0]
	subs r0, r5, r1
	cmp r0, #0
	bge _080056C4
	negs r0, r0
_080056C4:
	cmp r0, #1
	bgt _080056D4
	ldr r2, _0800571C
	add r2, sp
	ldr r2, [r2, #0]
	ldr r3, _08005724
	add r3, sp
	str r2, [r3, #0]
_080056D4:
	movs r3, #0xa6
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	movs r4, #0xa4
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	subs r0, r3, r4
	cmp r0, #0
	bge _080056EC
	negs r0, r0
_080056EC:
	cmp r0, #1
	bgt _08005700
	movs r5, #0xa6
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	movs r0, #0xa4
	lsls r0, r0, #3
	add r0, sp
	str r5, [r0, #0]
_08005700:
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r6, #0
	ldr r6, _08005724
	add r6, sp
	ldr r1, [r6, #0]
	movs r3, #0xa4
	lsls r3, r3, #3
	add r3, sp
	ldr r2, [r3, #0]
	movs r3, #0x10
	bl sub_08065230
	b _080057C0
_0800571C: .4byte 0x0000052C
_08005720: .4byte 0x000004CA
_08005724: .4byte 0x0000051C
_08005728:
	movs r3, #0
	movs r6, #8
	movs r4, #0x9a
	lsls r4, r4, #3
	add r4, sp
	ldr r2, [r4, #0]
	adds r2, #0x10
	movs r7, #0
	movs r5, #0x80
	lsls r5, r5, #8
	movs r4, #0xfd
_0800573E:
	adds r1, r2, r6
	ldrb r0, [r1, #0]
	cmp r0, #0xfd
	bne _0800574A
	movs r3, #1
	b _0800575A
_0800574A:
	cmp r3, #1
	bne _0800575A
	cmp r0, #0x51
	bne _08005768
	strb r4, [r1, #0]
	adds r0, r6, #1
	adds r0, r2, r0
	strb r7, [r0, #0]
_0800575A:
	subs r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	ands r0, r5
	cmp r0, #0
	beq _0800573E
_08005768:
	movs r0, #6
	bl sub_0801ABE8
	bl sub_080003F0
	bl sub_080003F0
	b _0800577C
_08005778:
	bl sub_080003F0
_0800577C:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08005778
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	bl sub_08006544
	movs r0, #0
	movs r1, #0x13
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #1
	movs r5, #0x9a
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	strb r0, [r5, #0]
_080057AC:
	ldr r1, _080057BC
	ldr r0, _080057B8
	bl sub_08000420
	b _08005A0C
	.2byte 0x0000
_080057B8: .4byte 0x5A112EBF
_080057BC: .4byte 0x00000002
_080057C0:
	movs r6, #0
	movs r1, #0xa3
	lsls r1, r1, #3
	add r1, sp
	ldr r0, [r1, #0]
	subs r0, #4
	ldr r1, _0800584C
	add r1, sp
	str r0, [r1, #0]
	movs r2, #1
	mov sl, r2
_080057D6:
	ldr r3, _0800584C
	add r3, sp
	ldr r3, [r3, #0]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	lsls r7, r6, #1
	cmp r0, #2
	bls _0800589C
	movs r4, #0x9b
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	cmp r4, r6
	bne _08005854
	movs r0, #0xa7
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	adds r5, r0, r7
	mov r1, sl
	strh r1, [r5, #0]
	adds r0, r6, #0
	adds r0, #0x10
	movs r1, #0x34
	adds r4, r6, #0
	muls r4, r1, r4
	add r1, sp, #0x22c
	adds r1, r1, r4
	movs r3, #0x9a
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	ldrb r2, [r3, #2]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r0, #0xa9
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	adds r4, r0, r4
	ldrh r1, [r5, #0]
	mov r2, sp
	adds r2, r2, r7
	adds r2, #8
	ldr r5, _08005850
	add r5, sp
	ldr r5, [r5, #0]
	adds r3, r5, r7
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_08065370
	b _0800589C
	.2byte 0x0000
_0800584C: .4byte 0x0000053C
_08005850: .4byte 0x00000534
_08005854:
	movs r1, #0xa7
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	adds r5, r1, r7
	movs r2, #0
	strh r2, [r5, #0]
	adds r0, r6, #0
	adds r0, #0x10
	movs r1, #0x34
	adds r4, r6, #0
	muls r4, r1, r4
	add r1, sp, #0x22c
	adds r1, r1, r4
	ldr r1, [r1, #0]
	movs r2, #1
	bl sub_08000AF0
	movs r3, #0xa9
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	adds r4, r3, r4
	ldrh r1, [r5, #0]
	mov r2, sp
	adds r2, r2, r7
	adds r2, #8
	ldr r5, _08005968
	add r5, sp
	ldr r5, [r5, #0]
	adds r3, r5, r7
	mov r0, sl
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_08065370
_0800589C:
	movs r1, #0x34
	mov r8, r1
	mov r0, r8
	muls r0, r6, r0
	movs r2, #0xa9
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	adds r0, r2, r0
	lsls r2, r6, #2
	ldr r3, _0800596C
	adds r1, r2, r3
	ldrh r1, [r1, #0]
	ldr r4, _08005970
	adds r2, r2, r4
	ldrh r2, [r2, #0]
	movs r5, #0xa7
	lsls r5, r5, #3
	add r5, sp
	ldr r5, [r5, #0]
	adds r3, r5, r7
	ldrh r3, [r3, #0]
	mov r4, sp
	adds r4, r4, r7
	adds r4, #8
	ldrh r4, [r4, #0]
	str r4, [sp, #0]
	mov r4, sl
	str r4, [sp, #4]
	bl sub_080659BC
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #7
	bhi _080058E6
	b _080057D6
_080058E6:
	ldr r5, _08005974
	add r5, sp
	ldr r5, [r5, #0]
	cmp r5, #0
	bne _080058F2
	b _080059FC
_080058F2:
	ldr r1, _08005978
	add r1, sp
	ldr r1, [r1, #0]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	lsls r7, r6, #1
	cmp r0, #2
	bls _080059C2
	movs r2, #0x9b
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	cmp r2, r6
	bne _0800597C
	movs r3, #0xa7
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	adds r5, r3, r7
	movs r4, #0
	mov sl, r4
	movs r0, #1
	strh r0, [r5, #0]
	adds r0, r6, #0
	adds r0, #0x10
	mov r4, r8
	muls r4, r6, r4
	add r1, sp, #0x22c
	adds r1, r1, r4
	movs r3, #0x9a
	lsls r3, r3, #3
	add r3, sp
	ldr r3, [r3, #0]
	ldrb r2, [r3, #2]
	lsls r2, r2, #5
	ldr r1, [r1, #0]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	movs r0, #0xa9
	lsls r0, r0, #3
	add r0, sp
	ldr r0, [r0, #0]
	adds r4, r0, r4
	ldrh r1, [r5, #0]
	mov r2, sp
	adds r2, r2, r7
	adds r2, #8
	ldr r5, _08005968
	add r5, sp
	ldr r5, [r5, #0]
	adds r3, r5, r7
	mov r0, sl
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_08065370
	b _080059C2
_08005968: .4byte 0x00000534
_0800596C: .4byte gUnk_08366E0C
_08005970: .4byte gUnk_08366E0E
_08005974: .4byte 0x000004D4
_08005978: .4byte 0x0000053C
_0800597C:
	movs r1, #0xa7
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	adds r5, r1, r7
	movs r0, #0
	strh r0, [r5, #0]
	adds r0, r6, #0
	adds r0, #0x10
	mov r4, r8
	muls r4, r6, r4
	add r1, sp, #0x22c
	adds r1, r1, r4
	ldr r1, [r1, #0]
	movs r2, #1
	bl sub_08000AF0
	movs r2, #0xa9
	lsls r2, r2, #3
	add r2, sp
	ldr r2, [r2, #0]
	adds r4, r2, r4
	ldrh r1, [r5, #0]
	mov r2, sp
	adds r2, r2, r7
	adds r2, #8
	ldr r5, _08005A04
	add r5, sp
	ldr r5, [r5, #0]
	adds r3, r5, r7
	movs r0, #1
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_08065370
_080059C2:
	movs r0, #0x34
	muls r0, r6, r0
	movs r1, #0xa9
	lsls r1, r1, #3
	add r1, sp
	ldr r1, [r1, #0]
	adds r0, r1, r0
	ldr r2, _08005A08
	lsls r3, r6, #2
	adds r1, r3, r2
	ldrh r1, [r1, #0]
	adds r2, #2
	adds r3, r3, r2
	ldrh r2, [r3, #0]
	movs r4, #0xa7
	lsls r4, r4, #3
	add r4, sp
	ldr r4, [r4, #0]
	adds r3, r4, r7
	ldrh r3, [r3, #0]
	mov r4, sp
	adds r4, r4, r7
	adds r4, #8
	ldrh r4, [r4, #0]
	str r4, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	bl sub_080659BC
_080059FC:
	bl sub_080003F0
	bl _08003CBC
_08005A04: .4byte 0x00000534
_08005A08: .4byte gUnk_08366E0C
_08005A0C:
	ldr r3, _08005A20
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08005A20: .4byte 0x0000054C
	thumb_func_end sub_08003984
