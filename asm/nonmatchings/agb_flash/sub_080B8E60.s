	thumb_func_start sub_080B8E60
sub_080B8E60: @ 0x080B8E60
	push {lr}
	bl sub_080B8F28
	cmp r0, #0
	bne _080B8E6E
	movs r0, #0
	b _080B8E70
_080B8E6E:
	ldr r0, _080B8E74
_080B8E70:
	pop {r1}
	bx r1
_080B8E74: .4byte 0x00008004
	thumb_func_end sub_080B8E60
