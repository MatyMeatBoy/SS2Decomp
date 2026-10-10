	thumb_func_start sub_0803C3C8
sub_0803C3C8: @ 0x0803C3C8
	push {r4, lr}
	sub sp, #8
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C3EC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	b _0803C3F4
	.2byte 0x0000
_0803C3EC: .4byte gUnk_03003CE0
_0803C3F0:
	bl sub_080003F0
_0803C3F4:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C3F0
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C418
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C420
	.2byte 0x0000
_0803C418: .4byte 0x00140203
_0803C41C:
	bl sub_080003F0
_0803C420:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _0803C41C
	adds r0, r4, #0
	bl sub_0805EF14
	cmp r0, #1
	bne _0803C448
	ldr r0, _0803C440
	movs r1, #0
	movs r2, #0
	bl sub_08068820
	b _0803C4B4
_0803C440: .4byte sub_0803C4C0
_0803C444:
	bl sub_080003F0
_0803C448:
	bl sub_0805F184
	cmp r0, #0
	bne _0803C444
	b _0803C456
_0803C452:
	bl sub_080003F0
_0803C456:
	bl sub_0805EF90
	cmp r0, #0
	bne _0803C452
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _0803C478
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _0803C480
_0803C478: .4byte 0x00140204
_0803C47C:
	bl sub_080003F0
_0803C480:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0803C496
	bl sub_0800CDF8
	cmp r0, #0
	beq _0803C47C
	bl sub_0805EFBC
_0803C496:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _0803C4BC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
_0803C4B4:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
_0803C4BC: .4byte gUnk_03003CE0
	thumb_func_end sub_0803C3C8
