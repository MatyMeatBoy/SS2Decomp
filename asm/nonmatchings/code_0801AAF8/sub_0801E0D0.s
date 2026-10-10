	thumb_func_start sub_0801E0D0
sub_0801E0D0: @ 0x0801E0D0
	ldrh r2, [r1, #0]
	ldrh r3, [r0, #0]
	adds r2, r2, r3
	strh r2, [r0, #0]
	ldrh r2, [r1, #2]
	ldrh r3, [r0, #2]
	adds r2, r2, r3
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r3, [r0, #4]
	adds r2, r2, r3
	strh r2, [r0, #4]
	ldrh r2, [r1, #6]
	ldrh r3, [r0, #6]
	adds r2, r2, r3
	strh r2, [r0, #6]
	ldrh r2, [r1, #8]
	ldrh r3, [r0, #8]
	adds r2, r2, r3
	strh r2, [r0, #8]
	ldrh r1, [r1, #0xa]
	ldrh r2, [r0, #0xa]
	adds r1, r1, r2
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_0801E0D0
