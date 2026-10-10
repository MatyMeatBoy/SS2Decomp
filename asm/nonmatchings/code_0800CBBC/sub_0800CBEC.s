	thumb_func_start sub_0800CBEC
sub_0800CBEC: @ 0x0800CBEC
	ldr r1, _0800CBF4
	movs r0, #0
	str r0, [r1, #0]
	bx lr
_0800CBF4: .4byte gUnk_03003474
	thumb_func_end sub_0800CBEC
