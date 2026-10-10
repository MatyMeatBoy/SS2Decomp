	thumb_func_start sub_080B6A9C
sub_080B6A9C: @ 0x080B6A9C
	mov ip, lr
	bl sub_080B69AC
	strb r3, [r1, #0x12]
	ldrb r3, [r1, #0]
	movs r2, #3
	orrs r3, r2
	strb r3, [r1, #0]
	bx ip
	thumb_func_end sub_080B6A9C
