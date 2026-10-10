	thumb_func_start sub_08056FF8
sub_08056FF8: @ 0x08056FF8
	ldr r0, _08057008
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_08057008: .4byte gUnk_03005CF4
	thumb_func_end sub_08056FF8
