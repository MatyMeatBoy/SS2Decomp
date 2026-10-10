	thumb_func_start sub_08095610
sub_08095610: @ 0x08095610
	ldr r1, _08095618
	strb r0, [r1, #0xc]
	bx lr
	.2byte 0x0000
_08095618: .4byte gUnk_03000280
	thumb_func_end sub_08095610
