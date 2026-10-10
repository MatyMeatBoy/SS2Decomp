	thumb_func_start sub_0800115C
sub_0800115C: @ 0x0800115C
	ldr r1, _08001168
	ldr r2, [r1, #0]
	str r0, [r1, #0]
	adds r0, r2, #0
	bx lr
	.2byte 0x0000
_08001168: .4byte gUnk_03000010
	thumb_func_end sub_0800115C
