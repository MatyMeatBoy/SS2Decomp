	thumb_func_start sub_0801DE98
sub_0801DE98: @ 0x0801DE98
	push {r4, lr}
	ldr r1, _0801DEB4
	ldr r1, [r1, #0]
	adds r1, #0x30
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0801DEB4: .4byte gUnk_030034E0
	thumb_func_end sub_0801DE98
