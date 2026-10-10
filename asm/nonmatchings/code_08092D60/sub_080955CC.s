	thumb_func_start sub_080955CC
sub_080955CC: @ 0x080955CC
	ldr r1, _080955E8
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #6]
	strh r0, [r1, #4]
	strh r0, [r1, #0xa]
	strh r0, [r1, #8]
	strb r2, [r1, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #2]
	strh r0, [r1, #0]
	bx lr
	.2byte 0x0000
_080955E8: .4byte gUnk_03000280
	thumb_func_end sub_080955CC
