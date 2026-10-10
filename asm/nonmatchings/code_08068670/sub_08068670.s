	thumb_func_start sub_08068670
sub_08068670: @ 0x08068670
	push {r4, r5, r6, lr}
	ldr r6, _08068698
	ldr r0, [r6, #0]
	bl sub_08001538
	ldr r5, _0806869C
	ldr r0, [r5, #0]
	bl sub_08001538
	ldr r4, _080686A0
	ldr r0, [r4, #0]
	bl sub_08001538
	movs r0, #0
	str r0, [r6, #0]
	str r0, [r5, #0]
	str r0, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08068698: .4byte gUnk_03006258
_0806869C: .4byte gUnk_03006368
_080686A0: .4byte gUnk_03006300
	thumb_func_end sub_08068670
