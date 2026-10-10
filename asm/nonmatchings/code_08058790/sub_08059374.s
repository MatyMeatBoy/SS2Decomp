	thumb_func_start sub_08059374
sub_08059374: @ 0x08059374
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059398
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _080593A0
	.2byte 0x0000
_08059398: .4byte gUnk_03003CE0
_0805939C:
	bl sub_080003F0
_080593A0:
	bl sub_0805F184
	cmp r0, #0
	bne _0805939C
	b _080593AE
_080593AA:
	bl sub_080003F0
_080593AE:
	bl sub_0805EF90
	cmp r0, #0
	bne _080593AA
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080593D0
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080593D8
_080593D0: .4byte 0x00140124
_080593D4:
	bl sub_080003F0
_080593D8:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _080593EE
	bl sub_0800CDF8
	cmp r0, #0
	beq _080593D4
	bl sub_0805EFBC
_080593EE:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059414
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_08059414: .4byte gUnk_03003CE0
	thumb_func_end sub_08059374
