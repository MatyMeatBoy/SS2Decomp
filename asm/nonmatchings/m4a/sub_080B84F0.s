	thumb_func_start sub_080B84F0
sub_080B84F0: @ 0x080B84F0
	ldr r0, [r1, #0x40]
	ldrb r0, [r0, #0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2, #0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_080B84F0
