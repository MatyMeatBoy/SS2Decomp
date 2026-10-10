	thumb_func_start sub_0809F918
sub_0809F918: @ 0x0809F918
	push {r4, lr}
	ldr r4, _0809F930
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_0809F930: .4byte gUnk_03000318
	thumb_func_end sub_0809F918
