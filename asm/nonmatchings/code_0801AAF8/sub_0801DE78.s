	thumb_func_start sub_0801DE78
sub_0801DE78: @ 0x0801DE78
	push {r4, lr}
	ldr r1, _0801DE94
	ldr r1, [r1, #0]
	adds r1, #0x30
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	ldm r1!, {r2, r3, r4}
	stm r0!, {r2, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801DE94: .4byte gUnk_030034E0
	thumb_func_end sub_0801DE78
