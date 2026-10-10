	thumb_func_start sub_08008500
sub_08008500: @ 0x08008500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, _08008538
	ldr r6, [r0, #0]
	cmp r6, #0x7f
	bhi _08008532
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08008540
_08008532:
	movs r0, #1
	negs r0, r0
	b _08008782
_08008538: .4byte gUnk_030028B4
_0800853C:
	movs r0, #0
	b _08008782
_08008540:
	ldr r0, _08008648
	ldr r0, [r0, #0]
	str r0, [sp, #0x18]
	ldr r0, _0800864C
	ldr r0, [r0, #0]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	adds r7, r4, r0
	ldr r1, [r4, #8]
	adds r1, r4, r1
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #2
	adds r1, r1, r0
	ldr r0, [r1, #8]
	adds r1, r1, r0
	lsls r0, r3, #2
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r7, r7, r0
	ldr r0, [r7, #8]
	adds r2, r7, r0
	lsls r1, r6, #3
	ldr r0, _08008650
	adds r5, r1, r0
	ldr r0, _08008654
	ldr r3, [sp, #0x18]
	lsls r1, r3, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r4, #0
	mov sl, r4
	mov r8, r4
	mov r9, r4
	ldrh r0, [r7, #2]
	cmp sl, r0
	blo _08008594
	b _08008718
_08008594:
	adds r6, r2, #0
_08008596:
	ldrh r2, [r5, #6]
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r5, #0]
	str r1, [r5, #4]
	strh r2, [r5, #6]
	ldrh r0, [r6, #2]
	lsls r3, r0, #0x17
	asrs r3, r3, #0x17
	movs r4, #0
	ldrsb r4, [r6, r4]
	ldr r1, [sp, #0xc]
	adds r4, r4, r1
	ldr r2, [sp, #8]
	adds r3, r3, r2
	movs r0, #3
	ldr r2, [sp, #0x10]
	ands r2, r0
	lsls r2, r2, #2
	mov ip, r2
	ldrb r1, [r5, #5]
	movs r2, #0xd
	negs r2, r2
	adds r0, r2, #0
	ands r1, r0
	mov r0, ip
	orrs r1, r0
	strb r1, [r5, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x44]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r5, #5]
	adds r1, r3, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _080085F8
	cmp r4, #0xa0
	bgt _080085F8
	movs r0, #0x40
	negs r0, r0
	cmp r4, r0
	bge _0800860A
_080085F8:
	ldrb r2, [r5, #3]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r5, #3]
	ldrb r0, [r5, #1]
	ands r1, r0
	strb r1, [r5, #1]
	movs r4, #0xa0
_0800860A:
	ldr r1, _08008658
	adds r0, r1, #0
	ands r3, r0
	ldrh r0, [r5, #2]
	ldr r2, _0800865C
	adds r1, r2, #0
	ands r0, r1
	orrs r0, r3
	strh r0, [r5, #2]
	strb r4, [r5, #0]
	ldr r2, [sp, #0x18]
	add r2, sl
	ldr r3, _08008660
	adds r0, r3, #0
	ands r2, r0
	ldrh r0, [r5, #4]
	ldr r4, _08008664
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #4]
	ldr r0, [sp, #0x14]
	add r0, r8
	str r0, [sp, #0x14]
	ldrb r0, [r6, #1]
	lsrs r0, r0, #6
	cmp r0, #0
	beq _0800866C
	ldr r1, _08008668
	b _0800866E
	.2byte 0x0000
_08008648: .4byte gUnk_030028B8
_0800864C: .4byte gUnk_030028B0
_08008650: .4byte gUnk_03001330
_08008654: .4byte gUnk_030028BC
_08008658: .4byte 0x000001FF
_0800865C: .4byte 0xFFFFFE00
_08008660: .4byte 0x000003FF
_08008664: .4byte 0xFFFFFC00
_08008668: .4byte gUnk_0847842C
_0800866C:
	ldr r1, _08008794
_0800866E:
	ldrb r2, [r6, #3]
	lsrs r0, r2, #6
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov r8, r0
	mov r0, sl
	add r0, r8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldrh r0, [r7, #0]
	cmp r0, #0
	beq _080086D8
	lsls r3, r2, #0x1c
	lsrs r3, r3, #0x1d
	lsls r0, r2, #0x1b
	lsrs r0, r0, #0x1f
	lsls r0, r0, #3
	orrs r3, r0
	lsls r0, r2, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r0, #4
	orrs r3, r0
	ldr r1, [sp, #0x1c]
	adds r3, r3, r1
	movs r1, #7
	ands r1, r3
	lsls r1, r1, #1
	ldrb r2, [r5, #3]
	movs r4, #0xf
	negs r4, r4
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r1, r3, #3
	movs r0, #1
	ands r1, r0
	lsls r1, r1, #4
	subs r4, #2
	adds r0, r4, #0
	ands r2, r0
	orrs r2, r1
	lsrs r3, r3, #4
	movs r0, #1
	ands r3, r0
	lsls r3, r3, #5
	movs r1, #0x21
	negs r1, r1
	adds r0, r1, #0
	ands r2, r0
	orrs r2, r3
	strb r2, [r5, #3]
_080086D8:
	ldr r1, _08008798
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bls _080086E6
	b _0800853C
_080086E6:
	mov r2, r8
	lsls r2, r2, #5
	mov r8, r2
	ldrh r0, [r6, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r6, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r3, [sp, #0x4c]
	adds r0, r3, r0
	ldr r1, [sp, #0x14]
	bl sub_08001348
	movs r4, #1
	add r9, r4
	adds r5, #8
	adds r6, #8
	ldrh r0, [r7, #2]
	cmp r9, r0
	bhs _08008718
	b _08008596
_08008718:
	ldr r6, _0800879C
	ldrh r0, [r7, #0]
	cmp r0, #0
	beq _08008776
	ldr r2, _080087A0
	ldr r0, [r2, #0]
	lsls r1, r0, #5
	adds r6, r1, r6
	adds r0, #1
	str r0, [r2, #0]
	ldr r0, [r7, #4]
	adds r4, r7, r0
	movs r1, #0
	mov r9, r1
	ldrh r2, [r7, #0]
	cmp r9, r2
	bhs _08008776
	ldr r3, _080087A4
	mov r8, r3
	mov r5, sp
_08008740:
	ldrh r1, [r4, #2]
	lsls r1, r1, #0x10
	ldrh r0, [r4, #4]
	orrs r0, r1
	str r0, [sp, #0]
	ldrh r1, [r4, #0]
	ldr r0, [r5, #4]
	mov r2, r8
	ands r0, r2
	orrs r0, r1
	str r0, [r5, #4]
	adds r1, r6, #6
	mov r0, sp
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	adds r6, #0x20
	ldr r1, _080087A0
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r3, #1
	add r9, r3
	ldrh r0, [r7, #0]
	cmp r9, r0
	blo _08008740
_08008776:
	ldr r1, _080087A8
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	ldr r0, _080087A0
	ldr r0, [r0, #0]
_08008782:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08008794: .4byte gUnk_0847843C
_08008798: .4byte gUnk_030028B4
_0800879C: .4byte gUnk_03001330
_080087A0: .4byte gUnk_030028B0
_080087A4: .4byte 0xFFFF0000
_080087A8: .4byte gUnk_030028B8
	thumb_func_end sub_08008500
