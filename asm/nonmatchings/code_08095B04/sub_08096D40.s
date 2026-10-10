	thumb_func_start sub_08096D40
sub_08096D40: @ 0x08096D40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r9, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	movs r0, #1
	cmp r8, r7
	bhs _08096E0C
	movs r0, #0
	mov sl, r0
	subs r6, r4, #2
_08096D64:
	mov r0, r9
	movs r1, #2
	add r9, r1
	adds r6, #2
	ldr r1, [r6, #0]
	lsls r1, r1, #0x1b
	lsrs r4, r1, #0x1b
	ldr r5, [r0, #0]
	lsls r0, r5, #0x1b
	lsrs r0, r0, #0x1b
	adds r1, r4, #0
	subs r0, r0, r1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r7, #0
	bl __divsi3
	adds r4, r4, r0
	movs r0, #0x1f
	ands r4, r0
	ldrb r0, [r6, #0]
	movs r2, #0x20
	negs r2, r2
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r6, #0]
	ldr r1, [r6, #0]
	lsls r1, r1, #0x16
	lsrs r4, r1, #0x1b
	lsls r0, r5, #0x16
	lsrs r0, r0, #0x1b
	adds r1, r4, #0
	subs r0, r0, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r7, #0
	bl __divsi3
	adds r4, r4, r0
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #5
	ldrh r0, [r6, #0]
	ldr r2, _08096E1C
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r6, #0]
	ldr r0, [r6, #0]
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x1b
	lsls r5, r5, #0x11
	lsrs r5, r5, #0x1b
	adds r0, r4, #0
	subs r5, r5, r0
	mov r0, r8
	muls r0, r5, r0
	adds r1, r7, #0
	bl __divsi3
	adds r4, r4, r0
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #2
	ldrb r0, [r6, #1]
	movs r2, #0x7d
	negs r2, r2
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r4
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r6, #1]
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #0xf
	bls _08096D64
	movs r0, #0
_08096E0C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08096E1C: .4byte 0xFFFFFC1F
	thumb_func_end sub_08096D40
