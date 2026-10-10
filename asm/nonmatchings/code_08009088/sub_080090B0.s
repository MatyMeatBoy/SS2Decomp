	thumb_func_start sub_080090B0
sub_080090B0: @ 0x080090B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r5, _08009130
	movs r4, #0
	stm r5!, {r4}
	ldr r6, _08009134
	str r4, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xa
	bl sub_08001494
	str r0, [r6, #0x64]
	str r4, [r6, #0x60]
	movs r2, #1
	movs r1, #0
	adds r4, r6, #0
	adds r4, #0x20
	movs r7, #0x18
	mov r8, r5
_080090DA:
	movs r0, #0x80
	lsls r0, r0, #4
	str r1, [sp, #0]
	str r2, [sp, #4]
	bl sub_08001494
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	stm r3!, {r0}
	adds r5, r6, #0
	adds r5, #0xc
	adds r0, r7, r5
	ldr r1, [sp, #0]
	str r1, [r0, #0]
	strh r1, [r4, #0]
	strh r1, [r4, #2]
	movs r0, #1
	strh r0, [r4, #0xe]
	adds r4, #0x18
	adds r7, #0x18
	ldr r2, [sp, #4]
	adds r2, #1
	cmp r2, #3
	bls _080090DA
	movs r1, #0
	adds r0, r5, #0
	subs r0, #0xc
	str r1, [r0, #0x68]
	adds r0, #0x90
	strh r1, [r0, #0]
	bl sub_0805700C
	adds r1, r5, #0
	adds r1, #0x80
	strh r0, [r1, #0]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08009130: .4byte gUnk_03003460
_08009134: .4byte gUnk_03003170
	thumb_func_end sub_080090B0
