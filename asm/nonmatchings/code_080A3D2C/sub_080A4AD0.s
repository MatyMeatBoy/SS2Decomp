	thumb_func_start sub_080A4AD0
sub_080A4AD0: @ 0x080A4AD0
	ldr r0, _080A4AE0
	ldr r1, [r0, #0]
	movs r2, #3
	negs r2, r2
	ands r1, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
_080A4AE0: .4byte gUnk_030056FC
	thumb_func_end sub_080A4AD0
