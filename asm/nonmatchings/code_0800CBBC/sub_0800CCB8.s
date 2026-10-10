	thumb_func_start sub_0800CCB8
sub_0800CCB8: @ 0x0800CCB8
	ldr r0, _0800CCC8
	ldr r1, [r0, #0]
	movs r2, #5
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800CCC8: .4byte gUnk_03003478
	thumb_func_end sub_0800CCB8
