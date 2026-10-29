	thumb_func_start sub_080B6AF8
sub_080B6AF8: @ 0x080B6AF8
	mov ip, lr
	bl sub_080B69AC
	ldrb r0, [r1, #0x18]
	cmp r0, r3
	beq _080B6B0E
	strb r3, [r1, #0x18]
	ldrb r3, [r1, #0]
	movs r2, #0xf
	orrs r3, r2
	strb r3, [r1, #0]
_080B6B0E:
	bx ip
	thumb_func_end sub_080B6AF8
