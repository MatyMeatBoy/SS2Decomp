	thumb_func_start sub_08067EC8
sub_08067EC8: @ 0x08067EC8
	ldr r3, _08067EF8
	ldr r2, [r3, #0]
	cmp r2, #0x31
	bhi _08067F00
	ldr r1, _08067EFC
	lsls r0, r2, #4
	adds r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [r1, #0]
	adds r1, r1, r0
	movs r0, #1
	str r0, [r1, #4]
	movs r2, #0
	movs r0, #0x93
	strb r0, [r1, #0]
	str r2, [r1, #8]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	movs r0, #1
	b _08067F02
	.2byte 0x0000
_08067EF8: .4byte gUnk_03006338
_08067EFC: .4byte gUnk_03006300
_08067F00:
	movs r0, #0
_08067F02:
	bx lr
	thumb_func_end sub_08067EC8
