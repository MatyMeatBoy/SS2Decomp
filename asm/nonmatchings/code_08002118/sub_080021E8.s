	thumb_func_start sub_080021E8
sub_080021E8: @ 0x080021E8
	ldr r0, _080021F8
	ldr r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080021FC
	movs r0, #0
	b _08002202
_080021F8: .4byte gUnk_030027D0
_080021FC:
	lsrs r0, r1, #4
	movs r1, #1
	ands r0, r1
_08002202:
	bx lr
	thumb_func_end sub_080021E8
