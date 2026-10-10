	thumb_func_start sub_080A8F90
sub_080A8F90: @ 0x080A8F90
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_080020F4
	ldr r7, _080A90B8
	ldr r1, [r7, #0]
	ldr r6, _080A90BC
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	movs r2, #0x8c
	adds r2, r2, r6
	mov r8, r2
	add r0, r8
	ldr r4, [r1, #0x14]
	ldr r0, [r0, #0]
	subs r4, r4, r0
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	ldr r2, [r7, #0]
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r2, #0x18]
	ldr r0, [r0, #0]
	subs r1, r1, r0
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
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bls _080A8FEE
	b _080A90F2
_080A8FEE:
	ldr r0, [r7, #0]
	adds r0, #0x5c
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xc8
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _080A90F2
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A90F2
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A90F2
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A90F2
	ldr r0, [r7, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A90F2
	bl sub_080020F4
	ldr r2, [r7, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A90F2
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldr r1, [r7, #0]
	ldr r2, [r0, #0]
	ldr r0, [r1, #0x14]
	cmp r2, r0
	bgt _080A90C0
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xca
	movs r1, #1
	b _080A90CC
_080A90B8: .4byte gUnk_0300041C
_080A90BC: .4byte gUnk_03003CE0
_080A90C0:
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xca
	movs r1, #5
_080A90CC:
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r5, _080A90FC
	movs r4, #0xa6
	lsls r4, r4, #1
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
	movs r1, #8
	strh r1, [r0, #0]
_080A90F2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A90FC: .4byte gUnk_03003CE0
	thumb_func_end sub_080A8F90
