	thumb_func_start sub_0800CDAC
sub_0800CDAC: @ 0x0800CDAC
	ldr r0, _0800CDBC
	ldr r1, [r0, #0]
	movs r2, #0x81
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_0800CDBC: .4byte gUnk_03003478
	thumb_func_end sub_0800CDAC
