	thumb_func_start sub_0800CF48
sub_0800CF48: @ 0x0800CF48
	ldr r0, _0800CF54
	ldr r0, [r0, #0]
	lsrs r0, r0, #0x15
	movs r1, #1
	ands r0, r1
	bx lr
_0800CF54: .4byte gUnk_03003478
	thumb_func_end sub_0800CF48
