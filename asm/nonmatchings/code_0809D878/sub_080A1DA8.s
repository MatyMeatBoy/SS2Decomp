	thumb_func_start sub_080A1DA8
sub_080A1DA8: @ 0x080A1DA8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r0, _080A1E40
	ldr r0, [r0, #0]
	ldr r5, [r0, #0x14]
	lsls r5, r5, #8
	lsrs r5, r5, #0x10
	ldr r6, [r0, #0x18]
	lsls r6, r6, #8
	lsrs r6, r6, #0x10
	ldr r0, _080A1E44
	mov r8, r0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	mov r9, r1
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	subs r1, #4
	add r8, r1
	add r0, r8
	ldr r0, [r0, #0]
	ldrh r4, [r0, #0]
	lsrs r4, r4, #4
	bl sub_080020F4
	mov r2, r9
	muls r2, r0, r2
	adds r0, r2, #0
	add r0, r8
	ldr r0, [r0, #0]
	ldrh r1, [r0, #2]
	lsls r1, r1, #0x14
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	subs r4, r4, r5
	lsrs r1, r1, #0x14
	lsls r6, r6, #0x10
	asrs r6, r6, #0x10
	subs r1, r1, r6
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r1, r1, #0x10
	asrs r5, r1, #0x10
	adds r1, r5, #0
	muls r1, r5, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bls _080A1E20
	b _080A1F6E
_080A1E20:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080A1E4A
	cmp r2, #6
	bhi _080A1E48
	adds r2, #1
	b _080A1E4A
	.2byte 0x0000
_080A1E40: .4byte gUnk_03000348
_080A1E44: .4byte gUnk_03003CE0
_080A1E48:
	movs r2, #0
_080A1E4A:
	ldr r0, _080A1F7C
	ldr r0, [r0, #0]
	movs r1, #8
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne _080A1E5A
	cmp r2, #2
	beq _080A1E92
_080A1E5A:
	cmp r0, #1
	bne _080A1E62
	cmp r2, #3
	beq _080A1E92
_080A1E62:
	cmp r0, #2
	bne _080A1E6A
	cmp r2, #4
	beq _080A1E92
_080A1E6A:
	cmp r0, #3
	bne _080A1E72
	cmp r2, #5
	beq _080A1E92
_080A1E72:
	cmp r0, #4
	bne _080A1E7A
	cmp r2, #6
	beq _080A1E92
_080A1E7A:
	cmp r0, #5
	bne _080A1E82
	cmp r2, #7
	beq _080A1E92
_080A1E82:
	cmp r0, #6
	bne _080A1E8A
	cmp r2, #0
	beq _080A1E92
_080A1E8A:
	cmp r0, #7
	bne _080A1F6E
	cmp r2, #1
	bne _080A1F6E
_080A1E92:
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A1F6E
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A1F6E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A1F6E
	ldr r2, _080A1F7C
	mov r8, r2
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A1F6E
	bl sub_080020F4
	ldr r7, _080A1F80
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
	bne _080A1F6E
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A1F6E
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A1F6E
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A1F6E
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A1F6E
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	movs r1, #0xa
	strh r1, [r0, #0x20]
	bl sub_080020F4
	muls r0, r6, r0
	adds r0, r0, r7
	adds r0, #0xb0
	ldr r1, _080A1F84
	strh r1, [r0, #0]
	bl sub_080020F4
	adds r5, r0, #0
	mov r0, r8
	ldr r4, [r0, #0]
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
	mov r1, r8
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r6, r0
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
_080A1F6E:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A1F7C: .4byte gUnk_03000348
_080A1F80: .4byte gUnk_03003CE0
_080A1F84: .4byte 0x0000FFFE
	thumb_func_end sub_080A1DA8
