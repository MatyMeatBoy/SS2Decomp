	thumb_func_start sub_08059DA0
sub_08059DA0: @ 0x08059DA0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059DCC
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D0F4
	adds r0, r5, #0
	movs r1, #0
	bl sub_0802949C
	b _08059DD4
_08059DCC: .4byte gUnk_03003CE0
_08059DD0:
	bl sub_080003F0
_08059DD4:
	bl sub_0805F184
	cmp r0, #0
	bne _08059DD0
	b _08059DE2
_08059DDE:
	bl sub_080003F0
_08059DE2:
	bl sub_0805EF90
	cmp r0, #0
	bne _08059DDE
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08059E04
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08059E0C
_08059E04: .4byte 0x0014021B
_08059E08:
	bl sub_080003F0
_08059E0C:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _08059E22
	bl sub_0800CDF8
	cmp r0, #0
	beq _08059E08
	bl sub_0805EFBC
_08059E22:
	adds r0, r5, #0
	bl sub_08029788
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r1, r2
	ldr r0, _08059E50
	adds r2, r2, r0
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	bl sub_0800D108
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
_08059E50: .4byte gUnk_03003CE0
	thumb_func_end sub_08059DA0
