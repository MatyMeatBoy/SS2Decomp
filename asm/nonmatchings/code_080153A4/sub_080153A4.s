	thumb_func_start sub_080153A4
sub_080153A4: @ 0x080153A4
	push {r4, r5, r6, lr}
	sub sp, #4
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08015460
	adds r4, r1, r0
	ldrh r0, [r4, #0x20]
	cmp r0, #0xd
	beq _080153D4
	bl sub_0800CCCC
	cmp r0, #0
	bne _080153D4
	bl sub_0800CD34
	cmp r0, #0
	bne _080153D4
	ldrh r0, [r4, #0x26]
	adds r0, #0xf9
	bl sub_0805865C
_080153D4:
	ldrh r1, [r4, #0x26]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x10
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne _0801542A
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _0801542A
	lsls r5, r2, #0x10
_080153F8:
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	ldrh r2, [r4, #0x1c]
	movs r0, #0
	str r0, [sp, #0]
	asrs r0, r5, #0x10
	adds r1, r4, #0
	adds r1, #0x8c
	bl sub_08013E90
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08013CEC
	bl sub_080003F0
	ldrh r0, [r6, #0]
	cmp r0, #0
	bne _0801542A
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _080153F8
_0801542A:
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015444
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015444
	strh r1, [r4, #0x20]
_08015444:
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
_08015460: .4byte gUnk_03003CE0
	thumb_func_end sub_080153A4
