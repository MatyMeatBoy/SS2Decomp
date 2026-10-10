	thumb_func_start sub_080572FC
sub_080572FC: @ 0x080572FC
	ldr r0, _0805730C
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	ldr r0, _08057310
	ands r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_0805730C: .4byte gUnk_03005CF4
_08057310: .4byte 0x0000FEFF
	thumb_func_end sub_080572FC
