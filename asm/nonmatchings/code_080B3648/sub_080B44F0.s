	thumb_func_start sub_080B44F0
sub_080B44F0: @ 0x080B44F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	lsls r5, r3, #0x10
	lsrs r5, r5, #0x10
	movs r0, #0
	str r0, [sp, #0]
	mov r3, r8
	ldr r0, [r3, #0x14]
	adds r6, r1, r0
	ldr r0, [r3, #0x18]
	adds r7, r2, r0
	bl sub_080020F4
	ldr r1, _080B4688
	mov sl, r1
	movs r2, #0xa6
	lsls r2, r2, #1
	mov r9, r2
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	subs r4, r6, r4
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sl
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r0, #0]
	subs r1, r7, r1
	lsls r1, r1, #8
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	asrs r1, r1, #0x10
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	blo _080B4566
	b _080B4674
_080B4566:
	bl sub_0800CDF8
	cmp r0, #0
	beq _080B4570
	b _080B4674
_080B4570:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B4674
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B4674
	mov r3, r8
	ldrh r0, [r3, #0xc]
	cmp r0, #0xb
	beq _080B4674
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	mov r1, sl
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080B4674
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080B4674
	bl sub_080020F4
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080B4674
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080B4674
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, sl
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080B4674
	bl sub_080020F4
	mov r3, r8
	ldrh r1, [r3, #0]
	lsls r1, r1, #2
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	mov r5, sl
	adds r5, #0xe4
	adds r1, r1, r5
	ldr r1, [r1, #0]
	ldr r0, [r3, #0x50]
	cmp r1, r0
	beq _080B4674
	bl sub_080020F4
	mov r3, r9
	muls r3, r0, r3
	adds r0, r3, #0
	add r0, sl
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sl
	adds r0, #0xb0
	ldr r1, _080B468C
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	mov r1, r9
	muls r1, r0, r1
	add r1, sl
	mov r0, r8
	bl sub_0801ED8C
	mov r1, r9
	muls r1, r4, r1
	add r1, sl
	adds r1, #0x88
	ldrh r2, [r1, #0]
	adds r0, r0, r2
	strh r0, [r1, #0]
	bl sub_080020F4
	mov r3, r8
	ldrh r1, [r3, #0]
	lsls r1, r1, #2
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	adds r1, r1, r5
	ldr r0, [r3, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r3, #0x50]
	movs r3, #1
	str r3, [sp, #0]
_080B4674:
	ldr r0, [sp, #0]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_080B4688: .4byte gUnk_03003CE0
_080B468C: .4byte 0x0000FFFE
	thumb_func_end sub_080B44F0
