	thumb_func_start sub_08094EA4
sub_08094EA4: @ 0x08094EA4
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
	ldr r4, _08094EE0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _08094ED8
	bl sub_08000470
	cmp r0, #0
	beq _08094ED0
	ldr r0, [r4, #0]
	bl sub_080003A8
_08094ED0:
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
_08094ED8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_08094EE0: .4byte gUnk_0300027C
	thumb_func_end sub_08094EA4
