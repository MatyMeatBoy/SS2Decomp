	thumb_func_start sub_080A9910
sub_080A9910: @ 0x080A9910
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r3, [r1, #0]
	ldr r4, [r0, #0]
	subs r5, r3, r4
	ldr r1, [r1, #4]
	ldr r3, [r0, #4]
	subs r6, r1, r3
	ldr r0, [r2, #0]
	subs r4, r0, r4
	str r4, [sp, #0]
	ldr r0, [r2, #4]
	subs r3, r0, r3
	str r3, [sp, #4]
	adds r1, r5, #0
	muls r1, r3, r1
	adds r2, r4, #0
	adds r0, r6, #0
	muls r0, r2, r0
	subs r1, r1, r0
	movs r0, #1
	cmp r1, #0
	bgt _080A9946
	movs r0, #0
	cmp r1, #0
	bge _080A9946
	subs r0, #1
_080A9946:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_080A9910
