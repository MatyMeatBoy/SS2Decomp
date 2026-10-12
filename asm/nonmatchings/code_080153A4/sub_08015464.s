	thumb_func_start sub_08015464
sub_08015464: @ 0x08015464
	push {r4, r5, r6, lr}
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _080154C0
	adds r4, r1, r0
	ldrh r5, [r4, #0x26]
	ldrh r0, [r4, #0x20]
	cmp r0, #0xd
	beq _08015494
	bl sub_0800CCCC
	cmp r0, #0
	bne _08015494
	bl sub_0800CD34
	cmp r0, #0
	bne _08015494
	adds r0, r5, #0
	adds r0, #0xf9
	bl sub_0805865C
_08015494:
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080154E8
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _080154E8
	adds r5, r4, #0
	adds r5, #0xdc
_080154AA:
	adds r0, r4, #0
	adds r0, #0xb2
	ldrh r0, [r0, #0]
	cmp r0, #5
	beq _080154C8
	cmp r0, #5
	bgt _080154C4
	cmp r0, #2
	beq _080154C8
	b _080154D8
	.2byte 0x0000
_080154C0: .4byte gUnk_03003CE0
_080154C4:
	cmp r0, #7
	bne _080154D8
_080154C8:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _080154D8
	ldr r0, [r5, #0]
	adds r0, #1
	str r0, [r5, #0]
_080154D8:
	bl sub_080003F0
	ldrh r0, [r6, #0]
	cmp r0, #0
	bne _080154E8
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _080154AA
_080154E8:
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015502
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015502
	strh r1, [r4, #0x20]
_08015502:
	movs r1, #0
	strh r1, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	strh r1, [r4, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	thumb_func_end sub_08015464
