	thumb_func_start sub_0805EEFC
sub_0805EEFC: @ 0x0805EEFC
	cmp r0, #0
	bne _0805EF04
	movs r0, #0
	b _0805EF10
_0805EF04:
	movs r1, #0
	ldr r0, [r0, #0x74]
	cmp r0, #0
	bne _0805EF0E
	movs r1, #1
_0805EF0E:
	adds r0, r1, #0
_0805EF10:
	bx lr
	thumb_func_end sub_0805EEFC
