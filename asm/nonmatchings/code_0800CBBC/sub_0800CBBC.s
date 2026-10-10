	thumb_func_start sub_0800CBBC
sub_0800CBBC: @ 0x0800CBBC
	ldr r1, _0800CBC8
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
_0800CBC8: .4byte gUnk_03003474
	thumb_func_end sub_0800CBBC
