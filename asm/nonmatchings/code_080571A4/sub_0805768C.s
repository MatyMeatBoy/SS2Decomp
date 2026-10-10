	thumb_func_start sub_0805768C
sub_0805768C: @ 0x0805768C
	push {lr}
	movs r0, #6
	bl sub_0801ABE8
	b _0805769A
_08057696:
	bl sub_080003F0
_0805769A:
	bl sub_0801AAE0
	cmp r0, #0
	beq _08057696
	pop {r0}
	bx r0
	thumb_func_end sub_0805768C
