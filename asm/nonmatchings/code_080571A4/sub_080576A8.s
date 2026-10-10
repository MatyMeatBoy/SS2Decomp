	thumb_func_start sub_080576A8
sub_080576A8: @ 0x080576A8
	push {lr}
	movs r0, #0x1e
	bl sub_0801AA34
	b _080576B6
_080576B2:
	bl sub_080003F0
_080576B6:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080576B2
	pop {r0}
	bx r0
	thumb_func_end sub_080576A8
