	thumb_func_start sub_08001638
sub_08001638: @ 0x08001638
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r2, #3
	movs r0, #4
	negs r0, r0
	ands r2, r0
	cmp r2, #0xf
	bhi _0800164A
	movs r2, #0x10
_0800164A:
	ldr r0, _08001698
	ldr r4, [r0, #8]
	adds r3, r0, #0
	cmp r4, r3
	beq _080016C0
	ldr r6, _0800169C
	movs r7, #0x80
	lsls r7, r7, #0x18
_0800165A:
	ldr r5, [r4, #4]
	subs r1, r5, r4
	adds r0, r2, #0
	adds r0, #0x10
	cmp r1, r0
	blo _080016BA
	adds r0, #0x20
	cmp r1, r0
	blo _080016A0
	adds r3, r4, #0
	subs r0, r5, r2
	adds r4, r0, #0
	subs r4, #0x10
	adds r1, r3, #0
	ands r1, r6
	ldr r0, [r4, #0]
	ands r0, r7
	orrs r0, r1
	str r0, [r4, #0]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r2, [r3, #4]
	adds r1, r4, #0
	ands r1, r6
	ldr r0, [r2, #0]
	ands r0, r7
	orrs r0, r1
	str r0, [r2, #0]
	str r4, [r3, #4]
	b _080016AC
	.2byte 0x0000
_08001698: .4byte gUnk_03002370
_0800169C: .4byte 0x7FFFFFFF
_080016A0:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	str r0, [r1, #0xc]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #8]
	str r0, [r1, #8]
_080016AC:
	ldrb r0, [r4, #3]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #0x10
	b _080016C2
_080016BA:
	ldr r4, [r4, #8]
	cmp r4, r3
	bne _0800165A
_080016C0:
	movs r0, #0
_080016C2:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08001638
