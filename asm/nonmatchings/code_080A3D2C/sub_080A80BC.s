	thumb_func_start sub_080A80BC
sub_080A80BC: @ 0x080A80BC
	push {r4, lr}
	ldr r4, _080A80D4
	movs r0, #0x28
	bl sub_08001494
	str r0, [r4, #0]
	movs r1, #0
	str r1, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
_080A80D4: .4byte gUnk_03000418
	thumb_func_end sub_080A80BC
