	thumb_func_start sub_080B63A0
sub_080B63A0: @ 0x080B63A0
	push {r4, lr}
	ldr r4, _080B63B8
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080B63B8: .4byte gUnk_030007E4
	thumb_func_end sub_080B63A0
