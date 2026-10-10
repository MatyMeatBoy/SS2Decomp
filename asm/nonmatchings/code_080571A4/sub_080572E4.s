	thumb_func_start sub_080572E4
sub_080572E4: @ 0x080572E4
	ldr r0, _080572F8
	ldr r2, [r0, #0]
	ldrh r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.2byte 0x0000
_080572F8: .4byte gUnk_03005CF4
	thumb_func_end sub_080572E4
