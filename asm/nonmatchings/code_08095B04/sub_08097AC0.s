	thumb_func_start sub_08097AC0
sub_08097AC0: @ 0x08097AC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08096060
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r0, #0
	beq _08097B14
	cmp r7, #0
	beq _08097B08
	adds r1, r6, #0
	adds r1, #0x14
	ldrh r2, [r6, #8]
	movs r0, #0
	str r0, [sp, #0]
	mov r0, r8
	movs r3, #0
	bl sub_08013E90
	strh r0, [r6, #8]
	b _08097B14
_08097B08:
	adds r1, r6, #0
	adds r1, #0x14
	ldrh r2, [r6, #8]
	mov r0, r8
	bl sub_08097BA4
_08097B14:
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08097AC0
