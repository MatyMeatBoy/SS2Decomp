	thumb_func_start sub_080152CC
sub_080152CC: @ 0x080152CC
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080153A0
	adds r4, r1, r0
	ldrh r1, [r4, #0x26]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x14
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0801536A
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _0801536A
	adds r5, r4, #0
	adds r5, #0x8c
	lsls r6, r1, #0x10
_08015304:
	adds r2, r4, #0
	adds r2, #0x94
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r2, [r4, #0x1c]
	movs r0, #0
	str r0, [sp, #0]
	asrs r0, r6, #0x10
	adds r1, r5, #0
	bl sub_08013E90
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08013CEC
	adds r0, r4, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #1
	beq _0801533E
	cmp r0, #3
	bne _08015356
_0801533E:
	cmp r0, #3
	bne _08015356
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08015356
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_08015356:
	bl sub_080003F0
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0801536A
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _08015304
_0801536A:
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015384
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015384
	strh r1, [r4, #0x20]
_08015384:
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
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
_080153A0: .4byte gUnk_03003CE0
	thumb_func_end sub_080152CC
