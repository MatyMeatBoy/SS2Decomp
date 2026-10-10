	thumb_func_start sub_08000420
sub_08000420: @ 0x08000420
	movs r3, #0
	ldr r1, _0800043C
	ldr r1, [r1, #0]
_08000426:
	ldr r2, [r1, #0x14]
	cmp r0, r2
	bne _08000432
	str r3, [r1, #0x14]
	movs r2, #1
	str r2, [r1, #4]
_08000432:
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _08000426
	bx lr
	.2byte 0x0000
_0800043C: .4byte gUnk_03001240
	thumb_func_end sub_08000420
