	thumb_func_start sub_08021CE4
sub_08021CE4: @ 0x08021CE4
	push {lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r1, #0x64
	muls r0, r1, r0
	movs r1, #0x64
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r1}
	bx r1
	thumb_func_end sub_08021CE4
