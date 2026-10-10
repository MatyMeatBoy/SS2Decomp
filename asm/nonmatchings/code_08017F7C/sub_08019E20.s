	thumb_func_start sub_08019E20
sub_08019E20: @ 0x08019E20
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0800CE30
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_08019E20
