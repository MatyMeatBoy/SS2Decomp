	thumb_func_start sub_080B7520
sub_080B7520: @ 0x080B7520
	push {lr}
	ldr r1, _080B7530
	ldr r1, [r1, #0]
	bl sub_080B8F28
	pop {r0}
	bx r0
	.2byte 0x0000
_080B7530: .4byte gUnk_030074B8
	thumb_func_end sub_080B7520
