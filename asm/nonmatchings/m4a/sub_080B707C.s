	thumb_func_start sub_080B707C
sub_080B707C: @ 0x080B707C
	movs r2, #0
	strb r2, [r1, #0x16]
	strb r2, [r1, #0x1a]
	ldrb r2, [r1, #0x18]
	cmp r2, #0
	bne _080B708C
	movs r2, #0xc
	b _080B708E
_080B708C:
	movs r2, #3
_080B708E:
	ldrb r3, [r1, #0]
	orrs r3, r2
	strb r3, [r1, #0]
	bx lr
	thumb_func_end sub_080B707C
