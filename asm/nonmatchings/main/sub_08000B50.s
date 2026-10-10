	thumb_func_start sub_08000B50
sub_08000B50: @ 0x08000B50
	push {lr}
	ldr r0, _08000B60
	ldr r1, _08000B64
	movs r2, #0x24
	bl sub_080B8578
	pop {r0}
	bx r0
_08000B60: .4byte gUnk_03001250
_08000B64: .4byte 0x04000010
	thumb_func_end sub_08000B50
