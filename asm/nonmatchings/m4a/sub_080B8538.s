	thumb_func_start sub_080B8538
sub_080B8538: @ 0x080B8538
	ldr r0, [r1, #0x40]
	ldrb r2, [r0, #0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	thumb_func_end sub_080B8538
