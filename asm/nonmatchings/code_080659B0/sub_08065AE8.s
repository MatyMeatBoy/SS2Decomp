	thumb_func_start sub_08065AE8
sub_08065AE8: @ 0x08065AE8
	push {lr}
	bl sub_08058DB0
	cmp r0, #0
	bne _08065AF6
	movs r0, #0
	b _08065AF8
_08065AF6:
	movs r0, #1
_08065AF8:
	pop {r1}
	bx r1
	thumb_func_end sub_08065AE8
