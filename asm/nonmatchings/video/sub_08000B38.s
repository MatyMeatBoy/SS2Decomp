	thumb_func_start sub_08000B38
sub_08000B38: @ 0x08000B38
	push {lr}
	ldr r0, _08000B4C
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001348
	pop {r0}
	bx r0
_08000B4C: .4byte gUnk_03001F40
	thumb_func_end sub_08000B38
