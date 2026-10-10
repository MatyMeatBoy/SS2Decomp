	thumb_func_start sub_080A80D8
sub_080A80D8: @ 0x080A80D8
	push {r4, r5, lr}
	sub sp, #8
	movs r5, #0
	str r5, [sp, #0]
	str r5, [sp, #4]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0800903C
	ldr r4, _080A8110
	ldr r0, [r4, #0]
	bl sub_08000470
	cmp r0, #0
	beq _080A8100
	ldr r0, [r4, #0]
	bl sub_080003A8
_080A8100:
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_080A8110: .4byte gUnk_03000418
	thumb_func_end sub_080A80D8
