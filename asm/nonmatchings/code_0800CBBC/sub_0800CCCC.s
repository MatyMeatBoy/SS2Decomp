	thumb_func_start sub_0800CCCC
sub_0800CCCC: @ 0x0800CCCC
	ldr r0, _0800CCD8
	ldr r0, [r0, #0]
	lsrs r0, r0, #3
	movs r1, #1
	ands r0, r1
	bx lr
_0800CCD8: .4byte gUnk_03003478
	thumb_func_end sub_0800CCCC
