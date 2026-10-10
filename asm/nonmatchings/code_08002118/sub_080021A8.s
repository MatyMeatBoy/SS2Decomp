	thumb_func_start sub_080021A8
sub_080021A8: @ 0x080021A8
	ldr r0, _080021B8
	ldr r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080021BC
	movs r0, #0
	b _080021C2
_080021B8: .4byte gUnk_030027D0
_080021BC:
	lsrs r0, r1, #3
	movs r1, #1
	ands r0, r1
_080021C2:
	bx lr
	thumb_func_end sub_080021A8
