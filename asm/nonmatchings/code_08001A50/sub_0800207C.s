	thumb_func_start sub_0800207C
sub_0800207C: @ 0x0800207C
	ldr r1, _08002088
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
_08002088: .4byte gUnk_030027D0
	thumb_func_end sub_0800207C
