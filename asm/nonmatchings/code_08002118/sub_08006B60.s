	thumb_func_start sub_08006B60
sub_08006B60: @ 0x08006B60
	push {lr}
	ldr r0, _08006B6C
	bl sub_080B76B4
	pop {r0}
	bx r0
_08006B6C: .4byte 0x0093D800
	thumb_func_end sub_08006B60
