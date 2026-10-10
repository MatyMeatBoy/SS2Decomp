	thumb_func_start sub_080B69D8
sub_080B69D8: @ 0x080B69D8
	ldrb r2, [r1, #2]
	cmp r2, #3
	bhs _080B69F0
	lsls r2, r2, #2
	adds r3, r1, r2
	ldr r2, [r1, #0x40]
	adds r2, #4
	str r2, [r3, #0x44]
	ldrb r2, [r1, #2]
	adds r2, #1
	strb r2, [r1, #2]
	b sub_080B69B8
_080B69F0:
	b sub_080B6948
	thumb_func_end sub_080B69D8
