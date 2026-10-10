	thumb_func_start sub_080AC214
sub_080AC214: @ 0x080AC214
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080AC2D8
	ldr r7, _080AC2E0
	bl sub_080020F4
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080AC2D8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080AC2D8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080AC2D8
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080AC2D8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080AC2D8
	bl sub_080020F4
	adds r5, r0, #0
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	asrs r4, r4, #8
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	ldr r0, _080AC2E4
	ldr r0, [r0, #0]
	ldr r2, [r0, #0x14]
	asrs r2, r2, #8
	ldr r3, [r0, #0x18]
	asrs r3, r3, #8
	adds r0, r4, #0
	bl sub_08095FC8
	adds r1, r5, #0
	muls r1, r6, r1
	adds r1, r1, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, #0xca
	strh r0, [r1, #0]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xc8
	movs r1, #1
	strh r1, [r0, #0]
_080AC2D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080AC2E0: .4byte gUnk_03003CE0
_080AC2E4: .4byte gUnk_03000434
	thumb_func_end sub_080AC214
