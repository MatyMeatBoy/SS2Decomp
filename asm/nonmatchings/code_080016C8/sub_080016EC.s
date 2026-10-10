	thumb_func_start sub_080016EC
sub_080016EC: @ 0x080016EC
	movs r2, #0
	ldr r0, _08001708
	ldr r1, [r0, #0xc]
	cmp r1, r0
	beq _08001704
	adds r3, r0, #0
_080016F8:
	ldr r0, [r1, #4]
	subs r0, r0, r1
	adds r2, r2, r0
	ldr r1, [r1, #0xc]
	cmp r1, r3
	bne _080016F8
_08001704:
	adds r0, r2, #0
	bx lr
_08001708: .4byte gUnk_03002370
	thumb_func_end sub_080016EC
