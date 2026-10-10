	thumb_func_start sub_080A4BFC
sub_080A4BFC: @ 0x080A4BFC
	push {r4, lr}
	ldr r4, _080A4C20
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _080A4C10
	ldr r0, [r4, #0]
	bl sub_080003A8
_080A4C10:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_080A4C20: .4byte gUnk_03000360
	thumb_func_end sub_080A4BFC
