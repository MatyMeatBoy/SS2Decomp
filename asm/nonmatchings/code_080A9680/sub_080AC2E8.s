	thumb_func_start sub_080AC2E8
sub_080AC2E8: @ 0x080AC2E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	movs r0, #0
	mov sl, r0
	mov r1, r9
	cmp r1, #0
	beq _080AC31C
	ldr r4, _080AC374
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0xc8
	ldrh r1, [r0, #0]
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #0x1f
	mov sl, r0
_080AC31C:
	bl sub_080020F4
	ldr r6, _080AC378
	ldr r2, [r6, #0]
	ldr r4, _080AC374
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r1, r0, #0
	muls r1, r5, r1
	adds r0, r4, #0
	adds r0, #0x8c
	adds r1, r1, r0
	ldr r0, [r2, #0x14]
	ldr r1, [r1, #0]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_080020F4
	ldr r6, [r6, #0]
	ldr r1, [r6, #0x18]
	asrs r1, r1, #8
	muls r0, r5, r0
	adds r4, #0x90
	adds r0, r0, r4
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	adds r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	ldr r1, [r6, #0x18]
	ldr r0, [r0, #0]
	cmp r1, r0
	bge _080AC380
	lsls r0, r7, #0x10
	ldr r2, _080AC37C
	adds r0, r0, r2
	b _080AC388
_080AC374: .4byte gUnk_03003CE0
_080AC378: .4byte gUnk_03000434
_080AC37C: .4byte 0xFFF40000
_080AC380:
	lsls r0, r7, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r0, r1
_080AC388:
	lsrs r7, r0, #0x10
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r1, #0
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r9
	cmp r1, #0
	beq _080AC3B2
	b _080AC5A0
_080AC3B2:
	cmp r0, #0x2f
	bls _080AC3B8
	b _080AC5A0
_080AC3B8:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080AC3C2
	b _080AC5A0
_080AC3C2:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080AC3CC
	b _080AC5A0
_080AC3CC:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080AC3D6
	b _080AC5A0
_080AC3D6:
	ldr r2, _080AC51C
	mov r9, r2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	bne _080AC3E4
	b _080AC5A0
_080AC3E4:
	bl sub_080020F4
	ldr r7, _080AC520
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _080AC404
	b _080AC5A0
_080AC404:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080AC416
	b _080AC5A0
_080AC416:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	bne _080AC426
	b _080AC5A0
_080AC426:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	bne _080AC436
	b _080AC5A0
_080AC436:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	bne _080AC446
	b _080AC5A0
_080AC446:
	bl sub_080020F4
	mov r1, r9
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	movs r0, #0xe4
	adds r0, r0, r7
	mov r8, r0
	add r1, r8
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	bne _080AC468
	b _080AC5A0
_080AC468:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080AC524
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r1, r9
	ldr r4, [r1, #0]
	bl sub_080020F4
	adds r1, r0, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r0, r4, #0
	bl sub_0801ED8C
	adds r1, r5, #0
	muls r1, r6, r1
	adds r1, r1, r7
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r1, r9
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	add r1, r8
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x8c
	adds r0, r0, r1
	mov r2, r9
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x14]
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	mov r8, r0
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x90
	adds r0, r0, r1
	mov r1, r9
	ldr r2, [r1, #0]
	ldr r1, [r0, #0]
	ldr r0, [r2, #0x18]
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r2, r8
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl sub_080B8570
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r4, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080AC52A
	cmp r4, #6
	bhi _080AC528
	adds r4, #1
	b _080AC52A
	.2byte 0x0000
_080AC51C: .4byte gUnk_03000434
_080AC520: .4byte gUnk_03003CE0
_080AC524: .4byte 0x0000FFFE
_080AC528:
	movs r4, #0
_080AC52A:
	cmp r4, #0
	beq _080AC54C
	cmp r4, #1
	beq _080AC564
	bl sub_080020F4
	ldr r2, _080AC548
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	subs r1, r4, #2
	adds r0, #0xca
	b _080AC576
	.2byte 0x0000
_080AC548: .4byte gUnk_03003CE0
_080AC54C:
	bl sub_080020F4
	ldr r2, _080AC560
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #6
	b _080AC576
_080AC560: .4byte gUnk_03003CE0
_080AC564:
	bl sub_080020F4
	ldr r2, _080AC5B0
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0xca
	movs r1, #7
_080AC576:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080AC5B0
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #0x10
	strh r1, [r0, #0]
	movs r0, #1
	mov sl, r0
_080AC5A0:
	mov r0, sl
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_080AC5B0: .4byte gUnk_03003CE0
	thumb_func_end sub_080AC2E8
