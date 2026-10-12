	thumb_func_start sub_0805EF84
sub_0805EF84: @ 0x0805EF84
	cmp r0, #0
	beq _0805EF8C
	adds r0, #0x80
	strh r1, [r0, #0]
_0805EF8C:
	bx lr
	thumb_func_end sub_0805EF84
