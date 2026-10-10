	thumb_func_start sub_080B6B10
sub_080B6B10: @ 0x080B6B10
	mov ip, lr
	bl sub_080B69AC
	subs r3, #0x40
	strb r3, [r1, #0xc]
	ldrb r3, [r1, #0]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1, #0]
	bx ip
	thumb_func_end sub_080B6B10
