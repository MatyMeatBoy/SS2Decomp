	thumb_func_start sub_08065204
sub_08065204: @ 0x08065204
	movs r1, #1
	negs r1, r1
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_08065204
