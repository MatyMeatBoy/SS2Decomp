	thumb_func_start sub_080A230C
sub_080A230C: @ 0x080A230C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x78
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	movs r0, #0xc2
	bl sub_0805865C
	movs r5, #0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	mov r1, sp
	adds r1, #0x46
	str r1, [sp, #0x74]
	add r2, sp, #0x44
	mov r8, r2
	cmp r5, r0
	bge _080A2348
	adds r4, r0, #0
_080A233A:
	bl sub_080003F0
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, r4
	blt _080A233A
_080A2348:
	ldr r5, _080A23FC
	ldr r0, [r5, #0]
	movs r3, #0x81
	lsls r3, r3, #2
	adds r3, r0, r3
	str r3, [sp, #0x54]
	ldr r1, _080A2400
	ldr r0, _080A2404
	ldrh r2, [r0, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	movs r0, #0
	bl sub_08096594
	ldr r2, [r5, #0]
	movs r4, #0xfe
	lsls r4, r4, #1
	adds r2, r2, r4
	lsls r0, r0, #4
	ldrb r3, [r2, #0]
	movs r1, #0xf
	ands r1, r3
	orrs r1, r0
	strb r1, [r2, #0]
	ldr r0, [r5, #0]
	adds r0, r0, r4
	ldrb r0, [r0, #0]
	lsrs r0, r0, #4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r0, r1, r0
	ldr r4, _080A2408
	adds r0, r0, r4
	str r0, [sp, #0x58]
	movs r0, #0
	bl sub_08097A38
	movs r0, #0
	ldr r1, [sp, #0x74]
	strh r0, [r1, #0]
	mov r2, r8
	strh r0, [r2, #0]
	movs r3, #0
	str r3, [sp, #0x64]
	mov r9, r3
	str r0, [sp, #0x70]
	ldr r0, [r5, #0]
	ldr r6, [r0, #0x14]
	ldr r7, [r0, #0x18]
	ldr r2, _080A240C
	ldr r1, _080A2410
	movs r3, #8
	ldrsh r0, [r0, r3]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #5
	adds r6, r6, r0
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #5
	adds r7, r7, r0
	movs r3, #0x78
	str r3, [sp, #0x6c]
	movs r0, #1
	str r0, [sp, #0x68]
	mov sl, r8
_080A23E8:
	ldr r1, [sp, #0x6c]
	cmp r1, #0
	beq _080A2414
	adds r0, r1, #0
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x6c]
	b _080A25CC
	.2byte 0x0000
_080A23FC: .4byte gUnk_03000348
_080A2400: .4byte 0x0005000C
_080A2404: .4byte gUnk_0300034C
_080A2408: .4byte gUnk_03003CE0
_080A240C: .4byte gUnk_080B9704
_080A2410: .4byte gUnk_085186DC
_080A2414:
	ldr r2, [sp, #0x64]
	cmp r2, #5
	bhi _080A2462
	mov r1, r9
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	add r4, sp, #0x4c
	cmp r1, #0x14
	bls _080A2476
	movs r3, #0
	mov r9, r3
	ldr r1, [sp, #0x58]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x5c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r0, #0xc
	str r0, [sp, #0x60]
	str r4, [sp, #0]
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_08097978
	ldr r0, [sp, #0x64]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x64]
	b _080A2476
_080A2462:
	mov r1, r9
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	add r4, sp, #0x4c
	cmp r1, #0xb4
	bls _080A2476
	movs r3, #0
	str r3, [sp, #0x68]
_080A2476:
	ldr r0, [sp, #0x4c]
	asrs r1, r0, #1
	adds r0, r0, r1
	adds r6, r6, r0
	ldr r0, [r4, #4]
	asrs r1, r0, #1
	adds r0, r0, r1
	adds r7, r7, r0
	bl sub_080020F4
	asrs r4, r6, #8
	ldr r1, _080A2584
	mov r8, r1
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	asrs r2, r7, #8
	adds r2, #0xc
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x90
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r2, r2, r0
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r4, r0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r1, r2, #0
	muls r1, r2, r1
	adds r0, r0, r1
	bl sub_080B858C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0x70]
	cmp r2, #0
	bne _080A25CC
	cmp r0, #0x17
	bgt _080A25CC
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A25CC
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A25CC
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A25CC
	ldr r4, _080A2588
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A25CC
	bl sub_080020F4
	muls r0, r5, r0
	mov r1, r8
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080A25CC
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A25CC
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A25CC
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A25CC
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A25CC
	bl sub_080020F4
	ldr r2, [r4, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	mov r0, r8
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r1, [r1, #0]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080A25CC
	bl sub_0800CE30
	cmp r0, #1
	bne _080A258C
	movs r0, #0
	movs r1, #0x3c
	movs r2, #2
	bl sub_08029CEC
	b _080A2596
	.2byte 0x0000
_080A2584: .4byte gUnk_03003CE0
_080A2588: .4byte gUnk_03000348
_080A258C:
	movs r0, #0
	movs r1, #0x1e
	movs r2, #2
	bl sub_08029CEC
_080A2596:
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	ldr r3, _080A2688
	adds r0, r0, r3
	adds r0, #0xb0
	ldr r1, _080A268C
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A2690
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r0, _080A2688
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r0, #1
	str r0, [sp, #0x70]
_080A25CC:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A265A
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A265A
	bl sub_0800CD34
	cmp r0, #0
	bne _080A265A
	bl sub_0800CC98
	mov r8, r0
	cmp r0, #0
	bne _080A265A
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #8
	mov r2, sl
	ldr r3, [sp, #0x74]
	bl sub_08065370
	ldr r4, _080A2694
	ldrh r0, [r4, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x54]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	lsls r0, r6, #8
	asrs r0, r0, #0x10
	lsls r1, r7, #8
	asrs r1, r1, #0x10
	add r4, sp, #0x48
	mov r5, sp
	adds r5, #0x4a
	mov r2, r8
	str r2, [sp, #0]
	str r2, [sp, #4]
	adds r2, r4, #0
	adds r3, r5, #0
	bl sub_0800BC08
	movs r3, #0
	ldrsh r0, [r4, r3]
	movs r2, #0
	ldrsh r1, [r5, r2]
	mov r2, sl
	ldrh r3, [r2, #0]
	mov r2, r8
	str r2, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08007870
_080A265A:
	bl sub_080003F0
	ldr r3, [sp, #0x68]
	cmp r3, #0
	beq _080A2666
	b _080A23E8
_080A2666:
	movs r0, #0xc2
	bl sub_0805867C
	bl sub_0800048C
	ldr r1, [sp, #0x68]
	str r1, [r0, #8]
	bl sub_080003F0
	add sp, #0x78
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A2688: .4byte gUnk_03003CE0
_080A268C: .4byte 0x0000FFFE
_080A2690: .4byte gUnk_03000348
_080A2694: .4byte gUnk_0300034C
	thumb_func_end sub_080A230C
