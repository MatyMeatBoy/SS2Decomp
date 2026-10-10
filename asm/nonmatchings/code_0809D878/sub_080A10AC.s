	thumb_func_start sub_080A10AC
sub_080A10AC: @ 0x080A10AC
	ldr r1, _080A10B4
	movs r0, #0
	strb r0, [r1, #0]
	bx lr
_080A10B4: .4byte gUnk_03000338
	thumb_func_end sub_080A10AC
