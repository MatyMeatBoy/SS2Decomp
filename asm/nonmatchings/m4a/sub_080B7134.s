	thumb_func_start sub_080B7134
sub_080B7134: @ 0x080B7134
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _080B7148
	cmp r3, r0
	bne _080B7146
	ldr r0, [r2, #4]
	ldr r1, _080B714C
	ands r0, r1
	str r0, [r2, #4]
_080B7146:
	bx lr
_080B7148: .4byte 0x68736D53
_080B714C: .4byte 0x7FFFFFFF
	thumb_func_end sub_080B7134
