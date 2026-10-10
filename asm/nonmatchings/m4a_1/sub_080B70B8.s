	thumb_func_start sub_080B70B8
sub_080B70B8: @ 0x080B70B8
	mov ip, lr
	bl sub_080B7098
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080B70C8
	bl sub_080B707C
_080B70C8:
	bx ip
	thumb_func_end sub_080B70B8
