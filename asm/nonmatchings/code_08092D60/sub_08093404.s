	thumb_func_start sub_08093404
sub_08093404: @ 0x08093404
	push {lr}
	ldr r0, _08093428
	movs r1, #0
	strb r1, [r0, #0]
	movs r0, #0x80
	lsls r0, r0, #4
	bl sub_08000FD4
	bl sub_080003F0
	movs r0, #0
	bl sub_080012D8
	movs r0, #0
	bl sub_080011E4
	pop {r0}
	bx r0
_08093428: .4byte gUnk_03000268
	thumb_func_end sub_08093404
