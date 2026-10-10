	thumb_func_start sub_0809AEE8
sub_0809AEE8: @ 0x0809AEE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	adds r7, r0, #0
	ldr r0, _0809AF78
	str r7, [r0, #0]
	movs r0, #0x81
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0xa8]
	ldr r1, _0809AF7C
	adds r0, r7, #0
	movs r2, #0
	bl sub_0801623C
	ldr r0, [sp, #0xa8]
	bl sub_08019F60
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r1, _0809AF80
	adds r2, r7, r1
	ldrb r3, [r2, #0]
	str r3, [sp, #0xf4]
	ldr r4, _0809AF84
	adds r1, r7, r4
	ldrb r6, [r1, #0]
	str r6, [sp, #0xf8]
	movs r0, #0
	strb r0, [r2, #0]
	strb r0, [r1, #0]
	ldr r4, _0809AF88
	movs r1, #0xb6
	lsls r1, r1, #2
	adds r0, r7, r1
	ldrh r0, [r0, #0]
	ldr r2, _0809AF8C
	adds r1, r7, r2
	ldrh r1, [r1, #0]
	bl sub_08016E04
	strh r0, [r4, #0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, _0809AF90
	cmp r1, r0
	bne _0809AFA4
	ldr r4, _0809AF94
	adds r5, r1, #0
_0809AF52:
	movs r0, #0xb
	strh r0, [r7, #0xc]
	bl sub_0800CB78
	cmp r0, #0
	bne _0809AF66
	bl sub_08056E90
	cmp r0, #0
	beq _0809AF98
_0809AF66:
	movs r1, #1
	ldrh r7, [r7, #0]
	lsls r1, r7
	ldr r0, [r4, #0]
	bics r0, r1
	str r0, [r4, #0]
	bl _0809C1A4
	.2byte 0x0000
_0809AF78: .4byte gUnk_030002EC
_0809AF7C: .4byte gUnk_084A1910
_0809AF80: .4byte 0x0000022E
_0809AF84: .4byte 0x0000022F
_0809AF88: .4byte gUnk_030002F0
_0809AF8C: .4byte 0x000002DA
_0809AF90: .4byte 0x0000FFFF
_0809AF94: .4byte gUnk_030056FC
_0809AF98:
	bl sub_080003F0
	ldr r0, _0809B108
	ldrh r0, [r0, #0]
	cmp r0, r5
	beq _0809AF52
_0809AFA4:
	add r3, sp, #0x34
	mov r9, r3
	ldr r1, _0809B10C
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	mov r0, r9
	movs r2, #0xe
	adds r3, r5, #0
	bl sub_08065158
	add r6, sp, #0x68
	mov r8, r6
	ldr r1, _0809B110
	ldr r0, _0809B108
	ldrh r2, [r0, #0]
	str r4, [sp, #0]
	mov r0, r8
	adds r3, r5, #0
	bl sub_08065158
	ldr r1, [sp, #0xa8]
	movs r2, #6
	ldrsh r0, [r1, r2]
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r3, #0xeb
	lsls r3, r3, #1
	adds r0, r7, r3
	movs r3, #0
	movs r2, #0
	strh r1, [r0, #0]
	adds r0, r7, #0
	adds r0, #0x5c
	strh r1, [r0, #0]
	ldr r4, [sp, #0xa8]
	movs r6, #4
	ldrsh r0, [r4, r6]
	lsls r1, r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r4, #0xea
	lsls r4, r4, #1
	adds r1, r7, r4
	strh r0, [r1, #0]
	adds r1, r7, #0
	adds r1, #0x5e
	strh r0, [r1, #0]
	adds r6, r7, #0
	adds r6, #0x6c
	strh r2, [r6, #0]
	adds r5, r7, #0
	adds r5, #0x6a
	strh r2, [r5, #0]
	adds r4, r7, #0
	adds r4, #0x68
	strh r2, [r4, #0]
	strh r2, [r7, #0xc]
	movs r0, #0
	str r0, [sp, #0xb8]
	ldr r1, _0809B114
	str r1, [sp, #0xbc]
	str r2, [sp, #0xc8]
	str r0, [sp, #0xc4]
	ldr r1, _0809B118
	adds r0, r7, r1
	movs r1, #2
	strb r1, [r0, #0]
	movs r2, #0xff
	lsls r2, r2, #1
	adds r0, r7, r2
	strb r1, [r0, #0]
	ldr r0, _0809B11C
	strb r3, [r0, #0]
	bl sub_08097FE4
	bl sub_08097A4C
	bl sub_0809D5B8
	bl sub_0809D6A8
	bl sub_0809D7E4
	movs r0, #0
	bl sub_0809D77C
	movs r0, #1
	bl sub_0809D77C
	movs r3, #0
	str r3, [sp, #0xd8]
	movs r0, #0
	str r0, [sp, #0xcc]
	movs r1, #0
	str r1, [sp, #0xe0]
	movs r2, #1
	str r2, [sp, #0xdc]
	str r2, [r7, #0x50]
	movs r2, #0
	str r6, [sp, #0x118]
	str r5, [sp, #0x114]
	str r4, [sp, #0x110]
	ldr r3, [sp, #0xa8]
	adds r3, #0xd6
	str r3, [sp, #0x11c]
	movs r5, #0xa6
	lsls r5, r5, #1
	ldr r4, _0809B120
	movs r3, #0
_0809B084:
	movs r6, #0
	str r6, [sp, #0xd4]
	lsls r2, r2, #0x10
	str r2, [sp, #0x108]
	asrs r0, r2, #0x10
	adds r2, r0, #0
	muls r2, r5, r2
_0809B092:
	ldr r0, [sp, #0xd4]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r0, r0, r2
	adds r0, r0, r4
	str r3, [r0, #0]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	str r6, [sp, #0xd4]
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0809B092
	ldr r1, [sp, #0x108]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r1, r2
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _0809B084
	bl sub_0800CE30
	cmp r0, #1
	bne _0809B0D4
	movs r3, #0x96
	lsls r3, r3, #1
	str r3, [sp, #0xcc]
	movs r4, #0x40
	str r4, [sp, #0xe4]
	movs r6, #0
	str r6, [sp, #0xe8]
_0809B0D4:
	ldrb r0, [r7, #0]
	movs r1, #0xfe
	lsls r1, r1, #1
	adds r3, r7, r1
	movs r1, #0xf
	ands r1, r0
	ldrb r2, [r3, #0]
	movs r0, #0x10
	negs r0, r0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #0]
	ldrh r1, [r7, #2]
	ldr r2, _0809B124
	adds r0, r7, r2
	strh r1, [r0, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r7, r3
	movs r0, #0xff
	strb r0, [r1, #0]
	movs r4, #0
	str r4, [sp, #0xfc]
	bl sub_08067C18
	b _0809B12C
_0809B108: .4byte gUnk_030002F0
_0809B10C: .4byte 0x00050006
_0809B110: .4byte 0x00050005
_0809B114: .4byte 0x0000FFFF
_0809B118: .4byte 0x000001FD
_0809B11C: .4byte gUnk_030002E8
_0809B120: .4byte gUnk_03003DC4
_0809B124: .4byte 0x00000202
_0809B128:
	bl sub_080003F0
_0809B12C:
	bl sub_08067C08
	cmp r0, #0
	beq _0809B128
	bl sub_08067BF8
	bl _0809BB26
_0809B13C:
	ldr r0, _0809B248
	movs r4, #0
	ldrsb r4, [r0, r4]
	cmp r4, #0
	beq _0809B148
	b _0809B254
_0809B148:
	adds r0, r7, #0
	bl sub_0801C8F0
	adds r0, r7, #0
	bl sub_0801A0B0
	ldr r6, _0809B24C
	adds r0, r7, r6
	strb r4, [r0, #0]
	ldr r1, _0809B250
	adds r0, r7, r1
	strb r4, [r0, #0]
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809B1F4
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809B1F4
	bl sub_0800CC98
	cmp r0, #0
	bne _0809B1F4
	bl sub_0800CD34
	adds r5, r0, #0
	cmp r5, #0
	bne _0809B1F4
	movs r0, #0xe
	add r2, sp, #0x50
	strb r0, [r2, #0]
	ldr r3, [sp, #0x11c]
	ldrh r0, [r3, #0]
	lsls r0, r0, #5
	ldr r1, [sp, #0x40]
	adds r1, r1, r0
	movs r0, #0x1e
	movs r2, #1
	bl sub_08000AF0
	add r6, sp, #0x9c
	movs r4, #0x9e
	add r4, sp
	mov r8, r4
	str r5, [sp, #0]
	str r5, [sp, #4]
	movs r0, #0xef
	movs r1, #0x98
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	movs r4, #1
	str r4, [sp, #0]
	add r0, sp, #0x34
	movs r1, #0
	ldr r2, [sp, #0x114]
	ldr r3, [sp, #0x118]
	bl sub_08065370
	ldr r1, [sp, #0xe0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xe0]
	ands r1, r4
	cmp r1, #0
	beq _0809B1F4
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	ldr r4, [sp, #0x114]
	ldrh r3, [r4, #0]
	str r5, [sp, #0]
	add r2, sp, #0x50
	str r2, [sp, #4]
	ldr r2, [sp, #0x3c]
	str r2, [sp, #8]
	ldr r2, [sp, #0x34]
	str r2, [sp, #0xc]
	movs r2, #0
	bl sub_08007870
_0809B1F4:
	bl sub_08056F78
	ldr r6, [sp, #0xe8]
	lsls r6, r6, #0x18
	str r6, [sp, #0x10c]
	cmp r0, #0
	bne _0809B206
	bl _0809BA3A
_0809B206:
	bl sub_0800CE30
	cmp r0, #1
	beq _0809B212
	bl _0809BA3A
_0809B212:
	ldr r0, [sp, #0xcc]
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xcc]
	movs r1, #0xf0
	lsls r1, r1, #1
	cmp r0, r1
	bhi _0809B228
	bl _0809BA3A
_0809B228:
	movs r0, #0
	str r0, [sp, #0xcc]
	bl sub_0809D620
	movs r0, #1
	bl sub_0809D620
	movs r0, #2
	bl sub_0809D620
	movs r0, #3
	bl sub_0809D620
	bl _0809BA3A
	.2byte 0x0000
_0809B248: .4byte gUnk_030002E8
_0809B24C: .4byte 0x0000022E
_0809B250: .4byte 0x0000022F
_0809B254:
	ldrh r0, [r7, #0xc]
	cmp r0, #0xa
	bne _0809B268
	ldr r1, [sp, #0xc4]
	cmp r1, #0
	bne _0809B268
	movs r2, #8
	str r2, [sp, #0xc4]
	movs r3, #0x40
	str r3, [sp, #0xec]
_0809B268:
	ldr r4, _0809B300
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	ldr r6, [sp, #0xe8]
	lsls r6, r6, #0x18
	str r6, [sp, #0x10c]
	cmp r0, #6
	bne _0809B2BE
	movs r2, #0
	add r0, sp, #0xa0
	mov r9, r0
_0809B27E:
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	lsls r0, r5, #2
	add r0, r9
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0xc]
	cmp r0, #0xa
	bne _0809B2B2
	movs r2, #0x40
	str r2, [sp, #0xec]
	movs r0, #2
	strh r0, [r1, #0xc]
	adds r0, r7, #0
	movs r1, #0
	bl sub_0809D710
	mov r3, r9
	ldr r0, [r3, #0]
	movs r1, #1
	bl sub_0809D710
	mov r4, r9
	ldr r0, [r4, #4]
	movs r1, #2
	bl sub_0809D710
_0809B2B2:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _0809B27E
_0809B2BE:
	bl sub_08058DB0
	cmp r0, #0
	beq _0809B2C8
	b _0809B84E
_0809B2C8:
	adds r0, r7, #0
	bl sub_0801C8F0
	adds r0, r7, #0
	bl sub_0801A0A4
	ldr r6, _0809B304
	adds r0, r7, r6
	add r1, sp, #0xf4
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	ldr r2, _0809B308
	adds r0, r7, r2
	add r3, sp, #0xf8
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	ldr r4, _0809B300
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r0, #7
	bls _0809B2F6
	b _0809B84E
_0809B2F6:
	lsls r0, r0, #2
	ldr r1, _0809B30C
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0809B300: .4byte 0x000001FD
_0809B304: .4byte 0x0000022E
_0809B308: .4byte 0x0000022F
_0809B30C: .4byte _0809B310
_0809B310:
	.4byte _0809B330
_0809B314: .4byte _0809B358
_0809B318: .4byte _0809B84E
_0809B31C: .4byte _0809B388
_0809B320: .4byte _0809B578
_0809B324: .4byte _0809B5A4
_0809B328: .4byte _0809B7C4
_0809B32C: .4byte _0809B824
_0809B330:
	movs r0, #0
	strh r0, [r7, #0xc]
	bl sub_08067C08
	cmp r0, #0
	bne _0809B33E
	b _0809B84E
_0809B33E:
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r7, r6
	ldrb r1, [r0, #0]
	ldr r2, _0809B354
	adds r0, r7, r2
	strb r1, [r0, #0]
	bl sub_08067BF8
	b _0809B84E
	.2byte 0x0000
_0809B354: .4byte 0x000001FD
_0809B358:
	movs r3, #0
	str r3, [sp, #0xb8]
	bl sub_08056F78
	cmp r0, #0
	bne _0809B366
	b _0809B84E
_0809B366:
	movs r2, #1
	movs r0, #1
	strh r0, [r7, #0xc]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #4
	strb r0, [r1, #0]
	ldr r6, _0809B384
	adds r0, r7, r6
	strb r2, [r0, #0]
	bl sub_08067C18
	b _0809B84E
	.2byte 0x0000
_0809B384: .4byte 0x000001FD
_0809B388:
	movs r0, #1
	str r0, [sp, #0xb8]
	movs r3, #0
	strh r0, [r7, #0xc]
	ldr r2, _0809B528
	ldr r6, [sp, #0xdc]
	lsls r4, r6, #0x18
	asrs r5, r4, #0x18
	lsls r1, r5, #3
	adds r0, r1, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [sp, #0xac]
	adds r2, #4
	adds r1, r1, r2
	ldr r0, [r1, #0]
	asrs r0, r0, #8
	str r0, [sp, #0xb0]
	movs r0, #8
	str r0, [sp, #0]
	str r3, [sp, #4]
	adds r0, r7, #0
	ldr r1, [sp, #0xac]
	ldr r2, [sp, #0xb0]
	movs r3, #0xc0
	bl sub_08097AC0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0809B3C6
	b _0809B84E
_0809B3C6:
	movs r0, #0
	str r0, [sp, #0xd8]
	bl sub_0800CE30
	cmp r0, #1
	beq _0809B3D4
	b _0809B550
_0809B3D4:
	cmp r5, #0
	beq _0809B3DA
	b _0809B550
_0809B3DA:
	movs r1, #0
	str r1, [sp, #0xec]
	movs r2, #0
	str r2, [sp, #0xf0]
	add r3, sp, #0xa0
	mov r9, r3
	mov r4, sp
	adds r4, #0x14
	str r4, [sp, #0x104]
	mov r8, r2
	ldr r6, _0809B52C
	mov sl, r6
_0809B3F2:
	lsls r5, r2, #0x10
	asrs r5, r5, #0x10
	lsls r4, r5, #2
	add r4, r9
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	subs r1, r1, r5
	lsls r1, r1, #5
	movs r0, #0x8a
	lsls r0, r0, #4
	adds r1, r1, r0
	mov r2, sl
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r4, #0]
	ldr r3, _0809B530
	adds r6, r5, #3
	movs r2, #1
	lsls r2, r6
	ldr r1, [r3, #0]
	orrs r1, r2
	str r1, [r3, #0]
	bl sub_0801A0A4
	ldr r1, [r4, #0]
	mov r3, r8
	str r3, [r1, #0x54]
	str r3, [r1, #0x4c]
	adds r0, r1, #0
	adds r0, #0x4a
	strh r3, [r0, #0]
	adds r0, #0x22
	mov r2, r8
	strh r2, [r0, #0]
	strh r2, [r1, #0x10]
	subs r0, #4
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	strh r2, [r1, #8]
	subs r0, #0xc
	strh r2, [r0, #0]
	ldr r0, [r4, #0]
	adds r0, #0x5c
	ldr r1, _0809B534
	strh r1, [r0, #0]
	ldr r1, [r4, #0]
	ldr r0, _0809B538
	adds r0, #0x90
	ldrh r0, [r0, #0]
	adds r1, #0x48
	strh r0, [r1, #0]
	ldr r1, [r4, #0]
	movs r0, #2
	strh r0, [r1, #0xc]
	ldr r0, [r4, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r1, r7, r1
	movs r2, #0xd8
	bl memcpy
	ldr r0, [r4, #0]
	ldr r3, _0809B53C
	adds r0, r0, r3
	add r1, sp, #0xf4
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	ldr r0, [r4, #0]
	ldr r2, _0809B540
	adds r0, r0, r2
	add r3, sp, #0xf8
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	ldr r0, [r4, #0]
	strh r6, [r0, #0]
	ldr r1, [r4, #0]
	ldr r0, [r7, #0x50]
	str r0, [r1, #0x50]
	ldrh r0, [r1, #0]
	adds r0, #4
	strh r0, [r1, #2]
	ldr r2, [r4, #0]
	ldrb r0, [r2, #0]
	movs r6, #0xfe
	lsls r6, r6, #1
	adds r2, r2, r6
	movs r3, #0xf
	ands r3, r0
	ldrb r0, [r2, #0]
	movs r6, #0x10
	negs r6, r6
	adds r1, r6, #0
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0]
	ldr r0, [r4, #0]
	ldrh r1, [r0, #2]
	ldr r2, _0809B544
	adds r0, r0, r2
	strh r1, [r0, #0]
	ldr r0, [r4, #0]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r0, r3
	movs r1, #0xff
	strb r1, [r0, #0]
	adds r5, #1
	lsls r5, r5, #0x10
	lsrs r2, r5, #0x10
	asrs r5, r5, #0x10
	cmp r5, #1
	ble _0809B3F2
	movs r2, #0
	ldr r6, _0809B548
	ldr r4, [sp, #0x104]
	movs r5, #0xad
	lsls r5, r5, #8
_0809B4E2:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r3, sp
	adds r3, r3, r0
	adds r3, #0x10
	str r6, [r3, #0]
	adds r0, r4, r0
	str r5, [r0, #0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r2, r0, #4
	adds r0, r0, r2
	strb r0, [r3, #8]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #2
	ble _0809B4E2
	movs r4, #1
	str r4, [sp, #0xdc]
	movs r6, #0xff
	lsls r6, r6, #1
	adds r0, r7, r6
	movs r1, #6
	strb r1, [r0, #0]
	ldr r1, _0809B54C
	adds r0, r7, r1
	strb r4, [r0, #0]
	bl sub_08067C18
	b _0809B56E
_0809B528: .4byte gUnk_085186FC
_0809B52C: .4byte gUnk_030056F4
_0809B530: .4byte gUnk_030056FC
_0809B534: .4byte 0x000003E7
_0809B538: .4byte gUnk_03003170
_0809B53C: .4byte 0x0000022E
_0809B540: .4byte 0x0000022F
_0809B544: .4byte 0x00000202
_0809B548: .4byte 0x0000EF6E
_0809B54C: .4byte 0x000001FD
_0809B550:
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #7
	strb r0, [r1, #0]
	movs r6, #0x80
	lsls r6, r6, #0x11
	adds r0, r4, r6
	lsrs r1, r0, #0x18
	str r1, [sp, #0xdc]
	asrs r0, r0, #0x18
	cmp r0, #5
	bne _0809B56E
	movs r2, #0
	str r2, [sp, #0xdc]
_0809B56E:
	ldr r3, _0809B574
	adds r1, r7, r3
	b _0809B814
_0809B574: .4byte 0x000001FD
_0809B578:
	movs r4, #0
	str r4, [sp, #0xb8]
	strh r4, [r7, #0xc]
	ldr r1, [sp, #0xd8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd8]
	cmp r1, #0xb3
	bhi _0809B58E
	b _0809B84E
_0809B58E:
	movs r0, #0xff
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r0, #4
	strb r0, [r1, #0]
	ldr r2, _0809B5A0
	adds r1, r7, r2
	b _0809B814
	.2byte 0x0000
_0809B5A0: .4byte 0x000001FD
_0809B5A4:
	movs r3, #2
	str r3, [sp, #0xb8]
	strh r3, [r7, #0xc]
	movs r6, #0
	str r6, [sp, #0xd4]
	movs r2, #0
	add r0, sp, #0x9c
	mov sl, r0
	movs r1, #0x9e
	add r1, sp
	mov r8, r1
	mov r3, sp
	adds r3, #0x14
	str r3, [sp, #0x104]
	ldr r4, [sp, #0xe4]
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #0x100]
_0809B5C8:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r4, sp
	adds r4, r4, r0
	adds r4, #0x10
	ldr r6, [r4, #0]
	ldr r3, [sp, #0x104]
	adds r0, r3, r0
	ldr r5, [r0, #0]
	str r2, [sp, #0x108]
	cmp r1, #0
	bne _0809B61C
	add r0, sp, #0x10
	ldrb r0, [r0, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r4, _0809B618
	adds r0, r0, r4
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r2, [sp, #0x100]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r1, r6, r1
	str r1, [r7, #0x14]
	add r0, sp, #0x10
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r3, #0
	ldrsh r0, [r0, r3]
	muls r0, r2, r0
	adds r0, r5, r0
	str r0, [r7, #0x18]
	adds r6, r1, #0
	adds r5, r0, #0
	b _0809B660
_0809B618: .4byte gUnk_080B9704
_0809B61C:
	ldr r0, [sp, #0xd4]
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	lsls r0, r2, #2
	add r1, sp, #0xa0
	adds r0, r0, r1
	ldr r3, [r0, #0]
	ldrb r0, [r4, #8]
	adds r0, #0x40
	lsls r0, r0, #1
	ldr r1, _0809B674
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r1, [sp, #0x100]
	muls r0, r1, r0
	adds r1, r6, r0
	str r1, [r3, #0x14]
	ldrb r0, [r4, #8]
	lsls r0, r0, #1
	ldr r4, _0809B674
	adds r0, r0, r4
	movs r6, #0
	ldrsh r0, [r0, r6]
	ldr r4, [sp, #0x100]
	muls r0, r4, r0
	adds r0, r5, r0
	str r0, [r3, #0x18]
	adds r6, r1, #0
	adds r5, r0, #0
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	str r2, [sp, #0xd4]
_0809B660:
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809B678
	bl sub_08097FF8
	b _0809B686
	.2byte 0x0000
_0809B674: .4byte gUnk_080B9704
_0809B678:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_0809B686:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r0, r6, #8
	asrs r0, r0, #0x10
	lsls r1, r5, #8
	asrs r1, r1, #0x10
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	mov r2, sl
	mov r3, r8
	bl sub_0800BC08
	ldr r0, [sp, #0x108]
	asrs r6, r0, #0x10
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #2
	mov r4, sp
	adds r4, r4, r0
	adds r4, #0x10
	ldrb r0, [r4, #8]
	adds r0, #1
	strb r0, [r4, #8]
	ldr r0, _0809B7B4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x11c]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x74]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809B6E6
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x68
	movs r1, #0
	ldr r2, [sp, #0x114]
	ldr r3, [sp, #0x118]
	bl sub_08065370
_0809B6E6:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809B766
	bl sub_0800CC98
	cmp r0, #0
	bne _0809B766
	bl sub_0800CD34
	cmp r0, #0
	bne _0809B766
	ldrb r1, [r4, #8]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0809B732
	mov r2, sl
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r4, r8
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r3, [sp, #0x110]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x114]
	ldrh r3, [r4, #0]
	mov r4, r9
	str r4, [sp, #0]
	add r4, sp, #0x84
	str r4, [sp, #4]
	ldr r4, [sp, #0x70]
	str r4, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	bl sub_08007870
_0809B732:
	cmp r6, #0
	bne _0809B766
	ldr r0, _0809B7B8
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	beq _0809B766
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	subs r1, #1
	mov r4, r9
	str r4, [sp, #0]
	add r2, sp, #0x84
	str r2, [sp, #4]
	ldr r2, [sp, #0x70]
	str r2, [sp, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809B766:
	ldr r6, [sp, #0x108]
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r6, r1
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bgt _0809B778
	b _0809B5C8
_0809B778:
	add r0, sp, #0x10
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0809B78A
	ldr r0, [sp, #0xf0]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xf0]
_0809B78A:
	ldr r2, [sp, #0xf0]
	cmp r2, #3
	bne _0809B84E
	ldr r2, _0809B7BC
	ldr r1, [r2, #0]
	movs r0, #9
	negs r0, r0
	ands r1, r0
	subs r0, #8
	ands r1, r0
	str r1, [r2, #0]
	movs r3, #0
	str r3, [sp, #0xcc]
	movs r4, #0xff
	lsls r4, r4, #1
	adds r1, r7, r4
	movs r0, #8
	strb r0, [r1, #0]
	ldr r6, _0809B7C0
	adds r1, r7, r6
	b _0809B814
_0809B7B4: .4byte gUnk_030002F0
_0809B7B8: .4byte gUnk_03002344
_0809B7BC: .4byte gUnk_030056FC
_0809B7C0: .4byte 0x000001FD
_0809B7C4:
	movs r0, #2
	str r0, [sp, #0xb8]
	strh r0, [r7, #0xc]
	movs r0, #0
	bl sub_0809D620
	movs r0, #1
	bl sub_0809D620
	movs r0, #2
	bl sub_0809D620
	movs r0, #3
	bl sub_0809D620
	movs r0, #4
	bl sub_0809D620
	movs r0, #5
	bl sub_0809D620
	movs r0, #6
	bl sub_0809D620
	movs r0, #7
	bl sub_0809D620
	adds r0, r7, #0
	movs r1, #0
	bl sub_0809D710
	movs r2, #0
	str r2, [sp, #0xcc]
	movs r3, #0xff
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r0, #8
	strb r0, [r1, #0]
	ldr r4, _0809B820
	adds r1, r7, r4
_0809B814:
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
	b _0809B84E
	.2byte 0x0000
_0809B820: .4byte 0x000001FD
_0809B824:
	movs r6, #0
	str r6, [sp, #0xb8]
	strh r6, [r7, #0xc]
	ldr r1, [sp, #0xcc]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xcc]
	cmp r1, #0x3b
	bls _0809B84E
	movs r2, #0xff
	lsls r2, r2, #1
	adds r1, r7, r2
	movs r0, #5
	strb r0, [r1, #0]
	ldr r3, _0809B860
	adds r1, r7, r3
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_08067C18
_0809B84E:
	ldr r4, [sp, #0xb8]
	cmp r4, #1
	beq _0809B878
	cmp r4, #1
	bgt _0809B864
	cmp r4, #0
	beq _0809B86C
	b _0809B892
	.2byte 0x0000
_0809B860: .4byte 0x000001FD
_0809B864:
	ldr r6, [sp, #0xb8]
	cmp r6, #2
	beq _0809B886
	b _0809B892
_0809B86C:
	ldrh r0, [r7, #8]
	ldr r1, [sp, #0x110]
	strh r0, [r1, #0]
	movs r2, #1
	str r2, [sp, #0xc0]
	b _0809B892
_0809B878:
	ldrh r0, [r7, #8]
	adds r0, #8
	ldr r3, [sp, #0x110]
	strh r0, [r3, #0]
	movs r4, #1
	str r4, [sp, #0xc0]
	b _0809B892
_0809B886:
	ldrh r0, [r7, #8]
	adds r0, #0x10
	ldr r6, [sp, #0x110]
	strh r0, [r6, #0]
	movs r0, #0
	str r0, [sp, #0xc0]
_0809B892:
	ldr r0, _0809B8D8
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #0x68
	ldr r1, [sp, #0xbc]
	ldrh r3, [r0, #0]
	cmp r1, r3
	beq _0809B8B2
	ldrh r0, [r0, #0]
	str r0, [sp, #0xbc]
	adds r0, r2, #0
	adds r0, #0x6c
	movs r1, #0
	strh r1, [r0, #0]
	subs r0, #2
	strh r1, [r0, #0]
_0809B8B2:
	ldr r4, _0809B8DC
	adds r0, r7, r4
	ldrb r0, [r0, #0]
	cmp r0, #6
	bne _0809B8BE
	b _0809BA3A
_0809B8BE:
	ldr r0, _0809B8E0
	ldrh r0, [r0, #0]
	add r6, sp, #0x84
	strb r0, [r6, #0]
	bl sub_08098004
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809B8E4
	bl sub_08097FF8
	b _0809B8F2
_0809B8D8: .4byte gUnk_030002EC
_0809B8DC: .4byte 0x000001FD
_0809B8E0: .4byte gUnk_030002F0
_0809B8E4:
	ldr r0, [r7, #0x14]
	asrs r0, r0, #8
	ldr r1, [r7, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
_0809B8F2:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809B918
	ldr r0, [sp, #0x110]
	ldrh r1, [r0, #0]
	ldr r2, [sp, #0xc0]
	str r2, [sp, #0]
	add r0, sp, #0x68
	ldr r2, [sp, #0x114]
	ldr r3, [sp, #0x118]
	bl sub_08065370
	adds r1, r7, #0
	adds r1, #0x6e
	strh r0, [r1, #0]
_0809B918:
	ldr r0, [r7, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r7, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x9c
	mov r5, sp
	adds r5, #0x9e
	movs r2, #0
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	ldr r0, _0809B9AC
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x11c]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x74]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov sl, r4
	mov r8, r5
	ldr r4, [sp, #0xc4]
	cmp r4, #0
	beq _0809B9B0
	adds r0, r4, #0
	subs r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc4]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	beq _0809B9F0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809B9F0
	bl sub_0800CC98
	cmp r0, #0
	bne _0809B9F0
	bl sub_0800CD34
	cmp r0, #0
	bne _0809B9F0
	mov r6, sl
	movs r1, #0
	ldrsh r0, [r6, r1]
	movs r2, #0
	ldrsh r1, [r5, r2]
	ldr r3, [sp, #0x110]
	ldrh r2, [r3, #0]
	ldr r4, [sp, #0x114]
	ldrh r3, [r4, #0]
	mov r6, r9
	str r6, [sp, #0]
	add r4, sp, #0x84
	str r4, [sp, #4]
	ldr r4, [sp, #0x70]
	str r4, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _0809B9F0
	.2byte 0x0000
_0809B9AC: .4byte gUnk_030002F0
_0809B9B0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809B9F0
	bl sub_0800CC98
	cmp r0, #0
	bne _0809B9F0
	bl sub_0800CD34
	cmp r0, #0
	bne _0809B9F0
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	ldr r6, [sp, #0x110]
	ldrh r2, [r6, #0]
	ldr r4, [sp, #0x114]
	ldrh r3, [r4, #0]
	mov r6, r9
	str r6, [sp, #0]
	add r4, sp, #0x84
	str r4, [sp, #4]
	ldr r4, [sp, #0x70]
	str r4, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	bl sub_08007870
_0809B9F0:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809BA3A
	bl sub_0800CC98
	cmp r0, #0
	bne _0809BA3A
	bl sub_0800CD34
	cmp r0, #0
	bne _0809BA3A
	ldr r0, _0809BAA0
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809BA3A
	mov r1, sl
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r3, r8
	movs r4, #0
	ldrsh r1, [r3, r4]
	subs r1, #1
	mov r6, r9
	str r6, [sp, #0]
	add r2, sp, #0x84
	str r2, [sp, #4]
	ldr r2, [sp, #0x70]
	str r2, [sp, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809BA3A:
	ldr r0, [r7, #0x4c]
	cmp r0, #0
	beq _0809BA50
	ldr r1, [sp, #0xb4]
	cmp r1, r0
	beq _0809BA50
	str r0, [sp, #0xb4]
	movs r2, #0xa
	str r2, [sp, #0xc8]
	movs r3, #0
	str r3, [sp, #0xd0]
_0809BA50:
	ldr r4, [sp, #0xc8]
	cmp r4, #0
	beq _0809BAA8
	bl sub_0800CC98
	cmp r0, #0
	bne _0809BA7C
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809BA7C
	bl sub_0800CD34
	cmp r0, #0
	bne _0809BA7C
	ldr r6, [sp, #0xd0]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xb4]
	bl sub_0801A120
_0809BA7C:
	movs r0, #2
	ldr r1, [sp, #0xc8]
	ands r0, r1
	cmp r0, #0
	beq _0809BA92
	ldr r2, [sp, #0xd0]
	lsls r0, r2, #0x10
	ldr r3, _0809BAA4
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
_0809BA92:
	ldr r0, [sp, #0xc8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc8]
	b _0809BAB0
	.2byte 0x0000
_0809BAA0: .4byte gUnk_03002344
_0809BAA4: .4byte 0xFFFF0000
_0809BAA8:
	movs r4, #0
	str r4, [sp, #0xb4]
	ldr r6, [sp, #0xc8]
	str r6, [r7, #0x4c]
_0809BAB0:
	ldr r0, [sp, #0xec]
	cmp r0, #0
	beq _0809BAFE
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xec]
	ldr r1, [sp, #0x10c]
	cmp r1, #0
	beq _0809BADC
	ldr r2, [sp, #0xe4]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x3f
	bgt _0809BAD2
	adds r0, #4
	b _0809BAEC
_0809BAD2:
	movs r3, #0x40
	str r3, [sp, #0xe4]
	movs r4, #0
	str r4, [sp, #0xe8]
	b _0809BB0C
_0809BADC:
	ldr r6, [sp, #0xe4]
	lsls r0, r6, #0x18
	asrs r1, r0, #0x18
	movs r0, #0x40
	negs r0, r0
	cmp r1, r0
	ble _0809BAF4
	subs r0, r1, #4
_0809BAEC:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xe4]
	b _0809BB0C
_0809BAF4:
	movs r0, #0xc0
	str r0, [sp, #0xe4]
	movs r1, #1
	str r1, [sp, #0xe8]
	b _0809BB0C
_0809BAFE:
	movs r2, #0xc0
	str r2, [sp, #0xe4]
	ldr r3, [sp, #0x10c]
	cmp r3, #0
	beq _0809BB0C
	movs r4, #0x40
	str r4, [sp, #0xe4]
_0809BB0C:
	adds r0, r7, #0
	bl sub_08019CE8
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0809BB1C
	movs r6, #1
	str r6, [sp, #0xfc]
_0809BB1C:
	bl sub_080003F0
	ldr r0, [sp, #0xfc]
	cmp r0, #0
	bne _0809BB3A
_0809BB26:
	bl sub_0800CB78
	cmp r0, #0
	bne _0809BB3A
	bl sub_08056E90
	cmp r0, #0
	bne _0809BB3A
	bl _0809B13C
_0809BB3A:
	ldr r0, _0809BCD8
	movs r4, #0
	str r4, [r0, #0]
	bl sub_080020F4
	ldr r1, _0809BCDC
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	bl sub_0809D5E4
	bl sub_0809D6D8
	bl sub_0809D810
	ldr r1, _0809BCE0
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #0x6c
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	subs r0, #2
	strh r4, [r0, #0]
	movs r2, #0
	str r2, [sp, #0xd0]
	movs r3, #0xa
	str r3, [sp, #0xc8]
	add r4, sp, #0x68
	mov sl, r4
_0809BB82:
	bl sub_080020F4
	ldr r2, _0809BCDC
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r6, #1
	orrs r0, r6
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809BC92
	bl sub_0800CC98
	cmp r0, #0
	bne _0809BC92
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809BC92
	ldr r0, _0809BCE4
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x11c]
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	mov r3, sl
	ldr r1, [r3, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r6, _0809BCE0
	ldr r1, [r6, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r6, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	movs r0, #1
	str r0, [sp, #0]
	mov r0, sl
	movs r1, #0
	bl sub_08065370
	ldr r1, [r6, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x9c
	mov r6, sp
	adds r6, #0x9e
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r4, _0809BCE0
	ldr r3, [r4, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	str r3, [sp, #0x124]
	mov r3, r9
	str r3, [sp, #0]
	add r4, sp, #0x84
	mov r8, r4
	str r4, [sp, #4]
	mov r3, sl
	ldr r3, [r3, #8]
	str r3, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	ldr r3, [sp, #0x124]
	bl sub_08007870
	ldr r1, [sp, #0xc4]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	beq _0809BC84
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r1, #1
	mov r3, r9
	str r3, [sp, #0]
	mov r4, r8
	str r4, [sp, #4]
	ldr r2, [sp, #0x70]
	str r2, [sp, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809BC84:
	ldr r6, [sp, #0xd0]
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r7, #0
	ldr r1, [sp, #0xb4]
	bl sub_0801A120
_0809BC92:
	movs r0, #2
	ldr r1, [sp, #0xc8]
	ands r0, r1
	cmp r0, #0
	beq _0809BCA8
	ldr r2, [sp, #0xd0]
	lsls r0, r2, #0x10
	ldr r3, _0809BCE8
	adds r0, r0, r3
	lsrs r0, r0, #0x10
	str r0, [sp, #0xd0]
_0809BCA8:
	bl sub_080003F0
	ldr r0, [sp, #0xc8]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc8]
	ldr r0, _0809BCEC
	ldr r4, [sp, #0xc8]
	cmp r4, r0
	beq _0809BCC0
	b _0809BB82
_0809BCC0:
	bl sub_080683CC
	ldrh r0, [r7, #2]
	bl sub_08067CA8
	ldr r0, _0809BCF0
	bl sub_08068330
	add r6, sp, #0x68
	mov sl, r6
	b _0809BE02
	.2byte 0x0000
_0809BCD8: .4byte gUnk_030056FC
_0809BCDC: .4byte gUnk_03003CE0
_0809BCE0: .4byte gUnk_030002EC
_0809BCE4: .4byte gUnk_030002F0
_0809BCE8: .4byte 0xFFFF0000
_0809BCEC: .4byte 0x0000FFFF
_0809BCF0: .4byte 0xDEADFACE
_0809BCF4:
	bl sub_080020F4
	ldr r2, _0809BE1C
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r7, #1
	mov r8, r7
	mov r2, r8
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809BDFE
	bl sub_0800CC98
	cmp r0, #0
	bne _0809BDFE
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809BDFE
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809BDFE
	ldr r0, _0809BE20
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x11c]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	mov r6, sl
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r7, _0809BE24
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r0, r8
	str r0, [sp, #0]
	mov r0, sl
	movs r1, #0
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x9c
	mov r6, sp
	adds r6, #0x9e
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	mov r7, sp
	adds r7, #0x84
	str r7, [sp, #0x120]
	str r7, [sp, #4]
	mov r7, sl
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r1, [sp, #0xc4]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0809BDFE
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r1, #1
	mov r3, r9
	str r3, [sp, #0]
	ldr r4, [sp, #0x120]
	str r4, [sp, #4]
	ldr r2, [sp, #0x70]
	str r2, [sp, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809BDFE:
	bl sub_080003F0
_0809BE02:
	ldr r0, _0809BE28
	bl sub_080682B8
	cmp r0, #0
	bne _0809BE0E
	b _0809BCF4
_0809BE0E:
	ldr r0, _0809BE28
	bl sub_08065E38
	add r6, sp, #0x68
	mov sl, r6
	b _0809BF3A
	.2byte 0x0000
_0809BE1C: .4byte gUnk_03003CE0
_0809BE20: .4byte gUnk_030002F0
_0809BE24: .4byte gUnk_030002EC
_0809BE28: .4byte 0xDEADFACE
_0809BE2C:
	bl sub_080020F4
	ldr r2, _0809BF88
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r7, #1
	mov r8, r7
	mov r2, r8
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809BF36
	bl sub_0800CC98
	cmp r0, #0
	bne _0809BF36
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809BF36
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809BF36
	ldr r0, _0809BF8C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x11c]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	mov r6, sl
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r7, _0809BF90
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r0, r8
	str r0, [sp, #0]
	mov r0, sl
	movs r1, #0
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x9c
	mov r6, sp
	adds r6, #0x9e
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	mov r7, sp
	adds r7, #0x84
	str r7, [sp, #0x120]
	str r7, [sp, #4]
	mov r7, sl
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r1, [sp, #0xc4]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0809BF36
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r1, #1
	mov r3, r9
	str r3, [sp, #0]
	ldr r4, [sp, #0x120]
	str r4, [sp, #4]
	ldr r2, [sp, #0x70]
	str r2, [sp, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809BF36:
	bl sub_080003F0
_0809BF3A:
	bl sub_08058DB0
	cmp r0, #0
	beq _0809BF44
	b _0809BE2C
_0809BF44:
	movs r0, #0
	bl sub_080586B4
	bl sub_080020F4
	ldr r1, _0809BF88
	movs r2, #0xa6
	lsls r2, r2, #1
	muls r2, r0, r2
	adds r1, #0x30
	adds r2, r2, r1
	ldr r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	movs r0, #0x3c
	str r0, [sp, #0]
	ldr r0, _0809BF94
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	ldr r1, _0809BF98
	ldr r1, [r1, #0]
	movs r6, #0xe4
	lsls r6, r6, #3
	adds r1, r1, r6
	str r0, [r1, #0]
	add r7, sp, #0x68
	mov sl, r7
	b _0809C0A8
_0809BF88: .4byte gUnk_03003CE0
_0809BF8C: .4byte gUnk_030002F0
_0809BF90: .4byte gUnk_030002EC
_0809BF94: .4byte 0x00140042
_0809BF98: .4byte gUnk_03005CF4
_0809BF9C:
	bl sub_080020F4
	ldr r2, _0809C178
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	adds r2, #0x30
	adds r1, r1, r2
	ldr r0, [r1, #0]
	movs r2, #1
	mov r8, r2
	orrs r0, r2
	str r0, [r1, #0]
	bl sub_0800CCCC
	cmp r0, #0
	bne _0809C0A4
	bl sub_0800CC98
	cmp r0, #0
	bne _0809C0A4
	bl sub_0800CD8C
	cmp r0, #0
	bne _0809C0A4
	bl sub_0800CD34
	adds r4, r0, #0
	cmp r4, #0
	bne _0809C0A4
	ldr r0, _0809C17C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r3, [sp, #0x11c]
	ldrh r2, [r3, #0]
	lsls r2, r2, #5
	mov r6, sl
	ldr r1, [r6, #0xc]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r7, _0809C180
	ldr r1, [r7, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x6a
	adds r3, #0x6c
	mov r0, r8
	str r0, [sp, #0]
	mov r0, sl
	movs r1, #0
	bl sub_08065370
	ldr r1, [r7, #0]
	adds r2, r1, #0
	adds r2, #0x6e
	strh r0, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x9c
	mov r6, sp
	adds r6, #0x9e
	str r4, [sp, #0]
	str r4, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldr r3, [r7, #0]
	adds r2, r3, #0
	adds r2, #0x68
	ldrh r2, [r2, #0]
	adds r3, #0x6a
	ldrh r3, [r3, #0]
	mov r4, r9
	str r4, [sp, #0]
	mov r7, sp
	adds r7, #0x84
	str r7, [sp, #0x120]
	str r7, [sp, #4]
	mov r7, sl
	ldr r4, [r7, #8]
	str r4, [sp, #8]
	ldr r4, [sp, #0x68]
	str r4, [sp, #0xc]
	bl sub_08007870
	ldr r1, [sp, #0xc4]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc4]
	mov r0, r8
	ands r1, r0
	cmp r1, #0
	beq _0809C0A4
	movs r1, #0
	ldrsh r0, [r5, r1]
	movs r2, #0
	ldrsh r1, [r6, r2]
	subs r1, #1
	mov r3, r9
	str r3, [sp, #0]
	ldr r4, [sp, #0x120]
	str r4, [sp, #4]
	ldr r2, [sp, #0x70]
	str r2, [sp, #8]
	ldr r2, [sp, #0x68]
	str r2, [sp, #0xc]
	movs r2, #0x18
	movs r3, #0
	bl sub_08007870
_0809C0A4:
	bl sub_080003F0
_0809C0A8:
	ldr r0, _0809C184
	ldr r0, [r0, #0]
	movs r6, #0xe4
	lsls r6, r6, #3
	adds r0, r0, r6
	ldr r0, [r0, #0]
	bl sub_0805EEFC
	cmp r0, #0
	bne _0809C0BE
	b _0809BF9C
_0809C0BE:
	bl sub_080020F4
	ldr r4, _0809C178
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	adds r4, #0x30
	adds r2, r2, r4
	ldr r0, [r2, #0]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0]
	movs r0, #0xd
	bl sub_08058688
	ldr r6, _0809C180
	ldr r0, [r6, #0]
	ldr r7, [sp, #0x11c]
	ldrh r2, [r7, #0]
	ldr r1, _0809C17C
	ldrh r3, [r1, #0]
	add r1, sp, #0x68
	bl sub_080970CC
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0809C154
	ldr r0, [r6, #0]
	adds r0, #0x5a
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _0809C154
	ldr r0, _0809C188
	ldr r0, [r0, #0]
	ldr r1, [sp, #0xa8]
	bl sub_0801E46C
	adds r4, r0, #0
	movs r0, #0x1d
	str r0, [sp, #0xd0]
	movs r5, #1
	negs r5, r5
_0809C124:
	ldr r0, _0809C180
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x18]
	subs r1, #0x20
	str r1, [r0, #0x18]
	adds r1, r4, #0
	bl sub_0806171C
	bl sub_080003F0
	ldr r1, [sp, #0xd0]
	lsls r0, r1, #0x10
	ldr r2, _0809C18C
	adds r0, r0, r2
	lsrs r3, r0, #0x10
	str r3, [sp, #0xd0]
	asrs r0, r0, #0x10
	cmp r0, r5
	bne _0809C124
	ldr r0, _0809C188
	ldr r0, [r0, #0]
	adds r1, r4, #0
	bl sub_0801E4CC
_0809C154:
	movs r4, #0x6f
	str r4, [sp, #0xd0]
	subs r4, #0x70
_0809C15A:
	bl sub_080003F0
	ldr r6, [sp, #0xd0]
	lsls r0, r6, #0x10
	ldr r7, _0809C18C
	adds r0, r0, r7
	lsrs r1, r0, #0x10
	str r1, [sp, #0xd0]
	asrs r0, r0, #0x10
	cmp r0, r4
	bne _0809C15A
	bl sub_08067C18
	b _0809C194
	.2byte 0x0000
_0809C178: .4byte gUnk_03003CE0
_0809C17C: .4byte gUnk_030002F0
_0809C180: .4byte gUnk_030002EC
_0809C184: .4byte gUnk_03005CF4
_0809C188: .4byte gUnk_030034E0
_0809C18C: .4byte 0xFFFF0000
_0809C190:
	bl sub_080003F0
_0809C194:
	bl sub_08067C08
	cmp r0, #0
	beq _0809C190
	bl sub_08067BF8
	bl sub_08056E24
_0809C1A4:
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_0809AEE8
