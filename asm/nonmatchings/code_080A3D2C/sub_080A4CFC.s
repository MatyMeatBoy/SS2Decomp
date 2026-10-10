	thumb_func_start sub_080A4CFC
sub_080A4CFC: @ 0x080A4CFC
	ldr r1, _080A4D04
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A4D04: .4byte gUnk_030003F0
	thumb_func_end sub_080A4CFC
