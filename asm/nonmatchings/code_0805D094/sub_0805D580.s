	thumb_func_start sub_0805D580
sub_0805D580: @ 0x0805D580
	adds r1, r0, #0
	cmp r1, #0x18
	bhi _0805D598
	ldr r0, _0805D59C
	ldr r0, [r0, #0]
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #0xa8
	lsls r1, r1, #1
	adds r0, r0, r1
	movs r1, #0
	strh r1, [r0, #0]
_0805D598:
	bx lr
	.2byte 0x0000
_0805D59C: .4byte gUnk_030034E0
	thumb_func_end sub_0805D580
