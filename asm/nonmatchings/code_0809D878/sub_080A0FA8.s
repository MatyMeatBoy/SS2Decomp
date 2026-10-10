	thumb_func_start sub_080A0FA8
sub_080A0FA8: @ 0x080A0FA8
	push {r4, lr}
	ldr r4, _080A0FC0
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A0FC0: .4byte gUnk_03000334
	thumb_func_end sub_080A0FA8
