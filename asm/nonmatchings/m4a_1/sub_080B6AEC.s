	thumb_func_start sub_080B6AEC
sub_080B6AEC: @ 0x080B6AEC
	mov ip, lr
	bl sub_080B69AC
	strb r3, [r1, #0x1b]
	bx ip
	thumb_func_end sub_080B6AEC
