	thumb_func_start sub_080684F4
sub_080684F4: @ 0x080684F4
	ldr r2, _080684FC
	movs r1, #0xff
	strb r1, [r2, #0]
	bx lr
_080684FC: .4byte gUnk_03006224
	thumb_func_end sub_080684F4
