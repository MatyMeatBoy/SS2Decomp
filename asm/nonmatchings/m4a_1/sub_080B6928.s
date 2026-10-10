	thumb_func_start sub_080B6928
sub_080B6928: @ 0x080B6928
	ldr r3, [r0, #0x2c]
	cmp r3, #0
	beq _080B6946
	ldr r1, [r0, #0x34]
	ldr r2, [r0, #0x30]
	cmp r2, #0
	beq _080B693A
	str r1, [r2, #0x34]
	b _080B693C
_080B693A:
	str r1, [r3, #0x20]
_080B693C:
	cmp r1, #0
	beq _080B6942
	str r2, [r1, #0x30]
_080B6942:
	movs r1, #0
	str r1, [r0, #0x2c]
_080B6946:
	bx lr
	thumb_func_end sub_080B6928
