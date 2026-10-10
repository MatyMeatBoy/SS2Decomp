	thumb_func_start sub_080A4CDC
sub_080A4CDC: @ 0x080A4CDC
	ldr r2, _080A4CE8
	strb r1, [r2, #0]
	ldr r1, _080A4CEC
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A4CE8: .4byte gUnk_030003FB
_080A4CEC: .4byte gUnk_030003FC
	thumb_func_end sub_080A4CDC
