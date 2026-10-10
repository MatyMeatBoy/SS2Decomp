	thumb_func_start sub_080576C4
sub_080576C4: @ 0x080576C4
	push {lr}
	movs r0, #0x1e
	bl sub_0801AA8C
	b _080576D2
_080576CE:
	bl sub_080003F0
_080576D2:
	bl sub_0801AAE0
	cmp r0, #0
	beq _080576CE
	pop {r0}
	bx r0
	thumb_func_end sub_080576C4
