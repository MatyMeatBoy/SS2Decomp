	thumb_func_start sub_0801B6F4
sub_0801B6F4: @ 0x0801B6F4
	ldrh r2, [r0, #0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r2, r1, r2
	strh r2, [r0, #0]
	ldrh r2, [r0, #2]
	adds r2, r1, r2
	strh r2, [r0, #2]
	ldrh r2, [r0, #4]
	adds r2, r1, r2
	strh r2, [r0, #4]
	ldrh r2, [r0, #6]
	adds r2, r1, r2
	strh r2, [r0, #6]
	ldrh r2, [r0, #8]
	adds r2, r1, r2
	strh r2, [r0, #8]
	ldrh r2, [r0, #0xa]
	adds r1, r1, r2
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_0801B6F4
