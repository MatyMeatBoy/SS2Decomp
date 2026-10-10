	thumb_func_start sub_080A0FC4
sub_080A0FC4: @ 0x080A0FC4
	push {r4, lr}
	ldr r4, _080A0FE8
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _080A0FD8
	ldr r0, [r4, #0]
	bl sub_080003A8
_080A0FD8:
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
_080A0FE8: .4byte gUnk_03000334
	thumb_func_end sub_080A0FC4
