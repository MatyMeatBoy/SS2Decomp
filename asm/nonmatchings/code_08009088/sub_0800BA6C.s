	thumb_func_start sub_0800BA6C
sub_0800BA6C: @ 0x0800BA6C
	ldr r0, _0800BA7C
	adds r0, #0x9c
	ldr r0, [r0, #0]
	lsrs r0, r0, #6
	movs r1, #1
	ands r0, r1
	bx lr
	.2byte 0x0000
_0800BA7C: .4byte gUnk_03003170
	thumb_func_end sub_0800BA6C
