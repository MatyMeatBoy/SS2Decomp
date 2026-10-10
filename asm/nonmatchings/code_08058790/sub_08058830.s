	thumb_func_start sub_08058830
sub_08058830: @ 0x08058830
	ldr r0, _08058840
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_08058840: .4byte gUnk_03005CF4
	thumb_func_end sub_08058830
