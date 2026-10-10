	thumb_func_start sub_08059488
sub_08059488: @ 0x08059488
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _080594B4
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0802949C
	b _080594BC
_080594B4: .4byte gUnk_03003CE0
_080594B8:
	bl sub_080003F0
_080594BC:
	bl sub_0805F184
	cmp r0, #0
	bne _080594B8
	b _080594CA
_080594C6:
	bl sub_080003F0
_080594CA:
	bl sub_0805EF90
	cmp r0, #0
	bne _080594C6
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _080594EC
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _080594F4
_080594EC: .4byte 0x0014013B
_080594F0:
	bl sub_080003F0
_080594F4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0805950A
	bl sub_0800CDF8
	cmp r0, #0
	beq _080594F0
	bl sub_0805EFBC
_0805950A:
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059530
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
_08059530: .4byte gUnk_03003CE0
	thumb_func_end sub_08059488
