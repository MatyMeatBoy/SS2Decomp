	thumb_func_start sub_080072A0
sub_080072A0: @ 0x080072A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	ldr r5, [sp, #0x40]
	ldr r4, [sp, #0x44]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r9, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #8]
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	str r4, [sp, #0xc]
	ldr r0, _080072E0
	ldr r4, [r0, #0]
	cmp r4, #0x80
	bls _080072E4
_080072DA:
	movs r0, #0
	b _0800740A
	.2byte 0x0000
_080072E0: .4byte gUnk_030028B4
_080072E4:
	ldr r0, [r5, #4]
	adds r7, r5, r0
	ldr r0, [r5, #8]
	adds r1, r5, r0
	ldrh r5, [r5, #2]
	cmp r2, r5
	blo _080072F4
	b _08007408
_080072F4:
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r2, r0, r1
	ldrh r0, [r2, #4]
	cmp r0, r3
	bhi _08007304
	b _08007408
_08007304:
	ldr r0, [r2, #8]
	adds r0, r0, r2
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r6, r7, r0
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #0x10]
	lsls r1, r4, #3
	ldr r0, _0800741C
	adds r3, r1, r0
	movs r0, #0
	mov r8, r0
	ldrh r1, [r7, #2]
	cmp r8, r1
	bhs _08007408
	movs r1, #3
	mov r0, r9
	ands r0, r1
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	movs r2, #0x3f
	mov ip, r2
	ldr r0, _08007420
	mov r9, r0
	ldr r1, _08007424
	mov sl, r1
_08007348:
	ldrh r0, [r6, #0]
	strh r0, [r3, #0]
	ldrh r0, [r6, #2]
	strh r0, [r3, #2]
	ldrh r0, [r6, #4]
	strh r0, [r3, #4]
	ldrh r0, [r6, #2]
	lsls r5, r0, #0x17
	asrs r5, r5, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r2, [sp, #4]
	adds r4, r4, r2
	ldr r0, [sp, #0]
	adds r5, r5, r0
	ldrb r1, [r3, #5]
	movs r0, #0xd
	negs r0, r0
	ands r0, r1
	ldr r1, [sp, #0x14]
	orrs r0, r1
	ldr r1, [sp, #8]
	lsls r2, r1, #4
	movs r1, #0xf
	ands r0, r1
	orrs r0, r2
	strb r0, [r3, #5]
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bls _0800739C
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #3]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #3]
	movs r4, #0xa0
_0800739C:
	adds r0, r4, #0
	adds r0, #0x40
	cmp r0, #0xe0
	bls _080073B6
	ldrb r1, [r3, #1]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #1]
	ldrb r1, [r3, #3]
	mov r0, ip
	ands r0, r1
	strb r0, [r3, #3]
	movs r4, #0xa0
_080073B6:
	ldr r2, _08007428
	adds r0, r2, #0
	ands r5, r0
	ldrh r1, [r3, #2]
	ldr r0, _0800742C
	ands r0, r1
	orrs r0, r5
	strh r0, [r3, #2]
	strb r4, [r3, #0]
	ldrh r2, [r3, #4]
	lsls r1, r2, #0x16
	lsrs r1, r1, #0x16
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	mov r0, r9
	ands r1, r0
	mov r0, sl
	ands r0, r2
	orrs r0, r1
	ldr r2, [sp, #0xc]
	adds r1, r2, r1
	mov r2, r9
	ands r1, r2
	mov r2, sl
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r1, _08007430
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x80
	bls _080073FA
	b _080072DA
_080073FA:
	movs r2, #1
	add r8, r2
	adds r3, #8
	adds r6, #8
	ldrh r0, [r7, #2]
	cmp r8, r0
	blo _08007348
_08007408:
	movs r0, #1
_0800740A:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_0800741C: .4byte gUnk_03001330
_08007420: .4byte 0x000003FF
_08007424: .4byte 0xFFFFFC00
_08007428: .4byte 0x000001FF
_0800742C: .4byte 0xFFFFFE00
_08007430: .4byte gUnk_030028B4
	thumb_func_end sub_080072A0
