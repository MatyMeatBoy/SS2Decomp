	thumb_func_start sub_0800CD8C
sub_0800CD8C: @ 0x0800CD8C
	ldr r0, _0800CD98
	ldr r0, [r0, #0]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
_0800CD98: .4byte gUnk_03003478
	thumb_func_end sub_0800CD8C
