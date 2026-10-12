	thumb_func_start sub_080578BC
sub_080578BC: @ 0x080578BC
	push {r4, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _080578CA
_080578C6:
	bl sub_080003F0
_080578CA:
	bl sub_0805F184
	cmp r0, #0
	bne _080578C6
	movs r0, #2
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
	b _080578F4
_080578F0:
	bl sub_080003F0
_080578F4:
	adds r0, r4, #0
	bl sub_0805EEFC
	cmp r0, #0
	beq _080578F0
	adds r0, r4, #0
	bl sub_0805EF14
	add sp, #8
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_080578BC
