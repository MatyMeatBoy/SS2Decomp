	thumb_func_start sub_080089DC
sub_080089DC: @ 0x080089DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r4, [sp, #0x4c]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r5, r2, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	ldr r0, _08008A1C
	ldr r6, [r0, #0]
	cmp r6, #0x7f
	bhi _08008A16
	ldrh r0, [r4, #2]
	cmp r0, r2
	bhs _08008A24
_08008A16:
	movs r0, #1
	negs r0, r0
	b _08008BEE
_08008A1C: .4byte gUnk_030028B4
_08008A20:
	movs r0, #0
	b _08008BEE
_08008A24:
	ldr r0, _08008AD4
	ldr r0, [r0, #0]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	adds r0, r0, r4
	mov r9, r0
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
	add r9, r0
	mov r1, r9
	ldr r0, [r1, #8]
	add r0, r9
	mov r8, r0
	lsls r1, r6, #3
	ldr r0, _08008AD8
	adds r4, r1, r0
	ldr r0, _08008ADC
	ldr r2, [sp, #0x1c]
	lsls r1, r2, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [sp, #0x14]
	movs r3, #0
	mov sl, r3
	movs r7, #0
	movs r5, #0
	str r5, [sp, #0x18]
	mov r0, r9
	ldrh r0, [r0, #2]
	cmp sl, r0
	blo _08008A7C
	b _08008BDC
_08008A7C:
	mov r1, r8
	str r1, [sp, #0x10]
	ldrh r2, [r4, #6]
	ldr r0, [r1, #0]
	ldr r1, [r1, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	strh r2, [r4, #6]
	ldrh r2, [r4, #2]
	mov ip, r2
	mov r3, ip
	lsls r5, r3, #0x17
	asrs r5, r5, #0x17
	movs r6, #0
	ldrsb r6, [r4, r6]
	ldr r0, [sp, #4]
	adds r6, r6, r0
	ldr r1, [sp, #0]
	adds r5, r5, r1
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0x98
	lsls r0, r0, #1
	cmp r1, r0
	bhi _08008ABA
	cmp r6, #0xa0
	bgt _08008ABA
	movs r0, #0x40
	negs r0, r0
	cmp r6, r0
	bge _08008AE0
_08008ABA:
	movs r0, #0xa0
	strb r0, [r4, #0]
	ldrb r2, [r4, #1]
	movs r1, #0x3f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4, #1]
	ldrb r0, [r4, #3]
	ands r1, r0
	strb r1, [r4, #3]
	subs r4, #8
	b _08008BC6
	.2byte 0x0000
_08008AD4: .4byte gUnk_030028B8
_08008AD8: .4byte gUnk_03001330
_08008ADC: .4byte gUnk_030028BC
_08008AE0:
	ldr r2, [sp, #0x14]
	adds r2, r2, r7
	str r2, [sp, #0x14]
	ldrb r0, [r4, #1]
	movs r3, #0xd
	negs r3, r3
	ands r3, r0
	movs r0, #1
	ldr r1, [sp, #0xc]
	ands r1, r0
	lsls r1, r1, #4
	movs r2, #0x11
	negs r2, r2
	adds r0, r2, #0
	ands r3, r0
	orrs r3, r1
	strb r3, [r4, #1]
	movs r1, #3
	ldr r0, [sp, #8]
	ands r0, r1
	lsls r0, r0, #2
	ldrb r2, [r4, #5]
	movs r1, #0xd
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	strb r1, [r4, #5]
	lsrs r0, r1, #4
	ldr r2, [sp, #0x48]
	adds r0, r2, r0
	ldrb r2, [r0, #0]
	lsls r2, r2, #4
	movs r0, #0xf
	ands r1, r0
	orrs r1, r2
	strb r1, [r4, #5]
	ldr r1, _08008B6C
	adds r0, r1, #0
	ands r5, r0
	ldr r2, _08008B70
	adds r0, r2, #0
	mov r1, ip
	ands r0, r1
	orrs r0, r5
	strh r0, [r4, #2]
	strb r6, [r4, #0]
	ldr r2, [sp, #0x1c]
	add r2, sl
	ldr r5, _08008B74
	adds r0, r5, #0
	ands r2, r0
	ldrh r0, [r4, #4]
	ldr r5, _08008B78
	adds r1, r5, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #4]
	lsrs r3, r3, #6
	cmp r3, #0
	beq _08008B80
	ldr r0, _08008B7C
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r1, sl
	adds r0, r1, r7
	b _08008B90
	.2byte 0x0000
_08008B6C: .4byte 0x000001FF
_08008B70: .4byte 0xFFFFFE00
_08008B74: .4byte 0x000003FF
_08008B78: .4byte 0xFFFFFC00
_08008B7C: .4byte gUnk_0847842C
_08008B80:
	ldr r0, _08008C00
	ldrb r1, [r4, #3]
	lsrs r1, r1, #6
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r7, [r1, #0]
	mov r2, sl
	adds r0, r2, r7
_08008B90:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	ldr r1, _08008C04
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #0x7f
	bls _08008BA4
	b _08008A20
_08008BA4:
	lsls r7, r7, #5
	ldr r3, [sp, #0x10]
	ldrh r0, [r3, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrb r1, [r3, #5]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1e
	lsls r1, r1, #0xa
	orrs r0, r1
	lsls r0, r0, #5
	ldr r5, [sp, #0x50]
	adds r0, r5, r0
	ldr r1, [sp, #0x14]
	adds r2, r7, #0
	bl sub_08001348
_08008BC6:
	ldr r0, [sp, #0x18]
	adds r0, #1
	str r0, [sp, #0x18]
	adds r4, #8
	movs r1, #8
	add r8, r1
	mov r2, r9
	ldrh r2, [r2, #2]
	cmp r0, r2
	bhs _08008BDC
	b _08008A7C
_08008BDC:
	ldr r1, _08008C08
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	ldr r0, _08008C0C
	ldr r3, [sp, #0x1c]
	lsls r1, r3, #5
	ldr r0, [r0, #0]
	adds r0, r0, r1
_08008BEE:
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08008C00: .4byte gUnk_0847843C
_08008C04: .4byte gUnk_030028B4
_08008C08: .4byte gUnk_030028B8
_08008C0C: .4byte gUnk_030028BC
	thumb_func_end sub_080089DC
