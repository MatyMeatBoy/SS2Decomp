	thumb_func_start sub_0800CB30
sub_0800CB30: @ 0x0800CB30
	ldr r1, _0800CB38
	movs r0, #0
	str r0, [r1, #0]
	bx lr
_0800CB38: .4byte gUnk_03003478
	thumb_func_end sub_0800CB30
