	thumb_func_start sub_0801A0A4
sub_0801A0A4: @ 0x0801A0A4
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #2
	strb r1, [r0, #0]
	bx lr
	thumb_func_end sub_0801A0A4
