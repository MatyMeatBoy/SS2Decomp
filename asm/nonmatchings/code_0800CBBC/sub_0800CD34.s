	thumb_func_start sub_0800CD34
sub_0800CD34: @ 0x0800CD34
	ldr r0, _0800CD40
	ldr r0, [r0, #0]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	bx lr
_0800CD40: .4byte gUnk_03003478
	thumb_func_end sub_0800CD34
