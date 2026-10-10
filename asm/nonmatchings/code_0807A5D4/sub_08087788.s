	thumb_func_start sub_08087788
sub_08087788: @ 0x08087788
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	lsrs r4, r4, #0x10
	lsls r2, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r0, #0xf8
	lsls r0, r0, #0xd
	ands r0, r2
	lsrs r0, r0, #0x10
	mov r9, r0
	lsls r0, r4, #5
	bl sub_08001494
	str r0, [sp, #4]
	ldr r1, [sp, #0]
	lsls r0, r1, #5
	ldr r1, _080878A4
	adds r0, r0, r1
	lsls r2, r4, #3
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r2, r1
	ldr r1, [sp, #4]
	bl CpuSet
	lsls r4, r4, #4
	str r4, [sp, #8]
	movs r7, #0
	cmp r7, r8
	bhs _0808788C
_080877D6:
	ldr r3, [sp, #0]
	lsls r1, r3, #5
	ldr r0, _080878A4
	adds r5, r1, r0
	ldr r6, [sp, #4]
	movs r2, #0
	adds r0, r7, #1
	str r0, [sp, #0xc]
	ldr r1, [sp, #8]
	cmp r2, r1
	bhs _0808787A
	movs r3, #0x1f
	mov sl, r3
_080877F0:
	ldr r0, [r6, #0]
	lsls r0, r0, #0x1b
	lsrs r4, r0, #0x1b
	adds r0, r4, #0
	mov r1, r9
	subs r0, r1, r0
	muls r0, r7, r0
	mov r1, r8
	str r2, [sp, #0x10]
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	ands r4, r3
	ldrb r0, [r5, #0]
	movs r3, #0x20
	negs r3, r3
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #0]
	ldr r0, [r6, #0]
	lsls r0, r0, #0x16
	lsrs r4, r0, #0x1b
	adds r0, r4, #0
	mov r1, r9
	subs r0, r1, r0
	muls r0, r7, r0
	mov r1, r8
	bl __divsi3
	adds r4, r4, r0
	movs r0, #0x1f
	ands r4, r0
	lsls r4, r4, #5
	ldrh r0, [r5, #0]
	ldr r3, _080878A8
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r4
	strh r0, [r5, #0]
	ldr r0, [r6, #0]
	lsls r0, r0, #0x11
	lsrs r4, r0, #0x1b
	adds r0, r4, #0
	mov r1, r9
	subs r0, r1, r0
	muls r0, r7, r0
	mov r1, r8
	bl __divsi3
	adds r4, r4, r0
	mov r3, sl
	ands r4, r3
	lsls r4, r4, #2
	ldrb r0, [r5, #1]
	movs r3, #0x7d
	negs r3, r3
	adds r1, r3, #0
	ands r0, r1
	orrs r0, r4
	strb r0, [r5, #1]
	ldr r2, [sp, #0x10]
	adds r2, #1
	adds r5, #2
	adds r6, #2
	ldr r0, [sp, #8]
	cmp r2, r0
	blo _080877F0
_0808787A:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #0x10
	lsrs r7, r0, #0x10
	bl sub_08000B38
	bl sub_080003F0
	cmp r7, r8
	blo _080877D6
_0808788C:
	ldr r0, [sp, #4]
	bl sub_08001538
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080878A4: .4byte gUnk_03001F40
_080878A8: .4byte 0xFFFFFC1F
	thumb_func_end sub_08087788
