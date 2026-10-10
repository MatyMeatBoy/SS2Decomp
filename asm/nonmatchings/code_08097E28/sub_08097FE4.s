	thumb_func_start sub_08097FE4
sub_08097FE4: @ 0x08097FE4
	ldr r0, _08097FF0
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, _08097FF4
	strb r1, [r0, #0]
	bx lr
_08097FF0: .4byte gUnk_030002BC
_08097FF4: .4byte gUnk_030002BD
	thumb_func_end sub_08097FE4
