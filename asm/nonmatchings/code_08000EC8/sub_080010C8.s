	thumb_func_start sub_080010C8
sub_080010C8: @ 0x080010C8
	adds r2, r0, #0
	ldr r0, _080010D4
	ldr r0, [r0, #0]
	ldr r1, _080010D8
	str r2, [r1, #0]
	bx lr
_080010D4: .4byte gUnk_03000010
_080010D8: .4byte gUnk_03000014
	thumb_func_end sub_080010C8
