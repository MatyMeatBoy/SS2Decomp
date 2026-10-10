	thumb_func_start sub_0803E510
sub_0803E510: @ 0x0803E510
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803E544
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	movs r0, #0
	movs r1, #0
	bl sub_08029174
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _0803E54C
_0803E544: .4byte gUnk_03003CE0
_0803E548:
	bl sub_080003F0
_0803E54C:
	bl sub_0805F184
	cmp r0, #0
	bne _0803E548
	b _0803E55A
_0803E556:
	bl sub_080003F0
_0803E55A:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803E556
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803E57C
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803E584
_0803E57C: .4byte 0x001404E9
_0803E580:
	bl sub_080003F0
_0803E584:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803E59A
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803E580
	bl sub_0805EFBC
_0803E59A:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r5, #0xa6
	lsls r5, r5, #1
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _0803E5D4
	adds r2, r2, r4
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	bl sub_080020F4
	muls r0, r5, r0
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0, #0x20]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_0803E5D4: .4byte gUnk_03003CE0
	thumb_func_end sub_0803E510
