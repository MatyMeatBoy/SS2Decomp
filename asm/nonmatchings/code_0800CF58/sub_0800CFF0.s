	thumb_func_start sub_0800CFF0
sub_0800CFF0: @ 0x0800CFF0
	ldr r0, _0800CFFC
	ldr r0, [r0, #0]
	lsrs r0, r0, #0x12
	movs r1, #1
	ands r0, r1
	bx lr
_0800CFFC: .4byte gUnk_03003478
	thumb_func_end sub_0800CFF0
