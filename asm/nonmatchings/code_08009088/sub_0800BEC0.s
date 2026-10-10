	thumb_func_start sub_0800BEC0
sub_0800BEC0: @ 0x0800BEC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x160
	add r4, sp, #0x30
	add r6, sp, #0x108
	mov r0, sp
	adds r0, #0x3c
	str r0, [sp, #0x148]
	add r7, sp, #0x80
	mov r1, sp
	adds r1, #0xe8
	str r1, [sp, #0x14c]
	mov r2, sp
	adds r2, #0xec
	str r2, [sp, #0x150]
	b _0800BEEA
_0800BEE6:
	bl sub_080003F0
_0800BEEA:
	bl sub_0801AAE0
	cmp r0, #0
	beq _0800BEE6
	ldr r0, _0800BF08
	ldr r1, [r0, #0]
	lsrs r1, r1, #3
	movs r2, #1
	ands r1, r2
	adds r2, r0, #0
	cmp r1, #0
	beq _0800BF0C
	movs r3, #0
	str r3, [sp, #0x10c]
	b _0800BF14
_0800BF08: .4byte gUnk_03003478
_0800BF0C:
	ldr r0, _0800C12C
	ldr r0, [r0, #0]
	ldrh r0, [r0, #0]
	str r0, [sp, #0x10c]
_0800BF14:
	movs r0, #0
	str r0, [sp, #0x110]
	movs r5, #0
	ldr r0, [r2, #0]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_08068384
	ldr r1, _0800C130
	movs r3, #1
	negs r3, r3
	str r5, [sp, #0]
	add r0, sp, #8
	movs r2, #4
	bl sub_08065158
	strb r5, [r4, #0]
	ldr r1, [sp, #0x14]
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r1, r1, r2
	movs r0, #0x10
	movs r2, #1
	bl sub_08000AF0
	bl sub_080020F4
	str r0, [sp, #0x114]
	bl sub_08002164
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x120]
	bl sub_0801A508
	bl sub_080003F0
	movs r2, #0xc0
	lsls r2, r2, #0x13
	movs r0, #0xf
	str r0, [sp, #0]
	movs r0, #0x34
	movs r1, #1
	movs r3, #0
	bl sub_0800BCDC
	movs r0, #0x48
	movs r1, #0x1e
	bl sub_0800B974
	movs r0, #0xf0
	lsls r0, r0, #4
	movs r1, #0
	movs r2, #1
	bl sub_080009F8
	movs r0, #0x98
	lsls r0, r0, #5
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	ldr r1, _0800C134
	add r4, sp, #0x108
	ldr r0, [r4, #0]
	ands r0, r1
	ldr r1, _0800C138
	orrs r0, r1
	str r0, [r4, #0]
	movs r0, #0
	adds r1, r6, #0
	bl sub_08000AA8
	movs r0, #0xf0
	lsls r0, r0, #5
	strh r0, [r4, #0]
	movs r0, #2
	adds r1, r6, #0
	bl sub_08000AA8
	movs r0, #5
	bl sub_08057C34
	cmp r0, #0
	bne _0800BFDE
	movs r0, #0x80
	lsls r0, r0, #3
	movs r1, #0
	movs r2, #1
	bl sub_080009C0
	movs r0, #0xc
	str r0, [sp, #0]
	str r5, [sp, #4]
	movs r0, #4
	movs r1, #2
	movs r2, #1
	movs r3, #0xe
	bl sub_0800903C
_0800BFDE:
	ldr r0, _0800C13C
	strh r5, [r0, #8]
	strh r5, [r0, #0xa]
	strh r5, [r0, #0xc]
	strh r5, [r0, #0xe]
	strh r5, [r0, #4]
	strh r5, [r0, #6]
	ldr r1, _0800C140
	str r5, [sp, #0]
	ldr r0, [sp, #0x148]
	movs r2, #4
	movs r3, #0xc
	bl sub_08065158
	bl sub_080003F0
	bl sub_080003F0
	bl sub_080003F0
	movs r0, #3
	bl sub_0801AB50
	movs r3, #0
	mov r8, r3
	ldr r4, [sp, #0x10c]
	lsls r5, r4, #2
	movs r4, #0
	movs r3, #0xc0
	lsls r3, r3, #2
	ldr r2, [sp, #0x14c]
	adds r1, r7, #0
	ldr r0, [sp, #0x150]
_0800C020:
	strh r3, [r1, #0]
	mov r6, r8
	str r6, [r2, #0]
	str r4, [r0, #0]
	adds r2, #8
	adds r1, #2
	adds r0, #8
	movs r6, #1
	add r8, r6
	mov r6, r8
	cmp r6, #3
	bls _0800C020
	ldr r3, _0800C144
	movs r4, #0xa6
	lsls r4, r4, #1
	ldr r1, [sp, #0x114]
	adds r0, r1, #0
	muls r0, r4, r0
	movs r2, #0xa2
	lsls r2, r2, #1
	adds r1, r3, r2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	strb r0, [r2, #0]
	movs r6, #0
	mov r8, r6
	ldr r0, [sp, #0x120]
	cmp r8, r0
	bhs _0800C078
	adds r3, #0xb0
	adds r1, r4, #0
_0800C066:
	mov r0, r8
	adds r0, #0x1b
	strh r0, [r3, #0]
	adds r3, r3, r1
	movs r2, #1
	add r8, r2
	ldr r4, [sp, #0x120]
	cmp r8, r4
	blo _0800C066
_0800C078:
	movs r0, #0x70
	bl sub_08058688
	ldr r0, _0800C148
	adds r1, r5, r0
	ldrh r1, [r1, #0]
	lsls r1, r1, #8
	str r1, [sp, #0x124]
	adds r0, #2
	adds r0, r5, r0
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	str r0, [sp, #0x128]
	movs r6, #0
	str r6, [sp, #0x12c]
	movs r0, #0
	str r0, [sp, #0x134]
	movs r1, #0
	str r1, [sp, #0x11c]
	movs r2, #0
	str r2, [sp, #0x118]
	movs r3, #0
	str r3, [sp, #0x13c]
	movs r4, #0
	str r4, [sp, #0x138]
	ldr r1, _0800C14C
	bl sub_08057328
	str r0, [sp, #0x140]
_0800C0B2:
	movs r0, #5
	bl sub_08057C34
	adds r2, r0, #0
	cmp r2, #0
	bne _0800C0FA
	ldr r6, [sp, #0x130]
	lsls r1, r6, #0x10
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r1, r0
	movs r0, #0xfe
	lsls r0, r0, #0xf
	ands r0, r1
	lsrs r0, r0, #0x10
	str r0, [sp, #0x130]
	ldr r1, _0800C150
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r3, [r0, r1]
	cmp r3, #0
	bge _0800C0E2
	adds r3, #0x1f
_0800C0E2:
	asrs r3, r3, #5
	adds r3, #8
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	movs r0, #0xc
	str r0, [sp, #0]
	str r2, [sp, #4]
	movs r0, #4
	movs r1, #0x32
	movs r2, #1
	bl sub_0800903C
_0800C0FA:
	ldr r2, [sp, #0x110]
	cmp r2, #0
	beq _0800C106
	ldr r1, _0800C154
	movs r0, #0
	strh r0, [r1, #0]
_0800C106:
	bl sub_0801AAE0
	cmp r0, #0
	bne _0800C110
	b _0800C2CC
_0800C110:
	movs r3, #0
	cmp r3, #0
	beq _0800C118
	b _0800C2CC
_0800C118:
	movs r0, #1
	movs r1, #0x31
	bl sub_0805813C
	cmp r0, #0
	beq _0800C158
	ldr r4, [sp, #0x118]
	adds r4, #1
	str r4, [sp, #0x118]
	b _0800C15E
_0800C12C: .4byte gUnk_03005CF4
_0800C130: .4byte 0x00050006
_0800C134: .4byte 0xFFFF0000
_0800C138: .4byte 0x00001C08
_0800C13C: .4byte gUnk_03001250
_0800C140: .4byte 0x000500C3
_0800C144: .4byte gUnk_03003CE0
_0800C148: .4byte gUnk_08478F9A
_0800C14C: .4byte sub_0800D164
_0800C150: .4byte gUnk_080B9704
_0800C154: .4byte gUnk_03001308
_0800C158:
	movs r0, #0x11
	bl sub_08057CAC
_0800C15E:
	movs r0, #1
	movs r1, #0x2c
	bl sub_0805813C
	cmp r0, #0
	beq _0800C172
	ldr r6, [sp, #0x11c]
	adds r6, #1
	str r6, [sp, #0x11c]
	b _0800C178
_0800C172:
	movs r0, #0x17
	bl sub_08057CAC
_0800C178:
	ldr r0, [sp, #0x118]
	cmp r0, #0x28
	bls _0800C194
	movs r0, #0x11
	bl sub_08057C6C
	ldr r1, [sp, #0x138]
	cmp r1, #0
	bne _0800C194
	movs r0, #0x3a
	bl sub_0805865C
	movs r2, #1
	str r2, [sp, #0x138]
_0800C194:
	ldr r3, [sp, #0x11c]
	cmp r3, #0x3c
	bls _0800C1B0
	movs r0, #0x17
	bl sub_08057C6C
	ldr r4, [sp, #0x13c]
	cmp r4, #0
	bne _0800C1B0
	movs r0, #0x3b
	bl sub_0805865C
	movs r6, #1
	str r6, [sp, #0x13c]
_0800C1B0:
	movs r0, #0xff
	str r0, [sp, #0x10c]
	movs r1, #0
	mov r8, r1
_0800C1B8:
	mov r2, r8
	cmp r2, #0
	beq _0800C1C8
	mov r0, r8
	bl sub_08057C34
	cmp r0, #0
	beq _0800C246
_0800C1C8:
	mov r3, r8
	cmp r3, #0xe
	bne _0800C1DC
	ldr r0, _0800C230
	ldr r0, [r0, #0]
	lsrs r0, r0, #1
	movs r4, #1
	ands r0, r4
	cmp r0, #0
	bne _0800C246
_0800C1DC:
	ldr r4, _0800C234
	mov r6, r8
	lsls r2, r6, #2
	adds r0, r2, r4
	ldrh r1, [r0, #0]
	ldr r3, [sp, #0x124]
	asrs r0, r3, #8
	subs r1, r1, r0
	cmp r1, #0
	bge _0800C1F2
	negs r1, r1
_0800C1F2:
	ldr r3, _0800C238
	adds r0, r2, r3
	ldrh r0, [r0, #0]
	cmp r1, r0
	bge _0800C246
	adds r0, r4, #2
	adds r0, r2, r0
	ldrh r1, [r0, #0]
	ldr r4, [sp, #0x128]
	asrs r0, r4, #8
	subs r1, r1, r0
	cmp r1, #0
	bge _0800C20E
	negs r1, r1
_0800C20E:
	adds r0, r3, #2
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r1, r0
	bge _0800C246
	mov r6, r8
	str r6, [sp, #0x10c]
	ldr r0, [sp, #0x134]
	cmp r0, #0
	bne _0800C246
	cmp r6, #0xe
	bls _0800C23C
	movs r0, #0x3b
	bl sub_0805865C
	b _0800C242
	.2byte 0x0000
_0800C230: .4byte gUnk_03003478
_0800C234: .4byte gUnk_08478F9A
_0800C238: .4byte gUnk_08479054
_0800C23C:
	movs r0, #0x3a
	bl sub_0805865C
_0800C242:
	movs r1, #1
	str r1, [sp, #0x134]
_0800C246:
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #0x17
	bls _0800C1B8
	ldr r4, [sp, #0x10c]
	cmp r4, #0xff
	bne _0800C266
	ldr r6, [sp, #0x134]
	cmp r6, #0
	beq _0800C266
	movs r0, #0x3c
	bl sub_0805865C
	movs r0, #0
	str r0, [sp, #0x134]
_0800C266:
	ldr r0, _0800C2A8
	ldrh r1, [r0, #0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C2CC
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _0800C2CC
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C2B4
	ldr r4, [sp, #0x110]
	cmp r4, #0
	bne _0800C2CC
	ldr r6, [sp, #0x10c]
	cmp r6, #0xff
	beq _0800C2AC
	movs r0, #0xf
	bl sub_0805865C
	movs r0, #1
	str r0, [sp, #0x110]
	cmp r6, #0
	bne _0800C2A6
	b _0800C87E
_0800C2A6:
	b _0800C2CC
_0800C2A8: .4byte gUnk_03001324
_0800C2AC:
	movs r0, #0x61
	bl sub_0805865C
	b _0800C2CC
_0800C2B4:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800C2CC
	ldr r1, [sp, #0x110]
	cmp r1, #0
	beq _0800C2CC
	movs r0, #0x10
	bl sub_0805865C
	movs r2, #0
	str r2, [sp, #0x110]
_0800C2CC:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x114]
	muls r0, r3, r0
	ldr r4, _0800C320
	adds r3, r0, r4
	ldr r2, [r3, #0]
	ldrh r0, [r2, #4]
	movs r6, #0xf0
	lsls r6, r6, #2
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldr r0, [sp, #0x110]
	cmp r0, #0
	beq _0800C32C
	ldr r2, [r3, #0]
	ldrb r0, [r2, #7]
	movs r3, #0x10
	negs r3, r3
	adds r1, r3, #0
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	strb r0, [r2, #7]
	ldr r1, _0800C324
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, _0800C328
	ldr r6, [sp, #0x10c]
	lsls r2, r6, #2
	adds r0, r2, r1
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	str r0, [sp, #0x124]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2, #0]
	lsls r0, r0, #8
	str r0, [sp, #0x128]
	b _0800C33A
	.2byte 0x0000
_0800C320: .4byte gUnk_03003E24
_0800C324: .4byte gUnk_0300130C
_0800C328: .4byte gUnk_08478F9A
_0800C32C:
	ldr r0, [r3, #0]
	ldrb r1, [r0, #7]
	movs r3, #0x10
	negs r3, r3
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #7]
_0800C33A:
	movs r4, #0
	mov r8, r4
	ldr r6, [sp, #0x120]
	cmp r8, r6
	blo _0800C346
	b _0800C5A6
_0800C346:
	ldr r1, _0800C3C0
	ldr r2, [sp, #0x114]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r4, _0800C3C4
	adds r7, r0, r4
	ldr r6, [sp, #0x150]
	adds r2, r1, #0
	adds r2, #0xb4
	str r2, [sp, #0x154]
	adds r3, r1, #0
	adds r3, #0xb2
	str r3, [sp, #0x158]
	adds r4, r1, #0
	adds r4, #0xb0
	str r4, [sp, #0x15c]
	ldr r2, _0800C3C4
	mov r9, r2
	mov sl, r1
	ldr r3, _0800C3C8
	adds r0, r0, r3
	str r0, [sp, #0x144]
	ldr r5, [sp, #0x14c]
_0800C378:
	mov r4, sl
	mov r0, r8
	str r0, [r5, #0]
	movs r0, #0
	str r0, [r6, #0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	beq _0800C396
	b _0800C57C
_0800C396:
	ldrh r0, [r4, #0]
	ldr r2, [sp, #0x114]
	cmp r0, r2
	beq _0800C3A0
	b _0800C55A
_0800C3A0:
	adds r3, r2, #0
	movs r4, #0xa6
	lsls r4, r4, #1
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r1, _0800C3C8
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0
	beq _0800C3CC
	cmp r0, #1
	beq _0800C408
	b _0800C49A
_0800C3C0: .4byte gUnk_03003CE0
_0800C3C4: .4byte gUnk_03003E24
_0800C3C8: .4byte gUnk_03003E28
_0800C3CC:
	ldr r0, _0800C400
	ldrh r1, [r0, #0]
	movs r0, #0xf0
	ands r0, r1
	cmp r0, #0
	beq _0800C3EE
	ldr r3, _0800C404
	adds r0, r2, r3
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	movs r4, #0x10
	negs r4, r4
	adds r1, r4, #0
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0]
_0800C3EE:
	ldr r2, [sp, #0x12c]
	subs r2, #0x80
	str r2, [sp, #0x12c]
	cmp r2, #0
	bge _0800C49A
	movs r3, #0
	str r3, [sp, #0x12c]
	b _0800C49A
	.2byte 0x0000
_0800C400: .4byte gUnk_0300130C
_0800C404: .4byte gUnk_03003E24
_0800C408:
	movs r3, #0
	ldr r1, _0800C41C
	ldrh r2, [r1, #0]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _0800C420
	movs r3, #5
	b _0800C42A
	.2byte 0x0000
_0800C41C: .4byte gUnk_0300130C
_0800C420:
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0800C42A
	movs r3, #1
_0800C42A:
	ldrh r1, [r1, #0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0800C446
	adds r0, r3, #0
	movs r3, #4
	cmp r0, #5
	beq _0800C45E
	movs r3, #3
	cmp r0, #1
	bne _0800C45E
	movs r3, #2
	b _0800C45E
_0800C446:
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800C45E
	adds r0, r3, #0
	movs r3, #6
	cmp r0, #5
	beq _0800C45E
	movs r3, #7
	cmp r0, #1
	bne _0800C45E
	movs r3, #8
_0800C45E:
	adds r1, r3, #0
	cmp r1, #0
	beq _0800C48C
	ldr r3, [r7, #0]
	subs r1, #1
	lsls r1, r1, #4
	ldrb r2, [r3, #3]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #3]
	ldr r4, [sp, #0x12c]
	adds r4, #0x80
	str r4, [sp, #0x12c]
	ldr r0, _0800C488
	cmp r4, r0
	ble _0800C49A
	adds r0, #1
	str r0, [sp, #0x12c]
	b _0800C49A
	.2byte 0x0000
_0800C488: .4byte 0x000001DF
_0800C48C:
	ldr r0, [r7, #0]
	ldrb r1, [r0, #0]
	movs r3, #0x10
	negs r3, r3
	adds r2, r3, #0
	ands r1, r2
	strb r1, [r0, #0]
_0800C49A:
	ldr r2, _0800C624
	ldr r1, _0800C628
	ldr r4, [sp, #0x144]
	ldr r0, [r4, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r4, [sp, #0x12c]
	muls r0, r4, r0
	cmp r0, #0
	bge _0800C4BE
	adds r0, #0xff
_0800C4BE:
	asrs r0, r0, #8
	ldr r3, [sp, #0x128]
	adds r3, r3, r0
	str r3, [sp, #0x128]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	ldr r1, [sp, #0x12c]
	muls r0, r1, r0
	cmp r0, #0
	bge _0800C4DC
	adds r0, #0xff
_0800C4DC:
	asrs r0, r0, #8
	ldr r2, [sp, #0x124]
	adds r2, r2, r0
	str r2, [sp, #0x124]
	asrs r0, r2, #8
	cmp r0, #7
	bgt _0800C4F0
	movs r3, #0x80
	lsls r3, r3, #4
	str r3, [sp, #0x124]
_0800C4F0:
	ldr r4, [sp, #0x124]
	asrs r0, r4, #8
	cmp r0, #0xe8
	ble _0800C4FE
	movs r0, #0xe8
	lsls r0, r0, #8
	str r0, [sp, #0x124]
_0800C4FE:
	ldr r1, [sp, #0x128]
	asrs r0, r1, #8
	cmp r0, #7
	bgt _0800C50C
	movs r2, #0x80
	lsls r2, r2, #4
	str r2, [sp, #0x128]
_0800C50C:
	ldr r3, [sp, #0x128]
	asrs r0, r3, #8
	cmp r0, #0x98
	ble _0800C51A
	movs r4, #0x98
	lsls r4, r4, #8
	str r4, [sp, #0x128]
_0800C51A:
	mov r0, r9
	ldr r3, [r0, #0]
	ldr r2, [sp, #0x124]
	asrs r1, r2, #8
	lsls r1, r1, #4
	ldrh r2, [r3, #0]
	movs r0, #0xf
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #0]
	mov r4, r9
	ldr r3, [r4, #0]
	ldr r0, [sp, #0x128]
	lsls r2, r0, #0xc
	lsrs r2, r2, #0x14
	ldrh r0, [r3, #2]
	ldr r4, _0800C62C
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #2]
	mov r0, r9
	ldr r3, [r0, #0]
	movs r1, #0xff
	ldr r2, [sp, #0x10c]
	ands r1, r2
	lsls r1, r1, #0xb
	ldr r0, [r3, #4]
	ldr r2, _0800C630
	ands r0, r2
	orrs r0, r1
	str r0, [r3, #4]
_0800C55A:
	ldr r3, [sp, #0x15c]
	ldrh r1, [r3, #0]
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #8
	ldr r2, [sp, #0x158]
	ldr r3, [sp, #0x154]
	bl sub_08065370
	mov r0, r8
	str r0, [r5, #0]
	mov r1, r9
	ldr r0, [r1, #4]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	str r0, [r6, #0]
_0800C57C:
	adds r6, #8
	ldr r2, [sp, #0x154]
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r2, r2, r3
	str r2, [sp, #0x154]
	ldr r4, [sp, #0x158]
	adds r4, r4, r3
	str r4, [sp, #0x158]
	ldr r0, [sp, #0x15c]
	adds r0, r0, r3
	str r0, [sp, #0x15c]
	add r9, r3
	adds r5, #8
	add sl, r3
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #0x120]
	cmp r8, r2
	bhs _0800C5A6
	b _0800C378
_0800C5A6:
	movs r3, #0
	mov r8, r3
	ldr r4, [sp, #0x120]
	cmp r8, r4
	bhs _0800C61E
	ldr r6, [sp, #0x14c]
	mov r9, r6
	ldr r0, [sp, #0x150]
	mov ip, r0
	mov sl, ip
_0800C5BA:
	mov r7, r8
	adds r7, #1
	ldr r1, [sp, #0x120]
	cmp r7, r1
	bhs _0800C60E
	mov r5, ip
	mov r6, r9
	lsls r0, r7, #3
	mov r2, sl
	adds r3, r0, r2
	ldr r1, [sp, #0x14c]
	adds r4, r0, r1
_0800C5D2:
	ldr r1, [r5, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bhs _0800C602
	ldr r2, [r6, #0]
	ldr r0, [r4, #0]
	eors r2, r0
	str r2, [r6, #0]
	ldr r1, [r4, #0]
	eors r1, r2
	str r1, [r4, #0]
	ldr r0, [r6, #0]
	eors r0, r1
	str r0, [r6, #0]
	ldr r2, [r5, #0]
	ldr r0, [r3, #0]
	eors r2, r0
	str r2, [r5, #0]
	ldr r1, [r3, #0]
	eors r1, r2
	str r1, [r3, #0]
	ldr r0, [r5, #0]
	eors r0, r1
	str r0, [r5, #0]
_0800C602:
	adds r3, #8
	adds r4, #8
	adds r7, #1
	ldr r2, [sp, #0x120]
	cmp r7, r2
	blo _0800C5D2
_0800C60E:
	movs r3, #8
	add r9, r3
	add ip, r3
	movs r4, #1
	add r8, r4
	ldr r6, [sp, #0x120]
	cmp r8, r6
	blo _0800C5BA
_0800C61E:
	movs r0, #0
	mov r8, r0
	b _0800C6E2
_0800C624: .4byte gUnk_080B9704
_0800C628: .4byte gUnk_08479044
_0800C62C: .4byte 0xFFFFF000
_0800C630: .4byte 0xFFF807FF
_0800C634:
	mov r2, r8
	lsls r0, r2, #3
	ldr r3, [sp, #0x14c]
	adds r0, r3, r0
	ldr r1, [r0, #0]
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r6, _0800C694
	adds r4, r0, r6
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r2, [r0, #0]
	ldrh r0, [r2, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1c
	cmp r0, #0xf
	bne _0800C6DE
	ldr r3, [sp, #0x114]
	cmp r3, r1
	beq _0800C69C
	ldr r0, _0800C698
	ldr r0, [r0, #0]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0800C6DE
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1c
	cmp r0, #0
	beq _0800C6A4
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x14
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r3, [r0, #0]
	adds r0, #2
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	bl sub_08065264
	b _0800C6DE
	.2byte 0x0000
_0800C694: .4byte gUnk_03003CE0
_0800C698: .4byte gUnk_03002344
_0800C69C:
	ldrb r0, [r2, #7]
	lsls r0, r0, #0x1c
	cmp r0, #0
	bne _0800C6C2
_0800C6A4:
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x14
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r3, [r0, #0]
	adds r0, #2
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	bl sub_08065230
	b _0800C6DE
_0800C6C2:
	ldrh r1, [r2, #0]
	lsrs r1, r1, #4
	ldrh r2, [r2, #2]
	lsls r2, r2, #0x14
	lsrs r2, r2, #0x14
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r3, [r0, #0]
	adds r0, #2
	ldrh r0, [r0, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	bl sub_08065264
_0800C6DE:
	movs r0, #1
	add r8, r0
_0800C6E2:
	ldr r1, [sp, #0x120]
	cmp r8, r1
	blo _0800C634
	movs r2, #0
	mov r8, r2
	ldr r7, _0800C74C
_0800C6EE:
	mov r3, r8
	cmp r3, #0
	beq _0800C6FE
	mov r0, r8
	bl sub_08057C34
	cmp r0, #0
	beq _0800C766
_0800C6FE:
	mov r4, r8
	cmp r4, #0xe
	bne _0800C712
	ldr r0, _0800C750
	ldr r0, [r0, #0]
	lsrs r0, r0, #1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _0800C766
_0800C712:
	mov r1, r8
	lsls r0, r1, #0x10
	lsrs r5, r0, #0x10
	add r1, sp, #0x88
	mov r2, r8
	lsls r0, r2, #1
	adds r4, r1, r0
	add r3, sp, #0xb8
	adds r3, r3, r0
	movs r6, #1
	str r6, [sp, #0]
	ldr r0, [sp, #0x148]
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_08065370
	ldr r3, [sp, #0x10c]
	cmp r8, r3
	bne _0800C754
	ldrh r1, [r7, #0]
	ldrh r2, [r7, #2]
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	str r6, [sp, #4]
	ldr r0, [sp, #0x148]
	adds r3, r5, #0
	bl sub_080652E0
	b _0800C766
_0800C74C: .4byte gUnk_08478F9A
_0800C750: .4byte gUnk_03003478
_0800C754:
	ldrh r1, [r7, #0]
	ldrh r2, [r7, #2]
	ldrh r0, [r4, #0]
	str r0, [sp, #0]
	str r6, [sp, #4]
	ldr r0, [sp, #0x148]
	mov r3, r8
	bl sub_080659BC
_0800C766:
	adds r7, #4
	movs r4, #1
	add r8, r4
	mov r6, r8
	cmp r6, #0x17
	bls _0800C6EE
	ldr r0, _0800C7B0
	ldr r0, [r0, #0]
	lsrs r0, r0, #8
	ands r0, r4
	cmp r0, #0
	bne _0800C7C0
	ldr r0, [sp, #0x10c]
	cmp r0, #0xff
	beq _0800C7B8
	ldr r1, _0800C7B4
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #0xd
	orrs r0, r1
	bl sub_08007290
	adds r4, r0, #0
	adds r4, #2
	adds r0, r4, #0
	bl sub_0801A638
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0xf
	subs r1, r1, r0
	adds r0, r4, #0
	movs r2, #0x12
	bl sub_0801A3D0
	b _0800C7C0
_0800C7B0: .4byte gUnk_03003478
_0800C7B4: .4byte 0x000004A9
_0800C7B8:
	movs r0, #0x12
	movs r1, #2
	bl sub_0801A664
_0800C7C0:
	bl sub_080003F0
	bl sub_08002204
	cmp r0, #0
	beq _0800C83C
	movs r5, #0
	mov r8, r5
	ldr r2, [sp, #0x120]
	cmp r8, r2
	bhs _0800C80E
	ldr r0, _0800C838
	movs r3, #0xa6
	lsls r3, r3, #1
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r2, r0, r4
_0800C7E2:
	ldr r1, [r2, #0]
	ldrb r0, [r1, #7]
	lsls r0, r0, #0x1c
	cmp r0, #0
	beq _0800C802
	ldr r0, [r1, #4]
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x18
	ldr r6, [sp, #0x10c]
	cmp r6, r0
	bne _0800C802
	lsls r0, r5, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r5, r0, #0x10
_0800C802:
	adds r2, r2, r3
	movs r4, #1
	add r8, r4
	ldr r6, [sp, #0x120]
	cmp r8, r6
	blo _0800C7E2
_0800C80E:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x120]
	cmp r0, r1
	beq _0800C81A
	b _0800C0B2
_0800C81A:
	ldr r2, _0800C838
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r2, [r0, #0]
	ldrb r1, [r2, #7]
	movs r4, #0x10
	negs r4, r4
	adds r0, r4, #0
	ands r1, r0
	movs r0, #2
	orrs r1, r0
	strb r1, [r2, #7]
	b _0800C852
	.2byte 0x0000
_0800C838: .4byte gUnk_03003CE0
_0800C83C:
	ldr r6, _0800C894
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r6, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #2
	beq _0800C852
	b _0800C0B2
_0800C852:
	ldr r2, [sp, #0x10c]
	cmp r2, #0
	beq _0800C87E
	bl sub_08002204
	cmp r0, #0
	beq _0800C87E
	ldr r0, _0800C894
	movs r3, #0xa2
	lsls r3, r3, #1
	adds r0, r0, r3
	ldr r2, [r0, #0]
	ldrb r1, [r2, #7]
	movs r0, #0x10
	negs r0, r0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #7]
	movs r0, #5
	bl sub_08057624
_0800C87E:
	movs r0, #0
	movs r1, #0x14
	bl sub_0801A664
	ldr r4, [sp, #0x10c]
	cmp r4, #0
	beq _0800C8AA
	bl sub_08067C18
	b _0800C89C
	.2byte 0x0000
_0800C894: .4byte gUnk_03003CE0
_0800C898:
	bl sub_080003F0
_0800C89C:
	bl sub_08067C08
	cmp r0, #0
	beq _0800C898
	bl sub_08067BF8
	b _0800C8C6
_0800C8AA:
	ldr r2, _0800C978
	ldrb r0, [r2, #3]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800C8C6
	adds r5, r2, #0
	movs r4, #1
_0800C8BA:
	bl sub_080003F0
	ldrb r0, [r5, #3]
	ands r0, r4
	cmp r0, #0
	bne _0800C8BA
_0800C8C6:
	ldr r0, [sp, #0x10c]
	movs r1, #1
	bl sub_08022E60
	bl sub_080003F0
	movs r0, #2
	movs r1, #0xc
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #2
	movs r1, #0xc
	bl sub_0801A664
	bl sub_080003F0
	movs r0, #2
	bl sub_080586D0
	movs r0, #6
	bl sub_0801ABE8
	ldr r5, _0800C97C
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r6, [sp, #0x114]
	adds r4, r6, #0
	muls r4, r0, r4
	subs r0, #8
	adds r1, r5, r0
	adds r1, r4, r1
	ldr r3, [r1, #0]
	ldrb r2, [r3, #7]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	strb r0, [r3, #7]
	ldr r2, [r1, #0]
	ldrh r1, [r2, #4]
	ldr r0, _0800C980
	ands r0, r1
	strh r0, [r2, #4]
	ldr r0, [sp, #0x140]
	bl sub_08058404
	ldr r0, _0800C984
	ldr r0, [r0, #0]
	ldrh r1, [r0, #0]
	cmp r1, #0
	beq _0800C98C
	ldr r0, _0800C978
	ldr r1, [r0, #0]
	ldr r2, _0800C988
	ands r1, r2
	str r1, [r0, #0]
	bl sub_08056E64
	bl sub_0805A66C
	movs r1, #0
	mov r8, r1
_0800C944:
	bl sub_080003F0
	movs r2, #1
	add r8, r2
	mov r3, r8
	cmp r3, #0x13
	bls _0800C944
	ldr r1, _0800C97C
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r4, [sp, #0x114]
	muls r0, r4, r0
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0x2e]
	bl sub_08057170
	bl sub_080572A4
	bl sub_080169C8
	bl sub_0805D4F4
	bl sub_080003F0
	b _0800C994
_0800C978: .4byte gUnk_03003478
_0800C97C: .4byte gUnk_03003CE0
_0800C980: .4byte 0xFFFFFC3F
_0800C984: .4byte gUnk_03005CF4
_0800C988: .4byte 0xFFBFFFFF
_0800C98C:
	strh r1, [r0, #0x36]
	adds r1, r4, r5
	movs r0, #4
	strh r0, [r1, #0x1c]
_0800C994:
	bl sub_08056E78
	ldr r5, _0800C9E4
	ldr r0, [r5, #0]
	movs r1, #0x21
	negs r1, r1
	ands r0, r1
	str r0, [r5, #0]
	ldr r1, _0800C9E8
	movs r4, #0
	str r4, [sp, #0]
	ldr r0, [sp, #0x148]
	movs r2, #9
	movs r3, #4
	bl sub_08065158
	str r4, [sp, #0]
	str r4, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r0, [r5, #0]
	ldr r1, _0800C9EC
	ands r0, r1
	str r0, [r5, #0]
	ldr r0, _0800C9F0
	bl sub_08000420
	add sp, #0x160
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800C9E4: .4byte gUnk_03003478
_0800C9E8: .4byte 0x00050006
_0800C9EC: .4byte 0xFFFEFFFF
_0800C9F0: .4byte 0x00000BBA
	thumb_func_end sub_0800BEC0
