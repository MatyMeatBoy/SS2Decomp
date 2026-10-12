	thumb_func_start sub_08015DC0
sub_08015DC0: @ 0x08015DC0
	adds r2, r0, #0
	ldr r1, [r2, #0]
	cmp r1, #0x17
	bgt _08015DD6
	adds r0, r1, #0
	subs r0, #8
	str r0, [r2, #0]
	cmp r0, #0
	bgt _08015DDC
	movs r0, #0
	b _08015DDA
_08015DD6:
	asrs r0, r1, #1
	subs r0, r1, r0
_08015DDA:
	str r0, [r2, #0]
_08015DDC:
	bx lr
	thumb_func_end sub_08015DC0
