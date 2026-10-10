	thumb_func_start sub_0809044C
sub_0809044C: @ 0x0809044C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	asrs r5, r4, #0x1f
	asrs r3, r2, #0x1f
	adds r1, r5, #0
	adds r0, r4, #0
	bl sub_080B94FC
	lsls r5, r1, #0x10
	lsrs r4, r0, #0x10
	adds r2, r5, #0
	orrs r2, r4
	adds r0, r2, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	thumb_func_end sub_0809044C
