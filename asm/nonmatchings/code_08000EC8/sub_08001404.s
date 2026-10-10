	thumb_func_start sub_08001404
sub_08001404: @ 0x08001404
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	ldr r1, _08001484
	movs r0, #0x80
	lsls r0, r0, #0x12
	mov r8, r0
	str r0, [r1, #0]
	ldr r0, _08001488
	str r0, [r1, #4]
	ldr r3, _0800148C
	str r3, [r1, #8]
	str r3, [r1, #0xc]
	ldrb r2, [r1, #3]
	movs r0, #0x7f
	ands r0, r2
	strb r0, [r1, #3]
	ldr r2, [r1, #0]
	ldrb r0, [r2, #3]
	movs r6, #0x80
	orrs r0, r6
	strb r0, [r2, #3]
	ldr r2, [r1, #0]
	ldr r0, [r2, #0]
	movs r5, #0x80
	lsls r5, r5, #0x18
	ands r0, r5
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	str r1, [r0, #4]
	ldr r0, [r1, #0]
	str r3, [r0, #8]
	ldr r0, [r1, #0]
	movs r4, #0
	str r4, [r0, #0xc]
	ldr r2, [r1, #4]
	ldrb r0, [r2, #3]
	orrs r0, r6
	strb r0, [r2, #3]
	ldr r2, [r1, #4]
	ldr r0, [r2, #0]
	ands r0, r5
	orrs r0, r1
	str r0, [r2, #0]
	ldr r0, [r1, #4]
	str r4, [r0, #4]
	ldr r0, [r1, #0]
	str r4, [r0, #8]
	ldr r0, [r1, #0]
	str r3, [r0, #0xc]
	ldr r0, [r1, #4]
	str r0, [r3, #0]
	str r1, [r3, #4]
	str r1, [r3, #8]
	str r1, [r3, #0xc]
	mov r0, r8
	str r0, [r3, #0x10]
	ldr r0, _08001490
	str r0, [r3, #0x14]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
_08001484: .4byte gUnk_02000010
_08001488: .4byte gUnk_0203FFF0
_0800148C: .4byte gUnk_03002370
_08001490: .4byte 0x0003FFFF
	thumb_func_end sub_08001404
