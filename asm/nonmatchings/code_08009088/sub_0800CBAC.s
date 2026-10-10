	thumb_func_start sub_0800CBAC
sub_0800CBAC: @ 0x0800CBAC
	ldr r0, _0800CBB8
	ldr r1, [r0, #0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0, #0]
	bx lr
_0800CBB8: .4byte gUnk_03003478
	thumb_func_end sub_0800CBAC
