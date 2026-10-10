	thumb_func_start sub_080A107C
sub_080A107C: @ 0x080A107C
	ldr r1, _080A1084
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080A1084: .4byte gUnk_0300033C
	thumb_func_end sub_080A107C
