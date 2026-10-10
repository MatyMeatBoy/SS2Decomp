	thumb_func_start sub_08001494
sub_08001494: @ 0x08001494
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r2, #3
	movs r0, #4
	negs r0, r0
	ands r2, r0
	cmp r2, #0xf
	bhi _080014A6
	movs r2, #0x10
_080014A6:
	ldr r0, _08001508
	ldr r4, [r0, #0xc]
	adds r3, r0, #0
	cmp r4, r3
	beq _08001530
	ldr r5, _0800150C
	movs r6, #0x80
	lsls r6, r6, #0x18
_080014B6:
	ldr r0, [r4, #4]
	subs r1, r0, r4
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	blo _0800152A
	adds r0, #0x20
	cmp r1, r0
	blo _08001510
	adds r2, r4, r2
	adds r3, r2, #0
	adds r3, #0x10
	adds r1, r4, #0
	ands r1, r5
	ldr r0, [r2, #0x10]
	ands r0, r6
	orrs r0, r1
	str r0, [r2, #0x10]
	ldr r0, [r4, #4]
	str r0, [r3, #4]
	ldr r0, [r4, #8]
	str r0, [r3, #8]
	ldr r0, [r4, #0xc]
	str r0, [r3, #0xc]
	ldrb r1, [r3, #3]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r3, #3]
	ldr r2, [r4, #4]
	adds r1, r3, #0
	ands r1, r5
	ldr r0, [r2, #0]
	ands r0, r6
	orrs r0, r1
	str r0, [r2, #0]
	str r3, [r4, #4]
	ldr r0, [r4, #8]
	str r3, [r0, #0xc]
	ldr r0, [r4, #0xc]
	str r3, [r0, #8]
	b _0800151C
_08001508: .4byte gUnk_03002370
_0800150C: .4byte 0x7FFFFFFF
_08001510:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
_0800151C:
	ldrb r0, [r4, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #0x10
	b _08001532
_0800152A:
	ldr r4, [r4, #0xc]
	cmp r4, r3
	bne _080014B6
_08001530:
	movs r0, #0
_08001532:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	thumb_func_end sub_08001494
