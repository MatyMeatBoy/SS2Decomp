	thumb_func_start sub_0805EF14
sub_0805EF14: @ 0x0805EF14
	cmp r0, #0
	bne _0805EF1C
	movs r0, #0
	b _0805EF2A
_0805EF1C:
	movs r1, #0
	adds r0, #0x80
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne _0805EF28
	movs r1, #1
_0805EF28:
	adds r0, r1, #0
_0805EF2A:
	bx lr
	thumb_func_end sub_0805EF14
