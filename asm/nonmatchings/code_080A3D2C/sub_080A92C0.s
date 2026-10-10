	thumb_func_start sub_080A92C0
sub_080A92C0: @ 0x080A92C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r9, r0
	ldr r1, _080A930C
	ldr r4, _080A9310
	ldrh r2, [r4, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	strb r0, [r1, #0x1c]
	ldr r0, _080A9314
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x14]
	str r1, [sp, #0x54]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x58]
	mov r2, r9
	cmp r2, #0
	beq _080A931C
	ldr r0, _080A9318
	adds r1, r1, r0
	str r1, [sp, #0x54]
	ldr r2, [sp, #0x58]
	adds r0, r2, r0
	str r0, [sp, #0x58]
	b _080A9326
_080A930C: .4byte 0x00050011
_080A9310: .4byte gUnk_03000420
_080A9314: .4byte gUnk_0300041C
_080A9318: .4byte 0xFFFFF800
_080A931C:
	movs r1, #0x80
	lsls r1, r1, #3
	ldr r0, [sp, #0x54]
	adds r1, r0, r1
	str r1, [sp, #0x54]
_080A9326:
	mov r4, sp
	adds r4, #0x4a
	movs r0, #0
	strh r0, [r4, #0]
	add r5, sp, #0x48
	strh r0, [r5, #0]
	movs r2, #0
	str r2, [sp, #0x64]
	movs r0, #0xe4
	bl sub_0805865C
	mov r8, r5
	add r0, sp, #0x4c
	mov sl, r0
	b _080A9608
_080A9344:
	bl sub_080020F4
	ldr r6, _080A943C
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r4, [r0, #0]
	ldr r1, [sp, #0x54]
	subs r4, r1, r4
	lsls r4, r4, #8
	lsrs r4, r4, #0x10
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x90
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r2, [sp, #0x58]
	subs r1, r2, r1
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
	ldr r1, [sp, #0x64]
	cmp r1, #0
	bne _080A9482
	cmp r0, #0xb
	bhi _080A9482
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A9482
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A9482
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A9482
	ldr r4, _080A9440
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A9482
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
	bne _080A9482
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A9482
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A9482
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A9482
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A9482
	bl sub_080020F4
	ldr r2, [r4, #0]
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
	beq _080A9482
	bl sub_0800CE30
	cmp r0, #1
	bne _080A9444
	movs r0, #1
	movs r1, #0x28
	movs r2, #3
	bl sub_08029CEC
	b _080A944E
_080A943C: .4byte gUnk_03003CE0
_080A9440: .4byte gUnk_0300041C
_080A9444:
	movs r0, #1
	movs r1, #0xf
	movs r2, #3
	bl sub_08029CEC
_080A944E:
	bl sub_080020F4
	ldr r4, _080A9530
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0xb0
	ldr r1, _080A9534
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A9538
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r5, r0
	adds r1, r1, r0
	adds r4, #0xe4
	adds r1, r1, r4
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r2, #1
	str r2, [sp, #0x64]
_080A9482:
	bl sub_0800CCCC
	cmp r0, #0
	beq _080A948C
	b _080A9604
_080A948C:
	bl sub_0800CC98
	cmp r0, #0
	beq _080A9496
	b _080A9604
_080A9496:
	bl sub_0800CD8C
	cmp r0, #0
	beq _080A94A0
	b _080A9604
_080A94A0:
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	beq _080A94AC
	b _080A9604
_080A94AC:
	ldr r1, [sp, #0x54]
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x58]
	lsls r1, r2, #8
	asrs r1, r1, #0x10
	add r5, sp, #0x44
	mov r6, sp
	adds r6, #0x46
	str r7, [sp, #0]
	str r7, [sp, #4]
	adds r2, r5, #0
	adds r3, r6, #0
	bl sub_0800BC08
	ldr r0, _080A953C
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r4, _080A9538
	ldr r1, [r4, #0]
	ldr r2, _080A9540
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r1, #3
	mov r2, r8
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x14]
	asrs r0, r0, #8
	ldr r1, [r1, #0x18]
	asrs r1, r1, #8
	movs r2, #0
	bl sub_0800BC44
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	adds r7, r5, #0
	mov r0, r9
	cmp r0, #0
	beq _080A9544
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r2, r8
	ldrh r3, [r2, #0]
	lsls r5, r1, #0x18
	str r1, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0x10
	b _080A955E
	.2byte 0x0000
_080A9530: .4byte gUnk_03003CE0
_080A9534: .4byte 0x0000FFFE
_080A9538: .4byte gUnk_0300041C
_080A953C: .4byte gUnk_03000420
_080A9540: .4byte 0x000002DA
_080A9544:
	movs r2, #0
	ldrsh r0, [r7, r2]
	mov r2, r8
	ldrh r3, [r2, #0]
	lsls r5, r1, #0x18
	str r1, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
_080A955E:
	movs r2, #3
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r6, r2]
	str r0, [r1, #0xc]
	mov r0, r9
	cmp r0, #0
	beq _080A958E
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r0, #0x20
	mov r2, r8
	ldrh r3, [r2, #0]
	lsrs r1, r5, #0x18
	str r1, [sp, #0]
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0x10
	b _080A95A8
_080A958E:
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r0, #0x20
	mov r2, r8
	ldrh r3, [r2, #0]
	lsrs r1, r5, #0x18
	str r1, [sp, #0]
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
_080A95A8:
	movs r2, #4
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r0, #0x10
	str r0, [r1, #0xc]
	mov r0, r9
	cmp r0, #0
	beq _080A95DA
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r0, #0x40
	mov r2, r8
	ldrh r3, [r2, #0]
	lsrs r1, r5, #0x18
	str r1, [sp, #0]
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0x10
	b _080A95F4
_080A95DA:
	movs r1, #0
	ldrsh r0, [r7, r1]
	adds r0, #0x40
	mov r2, r8
	ldrh r3, [r2, #0]
	lsrs r1, r5, #0x18
	str r1, [sp, #0]
	str r4, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0xa0
_080A95F4:
	movs r2, #5
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r6, r2]
	subs r0, #0x20
	str r0, [r1, #0xc]
_080A9604:
	bl sub_080003F0
_080A9608:
	mov r0, r9
	cmp r0, #0
	beq _080A961C
	movs r1, #0x80
	lsls r1, r1, #6
	str r1, [sp, #0x5c]
	movs r2, #0x80
	lsls r2, r2, #9
	str r2, [sp, #0x60]
	b _080A9628
_080A961C:
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [sp, #0x5c]
	movs r1, #0x88
	lsls r1, r1, #9
	str r1, [sp, #0x60]
_080A9628:
	mov r2, sl
	str r2, [sp, #0]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_080979D8
	ldr r0, [sp, #0x4c]
	lsls r0, r0, #2
	ldr r1, [sp, #0x54]
	adds r0, r1, r0
	str r0, [sp, #0x54]
	mov r2, sl
	ldr r0, [r2, #4]
	lsls r0, r0, #2
	ldr r1, [sp, #0x58]
	adds r0, r1, r0
	str r0, [sp, #0x58]
	movs r0, #0x18
	str r0, [sp, #0]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	bl sub_08097B6C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080A9666
	b _080A9344
_080A9666:
	bl sub_0800048C
	movs r1, #0
	str r1, [r0, #8]
	add sp, #0x68
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080A92C0
