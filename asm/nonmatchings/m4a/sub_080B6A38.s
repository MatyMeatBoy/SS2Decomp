	thumb_func_start sub_080B6A38
sub_080B6A38: @ 0x080B6A38
	mov ip, lr
	bl sub_080B69AC
	strb r3, [r1, #0x1d]
	bx ip
	thumb_func_end sub_080B6A38
