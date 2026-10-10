	thumb_func_start sub_0800CCDC
sub_0800CCDC: @ 0x0800CCDC
	ldr r0, _0800CCE8
	ldr r1, [r0, #0]
	movs r2, #8
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_0800CCE8: .4byte gUnk_03003478
	thumb_func_end sub_0800CCDC
