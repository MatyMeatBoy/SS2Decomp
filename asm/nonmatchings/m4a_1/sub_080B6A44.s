	thumb_func_start sub_080B6A44
sub_080B6A44: @ 0x080B6A44
	mov ip, lr
	bl sub_080B69AC
	lsls r3, r3, #1
	strh r3, [r0, #0x1c]
	ldrh r2, [r0, #0x1e]
	muls r3, r2, r3
	lsrs r3, r3, #8
	strh r3, [r0, #0x20]
	bx ip
	thumb_func_end sub_080B6A44
