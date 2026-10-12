	thumb_func_start sub_08014C8C
sub_08014C8C: @ 0x08014C8C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08014CCC
	adds r4, r1, r0
	ldrh r5, [r4, #0x26]
	adds r6, r5, #0
	bl sub_0800CCCC
	cmp r0, #0
	bne _08014CD8
	bl sub_0800CD34
	cmp r0, #0
	bne _08014CD8
	bl sub_0801DE60
	cmp r0, #0
	bne _08014CD0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	bl sub_0805865C
	b _08014CD8
	.2byte 0x0000
_08014CCC: .4byte gUnk_03003CE0
_08014CD0:
	adds r0, r6, #0
	adds r0, #0xf9
	bl sub_0805865C
_08014CD8:
	movs r2, #0x50
	movs r7, #1
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	mov r8, r0
	cmp r1, #0
	bne _08014D24
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _08014D24
	adds r6, r4, #0
	adds r6, #0xb2
	adds r5, r4, #0
	adds r5, #0xdc
_08014CF6:
	ldrh r0, [r6, #0]
	cmp r2, r0
	beq _08014D0E
	cmp r0, r7
	bne _08014D0E
	adds r2, r0, #0
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
	adds r0, r7, #3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08014D0E:
	str r2, [sp, #0]
	bl sub_080003F0
	mov r1, r8
	ldrh r0, [r1, #0]
	ldr r2, [sp, #0]
	cmp r0, #0
	bne _08014D24
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _08014CF6
_08014D24:
	ldrh r0, [r4, #0x20]
	cmp r0, #0xe
	beq _08014D40
	cmp r0, #0xa
	beq _08014D40
	cmp r0, #0xb
	beq _08014D40
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08014D40
	strh r1, [r4, #0x20]
_08014D40:
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
	thumb_func_end sub_08014C8C
