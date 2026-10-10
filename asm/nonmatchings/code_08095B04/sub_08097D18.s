	thumb_func_start sub_08097D18
sub_08097D18: @ 0x08097D18
	ldr r2, _08097D20
	strh r0, [r2, #8]
	strh r1, [r2, #0xa]
	bx lr
_08097D20: .4byte gUnk_030002A0
	thumb_func_end sub_08097D18
