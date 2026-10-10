	thumb_func_start sub_08057314
sub_08057314: @ 0x08057314
	ldr r0, _08057324
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	lsrs r0, r0, #8
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_08057324: .4byte gUnk_03005CF4
	thumb_func_end sub_08057314
