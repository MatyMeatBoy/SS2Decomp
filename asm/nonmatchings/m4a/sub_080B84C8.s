	thumb_func_start sub_080B84C8
sub_080B84C8: @ 0x080B84C8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0, #0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0, #0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_080B84C8
