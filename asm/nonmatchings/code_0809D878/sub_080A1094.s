	thumb_func_start sub_080A1094
sub_080A1094: @ 0x080A1094
	ldr r1, _080A10A4
	movs r0, #1
	strb r0, [r1, #0]
	ldr r1, _080A10A8
	movs r0, #6
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A10A4: .4byte gUnk_03000338
_080A10A8: .4byte gUnk_0300033C
	thumb_func_end sub_080A1094
