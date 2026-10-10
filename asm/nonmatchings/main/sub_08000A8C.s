	thumb_func_start sub_08000A8C
sub_08000A8C: @ 0x08000A8C
	lsls r1, r1, #0x10
	ldr r2, _08000AA4
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	cmp r1, #0
	beq _08000AA0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r0, [r2, #0]
	strh r0, [r1, #0]
_08000AA0:
	bx lr
	.2byte 0x0000
_08000AA4: .4byte gUnk_0300129C
	thumb_func_end sub_08000A8C
