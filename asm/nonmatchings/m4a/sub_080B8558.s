	thumb_func_start sub_080B8558
sub_080B8558: @ 0x080B8558
	ldr r0, [r1, #0x40]
	ldrb r0, [r0, #0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2, #0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_080B8558
