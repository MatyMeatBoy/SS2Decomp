	thumb_func_start sub_0805EEEC
sub_0805EEEC: @ 0x0805EEEC
	movs r1, #0
	adds r0, #0x30
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne _0805EEF8
	movs r1, #1
_0805EEF8:
	adds r0, r1, #0
	bx lr
	thumb_func_end sub_0805EEEC
