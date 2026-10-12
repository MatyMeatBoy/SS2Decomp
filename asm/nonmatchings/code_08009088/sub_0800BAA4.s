	thumb_func_start sub_0800BAA4
sub_0800BAA4: @ 0x0800BAA4
	ldr r2, _0800BAC0
	ldr r3, [r2, #0x68]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r0, r0, #0x13
	asrs r1, r1, #0x13
	adds r2, #0x70
	ldrh r2, [r2, #0]
	muls r1, r2, r1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r3, r3, r0
	adds r0, r3, #0
	bx lr
_0800BAC0: .4byte gUnk_03003170
	thumb_func_end sub_0800BAA4
