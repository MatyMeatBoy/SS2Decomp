	thumb_func_start sub_08097A4C
sub_08097A4C: @ 0x08097A4C
	ldr r1, _08097A5C
	movs r0, #0
	strb r0, [r1, #4]
	strb r0, [r1, #3]
	strb r0, [r1, #2]
	strb r0, [r1, #1]
	strb r0, [r1, #0]
	bx lr
_08097A5C: .4byte gUnk_03000290
	thumb_func_end sub_08097A4C
