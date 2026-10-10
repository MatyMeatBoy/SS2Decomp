	thumb_func_start sub_0800CFB8
sub_0800CFB8: @ 0x0800CFB8
	ldr r0, _0800CFC4
	ldr r0, [r0, #0]
	lsrs r0, r0, #0x11
	movs r1, #1
	ands r0, r1
	bx lr
_0800CFC4: .4byte gUnk_03003478
	thumb_func_end sub_0800CFB8
