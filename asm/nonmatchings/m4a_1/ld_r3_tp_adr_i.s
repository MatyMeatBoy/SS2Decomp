	thumb_func_start ld_r3_tp_adr_i
ld_r3_tp_adr_i: @ 0x080B7098
	ldr r2, [r1, #0x40]
	adds r3, r2, #1
	str r3, [r1, #0x40]
	ldrb r3, [r2, #0]
	bx lr
	thumb_func_end ld_r3_tp_adr_i
