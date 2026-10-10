	thumb_func_start sub_08014B28
sub_08014B28: @ 0x08014B28
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08014BFC
	adds r4, r1, r0
	ldrh r6, [r4, #0x26]
	ldrh r0, [r4, #0x20]
	cmp r0, #0xd
	beq _08014B5E
	bl sub_0800CCCC
	cmp r0, #0
	bne _08014B5E
	bl sub_0800CD34
	cmp r0, #0
	bne _08014B5E
	adds r0, r6, #0
	adds r0, #0xf9
	bl sub_0805865C
_08014B5E:
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	mov r8, r0
	cmp r1, #0
	bne _08014BC2
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _08014BC2
	adds r7, r4, #0
	adds r7, #0x94
	adds r5, r4, #0
	adds r5, #0x8c
	ldr r1, _08014C00
	lsls r0, r6, #2
	adds r6, r0, r1
_08014B7E:
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	str r0, [r7, #0]
	str r1, [r7, #4]
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	adds r0, r4, #0
	adds r0, #0x40
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r6, #0]
	adds r0, r0, r1
	ldrh r2, [r4, #0x1c]
	movs r1, #0
	str r1, [sp, #0]
	adds r1, r5, #0
	bl sub_08013E90
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08013CEC
	bl sub_080003F0
	mov r1, r8
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08014BC2
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _08014B7E
_08014BC2:
	ldrh r0, [r4, #0x20]
	cmp r0, #0xe
	beq _08014BDE
	cmp r0, #0xa
	beq _08014BDE
	cmp r0, #0xb
	beq _08014BDE
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08014BDE
	strh r1, [r4, #0x20]
_08014BDE:
	movs r1, #0
	strh r1, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	strh r1, [r4, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0, #0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08014BFC: .4byte gUnk_03003CE0
_08014C00: .4byte gUnk_0847AD1C
	thumb_func_end sub_08014B28
