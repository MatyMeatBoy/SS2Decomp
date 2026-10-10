	thumb_func_start sub_08097D70
sub_08097D70: @ 0x08097D70
	ldr r1, _08097D78
	movs r0, #1
	strb r0, [r1, #0xf]
	bx lr
_08097D78: .4byte gUnk_030002A0
	thumb_func_end sub_08097D70
