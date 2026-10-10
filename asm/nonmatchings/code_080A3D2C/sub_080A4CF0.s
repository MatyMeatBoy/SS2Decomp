	thumb_func_start sub_080A4CF0
sub_080A4CF0: @ 0x080A4CF0
	ldr r1, _080A4CF8
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A4CF8: .4byte gUnk_030003EF
	thumb_func_end sub_080A4CF0
