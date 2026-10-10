	thumb_func_start sub_08001538
sub_08001538: @ 0x08001538
	push {r4, r5, r6, r7, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	subs r4, #0x10
	ldr r0, _08001584
	ldr r2, [r0, #0x10]
	adds r6, r0, #0
	cmp r1, r2
	blo _0800162E
	ldr r0, [r6, #0x14]
	adds r0, r2, r0
	cmp r1, r0
	bhi _0800162E
	ldrb r0, [r4, #3]
	movs r7, #0x7f
	adds r1, r7, #0
	ands r1, r0
	strb r1, [r4, #3]
	ldr r5, [r4, #4]
	ldr r3, [r4, #0]
	ldrb r0, [r3, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080015BC
	ldr r2, _08001588
	ands r2, r3
	ldr r0, [r5, #0]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r0, r1
	orrs r0, r2
	str r0, [r5, #0]
	str r5, [r3, #4]
	ldr r0, [r6, #0xc]
	cmp r0, r6
	bne _0800158C
_08001580:
	b _08001580
	.2byte 0x0000
_08001584: .4byte gUnk_03002370
_08001588: .4byte 0x7FFFFFFF
_0800158C:
	ldrb r0, [r5, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _0800162E
	ldr r0, [r5, #4]
	str r0, [r3, #4]
	ldr r2, [r5, #4]
	ldr r0, _080015B8
	ands r3, r0
	ldr r0, [r2, #0]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r0, r1
	orrs r0, r3
	str r0, [r2, #0]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	str r0, [r1, #8]
	b _0800162E
_080015B8: .4byte 0x7FFFFFFF
_080015BC:
	ldrb r0, [r5, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	bne _080015F8
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r3, [r5, #4]
	ldr r2, _080015F4
	ands r2, r4
	ldr r0, [r3, #0]
	movs r1, #0x80
	lsls r1, r1, #0x18
	ands r0, r1
	orrs r0, r2
	str r0, [r3, #0]
	ldr r0, [r5, #8]
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	str r4, [r0, #0xc]
	ldr r0, [r5, #0xc]
	str r4, [r0, #8]
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	ands r0, r1
	strb r0, [r4, #3]
	b _0800162E
_080015F4: .4byte 0x7FFFFFFF
_080015F8:
	strb r1, [r4, #3]
	ldr r0, [r6, #4]
	cmp r4, r0
	beq _08001624
	b _08001620
_08001602:
	str r3, [r4, #8]
	ldr r0, [r3, #0xc]
	str r0, [r4, #0xc]
	ldr r0, [r3, #0xc]
	str r4, [r0, #8]
	str r4, [r3, #0xc]
	b _0800162E
_08001610:
	ldr r0, [r3, #0]
	lsls r0, r0, #1
	lsrs r3, r0, #1
	ldrb r0, [r3, #3]
	lsrs r0, r0, #7
	cmp r0, #0
	beq _08001602
	ldr r0, [r6, #4]
_08001620:
	cmp r3, r0
	bne _08001610
_08001624:
	str r6, [r4, #8]
	ldr r0, [r6, #0xc]
	str r0, [r4, #0xc]
	str r4, [r0, #8]
	str r4, [r6, #0xc]
_0800162E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08001538
