	thumb_func_start sub_08076BA0
sub_08076BA0: @ 0x08076BA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x16c
	adds r6, r0, #0
	bl sub_080020F4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x148]
	ldr r1, _08076C6C
	movs r3, #0x80
	lsls r3, r3, #0x18
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #0
	bl sub_08065158
	ldrh r0, [r6, #8]
	str r0, [sp, #0x128]
	ldr r1, [r6, #0]
	str r1, [sp, #0x150]
	ldr r2, [r6, #4]
	str r2, [sp, #0x14c]
	ldr r0, [r6, #0x14]
	ldrh r3, [r6, #0x14]
	str r3, [sp, #0x134]
	ldrh r4, [r6, #0x12]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	negs r0, r0
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x154]
	cmp r4, #0
	beq _08076BF4
	subs r4, #1
	movs r5, #0xff
	str r5, [sp, #0x128]
_08076BF4:
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x150]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08076C70
	adds r7, r1, r0
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x138]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [sp, #0x13c]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	str r0, [sp, #0x12c]
	ldr r5, [sp, #0x148]
	cmp r2, r5
	bne _08076C7E
	adds r0, r7, #0
	adds r0, #0xdc
	ldrh r0, [r0, #0]
	str r0, [sp, #0x130]
	bl sub_0805AD18
	adds r1, r0, #0
	add r0, sp, #0x44
	movs r2, #0xc4
	bl sub_080B96A4
	add r2, sp, #0x100
	ldrh r0, [r2, #0]
	cmp r0, #0
	bne _08076C5A
	ldr r0, _08076C74
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x68
	ldrh r0, [r0, #0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, #0x77
	ldrb r0, [r1, #0]
	strh r0, [r2, #0]
_08076C5A:
	ldr r0, [sp, #0x134]
	cmp r0, #0
	beq _08076C78
	movs r2, #0x3a
	ldrsh r1, [r7, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	str r0, [sp, #0x158]
	b _08076C7E
_08076C6C: .4byte 0x0005002E
_08076C70: .4byte gUnk_03003CE0
_08076C74: .4byte gUnk_030034E0
_08076C78:
	movs r5, #0x3a
	ldrsh r3, [r7, r5]
	str r3, [sp, #0x158]
_08076C7E:
	movs r0, #0xb2
	adds r0, r0, r7
	mov r8, r0
	ldr r1, [sp, #0x150]
	lsls r1, r1, #2
	str r1, [sp, #0x168]
	ldr r2, [sp, #0x128]
	cmp r2, #3
	bls _08076CDC
	movs r3, #0
	mov r9, r3
	ldr r0, _08076D50
	ldr r2, [r0, #0]
	ldr r3, _08076D54
_08076C9A:
	movs r0, #1
	mov r5, r9
	lsls r0, r5
	ands r0, r2
	cmp r0, #0
	beq _08076CC4
	lsls r0, r5, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r5
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x124]
	ldrh r0, [r1, #0xc]
	cmp r0, #0xb
	beq _08076CC4
	ldrh r0, [r1, #2]
	ldr r1, [sp, #0x128]
	cmp r0, r1
	beq _08076CD2
_08076CC4:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	cmp r0, #4
	bls _08076C9A
_08076CD2:
	mov r2, r9
	cmp r2, #4
	bls _08076CDC
	movs r3, #0xff
	str r3, [sp, #0x128]
_08076CDC:
	ldr r5, [sp, #0x128]
	cmp r5, #0xff
	bne _08076CE4
	b _08076DE4
_08076CE4:
	cmp r5, #3
	bls _08076D5C
	ldr r1, [sp, #0x124]
	ldr r0, [r1, #0x14]
	ldr r2, [sp, #0x138]
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r2, sp, #0x108
	strh r0, [r2, #0]
	ldr r1, [r1, #0x18]
	ldr r3, [sp, #0x13c]
	subs r1, r1, r3
	lsls r1, r1, #8
	lsrs r1, r1, #0x10
	movs r0, #0x85
	lsls r0, r0, #1
	add r0, sp
	strh r1, [r0, #0]
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	adds r1, r5, #0
	cmp r1, #0x80
	ble _08076D28
	ldr r5, _08076D58
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08076D28:
	adds r3, r5, #0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08076D3C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08076D3C:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	bgt _08076D4A
	b _08076E4E
_08076D4A:
	ldr r2, _08076D58
	adds r0, r1, r2
	b _08076E4A
_08076D50: .4byte gUnk_030056FC
_08076D54: .4byte gUnk_030056F4
_08076D58: .4byte 0xFFFFFF00
_08076D5C:
	ldr r1, _08076DDC
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r3, [sp, #0x128]
	muls r0, r3, r0
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r1, r1, r4
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r5, [sp, #0x138]
	asrs r1, r5, #8
	subs r0, r0, r1
	add r3, sp, #0x108
	strh r0, [r3, #0]
	ldrh r1, [r2, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	ldr r2, [sp, #0x13c]
	asrs r0, r2, #8
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x85
	lsls r0, r0, #1
	add r0, sp
	strh r1, [r0, #0]
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x18
	adds r1, r5, #0
	cmp r1, #0x80
	ble _08076DB6
	ldr r5, _08076DE0
	adds r0, r5, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08076DB6:
	adds r3, r5, #0
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08076DCA
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08076DCA:
	lsls r0, r3, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _08076E4E
	ldr r2, _08076DE0
	adds r0, r1, r2
	b _08076E4A
_08076DDC: .4byte gUnk_03003CE0
_08076DE0: .4byte 0xFFFFFF00
_08076DE4:
	ldr r1, _08076E04
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r3, [r0, #0]
	cmp r4, #1
	beq _08076E08
	cmp r4, #2
	beq _08076E24
	b _08076E2C
	.2byte 0x0000
_08076E04: .4byte gUnk_0847AD0A
_08076E08:
	lsls r0, r3, #0x10
	movs r4, #0x80
	lsls r4, r4, #0xc
	adds r0, r0, r4
	b _08076E2A
_08076E12:
	ldr r2, _08076E20
	ldr r5, [sp, #0x168]
	adds r2, r5, r2
	movs r1, #1
	ldr r0, [sp, #0x14c]
	lsls r1, r0
	b _0807741C
_08076E20: .4byte gUnk_030063E0
_08076E24:
	lsls r0, r3, #0x10
	ldr r1, _08076EFC
	adds r0, r0, r1
_08076E2A:
	lsrs r3, r0, #0x10
_08076E2C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _08076E40
	ldr r2, _08076F00
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08076E40:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08076E4E
	adds r0, r0, r1
_08076E4A:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08076E4E:
	ldr r4, [sp, #0x128]
	cmp r4, #0xff
	bne _08076E58
	ldrh r6, [r6, #8]
	str r6, [sp, #0x128]
_08076E58:
	ldr r2, _08076F04
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #1
	movs r4, #5
	muls r0, r4, r0
	ldr r5, [sp, #0x138]
	adds r5, r5, r0
	str r5, [sp, #0x138]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #1
	muls r0, r4, r0
	ldr r4, [sp, #0x13c]
	adds r4, r4, r0
	str r4, [sp, #0x13c]
	mov r5, r8
	ldrh r0, [r5, #0]
	str r3, [sp, #0x164]
	cmp r0, #1
	bhi _08076EA4
_08076E92:
	ldrh r0, [r7, #0x20]
	cmp r0, #0xa
	beq _08076E12
	bl sub_080003F0
	mov r1, r8
	ldrh r0, [r1, #0]
	cmp r0, #1
	bls _08076E92
_08076EA4:
	movs r2, #0xa
	str r2, [sp, #0x140]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xd
	beq _08076EC4
	bl sub_0800CCCC
	cmp r0, #0
	bne _08076EC4
	bl sub_0800CD34
	cmp r0, #0
	bne _08076EC4
	movs r0, #0x1d
	bl sub_0805865C
_08076EC4:
	ldr r3, [sp, #0x150]
	ldr r4, [sp, #0x148]
	cmp r3, r4
	bne _08076EDA
	movs r0, #0xa6
	lsls r0, r0, #1
	muls r0, r3, r0
	ldr r1, _08076F08
	adds r0, r0, r1
	bl sub_0801FD64
_08076EDA:
	movs r5, #0xa2
	lsls r5, r5, #1
	adds r0, r7, r5
	ldr r0, [r0, #0]
	ldrb r0, [r0, #3]
	lsrs r0, r0, #4
	str r0, [sp, #0x144]
	movs r0, #0x8e
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x15c]
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, sp
	str r1, [sp, #0x160]
	b _080773E8
	.2byte 0x0000
_08076EFC: .4byte 0xFFF80000
_08076F00: .4byte 0xFFFFFF00
_08076F04: .4byte gUnk_080B9704
_08076F08: .4byte gUnk_03003CE0
_08076F0C:
	movs r5, #0
	add r1, sp, #0x10c
	ldr r2, [sp, #0x138]
	str r2, [r1, #0]
	ldr r3, [sp, #0x13c]
	str r3, [r1, #4]
	ldr r3, _08076F4C
	ldr r2, _08076F50
	ldr r0, _08076F54
	ldr r4, [sp, #0x15c]
	str r0, [r4, #0]
	ldr r0, [sp, #0x128]
	cmp r0, #3
	bls _08076F2A
	b _08077108
_08076F2A:
	ldr r1, [sp, #0x160]
	ldr r0, [r1, #0]
	ands r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r0, r2
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	ldr r2, [sp, #0x160]
	str r0, [r2, #0]
	bl sub_08002164
	mov r8, r0
	mov r9, r5
	b _080770F6
	.2byte 0x0000
_08076F4C: .4byte 0xFFFF0000
_08076F50: .4byte 0x0000FFFF
_08076F54: .4byte 0x00080008
_08076F58:
	ldr r3, [sp, #0x150]
	cmp r3, r9
	bne _08076F60
	b _080770EC
_08076F60:
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08077058
	adds r6, r1, r0
	adds r0, r6, #0
	adds r0, #0x68
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _08076F7E
	b _080770EC
_08076F7E:
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r2, r6, r4
	ldr r1, [r2, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	bne _08076F92
	b _080770EC
_08076F92:
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	add r1, sp, #0x114
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	str r0, [r1, #4]
	add r0, sp, #0x10c
	add r2, sp, #0x11c
	add r3, sp, #0x120
	bl sub_08021FE0
	cmp r0, #0
	bne _08076FB6
	b _080770EC
_08076FB6:
	ldrh r0, [r6, #0x20]
	movs r4, #0
	cmp r0, #0xb
	beq _08076FDC
	adds r0, r6, #0
	adds r0, #0xf8
	ldr r1, [sp, #0x168]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x130]
	cmp r0, r2
	beq _08076FDC
	ldr r0, [r6, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08076FDC
	movs r4, #1
_08076FDC:
	cmp r4, #0
	bne _08076FE2
	b _080770EC
_08076FE2:
	movs r3, #0x3a
	ldrsh r1, [r6, r3]
	ldr r0, [sp, #0x158]
	bl sub_080223A4
	cmp r0, #0
	beq _08077060
	ldr r4, [sp, #0x154]
	cmp r4, #0
	beq _08077010
	mov r1, sp
	adds r1, #0xed
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
	ldrh r0, [r6, #0]
	bl sub_08022100
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r7, #0x30]
_08077010:
	bl sub_080020F4
	ldr r5, [sp, #0x150]
	cmp r5, r0
	bne _08077048
	ldrh r5, [r7, #0x20]
	add r0, sp, #0x12c
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r1, sp, #0x134
	ldrh r1, [r1, #0]
	strh r1, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #0
	bl sub_0801F79C
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r2, [sp, #0x130]
	str r2, [r0, #0]
_08077048:
	ldr r3, [sp, #0x154]
	cmp r3, #0
	beq _080770EA
	ldr r0, [r7, #0x30]
	ldr r1, _0807705C
	ands r0, r1
	str r0, [r7, #0x30]
	b _080770EA
_08077058: .4byte gUnk_03003CE0
_0807705C: .4byte 0xFFDFFFFF
_08077060:
	bl sub_0800086C
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _080770A6
	bl sub_080020F4
	ldr r4, [sp, #0x150]
	cmp r4, r0
	bne _080770EA
	ldrh r5, [r7, #0x20]
	add r0, sp, #0x12c
	ldrh r0, [r0, #0]
	strh r0, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r1, sp, #0x134
	ldrh r1, [r1, #0]
	strh r1, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #1
	bl sub_0801F79C
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r2, [sp, #0x130]
	str r2, [r0, #0]
	b _080770EA
_080770A6:
	bl sub_080020F4
	ldr r3, [sp, #0x150]
	cmp r3, r0
	bne _080770EA
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r6, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	bl sub_080223F4
	ldrh r1, [r7, #0]
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r5, [sp, #0x130]
	str r5, [r0, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080770EA
	bl sub_0800CD34
	cmp r0, #0
	bne _080770EA
	movs r0, #0x55
	bl sub_0805865C
_080770EA:
	movs r5, #1
_080770EC:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080770F6:
	cmp r9, r8
	blo _080770FC
	b _080772DC
_080770FC:
	bl sub_0800CDF8
	cmp r0, #0
	bne _08077106
	b _08076F58
_08077106:
	b _080772DC
_08077108:
	movs r0, #0
	mov r9, r0
	movs r1, #0x90
	lsls r1, r1, #1
	add r1, sp
	mov sl, r1
	b _080772C8
_08077116:
	ldr r0, _08077238
	movs r1, #1
	mov r2, r9
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08077128
	b _080772BE
_08077128:
	ldr r1, _0807723C
	lsls r0, r2, #1
	add r0, r9
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r6, r1, r0
	movs r3, #0xee
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r1, r7, #0
	adds r1, #0x68
	ldrb r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bne _0807714C
	b _080772BE
_0807714C:
	cmp r0, #0
	bne _08077152
	b _080772BE
_08077152:
	ldr r4, _08077240
	adds r0, r6, r4
	ldrb r0, [r0, #0]
	mov r1, sl
	strh r0, [r1, #0]
	ldr r2, _08077244
	adds r0, r6, r2
	ldrb r0, [r0, #0]
	strh r0, [r1, #2]
	adds r1, r6, #0
	adds r1, #0x14
	add r0, sp, #0x10c
	add r2, sp, #0x11c
	mov r3, sl
	bl sub_08021FE0
	cmp r0, #0
	bne _08077178
	b _080772BE
_08077178:
	ldrh r0, [r6, #0xc]
	movs r4, #0
	cmp r0, #0xb
	beq _080771AA
	ldr r0, [r6, #0x54]
	ldr r3, [sp, #0x130]
	cmp r0, r3
	beq _080771AA
	adds r0, r6, #0
	adds r0, #0x5c
	movs r1, #0
	ldrsh r3, [r0, r1]
	subs r0, #0x12
	ldrh r2, [r0, #0]
	subs r0, r3, r2
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080771AA
	adds r1, r3, #0
	eors r1, r2
	negs r0, r1
	orrs r0, r1
	lsrs r4, r0, #0x1f
_080771AA:
	cmp r4, #0
	bne _080771B0
	b _080772BE
_080771B0:
	ldr r2, _08077248
	adds r0, r6, r2
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [sp, #0x158]
	bl sub_080223A4
	cmp r0, #0
	beq _08077250
	ldr r4, [sp, #0x154]
	cmp r4, #0
	beq _080771E6
	mov r1, sp
	adds r1, #0xed
	ldrb r0, [r1, #0]
	adds r0, #0x18
	strb r0, [r1, #0]
	ldr r5, [sp, #0x124]
	ldrh r0, [r5, #0]
	adds r0, #4
	bl sub_08022100
	ldr r0, [r7, #0x30]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r7, #0x30]
_080771E6:
	ldr r0, [sp, #0x150]
	ldr r1, [sp, #0x148]
	cmp r0, r1
	bne _08077228
	ldrh r5, [r7, #0x20]
	add r2, sp, #0x12c
	ldrh r2, [r2, #0]
	strh r2, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r3, sp, #0x134
	ldrh r3, [r3, #0]
	strh r3, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #0
	bl sub_0801F374
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	adds r0, r6, #0
	adds r0, #0x58
	add r4, sp, #0x150
	ldrh r4, [r4, #0]
	strh r4, [r0, #0]
	adds r2, r6, #0
	adds r2, #0x5a
	movs r0, #1
	ldr r5, [sp, #0x150]
	lsls r0, r5
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
_08077228:
	ldr r0, [sp, #0x154]
	cmp r0, #0
	beq _080772BC
	ldr r0, [r7, #0x30]
	ldr r1, _0807724C
	ands r0, r1
	str r0, [r7, #0x30]
	b _080772BC
_08077238: .4byte gUnk_030056FC
_0807723C: .4byte gUnk_030056F4
_08077240: .4byte 0x0000022E
_08077244: .4byte 0x0000022F
_08077248: .4byte 0x00000206
_0807724C: .4byte 0xFFDFFFFF
_08077250:
	bl sub_0800086C
	movs r1, #1
	mov r8, r1
	ands r1, r0
	cmp r1, #0
	bne _0807729A
	ldrh r5, [r7, #0x20]
	add r2, sp, #0x12c
	ldrh r2, [r2, #0]
	strh r2, [r7, #0x20]
	ldrh r4, [r7, #0x26]
	add r3, sp, #0x134
	ldrh r3, [r3, #0]
	strh r3, [r7, #0x26]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x44
	movs r3, #1
	bl sub_0801F374
	strh r5, [r7, #0x20]
	strh r4, [r7, #0x26]
	adds r0, r6, #0
	adds r0, #0x58
	add r4, sp, #0x148
	ldrh r4, [r4, #0]
	strh r4, [r0, #0]
	adds r2, r6, #0
	adds r2, #0x5a
	mov r0, r8
	ldr r5, [sp, #0x148]
	lsls r0, r5
	ldrh r1, [r2, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	b _080772BC
_0807729A:
	ldr r0, [r6, #0x14]
	ldr r1, [r6, #0x18]
	bl sub_080223F4
	ldr r0, [sp, #0x130]
	str r0, [r6, #0x54]
	bl sub_0800CCCC
	cmp r0, #0
	bne _080772BC
	bl sub_0800CD34
	cmp r0, #0
	bne _080772BC
	movs r0, #0x55
	bl sub_0805865C
_080772BC:
	movs r5, #1
_080772BE:
	mov r0, r9
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
_080772C8:
	mov r1, r9
	cmp r1, #4
	bhi _080772DC
	cmp r5, #0
	bne _080772DC
	bl sub_0800CDF8
	cmp r0, #0
	bne _080772DC
	b _08077116
_080772DC:
	ldr r2, [sp, #0x150]
	ldr r3, [sp, #0x148]
	cmp r2, r3
	bne _080772F2
	add r0, sp, #0x10c
	add r1, sp, #0x11c
	bl sub_0801F99C
	cmp r0, #0
	beq _080772F2
	movs r5, #1
_080772F2:
	cmp r5, #0
	beq _080772F8
	b _08077410
_080772F8:
	ldr r0, [sp, #0x138]
	ldr r1, [sp, #0x13c]
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _08077316
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08077410
_08077316:
	ldr r2, _08077434
	ldr r4, [sp, #0x164]
	asrs r1, r4, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	movs r3, #5
	muls r0, r3, r0
	ldr r4, [sp, #0x138]
	adds r4, r4, r0
	str r4, [sp, #0x138]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #0
	ldrsh r0, [r1, r5]
	muls r0, r3, r0
	ldr r1, [sp, #0x13c]
	adds r1, r1, r0
	str r1, [sp, #0x13c]
	bl sub_0800CC98
	cmp r0, #0
	bne _080773E4
	bl sub_0800CD8C
	cmp r0, #0
	bne _080773E4
	bl sub_0800CCCC
	adds r3, r0, #0
	cmp r3, #0
	bne _080773E4
	asrs r5, r4, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x13c]
	asrs r4, r2, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	str r3, [sp, #4]
	add r2, sp, #0x108
	movs r3, #0x85
	lsls r3, r3, #1
	add r3, sp
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r5, [sp, #0x144]
	ldr r0, _08077438
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	add r4, sp, #0x108
	movs r6, #0x85
	lsls r6, r6, #1
	add r6, sp
	cmp r0, #4
	bne _080773AC
	bl sub_0800CDC0
	cmp r0, #0
	beq _080773AC
	movs r3, #0
	mov r8, r3
_080773AC:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r4, _0807743C
	lsls r2, r5, #0x10
	asrs r3, r2, #0xe
	adds r1, r3, r4
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r6, r5]
	adds r4, #2
	adds r3, r3, r4
	movs r4, #0
	ldrsh r3, [r3, r4]
	adds r1, r1, r3
	lsrs r2, r2, #0x10
	mov r5, r8
	str r5, [sp, #0]
	add r3, sp, #0x2c
	str r3, [sp, #4]
	ldr r3, [sp, #0x18]
	str r3, [sp, #8]
	ldr r3, [sp, #0x10]
	str r3, [sp, #0xc]
	movs r3, #0
	bl sub_08007870
_080773E4:
	bl sub_080003F0
_080773E8:
	ldr r0, [sp, #0x140]
	adds r1, r0, #0
	subs r1, #1
	str r1, [sp, #0x140]
	cmp r0, #0
	beq _08077410
	bl sub_08056E90
	cmp r0, #0
	bne _08077410
	ldrh r0, [r7, #0x20]
	cmp r0, #0xb
	beq _08077410
	cmp r0, #0xc
	beq _08077410
	bl sub_0800D11C
	cmp r0, #0
	bne _08077410
	b _08076F0C
_08077410:
	ldr r2, _08077440
	ldr r3, [sp, #0x168]
	adds r2, r3, r2
	movs r1, #1
	ldr r4, [sp, #0x14c]
	lsls r1, r4
_0807741C:
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	add sp, #0x16c
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08077434: .4byte gUnk_080B9704
_08077438: .4byte gUnk_03003170
_0807743C: .4byte gUnk_084EBEBC
_08077440: .4byte gUnk_030063E0
	thumb_func_end sub_08076BA0
