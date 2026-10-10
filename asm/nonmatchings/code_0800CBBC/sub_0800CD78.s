	thumb_func_start sub_0800CD78
sub_0800CD78: @ 0x0800CD78
	ldr r0, _0800CD88
	ldr r1, [r0, #0]
	movs r2, #0x41
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800CD88: .4byte gUnk_03003478
	thumb_func_end sub_0800CD78
