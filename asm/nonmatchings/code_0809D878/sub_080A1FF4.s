	thumb_func_start sub_080A1FF4
sub_080A1FF4: @ 0x080A1FF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x68
	lsls r4, r1, #0x10
	lsrs r4, r4, #0x10
	ldr r6, _080A20A4
	ldr r0, [r6, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #0x4c]
	ldr r1, _080A20A8
	ldr r5, _080A20AC
	ldrh r2, [r5, #0]
	movs r3, #1
	negs r3, r3
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r5, #0]
	strb r0, [r1, #0x1c]
	ldr r0, [r6, #0]
	ldr r2, [r0, #0x14]
	str r2, [sp, #0x50]
	ldr r3, [r0, #0x18]
	str r3, [sp, #0x54]
	ldr r2, _080A20B0
	ldr r1, _080A20B4
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
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r0, r0, #5
	ldr r3, [sp, #0x54]
	adds r0, r3, r0
	str r0, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x58]
	lsls r4, r4, #0x1d
	lsrs r4, r4, #0x18
	str r4, [sp, #0x60]
	movs r2, #0xb4
	lsls r2, r2, #1
	str r2, [sp, #0x5c]
	movs r3, #0x5a
	mov sl, r3
_080A207E:
	mov r0, sl
	cmp r0, #0
	beq _080A20B8
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r1, [sp, #0x50]
	mov r9, r1
	ldr r2, [sp, #0x54]
	mov r8, r2
	cmp r0, #0
	beq _080A209A
	b _080A223C
_080A209A:
	movs r0, #0xc3
	bl sub_0805865C
	b _080A223C
	.2byte 0x0000
_080A20A4: .4byte gUnk_03000348
_080A20A8: .4byte 0x0005000C
_080A20AC: .4byte gUnk_0300034C
_080A20B0: .4byte gUnk_080B9704
_080A20B4: .4byte gUnk_085186DC
_080A20B8:
	ldr r1, _080A21F0
	ldr r0, [sp, #0x60]
	adds r0, #0x40
	lsls r0, r0, #1
	adds r0, r0, r1
	movs r3, #0
	ldrsh r0, [r0, r3]
	ldr r2, [sp, #0x58]
	muls r0, r2, r0
	lsrs r0, r0, #8
	mov r9, r0
	ldr r3, [sp, #0x60]
	lsls r0, r3, #1
	adds r0, r0, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r2, r0
	lsrs r0, r0, #8
	mov r8, r0
	ldr r2, [sp, #0x50]
	add r9, r2
	ldr r3, [sp, #0x54]
	add r8, r3
	ldr r0, [sp, #0x58]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x58]
	bl sub_080020F4
	mov r2, r9
	asrs r4, r2, #8
	ldr r6, _080A21F4
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	subs r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	bl sub_080020F4
	mov r3, r8
	asrs r2, r3, #8
	adds r2, #0xc
	muls r0, r5, r0
	adds r1, r6, #0
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
	ldr r1, [sp, #0x64]
	cmp r1, #0
	bne _080A223C
	cmp r0, #0x17
	bhi _080A223C
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A223C
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A223C
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A223C
	ldr r4, _080A21F8
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A223C
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
	bne _080A223C
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A223C
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A223C
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A223C
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A223C
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
	beq _080A223C
	bl sub_0800CE30
	cmp r0, #1
	bne _080A21FC
	movs r0, #0
	movs r1, #0x3c
	movs r2, #2
	bl sub_08029CEC
	b _080A2206
_080A21F0: .4byte gUnk_080B9704
_080A21F4: .4byte gUnk_03003CE0
_080A21F8: .4byte gUnk_03000348
_080A21FC:
	movs r0, #0
	movs r1, #0x1e
	movs r2, #2
	bl sub_08029CEC
_080A2206:
	bl sub_080020F4
	movs r4, #0xa6
	lsls r4, r4, #1
	muls r0, r4, r0
	ldr r2, _080A22F8
	adds r0, r0, r2
	adds r0, #0xb0
	ldr r1, _080A22FC
	strh r1, [r0, #0]
	bl sub_080020F4
	ldr r1, _080A2300
	ldr r2, [r1, #0]
	ldrh r1, [r2, #0]
	lsls r1, r1, #2
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r0, _080A22F8
	adds r0, #0xe4
	adds r1, r1, r0
	ldr r0, [r2, #0x50]
	str r0, [r1, #0]
	adds r0, #1
	str r0, [r2, #0x50]
	movs r3, #1
	str r3, [sp, #0x64]
_080A223C:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A22C6
	bl sub_0800CC98
	cmp r0, #0
	bne _080A22C6
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A22C6
	bl sub_0800CD34
	adds r7, r0, #0
	cmp r7, #0
	bne _080A22C6
	ldr r0, _080A2304
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldr r1, [sp, #0x4c]
	adds r1, #0xd6
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r1, r9
	lsls r0, r1, #8
	asrs r0, r0, #0x10
	mov r2, r8
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
	add r4, sp, #0x48
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #0x10
	movs r1, #8
	adds r2, r4, #0
	mov r3, sp
	adds r3, #0x4a
	bl sub_08065370
	movs r3, #0
	ldrsh r0, [r5, r3]
	movs r2, #0
	ldrsh r1, [r6, r2]
	ldrh r3, [r4, #0]
	str r7, [sp, #0]
	add r2, sp, #0x2c
	str r2, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #8
	bl sub_08007870
_080A22C6:
	bl sub_080003F0
	ldr r0, [sp, #0x5c]
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x5c]
	ldr r0, _080A2308
	ldr r3, [sp, #0x5c]
	cmp r3, r0
	beq _080A22DE
	b _080A207E
_080A22DE:
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
	.2byte 0x0000
_080A22F8: .4byte gUnk_03003CE0
_080A22FC: .4byte 0x0000FFFE
_080A2300: .4byte gUnk_03000348
_080A2304: .4byte gUnk_0300034C
_080A2308: .4byte 0x0000FFFF
	thumb_func_end sub_080A1FF4
