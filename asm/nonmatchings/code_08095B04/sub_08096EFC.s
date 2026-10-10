	thumb_func_start sub_08096EFC
sub_08096EFC: @ 0x08096EFC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	movs r7, #0
	lsls r1, r1, #0x18
	asrs r4, r1, #0x18
	movs r0, #0x20
	negs r0, r0
	mov r9, r0
	ldr r0, _08096F9C
	mov r8, r0
	movs r0, #0x7d
	negs r0, r0
	mov ip, r0
_08096F1C:
	adds r3, r6, #0
	adds r6, r3, #2
	ldr r0, [r3, #0]
	lsls r0, r0, #0x1b
	lsrs r0, r0, #0x1b
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08096F32
	movs r2, #0x1f
_08096F32:
	movs r5, #0x1f
	ands r2, r5
	ldrb r1, [r3, #0]
	mov r0, r9
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #0]
	ldr r0, [r3, #0]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x1b
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08096F52
	movs r2, #0x1f
_08096F52:
	movs r0, #0x1f
	ands r2, r0
	lsls r2, r2, #5
	ldrh r1, [r3, #0]
	mov r0, r8
	ands r0, r1
	orrs r0, r2
	strh r0, [r3, #0]
	ldr r0, [r3, #0]
	lsls r0, r0, #0x11
	lsrs r0, r0, #0x1b
	adds r0, r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0x1f
	bls _08096F74
	movs r2, #0x1f
_08096F74:
	ands r2, r5
	lsls r2, r2, #2
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	orrs r0, r2
	movs r1, #0x7f
	ands r0, r1
	strb r0, [r3, #1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bls _08096F1C
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08096F9C: .4byte 0xFFFFFC1F
	thumb_func_end sub_08096EFC
