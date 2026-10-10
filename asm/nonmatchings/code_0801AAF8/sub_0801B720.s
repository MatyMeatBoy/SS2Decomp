	thumb_func_start sub_0801B720
sub_0801B720: @ 0x0801B720
	ldrh r2, [r0, #0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	subs r2, r2, r1
	strh r2, [r0, #0]
	ldrh r2, [r0, #2]
	subs r2, r2, r1
	strh r2, [r0, #2]
	ldrh r2, [r0, #4]
	subs r2, r2, r1
	strh r2, [r0, #4]
	ldrh r2, [r0, #6]
	subs r2, r2, r1
	strh r2, [r0, #6]
	ldrh r2, [r0, #8]
	subs r2, r2, r1
	strh r2, [r0, #8]
	ldrh r2, [r0, #0xa]
	subs r2, r2, r1
	strh r2, [r0, #0xa]
	bx lr
	thumb_func_end sub_0801B720
