	thumb_func_start sub_0800BA80
sub_0800BA80: @ 0x0800BA80
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	ldr r0, _0800BAA0
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _0800BA9E
	movs r0, #0
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x10]
	strh r0, [r1, #2]
	strh r0, [r1, #0]
_0800BA9E:
	bx lr
_0800BAA0: .4byte gUnk_03003170
	thumb_func_end sub_0800BA80
