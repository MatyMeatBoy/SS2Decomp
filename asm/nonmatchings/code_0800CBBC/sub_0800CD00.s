	thumb_func_start sub_0800CD00
sub_0800CD00: @ 0x0800CD00
	ldr r0, _0800CD0C
	ldr r0, [r0, #0]
	lsrs r0, r0, #4
	movs r1, #1
	ands r0, r1
	bx lr
_0800CD0C: .4byte gUnk_03003478
	thumb_func_end sub_0800CD00
