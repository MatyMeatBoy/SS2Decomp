	thumb_func_start sub_08001A50
sub_08001A50: @ 0x08001A50
	ldr r1, _08001A60
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq _08001A5C
	movs r0, #1
	strb r0, [r1, #8]
_08001A5C:
	bx lr
	.2byte 0x0000
_08001A60: .4byte gUnk_030024B0
	thumb_func_end sub_08001A50
