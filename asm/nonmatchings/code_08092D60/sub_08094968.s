	thumb_func_start sub_08094968
sub_08094968: @ 0x08094968
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
	ldr r4, _080949A4
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0809499C
	bl sub_08000470
	cmp r0, #0
	beq _08094994
	ldr r0, [r4, #0]
	bl sub_080003A8
_08094994:
	ldr r0, [r4, #0]
	bl sub_08001538
	str r5, [r4, #0]
_0809499C:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
_080949A4: .4byte gUnk_03000278
	thumb_func_end sub_08094968
