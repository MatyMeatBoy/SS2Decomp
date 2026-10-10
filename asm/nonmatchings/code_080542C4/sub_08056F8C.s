	thumb_func_start sub_08056F8C
sub_08056F8C: @ 0x08056F8C
	ldr r0, _08056F9C
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08056FA0
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_08056F9C: .4byte gUnk_03005CF4
_08056FA0: .4byte 0x0000FFDF
	thumb_func_end sub_08056F8C
