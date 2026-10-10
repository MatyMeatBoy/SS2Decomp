	thumb_func_start sub_08097F70
sub_08097F70: @ 0x08097F70
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r1, #0
	movs r6, #0
	movs r7, #0x1f
	movs r1, #0x20
	negs r1, r1
	mov r9, r1
	ldr r1, _08097FE0
	mov r8, r1
	movs r1, #0x7d
	negs r1, r1
	mov ip, r1
	subs r4, r0, #2
_08097F90:
	adds r0, r5, #0
	adds r5, #2
	adds r4, #2
	ldr r2, [r0, #0]
	lsls r1, r2, #0x1b
	lsrs r1, r1, #0x1b
	ands r1, r7
	ldrb r3, [r4, #0]
	mov r0, r9
	ands r0, r3
	orrs r0, r1
	strb r0, [r4, #0]
	movs r1, #0xf8
	lsls r1, r1, #2
	ands r1, r2
	ldrh r3, [r4, #0]
	mov r0, r8
	ands r0, r3
	orrs r0, r1
	strh r0, [r4, #0]
	lsls r2, r2, #0x11
	lsrs r2, r2, #0x1b
	ands r2, r7
	lsls r2, r2, #2
	ldrb r1, [r4, #1]
	mov r0, ip
	ands r0, r1
	orrs r0, r2
	strb r0, [r4, #1]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #0xf
	bls _08097F90
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08097FE0: .4byte 0xFFFFFC1F
	thumb_func_end sub_08097F70
