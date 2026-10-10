	thumb_func_start sub_080A98E0
sub_080A98E0: @ 0x080A98E0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl sub_080A9910
	str r0, [sp, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_080A9910
	str r0, [sp, #4]
	ldr r1, [sp, #0]
	cmp r1, r0
	bne _080A9906
	movs r0, #0
	b _080A9908
_080A9906:
	movs r0, #1
_080A9908:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080A98E0
