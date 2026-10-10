	thumb_func_start sub_080B6AB0
sub_080B6AB0: @ 0x080B6AB0
	mov ip, lr
	bl sub_080B69AC
	subs r3, #0x40
	strb r3, [r1, #0x14]
	ldrb r3, [r1, #0]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1, #0]
	bx ip
	thumb_func_end sub_080B6AB0
