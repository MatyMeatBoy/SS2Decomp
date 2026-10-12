	thumb_func_start sub_080685F0
sub_080685F0: @ 0x080685F0
	movs r1, #7
	ands r1, r0
	cmp r1, #0
	beq _080685FC
	adds r0, #8
	subs r0, r0, r1
_080685FC:
	lsrs r0, r0, #3
	bx lr
	thumb_func_end sub_080685F0
