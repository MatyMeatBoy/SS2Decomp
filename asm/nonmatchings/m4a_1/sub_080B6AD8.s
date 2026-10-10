	thumb_func_start sub_080B6AD8
sub_080B6AD8: @ 0x080B6AD8
	mov ip, lr
	bl sub_080B69AC
	strb r3, [r1, #0xf]
	ldrb r3, [r1, #0]
	movs r2, #0xc
	orrs r3, r2
	strb r3, [r1, #0]
	bx ip
	thumb_func_end sub_080B6AD8
