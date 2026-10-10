	thumb_func_start sub_0806A19C
sub_0806A19C: @ 0x0806A19C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x98
	str r0, [sp, #0x58]
	bl sub_080020F4
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x58]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x58]
	ldr r1, [r1, #0]
	str r1, [sp, #0x88]
	ldr r2, [sp, #0x58]
	ldr r2, [r2, #4]
	str r2, [sp, #0x8c]
	ldr r3, [sp, #0x58]
	ldrh r3, [r3, #0x14]
	str r3, [sp, #0x70]
	str r3, [sp, #0x74]
	mov r9, r3
	str r3, [sp, #0x6c]
	add r0, sp, #0x48
	movs r1, #0
	strh r1, [r0, #0]
	mov r2, sp
	adds r2, #0x4a
	strh r1, [r2, #0]
	ldr r4, [sp, #0x88]
	cmp r4, #3
	bhi _0806A1F8
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806A1F4
	adds r1, r1, r0
	str r1, [sp, #0x60]
	lsls r6, r4, #2
	str r6, [sp, #0x90]
	b _0806A274
_0806A1F4: .4byte gUnk_03003CE0
_0806A1F8:
	ldr r1, _0806A250
	ldr r2, [sp, #0x88]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	subs r0, r0, r2
	lsls r0, r0, #5
	ldr r3, _0806A254
	adds r0, r0, r3
	ldr r1, [r1, #0]
	adds r5, r1, r0
	adds r0, r5, #0
	adds r0, #0x6a
	ldr r4, _0806A258
	adds r1, r5, r4
	ldrh r0, [r0, #0]
	lsls r6, r2, #2
	str r6, [sp, #0x90]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806A274
	ldr r0, _0806A25C
	adds r4, r6, r0
	movs r0, #1
	ldr r1, [sp, #0x8c]
	lsls r0, r1
	mvns r6, r0
_0806A22E:
	bl sub_08056E90
	cmp r0, #0
	bne _0806A248
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806A248
	ldrh r0, [r5, #0xc]
	cmp r0, #0xa
	beq _0806A248
	cmp r0, #0xb
	bne _0806A260
_0806A248:
	ldr r0, [r4, #0]
	ands r0, r6
	str r0, [r4, #0]
	b _0806A86E
_0806A250: .4byte gUnk_030056F4
_0806A254: .4byte 0xFFFFF480
_0806A258: .4byte 0x0000022B
_0806A25C: .4byte gUnk_030063E0
_0806A260:
	bl sub_080003F0
	adds r0, r5, #0
	adds r0, #0x6a
	ldr r2, _0806A2C4
	adds r1, r5, r2
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806A22E
_0806A274:
	ldr r3, [sp, #0x84]
	ldr r4, [sp, #0x88]
	cmp r3, r4
	beq _0806A2D0
	cmp r4, #3
	bls _0806A308
	ldr r3, _0806A2C8
	mov r6, r9
	lsls r2, r6, #1
	ldr r0, [sp, #0x58]
	ldr r1, [r0, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	adds r3, r5, #0
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806A302
	ldr r2, _0806A2CC
	ldr r5, [sp, #0x90]
	adds r2, r5, r2
	movs r1, #1
	ldr r6, [sp, #0x8c]
	lsls r1, r6
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	movs r0, #0
	strh r0, [r3, #0]
	b _0806A86E
	.2byte 0x0000
_0806A2C4: .4byte 0x0000022B
_0806A2C8: .4byte gUnk_084EBF1C
_0806A2CC: .4byte gUnk_030063E0
_0806A2D0:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806A32C
	adds r4, r4, r0
	ldr r1, [sp, #0x58]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x14]
	bl sub_0806898C
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r4, #0xc2
	ldrh r1, [r4, #0]
	subs r1, r1, r0
	strh r1, [r4, #0]
	lsls r1, r1, #0x10
	cmp r1, #0
	bge _0806A302
	movs r0, #0
	strh r0, [r4, #0]
_0806A302:
	ldr r2, [sp, #0x88]
	cmp r2, #3
	bhi _0806A334
_0806A308:
	ldr r3, [sp, #0x60]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	str r0, [sp, #0x78]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov sl, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	ldr r1, _0806A330
	b _0806A342
	.2byte 0x0000
_0806A32C: .4byte gUnk_03003CE0
_0806A330: .4byte gUnk_0847AD0A
_0806A334:
	ldr r6, [r5, #0x14]
	str r6, [sp, #0x78]
	ldr r0, [r5, #0x18]
	mov sl, r0
	ldr r1, _0806A3B8
	movs r2, #8
	ldrsh r0, [r5, r2]
_0806A342:
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	str r0, [sp, #0x7c]
	ldr r2, _0806A3BC
	ldr r4, [sp, #0x7c]
	lsls r3, r4, #0x10
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #2
	ldr r6, [sp, #0x78]
	adds r6, r6, r0
	str r6, [sp, #0x78]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #2
	add sl, r0
	str r3, [sp, #0x94]
	ldr r3, [sp, #0x84]
	ldr r4, [sp, #0x88]
	cmp r3, r4
	beq _0806A380
	cmp r4, #3
	bls _0806A398
_0806A380:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806A398
	bl sub_0800CD34
	cmp r0, #0
	bne _0806A398
	ldr r0, _0806A3C0
	add r0, r9
	bl sub_0805865C
_0806A398:
	mov r5, r9
	cmp r5, #5
	bhi _0806A3C8
	ldr r1, _0806A3C4
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	mov r0, r9
	subs r0, #1
	b _0806A3DE
	.2byte 0x0000
_0806A3B8: .4byte gUnk_0847AD0A
_0806A3BC: .4byte gUnk_080B9704
_0806A3C0: .4byte 0x00000115
_0806A3C4: .4byte 0x00050091
_0806A3C8:
	ldr r1, _0806A448
	movs r3, #1
	negs r3, r3
	movs r0, #0
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	mov r0, r9
	subs r0, #6
_0806A3DE:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r6, sp, #0x48
	strh r2, [r6, #0]
	movs r0, #0x4a
	add r0, sp
	strh r2, [r0, #0]
	ldr r1, [sp, #0x68]
	cmp r1, #3
	bhi _0806A450
	bl sub_08002164
	adds r1, r0, #0
	movs r4, #0
	mov r2, r9
	lsls r2, r2, #0x13
	mov r8, r2
	ldr r3, [sp, #0x6c]
	lsls r5, r3, #0x13
	cmp r4, r1
	bhs _0806A4A8
	ldr r6, _0806A44C
	str r6, [sp, #0x64]
	ldrh r0, [r6, #0]
	ldr r2, [sp, #0x68]
	cmp r0, r2
	beq _0806A442
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r2, r6, #0
_0806A428:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r1
	bhs _0806A4A8
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r0, r2
	str r0, [sp, #0x64]
	ldrh r0, [r0, #0]
	ldr r6, [sp, #0x68]
	cmp r0, r6
	bne _0806A428
_0806A442:
	cmp r4, r1
	blo _0806A4AC
	b _0806A4A8
_0806A448: .4byte 0x0005008E
_0806A44C: .4byte gUnk_03003CE0
_0806A450:
	movs r4, #0
	ldr r3, _0806A46C
	ldr r1, [r3, #0]
	str r1, [sp, #0x5c]
	ldr r2, _0806A470
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	mov r5, r9
	lsls r5, r5, #0x13
	mov r8, r5
	ldr r6, [sp, #0x6c]
	lsls r5, r6, #0x13
	b _0806A496
_0806A46C: .4byte gUnk_030056F4
_0806A470: .4byte gUnk_030056FC
_0806A474:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bhi _0806A4A8
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
_0806A496:
	cmp r0, #0
	beq _0806A474
	ldr r1, [sp, #0x5c]
	ldrh r0, [r1, #2]
	ldr r6, [sp, #0x68]
	cmp r0, r6
	bne _0806A474
	cmp r4, #4
	bls _0806A4AC
_0806A4A8:
	ldr r0, _0806A4E8
	str r0, [sp, #0x68]
_0806A4AC:
	ldr r0, _0806A4E8
	ldr r1, [sp, #0x68]
	cmp r1, r0
	beq _0806A5A6
	cmp r1, #3
	bhi _0806A4EC
	ldr r2, [sp, #0x64]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	ldr r4, [sp, #0x78]
	asrs r1, r4, #8
	subs r0, r0, r1
	add r3, sp, #0x44
	strh r0, [r3, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r6, sl
	asrs r1, r6, #8
	subs r0, r0, r1
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	adds r6, r3, #0
	b _0806A50A
	.2byte 0x0000
_0806A4E8: .4byte 0x0000FFFF
_0806A4EC:
	ldr r1, [sp, #0x5c]
	ldr r0, [r1, #0x14]
	ldr r2, [sp, #0x78]
	subs r0, r0, r2
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldr r0, [r1, #0x18]
	mov r3, sl
	subs r0, r0, r3
	lsrs r0, r0, #8
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	adds r6, r2, #0
_0806A50A:
	adds r7, r1, #0
	movs r4, #0
	ldrsh r0, [r6, r4]
	movs r6, #0
	ldrsh r1, [r7, r6]
	bl ArcTan2
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x18
	adds r2, r4, #0
	ldr r1, [sp, #0x94]
	asrs r0, r1, #0x10
	subs r1, r2, r0
	cmp r1, #0x80
	ble _0806A54A
	ldr r3, _0806A534
	adds r0, r3, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0806A55C
_0806A534: .4byte 0xFFFFFF00
_0806A538:
	ldr r4, [sp, #0x74]
	str r4, [sp, #0]
	ldr r0, [sp, #0x78]
	mov r1, sl
	ldr r2, [sp, #0x88]
	movs r3, #2
	bl sub_08069A30
	b _0806A846
_0806A54A:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _0806A55C
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r4, r0, #0
	orrs r4, r2
_0806A55C:
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x7c]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	str r3, [sp, #0x7c]
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0806A586
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
_0806A586:
	ldr r6, [sp, #0x7c]
	lsls r0, r6, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806A59E
	ldr r2, _0806A5C8
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x7c]
_0806A59E:
	movs r0, #0xff
	ldr r3, [sp, #0x7c]
	ands r3, r0
	str r3, [sp, #0x7c]
_0806A5A6:
	ldr r2, _0806A5CC
	ldr r4, [sp, #0x7c]
	lsls r1, r4, #0x10
	asrs r0, r1, #0x14
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	str r0, [sp, #0x80]
	mov r6, r8
	lsrs r6, r6, #0x10
	mov r9, r6
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r5, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	str r1, [sp, #0x94]
	b _0806A7EE
_0806A5C8: .4byte 0xFFFFFF00
_0806A5CC: .4byte gUnk_084790B4
_0806A5D0:
	ldr r3, [sp, #0x88]
	ldr r4, [sp, #0x84]
	cmp r3, r4
	bne _0806A5F2
	ldr r5, [sp, #0x60]
	ldrh r0, [r5, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _0806A5E8
	b _0806A80E
_0806A5E8:
	bl sub_0800D11C
	cmp r0, #0
	beq _0806A5F2
	b _0806A80E
_0806A5F2:
	ldr r0, [sp, #0x78]
	mov r1, sl
	ldr r2, [sp, #0x58]
	bl sub_08068A00
	adds r7, r0, #0
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	beq _0806A608
	b _0806A80E
_0806A608:
	ldr r6, [sp, #0x88]
	ldr r0, [sp, #0x84]
	cmp r6, r0
	bne _0806A63C
	ldr r1, [sp, #0x78]
	str r1, [sp, #0x4c]
	add r4, sp, #0x4c
	mov r2, sl
	str r2, [r4, #4]
	ldr r0, _0806A788
	str r0, [sp, #0x54]
	add r5, sp, #0x54
	ldr r0, [sp, #0x58]
	movs r1, #0
	bl sub_08068F9C
	adds r2, r0, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801FB14
	cmp r0, #0
	beq _0806A63C
	b _0806A80E
_0806A63C:
	ldr r0, [sp, #0x78]
	mov r1, sl
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0806A65C
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0806A65C
	b _0806A538
_0806A65C:
	ldr r2, _0806A78C
	ldr r3, [sp, #0x94]
	asrs r1, r3, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #1
	ldr r5, [sp, #0x78]
	adds r5, r5, r0
	str r5, [sp, #0x78]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #1
	add sl, r0
	asrs r5, r5, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, sl
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r6, sp, #0x44
	movs r2, #0x46
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, r6, #0
	mov r3, r8
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r1, _0806A790
	ldr r3, [sp, #0x94]
	asrs r0, r3, #0x14
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	add r1, r9
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	ldr r0, _0806A794
	ldr r0, [r0, #0]
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	mov r7, r8
	cmp r0, #0
	beq _0806A6E6
	b _0806A7EA
_0806A6E6:
	bl sub_0800CC98
	cmp r0, #0
	bne _0806A7EA
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806A7EA
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806A7EA
	ldr r0, _0806A798
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	bne _0806A712
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806A712:
	ldr r0, _0806A79C
	adds r0, #0x8c
	ldrh r0, [r0, #0]
	cmp r0, #4
	bne _0806A726
	bl sub_0800CDC0
	cmp r0, #0
	beq _0806A726
	movs r4, #0
_0806A726:
	bl sub_0800CB9C
	cmp r0, #0
	beq _0806A7A4
	ldr r0, _0806A798
	ldr r1, [r0, #0]
	movs r2, #1
	ands r1, r2
	ldr r0, [sp, #0x88]
	ands r0, r2
	cmp r1, r0
	bne _0806A7EA
	movs r5, #0
	ldrsh r0, [r6, r5]
	ldr r3, _0806A7A0
	ldr r2, _0806A790
	ldr r6, [sp, #0x94]
	asrs r1, r6, #0x14
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r5, #0
	ldrsh r1, [r1, r5]
	adds r0, r0, r1
	movs r6, #0
	ldrsh r1, [r7, r6]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	ldr r2, [sp, #0x80]
	add r2, r9
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r5, sp, #0x48
	ldrh r3, [r5, #0]
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
	b _0806A7EA
	.2byte 0x0000
_0806A788: .4byte 0x00080008
_0806A78C: .4byte gUnk_080B9704
_0806A790: .4byte gUnk_084790B4
_0806A794: .4byte gUnk_03005CF4
_0806A798: .4byte gUnk_03002344
_0806A79C: .4byte gUnk_03003170
_0806A7A0: .4byte gUnk_084EBEBC
_0806A7A4:
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r3, _0806A880
	ldr r2, _0806A884
	ldr r5, [sp, #0x94]
	asrs r1, r5, #0x14
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r6, #0
	ldrsh r1, [r1, r6]
	adds r0, r0, r1
	movs r5, #0
	ldrsh r1, [r7, r5]
	adds r3, #2
	adds r2, r2, r3
	movs r6, #0
	ldrsh r2, [r2, r6]
	adds r1, r1, r2
	ldr r2, [sp, #0x80]
	add r2, r9
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	add r5, sp, #0x48
	ldrh r3, [r5, #0]
	str r4, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r4, [sp, #0x18]
	str r4, [sp, #8]
	ldr r4, [sp, #0x10]
	str r4, [sp, #0xc]
	bl sub_08007870
_0806A7EA:
	bl sub_080003F0
_0806A7EE:
	ldr r1, [sp, #0x6c]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r1, #0
	beq _0806A80E
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806A80E
	bl sub_08056E90
	cmp r0, #0
	bne _0806A80E
	b _0806A5D0
_0806A80E:
	ldr r6, [sp, #0x70]
	cmp r6, #0
	beq _0806A846
	adds r0, r6, #0
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x70]
	cmp r0, #0
	beq _0806A846
	mov r9, r0
	str r0, [sp, #0x6c]
	ldr r1, [sp, #0x58]
	str r0, [r1, #0x14]
	ldr r2, [sp, #0x88]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x78]
	mov r3, sl
	bl sub_0807A040
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x68]
	cmp r0, #0xff
	beq _0806A846
	b _0806A398
_0806A846:
	ldr r3, [sp, #0x88]
	cmp r3, #3
	bhi _0806A85C
	ldr r4, [sp, #0x84]
	cmp r3, r4
	beq _0806A85C
	ldr r1, [sp, #0x60]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_0806A85C:
	ldr r2, _0806A888
	ldr r5, [sp, #0x90]
	adds r2, r5, r2
	movs r1, #1
	ldr r6, [sp, #0x8c]
	lsls r1, r6
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806A86E:
	add sp, #0x98
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806A880: .4byte gUnk_084EBEBC
_0806A884: .4byte gUnk_084790B4
_0806A888: .4byte gUnk_030063E0
	thumb_func_end sub_0806A19C
