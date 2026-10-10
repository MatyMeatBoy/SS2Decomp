	thumb_func_start sub_080B7098
sub_080B7098: @ 0x080B7098
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2, #0]
	bx lr
	thumb_func_end sub_080B7098
