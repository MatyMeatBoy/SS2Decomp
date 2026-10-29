	thumb_func_start ply_lfos
ply_lfos: @ 0x080B70A4
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x19]
	cmp r3, #0
	bne _080B70B4
	bl clear_modM
_080B70B4:
	bx ip
	thumb_func_end ply_lfos
