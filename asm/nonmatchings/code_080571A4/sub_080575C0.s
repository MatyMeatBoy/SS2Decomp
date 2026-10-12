	thumb_func_start sub_080575C0
sub_080575C0: @ 0x080575C0
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080575CE
_080575CA:
	bl sub_080003F0
_080575CE:
	bl sub_0805F184
	cmp r0, #0
	bne _080575CA
	b _080575DC
_080575D8:
	bl sub_080003F0
_080575DC:
	bl sub_0805EF90
	cmp r0, #0
	bne _080575D8
	movs r0, #1
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #0xa0
	lsls r0, r0, #0xd
	orrs r0, r4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xf
	movs r2, #2
	movs r3, #0
	bl sub_0805DF38
	adds r4, r0, #0
	b _08057606
_08057602:
	bl sub_080003F0
_08057606:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	bne _0805761C
	bl sub_0800CDF8
	cmp r0, #0
	beq _08057602
	bl sub_0805EFBC
_0805761C:
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_080575C0
