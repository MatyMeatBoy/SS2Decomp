	thumb_func_start sub_080022F4
sub_080022F4: @ 0x080022F4
	ldr r0, _08002300
	ldr r0, [r0, #0]
	lsrs r0, r0, #1
	movs r1, #1
	ands r0, r1
	bx lr
_08002300: .4byte gUnk_030027D0
	thumb_func_end sub_080022F4
