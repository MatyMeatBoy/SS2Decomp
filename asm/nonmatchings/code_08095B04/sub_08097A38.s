	thumb_func_start sub_08097A38
sub_08097A38: @ 0x08097A38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08097A48
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	bx lr
_08097A48: .4byte gUnk_03000290
	thumb_func_end sub_08097A38
