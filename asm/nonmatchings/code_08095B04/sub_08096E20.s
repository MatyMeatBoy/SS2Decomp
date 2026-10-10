	thumb_func_start sub_08096E20
sub_08096E20: @ 0x08096E20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r9, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r8, r3
	movs r0, #1
	cmp r9, r8
	bhs _08096EE8
	movs r0, #0
	mov sl, r0
	lsls r1, r1, #0x18
	str r1, [sp, #0]
_08096E4C:
	ldr r4, [sp, #4]
	adds r1, r4, #2
	str r1, [sp, #4]
	ldr r3, [sp, #0]
	asrs r0, r3, #0x18
	mov r7, r9
	muls r7, r0, r7
	adds r0, r7, #0
	mov r1, r8
	bl sub_080B9394
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r3, #0
	ldr r0, [r4, #0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08096E7A
	movs r2, #0x1f
_08096E7A:
	movs r6, #0x1f
	ands r2, r6
	ldrb r0, [r4, #0]
	movs r7, #0x20
	negs r7, r7
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08096E9E
	movs r2, #0x1f
_08096E9E:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #5
	ldrh r0, [r4, #0]
	ldr r3, _08096EF8
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #0]
	ldr r0, [r4, #0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08096EC2
	movs r2, #0x1f
_08096EC2:
	ands r2, r6
	lsls r2, r2, #2
	ldrb r0, [r4, #1]
	movs r7, #0x7d
	negs r7, r7
	adds r1, r7, #0
	ands r0, r1
	orrs r0, r2
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r4, #1]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xf
	bls _08096E4C
	movs r0, #0
_08096EE8:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
_08096EF8: .4byte 0xFFFFFC1F
	thumb_func_end sub_08096E20
