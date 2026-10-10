	thumb_func_start sub_0806818C
sub_0806818C: @ 0x0806818C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	mov r8, r3
	ldr r4, _080681E0
	ldr r0, [r4, #0]
	cmp r0, #0x31
	bhi _080681E8
	bl sub_0800CFF0
	cmp r0, #0
	bne _080681E8
	ldr r2, _080681E4
	ldr r1, [r4, #0]
	lsls r0, r1, #4
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [r2, #0]
	adds r1, r1, r0
	movs r0, #1
	str r0, [r1, #4]
	movs r0, #0xa8
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
	b _080681EA
	.2byte 0x0000
_080681E0: .4byte gUnk_03006338
_080681E4: .4byte gUnk_03006300
_080681E8:
	movs r0, #0
_080681EA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0806818C
