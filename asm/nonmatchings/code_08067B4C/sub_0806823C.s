	thumb_func_start sub_0806823C
sub_0806823C: @ 0x0806823C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r4, _08068290
	ldr r0, [r4, #0]
	cmp r0, #0x31
	bhi _08068298
	bl sub_0800CFF0
	cmp r0, #0
	bne _08068298
	ldr r2, _08068294
	ldr r1, [r4, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2, #0]
	adds r1, r1, r0
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0xaa
	strb r0, [r1, #0]
	lsls r0, r5, #0x10
	orrs r0, r6
	str r0, [r1, #8]
	str r7, [r1, #0xc]
	mov r0, r8
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #2
	strb r0, [r1, #1]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r0, #1
	b _0806829A
	.2byte 0x0000
_08068290: .4byte gUnk_03006338
_08068294: .4byte gUnk_03006300
_08068298:
	movs r0, #0
_0806829A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0806823C
