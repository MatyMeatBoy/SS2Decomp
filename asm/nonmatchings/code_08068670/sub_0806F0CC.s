	thumb_func_start sub_0806F0CC
sub_0806F0CC: @ 0x0806F0CC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xb0
	str r0, [sp, #0x50]
	bl sub_080020F4
	str r0, [sp, #0x88]
	ldr r0, [sp, #0x50]
	ldrh r0, [r0, #8]
	str r0, [sp, #0x68]
	ldr r1, [sp, #0x50]
	ldr r1, [r1, #0]
	str r1, [sp, #0x80]
	ldr r2, [sp, #0x50]
	ldr r2, [r2, #4]
	str r2, [sp, #0x84]
	ldr r3, [sp, #0x50]
	ldrh r3, [r3, #0x14]
	str r3, [sp, #0x70]
	cmp r1, #3
	bhi _0806F118
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r4, r1, #0
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806F114
	adds r1, r1, r0
	str r1, [sp, #0x60]
	lsls r5, r4, #2
	str r5, [sp, #0xa4]
	b _0806F19E
	.2byte 0x0000
_0806F114: .4byte gUnk_03003CE0
_0806F118:
	ldr r1, _0806F178
	ldr r6, [sp, #0x80]
	lsls r0, r6, #1
	adds r0, r0, r6
	lsls r0, r0, #3
	subs r0, r0, r6
	lsls r0, r0, #5
	ldr r7, _0806F17C
	adds r0, r0, r7
	ldr r1, [r1, #0]
	adds r1, r1, r0
	str r1, [sp, #0x5c]
	adds r0, r1, #0
	adds r0, #0x6a
	ldr r2, _0806F180
	adds r1, r1, r2
	ldrh r0, [r0, #0]
	lsls r3, r6, #2
	str r3, [sp, #0xa4]
	ldrb r1, [r1, #0]
	cmp r0, r1
	bhs _0806F19E
	ldr r0, _0806F184
	adds r4, r3, r0
	movs r0, #1
	ldr r5, [sp, #0x84]
	lsls r0, r5
	mvns r5, r0
_0806F150:
	bl sub_08056E90
	cmp r0, #0
	bne _0806F16C
	bl sub_0800BA6C
	cmp r0, #0
	beq _0806F16C
	ldr r6, [sp, #0x5c]
	ldrh r0, [r6, #0xc]
	cmp r0, #0xa
	beq _0806F16C
	cmp r0, #0xb
	bne _0806F188
_0806F16C:
	ldr r0, [r4, #0]
	ands r0, r5
	str r0, [r4, #0]
	bl _0806FE02
	.2byte 0x0000
_0806F178: .4byte gUnk_030056F4
_0806F17C: .4byte 0xFFFFF480
_0806F180: .4byte 0x0000022B
_0806F184: .4byte gUnk_030063E0
_0806F188:
	bl sub_080003F0
	ldr r0, [sp, #0x5c]
	adds r0, #0x6a
	ldr r7, [sp, #0x5c]
	ldr r2, _0806F20C
	adds r1, r7, r2
	ldrh r0, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r0, r1
	blo _0806F150
_0806F19E:
	ldr r3, [sp, #0x60]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r7, r0, #0x1d
	str r7, [sp, #0x6c]
	add r5, sp, #0x48
	movs r6, #0
	strh r6, [r5, #0]
	mov r4, sp
	adds r4, #0x4a
	strh r6, [r4, #0]
	bl sub_080020F4
	ldr r5, [sp, #0x80]
	cmp r0, r5
	beq _0806F218
	cmp r5, #3
	bls _0806F248
	ldr r3, _0806F210
	ldr r0, [sp, #0x6c]
	lsls r2, r0, #1
	ldr r4, [sp, #0x50]
	ldr r1, [r4, #0xc]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r3, #6
	adds r2, r2, r3
	ldr r3, [sp, #0x5c]
	adds r3, #0x5e
	ldrh r0, [r3, #0]
	movs r5, #0
	ldrsh r1, [r2, r5]
	subs r0, r0, r1
	strh r0, [r3, #0]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0806F248
	ldr r2, _0806F214
	ldr r7, [sp, #0xa4]
	adds r2, r7, r2
	movs r1, #1
	ldr r0, [sp, #0x84]
	lsls r1, r0
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
	strh r6, [r3, #0]
	bl _0806FE02
_0806F20C: .4byte 0x0000022B
_0806F210: .4byte gUnk_084EBF1C
_0806F214: .4byte gUnk_030063E0
_0806F218:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r4, r0, #0
	muls r4, r1, r4
	ldr r0, _0806F2A8
	adds r4, r4, r0
	ldr r1, [sp, #0x50]
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
	bge _0806F248
	strh r6, [r4, #0]
_0806F248:
	ldr r2, [sp, #0x68]
	cmp r2, #3
	bhi _0806F2B4
	bl sub_08002164
	adds r5, r0, #0
	movs r4, #0
	ldr r3, [sp, #0x6c]
	lsls r6, r3, #0x13
	cmp r4, r5
	bhs _0806F29E
	ldr r0, _0806F2AC
	mov ip, r0
	ldr r1, [sp, #0x80]
	cmp r1, #0
	beq _0806F274
	ldr r2, _0806F2A8
	str r2, [sp, #0x64]
	ldrh r0, [r2, #0]
	ldr r3, [sp, #0x68]
	cmp r0, r3
	beq _0806F29A
_0806F274:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	bhs _0806F29E
	ldr r0, [sp, #0x80]
	cmp r0, r4
	beq _0806F274
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806F2A8
	adds r1, r1, r0
	str r1, [sp, #0x64]
	ldrh r0, [r1, #0]
	ldr r1, [sp, #0x68]
	cmp r0, r1
	bne _0806F274
_0806F29A:
	cmp r4, r5
	blo _0806F318
_0806F29E:
	ldr r2, _0806F2B0
	str r2, [sp, #0x68]
	ldr r3, _0806F2AC
	mov ip, r3
	b _0806F318
_0806F2A8: .4byte gUnk_03003CE0
_0806F2AC: .4byte gUnk_0847AD0A
_0806F2B0: .4byte 0x0000FFFF
_0806F2B4:
	movs r4, #0
	ldr r3, _0806F2D4
	ldr r5, [r3, #0]
	str r5, [sp, #0x54]
	ldr r2, _0806F2D8
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	ldr r6, _0806F2DC
	mov ip, r6
	ldr r1, [sp, #0x6c]
	lsls r6, r1, #0x13
	cmp r0, #0
	beq _0806F2E0
	ldrh r0, [r5, #2]
	b _0806F30A
_0806F2D4: .4byte gUnk_030056F4
_0806F2D8: .4byte gUnk_030056FC
_0806F2DC: .4byte gUnk_0847AD0A
_0806F2E0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bhi _0806F314
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [r3, #0]
	adds r1, r1, r0
	str r1, [sp, #0x54]
	movs r1, #1
	lsls r1, r4
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0806F2E0
	ldr r1, [sp, #0x54]
	ldrh r0, [r1, #2]
_0806F30A:
	ldr r5, [sp, #0x68]
	cmp r0, r5
	bne _0806F2E0
	cmp r4, #4
	bls _0806F318
_0806F314:
	ldr r0, _0806F340
	str r0, [sp, #0x68]
_0806F318:
	ldr r1, [sp, #0x80]
	cmp r1, #3
	bhi _0806F344
	ldr r2, [sp, #0x60]
	movs r3, #0xa4
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	lsls r0, r0, #8
	mov sl, r0
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0xc
	mov r9, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	b _0806F354
	.2byte 0x0000
_0806F340: .4byte 0x0000FFFF
_0806F344:
	ldr r4, [sp, #0x5c]
	ldr r4, [r4, #0x14]
	mov sl, r4
	ldr r5, [sp, #0x5c]
	ldr r5, [r5, #0x18]
	mov r9, r5
	ldr r0, [sp, #0x5c]
	ldrh r0, [r0, #8]
_0806F354:
	mov r8, r0
	mov r1, r8
	lsls r4, r1, #0x10
	asrs r0, r4, #0xf
	add r0, ip
	ldrh r0, [r0, #0]
	str r0, [sp, #0x78]
	bl sub_080020F4
	str r4, [sp, #0xac]
	ldr r2, [sp, #0x80]
	cmp r0, r2
	beq _0806F372
	cmp r2, #3
	bls _0806F38C
_0806F372:
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806F38C
	bl sub_0800CD34
	cmp r0, #0
	bne _0806F38C
	movs r3, #0xa7
	lsls r3, r3, #1
	adds r0, r7, r3
	bl sub_0805865C
_0806F38C:
	ldr r0, _0806F3C8
	ldr r4, [sp, #0x68]
	cmp r4, r0
	bne _0806F396
	b _0806F49A
_0806F396:
	cmp r4, #3
	bhi _0806F3CC
	ldr r5, [sp, #0x64]
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r0, r5, r7
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	add r3, sp, #0x44
	strh r0, [r3, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r4, r9
	asrs r1, r4, #8
	subs r0, r0, r1
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	str r3, [sp, #0x9c]
	b _0806F3EA
_0806F3C8: .4byte 0x0000FFFF
_0806F3CC:
	ldr r5, [sp, #0x54]
	ldr r0, [r5, #0x14]
	mov r7, sl
	subs r0, r0, r7
	lsrs r0, r0, #8
	add r2, sp, #0x44
	strh r0, [r2, #0]
	ldr r0, [r5, #0x18]
	mov r1, r9
	subs r0, r0, r1
	lsrs r0, r0, #8
	mov r1, sp
	adds r1, #0x46
	strh r0, [r1, #0]
	str r2, [sp, #0x9c]
_0806F3EA:
	str r1, [sp, #0xa0]
	ldr r2, [sp, #0x9c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r4, [sp, #0xa0]
	movs r5, #0
	ldrsh r1, [r4, r5]
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r1, r3, #0
	ldr r7, [sp, #0x78]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	subs r2, r1, r0
	cmp r2, #0x80
	ble _0806F43E
	ldr r2, _0806F41C
	adds r0, r2, #0
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0806F450
	.2byte 0x0000
_0806F41C: .4byte 0xFFFFFF00
_0806F420:
	movs r3, #1
	str r3, [sp, #0x7c]
	b _0806F816
_0806F426:
	movs r4, #1
	str r4, [sp, #0x7c]
	b _0806F816
_0806F42C:
	ldr r5, [sp, #0x70]
	str r5, [sp, #0]
	mov r0, sl
	mov r1, r9
	ldr r2, [sp, #0x80]
	movs r3, #0x12
	bl sub_08069A30
	b _0806F816
_0806F43E:
	movs r0, #0x80
	negs r0, r0
	cmp r2, r0
	bge _0806F450
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	adds r3, r0, #0
	orrs r3, r1
_0806F450:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x78]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	str r3, [sp, #0x78]
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0806F47A
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
_0806F47A:
	ldr r5, [sp, #0x78]
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0806F492
	ldr r7, _0806F4F4
	adds r0, r1, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
_0806F492:
	movs r0, #0xff
	ldr r1, [sp, #0x78]
	ands r1, r0
	str r1, [sp, #0x78]
_0806F49A:
	ldr r2, _0806F4F8
	ldr r3, [sp, #0x78]
	lsls r5, r3, #0x10
	asrs r1, r5, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r4, #0
	ldrsh r0, [r0, r4]
	lsls r0, r0, #2
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r7, #0
	ldrsh r0, [r1, r7]
	lsls r0, r0, #2
	add r9, r0
	ldr r1, _0806F4FC
	movs r3, #1
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	add r0, sp, #0x10
	movs r2, #8
	bl sub_08065158
	add r1, sp, #0x10
	movs r0, #7
	strb r0, [r1, #0x1c]
	movs r0, #8
	strb r0, [r1, #0x1d]
	add r0, sp, #0x48
	strh r4, [r0, #0]
	movs r1, #0x4a
	add r1, sp
	strh r4, [r1, #0]
	movs r2, #0xa0
	lsls r2, r2, #0xd
	adds r0, r6, r2
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	str r5, [sp, #0xa8]
	b _0806F7E4
	.2byte 0x0000
_0806F4F4: .4byte 0xFFFFFF00
_0806F4F8: .4byte gUnk_080B9704
_0806F4FC: .4byte 0x000500D0
_0806F500:
	movs r3, #1
	str r3, [sp, #0x7c]
	b _0806F586
_0806F506:
	movs r4, #0
	str r4, [sp, #0x7c]
	ldr r0, _0806F634
	ldr r5, [sp, #0x68]
	cmp r5, r0
	bne _0806F514
	b _0806F6CE
_0806F514:
	cmp r5, #3
	bls _0806F586
	ldr r2, _0806F638
	ldr r2, [r2, #0]
	ldr r5, _0806F63C
	add r3, sp, #0x44
_0806F520:
	movs r0, #1
	lsls r0, r4
	ands r0, r2
	cmp r0, #0
	beq _0806F57C
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	subs r0, r0, r4
	lsls r0, r0, #5
	ldr r1, [r5, #0]
	adds r1, r1, r0
	str r1, [sp, #0x58]
	movs r6, #0xee
	lsls r6, r6, #1
	adds r0, r1, r6
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806F57C
	ldr r0, [r1, #0x14]
	mov r7, sl
	subs r0, r0, r7
	lsrs r0, r0, #8
	strh r0, [r3, #0]
	ldr r0, [r1, #0x18]
	mov r1, r9
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0, #0]
	movs r6, #0
	ldrsh r0, [r3, r6]
	cmp r0, #0
	bge _0806F56A
	negs r0, r0
_0806F56A:
	cmp r0, #7
	bgt _0806F57C
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806F578
	negs r0, r0
_0806F578:
	cmp r0, #7
	ble _0806F500
_0806F57C:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	bls _0806F520
_0806F586:
	ldr r0, _0806F634
	ldr r7, [sp, #0x68]
	cmp r7, r0
	bne _0806F590
	b _0806F6CE
_0806F590:
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	beq _0806F598
	b _0806F816
_0806F598:
	bl sub_08002164
	adds r5, r0, #0
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0]
	cmp r0, #3
	bhi _0806F644
	movs r4, #0
	cmp r4, r5
	blo _0806F5AE
	b _0806F6CE
_0806F5AE:
	add r6, sp, #0x44
_0806F5B0:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806F640
	adds r1, r1, r0
	str r1, [sp, #0x64]
	adds r0, r1, #0
	adds r0, #0x68
	ldr r1, [sp, #0x60]
	adds r1, #0x68
	ldrb r3, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r3, r1
	beq _0806F626
	ldr r2, [sp, #0x64]
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r0, r2, r7
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _0806F626
	cmp r3, #0
	beq _0806F626
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r3, sl
	asrs r1, r3, #8
	subs r0, r0, r1
	strh r0, [r6, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r7, r9
	asrs r1, r7, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0, #0]
	movs r2, #0
	ldrsh r0, [r6, r2]
	cmp r0, #0
	bge _0806F612
	negs r0, r0
_0806F612:
	cmp r0, #0xf
	bgt _0806F626
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806F620
	negs r0, r0
_0806F620:
	cmp r0, #0xf
	bgt _0806F626
	b _0806F420
_0806F626:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0806F5B0
	b _0806F6CE
	.2byte 0x0000
_0806F634: .4byte 0x0000FFFF
_0806F638: .4byte gUnk_030056FC
_0806F63C: .4byte gUnk_030056F4
_0806F640: .4byte gUnk_03003CE0
_0806F644:
	movs r4, #0
	cmp r4, r5
	bhs _0806F6CE
	add r3, sp, #0x44
_0806F64C:
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0806F838
	adds r1, r1, r0
	str r1, [sp, #0x64]
	ldr r0, [r1, #0x30]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _0806F6C4
	ldr r6, [sp, #0x64]
	movs r7, #0xa4
	lsls r7, r7, #1
	adds r0, r6, r7
	ldr r2, [r0, #0]
	ldrb r0, [r2, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xe
	beq _0806F6C4
	adds r0, r6, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _0806F6C4
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r6, sl
	asrs r1, r6, #8
	subs r0, r0, r1
	strh r0, [r3, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r7, r9
	asrs r1, r7, #8
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r0, sp
	adds r0, #0x46
	strh r1, [r0, #0]
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _0806F6B0
	negs r0, r0
_0806F6B0:
	cmp r0, #0xf
	bgt _0806F6C4
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _0806F6BE
	negs r0, r0
_0806F6BE:
	cmp r0, #0xf
	bgt _0806F6C4
	b _0806F426
_0806F6C4:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0806F64C
_0806F6CE:
	ldr r3, [sp, #0x7c]
	cmp r3, #0
	beq _0806F6D6
	b _0806F816
_0806F6D6:
	mov r0, sl
	mov r1, r9
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0806F6F6
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	bne _0806F6F6
	b _0806F42C
_0806F6F6:
	ldr r2, _0806F83C
	ldr r4, [sp, #0xa8]
	asrs r1, r4, #0x10
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r0, [r0, r5]
	lsls r0, r0, #1
	add sl, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #1
	add r9, r0
	mov r7, sl
	asrs r5, r7, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	add r7, sp, #0x44
	movs r2, #0x46
	add r2, sp
	mov r8, r2
	movs r2, #0x30
	str r2, [sp, #0]
	ldr r3, [sp, #0x7c]
	str r3, [sp, #4]
	adds r2, r7, #0
	mov r3, r8
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r4, [sp, #0xac]
	lsrs r4, r4, #0x10
	str r4, [sp, #0x8c]
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	adds r1, r4, #0
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0806F7E0
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806F7E0
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806F7E0
	ldr r4, _0806F840
	ldr r0, [r4, #0]
	ands r0, r5
	cmp r0, #0
	bne _0806F792
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806F792:
	ldr r1, [r4, #0]
	ands r1, r5
	ldr r0, [sp, #0x80]
	ands r0, r5
	cmp r1, r0
	bne _0806F7E0
	movs r5, #0
	ldrsh r0, [r7, r5]
	ldr r3, _0806F844
	ldr r2, _0806F848
	ldr r7, [sp, #0xa8]
	asrs r1, r7, #0x14
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r4, #0
	ldrsh r1, [r1, r4]
	adds r0, r0, r1
	mov r5, r8
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r4, sp, #0x48
	ldrh r3, [r4, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	ldr r2, [sp, #0x8c]
	bl sub_08007870
_0806F7E0:
	bl sub_080003F0
_0806F7E4:
	ldr r1, [sp, #0x6c]
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x6c]
	cmp r1, #0
	beq _0806F816
	bl sub_080020F4
	ldr r5, [sp, #0x80]
	cmp r5, r0
	beq _0806F7FE
	b _0806F506
_0806F7FE:
	ldr r6, [sp, #0x60]
	ldrh r0, [r6, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806F816
	bl sub_0800D11C
	cmp r0, #0
	bne _0806F816
	b _0806F506
_0806F816:
	bl sub_0800CDF8
	cmp r0, #0
	beq _0806F822
	movs r7, #0
	str r7, [sp, #0x7c]
_0806F822:
	ldr r0, [sp, #0x7c]
	cmp r0, #0
	bne _0806F82A
	b _0806FDDA
_0806F82A:
	movs r4, #0x1e
	ldr r1, [sp, #0x64]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r1, r1, r2
	mov r8, r1
	b _0806F962
_0806F838: .4byte gUnk_03003CE0
_0806F83C: .4byte gUnk_080B9704
_0806F840: .4byte gUnk_03002344
_0806F844: .4byte gUnk_084EBEBC
_0806F848: .4byte gUnk_084790B4
_0806F84C:
	ldr r3, [sp, #0x68]
	cmp r3, #3
	bls _0806F88E
	ldr r5, [sp, #0x58]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	ldr r0, [r5, #0x14]
	asrs r0, r0, #8
	ldr r1, [r5, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	mov r6, sp
	adds r6, #0x44
	str r6, [sp, #0x9c]
	mov r7, sp
	adds r7, #0x46
	str r7, [sp, #0xa0]
	b _0806F8CE
_0806F88E:
	mov r0, r8
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x44
	mov r3, sp
	adds r3, #0x46
	bl sub_0800BC08
	mov r2, r8
	ldr r1, [r2, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	ldrh r1, [r1, #2]
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x14
	movs r2, #0
	bl sub_0800BC44
	mov r3, sp
	adds r3, #0x44
	str r3, [sp, #0x9c]
	mov r5, sp
	adds r5, #0x46
	str r5, [sp, #0xa0]
_0806F8CE:
	ldr r6, [sp, #0xac]
	movs r7, #0x80
	lsls r7, r7, #0xc
	adds r0, r6, r7
	lsrs r7, r0, #0x10
	movs r6, #1
	str r6, [sp, #0]
	add r0, sp, #0x10
	adds r1, r7, #0
	add r2, sp, #0x48
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0806F95E
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806F95E
	bl sub_0800CCCC
	adds r5, r0, #0
	cmp r5, #0
	bne _0806F95E
	ldr r0, _0806F9B8
	ldr r0, [r0, #0]
	ands r0, r6
	cmp r0, #0
	bne _0806F918
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806F918:
	ldr r1, [sp, #0x9c]
	movs r2, #0
	ldrsh r0, [r1, r2]
	ldr r2, _0806F9BC
	ldr r3, [sp, #0xa8]
	asrs r1, r3, #0x14
	adds r1, r1, r2
	ldrb r2, [r1, #0]
	lsls r2, r2, #2
	ldr r6, _0806F9C0
	adds r1, r2, r6
	movs r3, #0
	ldrsh r1, [r1, r3]
	adds r0, r0, r1
	ldr r6, [sp, #0xa0]
	movs r3, #0
	ldrsh r1, [r6, r3]
	ldr r6, _0806F9C4
	adds r2, r2, r6
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	adds r1, #2
	add r6, sp, #0x48
	ldrh r3, [r6, #0]
	str r5, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r7, #0
	bl sub_08007870
_0806F95E:
	bl sub_080003F0
_0806F962:
	adds r1, r4, #0
	subs r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r1, #0
	beq _0806F990
	ldr r7, [sp, #0x80]
	ldr r0, [sp, #0x88]
	cmp r7, r0
	beq _0806F978
	b _0806F84C
_0806F978:
	ldr r1, [sp, #0x60]
	ldrh r0, [r1, #0x20]
	subs r0, #0xb
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0806F990
	bl sub_0800D11C
	cmp r0, #0
	bne _0806F990
	b _0806F84C
_0806F990:
	ldr r2, [sp, #0x68]
	cmp r2, #3
	bls _0806F9C8
	ldr r3, [sp, #0x54]
	ldrh r0, [r3, #0]
	adds r0, #4
	ldr r4, [sp, #0x50]
	str r0, [r4, #8]
	ldr r5, [sp, #0x80]
	ldr r6, [sp, #0x88]
	cmp r5, r6
	bne _0806F9AE
	ldr r0, [sp, #0x50]
	bl sub_080694AC
_0806F9AE:
	ldr r7, [sp, #0x54]
	movs r0, #0x86
	lsls r0, r0, #2
	adds r1, r7, r0
	b _0806F9D4
_0806F9B8: .4byte gUnk_03002344
_0806F9BC: .4byte gUnk_084790B4
_0806F9C0: .4byte gUnk_084EBEBC
_0806F9C4: .4byte gUnk_084EBEBE
_0806F9C8:
	ldr r1, [sp, #0x80]
	ldr r2, [sp, #0x88]
	cmp r1, r2
	bne _0806F9F4
	ldr r1, [sp, #0x64]
	adds r1, #0x7c
_0806F9D4:
	ldr r0, [sp, #0x50]
	bl sub_08068F9C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	b _0806FA08
_0806F9E2:
	ldr r3, [sp, #0x70]
	str r3, [sp, #0]
	mov r0, sl
	mov r1, r9
	ldr r2, [sp, #0x80]
	movs r3, #0x12
	bl sub_08069A30
	b _0806FC94
_0806F9F4:
	ldr r4, [sp, #0x64]
	ldrh r0, [r4, #0]
	ldr r5, [sp, #0x88]
	cmp r0, r5
	bne _0806FA08
	ldr r6, [sp, #0x50]
	str r5, [r6, #8]
	ldr r0, [sp, #0x50]
	bl sub_080694AC
_0806FA08:
	mov r7, sp
	adds r7, #0x44
	str r7, [sp, #0x90]
	mov r0, sp
	adds r0, #0x46
	str r0, [sp, #0x94]
	b _0806FC6A
_0806FA16:
	mov r0, sl
	mov r1, r9
	movs r2, #0
	bl sub_0800AE50
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0806FA34
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0806F9E2
_0806FA34:
	ldr r1, [sp, #0x80]
	cmp r1, #3
	bhi _0806FAAC
	ldr r2, [sp, #0x88]
	cmp r1, r2
	bne _0806FA76
	ldr r3, [sp, #0x60]
	movs r4, #0xa4
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r5, sl
	asrs r1, r5, #8
	subs r0, r0, r1
	ldr r6, [sp, #0x90]
	strh r0, [r6, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r7, r9
	asrs r1, r7, #8
	subs r0, r0, r1
	ldr r1, [sp, #0x94]
	strh r0, [r1, #0]
	mov r2, sp
	adds r2, #0x44
	str r2, [sp, #0x9c]
	mov r3, sp
	adds r3, #0x46
	str r3, [sp, #0xa0]
	b _0806FAD2
_0806FA76:
	ldr r1, _0806FAA8
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r4, [sp, #0x80]
	muls r0, r4, r0
	movs r5, #0xa4
	lsls r5, r5, #1
	adds r1, r1, r5
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0]
	lsrs r0, r0, #4
	mov r6, sl
	asrs r1, r6, #8
	subs r0, r0, r1
	ldr r7, [sp, #0x90]
	strh r0, [r7, #0]
	ldrh r0, [r2, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	mov r2, r9
	asrs r1, r2, #8
	subs r0, r0, r1
	b _0806FAC2
	.2byte 0x0000
_0806FAA8: .4byte gUnk_03003CE0
_0806FAAC:
	ldr r6, [sp, #0x5c]
	ldr r0, [r6, #0x14]
	mov r7, sl
	subs r0, r0, r7
	asrs r0, r0, #8
	ldr r1, [sp, #0x90]
	strh r0, [r1, #0]
	ldr r0, [r6, #0x18]
	mov r2, r9
	subs r0, r0, r2
	asrs r0, r0, #8
_0806FAC2:
	ldr r3, [sp, #0x94]
	strh r0, [r3, #0]
	mov r4, sp
	adds r4, #0x44
	str r4, [sp, #0x9c]
	mov r5, sp
	adds r5, #0x46
	str r5, [sp, #0xa0]
_0806FAD2:
	ldr r6, [sp, #0x9c]
	movs r7, #0
	ldrsh r0, [r6, r7]
	ldr r2, [sp, #0xa0]
	movs r3, #0
	ldrsh r1, [r2, r3]
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x18
	adds r2, r3, #0
	ldr r4, [sp, #0x78]
	lsls r0, r4, #0x10
	asrs r0, r0, #0x10
	subs r1, r2, r0
	cmp r1, #0x80
	ble _0806FB04
	ldr r5, _0806FB00
	adds r0, r5, #0
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _0806FB16
_0806FB00: .4byte 0xFFFFFF00
_0806FB04:
	movs r0, #0x80
	negs r0, r0
	cmp r1, r0
	bge _0806FB16
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r6, #0
	adds r3, r0, #0
	orrs r3, r2
_0806FB16:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	ldr r7, [sp, #0x78]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	str r0, [sp, #0x78]
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _0806FB40
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
_0806FB40:
	ldr r2, [sp, #0x78]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	cmp r0, r3
	ble _0806FB58
	ldr r4, _0806FD44
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x78]
_0806FB58:
	movs r0, #0xff
	ldr r5, [sp, #0x78]
	ands r5, r0
	str r5, [sp, #0x78]
	ldr r1, _0806FD48
	lsls r0, r5, #0x10
	asrs r4, r0, #0x10
	asrs r0, r0, #0x14
	adds r0, r0, r1
	str r0, [sp, #0x98]
	ldrb r0, [r0, #0]
	adds r0, #8
	mov r8, r0
	ldr r7, [sp, #0x9c]
	movs r6, #0
	ldrsh r0, [r7, r6]
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, [sp, #0xa0]
	movs r2, #0
	ldrsh r1, [r6, r2]
	adds r3, r1, #0
	muls r3, r1, r3
	adds r1, r3, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _0806FC94
	ldr r2, _0806FD4C
	adds r0, r4, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r5, #0
	ldrsh r1, [r0, r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	add sl, r0
	lsls r0, r4, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r1, [r0, r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	add r9, r0
	mov r3, sl
	asrs r5, r3, #8
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	mov r1, r9
	asrs r4, r1, #8
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	adds r2, r7, #0
	adds r3, r6, #0
	bl sub_0800BC08
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r4, r8
	add r2, sp, #0x48
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	adds r1, r4, #0
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	bl sub_0800CC98
	cmp r0, #0
	bne _0806FC66
	bl sub_0800CD8C
	cmp r0, #0
	bne _0806FC66
	bl sub_0800CCCC
	cmp r0, #0
	bne _0806FC66
	ldr r0, _0806FD50
	ldr r0, [r0, #0]
	ands r0, r5
	cmp r0, #0
	bne _0806FC28
	ldr r1, [sp, #0x1c]
	movs r0, #0x17
	movs r2, #2
	bl sub_08000AF0
_0806FC28:
	ldr r2, [sp, #0x9c]
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldr r3, _0806FD54
	ldr r5, [sp, #0x98]
	ldrb r2, [r5, #0]
	lsls r2, r2, #2
	adds r1, r2, r3
	movs r7, #0
	ldrsh r1, [r1, r7]
	adds r0, r0, r1
	ldr r5, [sp, #0xa0]
	movs r7, #0
	ldrsh r1, [r5, r7]
	adds r3, #2
	adds r2, r2, r3
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, r1, r2
	add r5, sp, #0x48
	ldrh r3, [r5, #0]
	str r6, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	adds r2, r4, #0
	bl sub_08007870
_0806FC66:
	bl sub_080003F0
_0806FC6A:
	bl sub_080020F4
	ldr r6, [sp, #0x80]
	cmp r6, r0
	beq _0806FC76
	b _0806FA16
_0806FC76:
	bl sub_0801DF8C
	cmp r0, #0
	bne _0806FC94
	ldr r7, [sp, #0x60]
	ldrh r0, [r7, #0x20]
	cmp r0, #0xb
	beq _0806FC94
	cmp r0, #0xc
	beq _0806FC94
	bl sub_0800D11C
	cmp r0, #0
	bne _0806FC94
	b _0806FA16
_0806FC94:
	ldr r1, [sp, #0x50]
	ldr r0, [r1, #0x14]
	adds r0, #2
	ldr r2, [sp, #0x74]
	muls r0, r2, r0
	movs r1, #0x32
	bl sub_080B956C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x74]
	ldr r3, [sp, #0x50]
	ldr r0, [r3, #0]
	cmp r0, #3
	bhi _0806FD5C
	ldr r4, [sp, #0x80]
	ldr r5, [sp, #0x88]
	cmp r4, r5
	beq _0806FCBC
	b _0806FDDA
_0806FCBC:
	bl sub_0801DF8C
	cmp r0, #0
	beq _0806FCC6
	b _0806FDDA
_0806FCC6:
	ldr r2, [sp, #0x60]
	adds r2, #0xc4
	ldrh r0, [r2, #0]
	ldr r6, [sp, #0x74]
	adds r0, r6, r0
	strh r0, [r2, #0]
	ldr r1, [sp, #0x60]
	adds r1, #0x62
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1, #0]
	movs r7, #0
	ldrsh r1, [r1, r7]
	cmp r0, r1
	ble _0806FCE6
	strh r3, [r2, #0]
_0806FCE6:
	ldr r0, [sp, #0x60]
	adds r0, #0x8c
	ldr r6, [sp, #0x74]
	ldr r1, _0806FD58
	cmp r6, r1
	bls _0806FCF4
	adds r6, r1, #0
_0806FCF4:
	ldr r4, [r0, #0]
	ldr r5, [r0, #4]
	movs r7, #0
	add r0, sp, #0x4c
	mov r9, r0
	movs r1, #0x4e
	add r1, sp
	mov r8, r1
_0806FD04:
	lsls r0, r4, #8
	asrs r0, r0, #0x10
	lsls r1, r5, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x4c
	mov r3, sp
	adds r3, #0x4e
	bl sub_0800BC08
	mov r2, r9
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	movs r3, #2
	bl sub_0805FAC0
	subs r5, #0x40
	bl sub_080003F0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x1d
	bls _0806FD04
	b _0806FDDA
_0806FD44: .4byte 0xFFFFFF00
_0806FD48: .4byte gUnk_084790B4
_0806FD4C: .4byte gUnk_080B9704
_0806FD50: .4byte gUnk_03002344
_0806FD54: .4byte gUnk_084EBEBC
_0806FD58: .4byte 0x000003E7
_0806FD5C:
	ldr r2, [sp, #0x54]
	adds r2, #0x5c
	ldrh r0, [r2, #0]
	ldr r4, [sp, #0x74]
	adds r0, r4, r0
	strh r0, [r2, #0]
	ldr r5, [sp, #0x54]
	movs r6, #0xeb
	lsls r6, r6, #1
	adds r1, r5, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r3, [r1, #0]
	movs r7, #0
	ldrsh r1, [r1, r7]
	cmp r0, r1
	ble _0806FD80
	strh r3, [r2, #0]
_0806FD80:
	ldr r6, [sp, #0x74]
	ldr r0, _0806FE14
	cmp r6, r0
	bls _0806FD8A
	adds r6, r0, #0
_0806FD8A:
	ldr r0, [sp, #0x54]
	ldr r4, [r0, #0x14]
	ldr r5, [r0, #0x18]
	movs r7, #0
	add r1, sp, #0x4c
	mov r9, r1
	movs r2, #0x4e
	add r2, sp
	mov r8, r2
_0806FD9C:
	lsls r0, r4, #8
	asrs r0, r0, #0x10
	lsls r1, r5, #8
	asrs r1, r1, #0x10
	movs r2, #0x30
	str r2, [sp, #0]
	movs r2, #0
	str r2, [sp, #4]
	add r2, sp, #0x4c
	mov r3, sp
	adds r3, #0x4e
	bl sub_0800BC08
	mov r3, r9
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, r8
	movs r3, #0
	ldrsh r1, [r2, r3]
	adds r2, r6, #0
	movs r3, #2
	bl sub_0805FAC0
	subs r5, #0x40
	bl sub_080003F0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x1d
	bls _0806FD9C
_0806FDDA:
	ldr r4, [sp, #0x80]
	cmp r4, #3
	bhi _0806FDF0
	ldr r5, [sp, #0x88]
	cmp r4, r5
	beq _0806FDF0
	ldr r1, [sp, #0x60]
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_0806FDF0:
	ldr r2, _0806FE18
	ldr r6, [sp, #0xa4]
	adds r2, r6, r2
	movs r1, #1
	ldr r7, [sp, #0x84]
	lsls r1, r7
	ldr r0, [r2, #0]
	bics r0, r1
	str r0, [r2, #0]
_0806FE02:
	add sp, #0xb0
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0806FE14: .4byte 0x000003E7
_0806FE18: .4byte gUnk_030063E0
	thumb_func_end sub_0806F0CC
