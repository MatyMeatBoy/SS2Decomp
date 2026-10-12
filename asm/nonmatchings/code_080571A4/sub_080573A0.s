	thumb_func_start sub_080573A0
sub_080573A0: @ 0x080573A0
	push {lr}
	adds r3, r0, #0
	adds r0, r1, #0
	adds r1, r3, #0
	bl sub_08068820
	pop {r1}
	bx r1
	thumb_func_end sub_080573A0
