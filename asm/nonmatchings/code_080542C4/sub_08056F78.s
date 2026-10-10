	thumb_func_start sub_08056F78
sub_08056F78: @ 0x08056F78
	ldr r0, _08056F88
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #5
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_08056F88: .4byte gUnk_03005CF4
	thumb_func_end sub_08056F78
