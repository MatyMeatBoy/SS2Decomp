	thumb_func_start sub_08095AD8
sub_08095AD8: @ 0x08095AD8
	push {r4, lr}
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	movs r0, #3
	bl sub_080586D0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	adds r0, r4, #0
	bl sub_0809561C
	bl sub_0800CC18
	bl sub_0800CC68
	bl sub_08098028
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_08095AD8
