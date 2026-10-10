	thumb_func_start sub_080A9100
sub_080A9100: @ 0x080A9100
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080A9234
	mov r8, r0
	ldr r0, [r0, #0]
	ldr r4, [r0, #0x14]
	ldr r5, [r0, #0x18]
	ldr r1, _080A9238
	movs r2, #0xb0
	lsls r2, r2, #1
	adds r0, r1, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #5
	adds r4, r4, r0
	adds r1, #0xe0
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #5
	adds r5, r5, r0
	bl sub_080020F4
	ldr r7, _080A923C
	movs r6, #0xa6
	lsls r6, r6, #1
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r6, r0
	adds r1, r7, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	subs r5, r5, r0
	lsls r5, r5, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r5, r5, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _080A9174
	b _080A92A8
_080A9174:
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xc8
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A9186
	b _080A92A8
_080A9186:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080A9190
	b _080A92A8
_080A9190:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A919A
	b _080A92A8
_080A919A:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A91A4
	b _080A92A8
_080A91A4:
	mov r1, r8
	ldr r0, [r1, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A92A8
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
	bne _080A92A8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A92A8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A92A8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A92A8
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A92A8
	bl sub_080020F4
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A92A8
	bl sub_0800CE30
	cmp r0, #1
	bne _080A9240
	movs r0, #1
	movs r1, #0xc8
	movs r2, #4
	bl sub_08029A7C
	b _080A924A
	.2byte 0x0000
_080A9234: .4byte gUnk_0300041C
_080A9238: .4byte gUnk_080B9704
_080A923C: .4byte gUnk_03003CE0
_080A9240:
	movs r0, #1
	movs r1, #0x50
	movs r2, #4
	bl sub_08029A7C
_080A924A:
	bl sub_080020F4
	ldr r5, _080A92B4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xb0
	ldr r1, _080A92B8
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A92BC
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xca
	movs r1, #1
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xcc
	movs r1, #0x80
	lsls r1, r1, #3
	strh r1, [r0, #0]
	bl sub_080020F4
	muls r0, r4, r0
	adds r0, r0, r5
	adds r0, #0xc8
	movs r1, #0x50
	strh r1, [r0, #0]
_080A92A8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A92B4: .4byte gUnk_03003CE0
_080A92B8: .4byte 0x0000FFFE
_080A92BC: .4byte gUnk_0300041C
	thumb_func_end sub_080A9100
