	thumb_func_start sub_080A104C
sub_080A104C: @ 0x080A104C
	ldr r1, _080A1054
	movs r0, #1
	strb r0, [r1, #0]
	bx lr
_080A1054: .4byte gUnk_03000339
	thumb_func_end sub_080A104C
