	thumb_func_start sub_080A1070
sub_080A1070: @ 0x080A1070
	ldr r1, _080A1078
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A1078: .4byte gUnk_0300033B
	thumb_func_end sub_080A1070
