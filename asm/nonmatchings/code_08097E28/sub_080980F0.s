	thumb_func_start sub_080980F0
sub_080980F0: @ 0x080980F0
	ldr r0, _08098100
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08098104
	movs r0, #1
	b _08098106
	.2byte 0x0000
_08098100: .4byte gUnk_030002C0
_08098104:
	movs r0, #0
_08098106:
	bx lr
	thumb_func_end sub_080980F0
