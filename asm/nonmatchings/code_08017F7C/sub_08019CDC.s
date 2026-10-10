	thumb_func_start sub_08019CDC
sub_08019CDC: @ 0x08019CDC
	movs r0, #0
_08019CDE:
	adds r0, #1
	cmp r0, #4
	bls _08019CDE
	bx lr
	thumb_func_end sub_08019CDC
