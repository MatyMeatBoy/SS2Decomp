	thumb_func_start sub_080944F0
sub_080944F0: @ 0x080944F0
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
	ldr r4, _0809452C
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08094524
	bl sub_08000470
	cmp r0, #0
	beq _0809451C
	ldr r0, [r4, #0]
	bl sub_080003A8
_0809451C:
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
_08094524:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_0809452C: .4byte gUnk_03000270
	thumb_func_end sub_080944F0
