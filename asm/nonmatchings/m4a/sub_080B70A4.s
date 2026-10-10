	thumb_func_start sub_080B70A4
sub_080B70A4: @ 0x080B70A4
	mov ip, lr
	bl sub_080B7098
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080B70B4
	bl sub_080B707C
_080B70B4:
	bx ip
	thumb_func_end sub_080B70A4
