	thumb_func_start sub_08097A60
sub_08097A60: @ 0x08097A60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08097A70
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
_08097A70: .4byte gUnk_03000290
	thumb_func_end sub_08097A60
