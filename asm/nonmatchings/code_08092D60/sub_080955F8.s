	thumb_func_start sub_080955F8
sub_080955F8: @ 0x080955F8
	ldr r2, _08095600
	strh r0, [r2, #8]
	strh r1, [r2, #0xa]
	bx lr
_08095600: .4byte gUnk_03000280
	thumb_func_end sub_080955F8
