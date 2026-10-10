	thumb_func_start sub_08002228
sub_08002228: @ 0x08002228
	ldr r0, _08002234
	ldr r0, [r0, #0]
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_08002234: .4byte gUnk_030027D0
	thumb_func_end sub_08002228
