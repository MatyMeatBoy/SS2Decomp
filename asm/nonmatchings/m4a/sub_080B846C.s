	thumb_func_start sub_080B846C
sub_080B846C: @ 0x080B846C
	push {lr}
	ldr r2, _080B847C
	ldr r2, [r2, #0]
	bl sub_080B8F2C
	pop {r0}
	bx r0
	.2byte 0x0000
_080B847C: .4byte gUnk_03007430
	thumb_func_end sub_080B846C
