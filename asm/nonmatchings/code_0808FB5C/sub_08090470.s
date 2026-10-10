	thumb_func_start sub_08090470
sub_08090470: @ 0x08090470
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	asrs r5, r4, #0x1f
	asrs r3, r2, #0x1f
	lsrs r1, r4, #0x10
	lsls r0, r5, #0x10
	adds r5, r1, #0
	orrs r5, r0
	lsls r4, r4, #0x10
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080B8F60
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_08090470
