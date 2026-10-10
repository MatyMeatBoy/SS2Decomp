	thumb_func_start sub_080A0B44
sub_080A0B44: @ 0x080A0B44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc4
	ldr r0, _080A0BE0
	mov sl, r0
	ldr r0, [r0, #0]
	movs r1, #0x81
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp, #0x8c]
	ldr r2, _080A0BE4
	mov r9, r2
	ldr r4, _080A0BE8
	ldrh r2, [r4, #0]
	movs r0, #1
	negs r0, r0
	mov r8, r0
	movs r5, #1
	str r5, [sp, #0]
	add r0, sp, #0x10
	mov r1, r9
	mov r3, r8
	bl sub_08065158
	add r6, sp, #0x44
	ldrh r2, [r4, #0]
	str r5, [sp, #0]
	adds r0, r6, #0
	mov r1, r9
	mov r3, r8
	bl sub_08065158
	add r1, sp, #0x10
	ldrh r0, [r4, #0]
	movs r4, #0
	strb r0, [r1, #0x1c]
	strb r0, [r6, #0x1c]
	movs r0, #0
	bl sub_08096594
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080A0BEC
	adds r1, r1, r0
	str r1, [sp, #0x90]
	movs r0, #0
	bl sub_08097A38
	mov r3, sp
	adds r3, #0x7a
	strh r4, [r3, #0]
	mov r2, sp
	adds r2, #0x7e
	strh r4, [r2, #0]
	add r1, sp, #0x78
	strh r4, [r1, #0]
	add r0, sp, #0x7c
	strh r4, [r0, #0]
	str r4, [sp, #0xc0]
	movs r4, #7
	mov r9, r4
	movs r4, #0
	str r4, [sp, #0xac]
	movs r7, #0
	movs r4, #1
	str r4, [sp, #0xbc]
_080A0BD0:
	cmp r7, #1
	beq _080A0C2A
	cmp r7, #1
	bgt _080A0BF0
	cmp r7, #0
	beq _080A0BF6
	b _080A0CD8
	.2byte 0x0000
_080A0BE0: .4byte gUnk_0300032C
_080A0BE4: .4byte 0x0005000A
_080A0BE8: .4byte gUnk_03000330
_080A0BEC: .4byte gUnk_03003CE0
_080A0BF0:
	cmp r7, #2
	beq _080A0C68
	b _080A0CD8
_080A0BF6:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A0C14
	str r7, [sp, #0]
	add r0, sp, #0x10
	movs r1, #4
	add r2, sp, #0x78
	mov r3, sp
	adds r3, #0x7a
	bl sub_08065370
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa4]
_080A0C14:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	beq _080A0CD8
	movs r1, #7
	mov r9, r1
	movs r2, #0
	str r2, [sp, #0xac]
	movs r4, #0
	str r4, [sp, #0xb0]
	movs r7, #1
	b _080A0CD8
_080A0C2A:
	ldr r1, [sp, #0xac]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xac]
	cmp r1, #4
	bls _080A0CD8
	movs r0, #0
	str r0, [sp, #0xac]
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	cmp r0, #4
	bne _080A0CD8
	movs r1, #8
	mov r9, r1
	movs r2, #1
	str r2, [sp, #0xb0]
	movs r4, #0x3c
	str r4, [sp, #0xb4]
	movs r0, #0
	str r0, [sp, #0xb8]
	movs r1, #0
	str r1, [sp, #0xa8]
	movs r7, #2
	movs r0, #0xbf
	bl sub_0805865C
	b _080A0CD8
_080A0C68:
	ldr r1, [sp, #0xb4]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb4]
	add r4, sp, #0x84
	cmp r1, #0x10
	bls _080A0CB2
	movs r2, #0
	str r2, [sp, #0xb4]
	ldr r0, [sp, #0xb8]
	cmp r0, #0x10
	bhi _080A0CB2
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xb8]
	ldr r1, [sp, #0x90]
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r1, r2
	ldr r1, [r0, #0]
	ldrh r0, [r1, #0]
	lsrs r0, r0, #4
	str r0, [sp, #0x9c]
	ldrh r0, [r1, #2]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x14
	subs r0, #0xc
	str r0, [sp, #0xa0]
	str r4, [sp, #0]
	ldr r0, [sp, #0x94]
	ldr r1, [sp, #0x98]
	ldr r2, [sp, #0x9c]
	ldr r3, [sp, #0xa0]
	bl sub_08097978
_080A0CB2:
	ldr r0, [sp, #0x84]
	ldr r1, [sp, #0x94]
	adds r0, r1, r0
	str r0, [sp, #0x94]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x98]
	adds r0, r2, r0
	str r0, [sp, #0x98]
	ldr r1, [sp, #0xa8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xa8]
	movs r0, #0xf0
	lsls r0, r0, #1
	cmp r1, r0
	bls _080A0CD8
	movs r4, #0
	str r4, [sp, #0xbc]
_080A0CD8:
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A0CF2
	ldr r0, [sp, #0xb0]
	str r0, [sp, #0]
	add r0, sp, #0x44
	mov r1, r9
	add r2, sp, #0x7c
	mov r3, sp
	adds r3, #0x7e
	bl sub_08065370
_080A0CF2:
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A0DE8
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A0DE8
	bl sub_0800CD34
	cmp r0, #0
	bne _080A0DE8
	bl sub_0800CC98
	adds r5, r0, #0
	cmp r5, #0
	bne _080A0DE8
	ldr r1, [sp, #0x8c]
	adds r1, #0xd6
	mov r8, r1
	add r4, sp, #0x80
	mov r6, sp
	adds r6, #0x82
	cmp r7, #1
	bhi _080A0D92
	ldr r0, _080A0EE8
	ldrh r0, [r0, #0]
	adds r0, #0x10
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	mov r2, sl
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x14]
	lsls r0, r0, #8
	asrs r0, r0, #0x10
	ldr r1, [r1, #0x18]
	lsls r1, r1, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r2, sp, #0x78
	ldrh r3, [r2, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r1, [sp, #0x18]
	str r1, [sp, #8]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0xc]
	movs r1, #0x9f
	movs r2, #4
	bl sub_08007870
	adds r1, r0, #0
	movs r2, #0
	ldrsh r0, [r6, r2]
	str r0, [r1, #0xc]
	mov r0, sl
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x14]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r2, r0, r2
	str r2, [sp, #0x94]
	ldr r0, [r1, #0x18]
	ldr r1, _080A0EEC
	adds r1, r0, r1
	str r1, [sp, #0x98]
_080A0D92:
	ldr r0, _080A0EE8
	ldrh r0, [r0, #0]
	adds r0, #0x10
	mov r1, r8
	ldrh r2, [r1, #0]
	lsls r2, r2, #5
	ldr r1, [sp, #0x50]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000AF0
	ldr r2, [sp, #0x94]
	lsls r0, r2, #8
	asrs r0, r0, #0x10
	ldr r2, [sp, #0x98]
	lsls r1, r2, #8
	asrs r1, r1, #0x10
	str r5, [sp, #0]
	str r5, [sp, #4]
	adds r2, r4, #0
	adds r3, r6, #0
	bl sub_0800BC08
	movs r1, #0
	ldrsh r0, [r4, r1]
	add r2, sp, #0x7c
	ldrh r3, [r2, #0]
	movs r1, #1
	str r1, [sp, #0]
	add r1, sp, #0x60
	str r1, [sp, #4]
	ldr r1, [sp, #0x4c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x44]
	str r1, [sp, #0xc]
	movs r1, #0x9f
	mov r2, r9
	bl sub_08007870
	adds r1, r0, #0
	movs r4, #0
	ldrsh r0, [r6, r4]
	str r0, [r1, #0xc]
_080A0DE8:
	bl sub_080020F4
	ldr r1, [sp, #0x94]
	asrs r4, r1, #8
	ldr r6, _080A0EF0
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
	ldr r1, [sp, #0x98]
	asrs r2, r1, #8
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
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, [sp, #0xc0]
	cmp r2, #0
	bne _080A0F36
	cmp r0, #0xf
	bgt _080A0F36
	bl sub_0800CDF8
	cmp r0, #0
	bne _080A0F36
	bl sub_0800CD8C
	cmp r0, #0
	bne _080A0F36
	bl sub_0800CCCC
	cmp r0, #0
	bne _080A0F36
	ldr r4, _080A0EF4
	ldr r0, [r4, #0]
	ldrh r0, [r0, #0xc]
	cmp r0, #0xb
	beq _080A0F36
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
	bne _080A0F36
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _080A0F36
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A0F36
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A0F36
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A0F36
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
	beq _080A0F36
	bl sub_0800CE30
	cmp r0, #1
	bne _080A0EF8
	movs r0, #5
	movs r1, #0x3c
	movs r2, #7
	bl sub_08029CEC
	b _080A0F02
_080A0EE8: .4byte gUnk_03000330
_080A0EEC: .4byte 0xFFFFD000
_080A0EF0: .4byte gUnk_03003CE0
_080A0EF4: .4byte gUnk_0300032C
_080A0EF8:
	movs r0, #5
	movs r1, #0xf
	movs r2, #5
	bl sub_08029CEC
_080A0F02:
	bl sub_080020F4
	ldr r4, _080A0F5C
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r4
	adds r0, #0xb0
	ldr r1, _080A0F60
	strh r1, [r0, #0]
	bl sub_080020F4
	mov r1, sl
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
	str r2, [sp, #0xc0]
_080A0F36:
	bl sub_080003F0
	ldr r4, [sp, #0xbc]
	cmp r4, #0
	beq _080A0F42
	b _080A0BD0
_080A0F42:
	bl sub_0800048C
	str r4, [r0, #8]
	bl sub_080003F0
	add sp, #0xc4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080A0F5C: .4byte gUnk_03003CE0
_080A0F60: .4byte 0x0000FFFE
	thumb_func_end sub_080A0B44
