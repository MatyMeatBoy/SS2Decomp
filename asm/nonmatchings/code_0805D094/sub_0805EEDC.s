	thumb_func_start sub_0805EEDC
sub_0805EEDC: @ 0x0805EEDC
	movs r1, #0
	adds r0, #0x30
	ldrb r0, [r0, #0]
	cmp r0, #3
	bne _0805EEE8
	movs r1, #1
_0805EEE8:
	adds r0, r1, #0
	bx lr
	thumb_func_end sub_0805EEDC
