	thumb_func_start sub_080B6B3C
sub_080B6B3C: @ 0x080B6B3C
	ldr r0, _080B6DD8
	ldr r0, [r0, #0]
	ldr r2, _080B6DDC
	ldr r3, [r0, #0]
	subs r3, r3, r2
	cmp r3, #1
	bhi _080B6B68
	ldrb r1, [r0, #4]
	subs r1, #1
	strb r1, [r0, #4]
	bgt _080B6B68
	ldrb r1, [r0, #0xb]
	strb r1, [r0, #4]
	movs r0, #0
	movs r1, #0xb6
	lsls r1, r1, #8
	ldr r2, _080B6B6C
	ldr r3, _080B6B70
	strh r0, [r2, #0]
	strh r0, [r3, #0]
	strh r1, [r2, #0]
	strh r1, [r3, #0]
_080B6B68:
	bx lr
	.2byte 0x0000
_080B6B6C: .4byte 0x040000C6
_080B6B70: .4byte 0x040000D2
	thumb_func_end sub_080B6B3C
