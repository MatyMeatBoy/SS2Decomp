	thumb_func_start ply_mod
ply_mod: @ 0x080B70B8
	mov ip, lr
	bl ld_r3_tp_adr_i
	strb r3, [r1, #0x17]
	cmp r3, #0
	bne _080B70C8
	bl clear_modM
_080B70C8:
	bx ip
	thumb_func_end ply_mod
