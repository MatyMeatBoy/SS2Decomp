	thumb_func_start sub_080011E4
sub_080011E4: @ 0x080011E4
	adds r1, r0, #0
	cmp r1, #0
	beq _080011F8
	ldr r0, _080011F4
	str r1, [r0, #0]
	movs r0, #1
	b _080011FE
	.2byte 0x0000
_080011F4: .4byte gUnk_0300234C
_080011F8:
	ldr r0, _08001200
	str r1, [r0, #0]
	movs r0, #0
_080011FE:
	bx lr
_08001200: .4byte gUnk_0300234C
	thumb_func_end sub_080011E4
