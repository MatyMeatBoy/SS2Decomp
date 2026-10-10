	thumb_func_start sub_0801E0BC
sub_0801E0BC: @ 0x0801E0BC
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	strh r1, [r0, #0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end sub_0801E0BC
