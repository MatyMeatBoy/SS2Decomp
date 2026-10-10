	thumb_func_start sub_080B6B24
sub_080B6B24: @ 0x080B6B24
	mov ip, lr
	ldr r2, [r1, #0x40]
	ldrb r3, [r2, #0]
	adds r2, #1
	ldr r0, _080B6B38
	adds r0, r0, r3
	bl sub_080B69AE
	strb r3, [r0, #0]
	bx ip
_080B6B38: .4byte 0x04000060
	thumb_func_end sub_080B6B24
