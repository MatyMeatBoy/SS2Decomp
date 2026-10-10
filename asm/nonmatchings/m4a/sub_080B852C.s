	thumb_func_start sub_080B852C
sub_080B852C: @ 0x080B852C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0, #0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_080B852C
