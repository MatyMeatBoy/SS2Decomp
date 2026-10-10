	thumb_func_start sub_080A9680
sub_080A9680: @ 0x080A9680
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x20
	ldr r6, _080A97BC
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0xc8
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080A96A0
	b _080A97D0
_080A96A0:
	bl sub_080020F4
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x30
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r4, #0x80
	lsls r4, r4, #6
	ands r0, r4
	cmp r0, #0
	beq _080A96BA
	b _080A97D0
_080A96BA:
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _080A96CC
	b _080A97D0
_080A96CC:
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xe
	beq _080A97D0
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xb
	beq _080A97D0
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r6
	ldrh r0, [r0, #0x20]
	cmp r0, #0xc
	beq _080A97D0
	bl sub_080020F4
	muls r0, r5, r0
	adds r7, r6, #0
	adds r7, #0x8c
	adds r0, r0, r7
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [sp, #0]
	bl sub_080020F4
	muls r0, r5, r0
	movs r1, #0x90
	adds r1, r1, r6
	mov r8, r1
	add r0, r8
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [sp, #4]
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r7
	ldr r0, [r0, #0]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r0, r0, r3
	asrs r0, r0, #8
	str r0, [sp, #8]
	bl sub_080020F4
	muls r0, r5, r0
	add r0, r8
	ldr r0, [r0, #0]
	ldr r1, _080A97C0
	adds r0, r0, r1
	asrs r0, r0, #8
	str r0, [sp, #0xc]
	add r0, sp, #0x10
	ldr r1, _080A97C4
	ldr r2, [r1, #0]
	ldr r1, [r2, #0x14]
	ldr r3, _080A97C8
	adds r1, r1, r3
	asrs r1, r1, #8
	str r1, [sp, #0x10]
	ldr r1, [r2, #0x18]
	ldr r3, _080A97CC
	adds r1, r1, r3
	asrs r1, r1, #8
	str r1, [r0, #4]
	ldr r1, [r2, #0x14]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r1, r1, r3
	asrs r1, r1, #8
	str r1, [r0, #8]
	ldr r1, [r2, #0x18]
	adds r1, r1, r4
	asrs r1, r1, #8
	str r1, [r0, #0xc]
	add r1, sp, #0x18
	add r3, sp, #8
	mov r2, sp
	bl sub_080A98E0
	cmp r0, #0
	beq _080A97D0
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	adds r2, r2, r7
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	bl sub_080020F4
	adds r4, r0, #0
	bl sub_080020F4
	adds r2, r4, #0
	muls r2, r5, r2
	add r2, r8
	muls r0, r5, r0
	adds r1, r6, #0
	adds r1, #0x98
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	movs r0, #1
	b _080A97D2
	.2byte 0x0000
_080A97BC: .4byte gUnk_03003CE0
_080A97C0: .4byte 0xFFFFF800
_080A97C4: .4byte gUnk_0300041C
_080A97C8: .4byte 0xFFFFC000
_080A97CC: .4byte 0xFFFFE000
_080A97D0:
	movs r0, #0
_080A97D2:
	add sp, #0x20
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_080A9680
