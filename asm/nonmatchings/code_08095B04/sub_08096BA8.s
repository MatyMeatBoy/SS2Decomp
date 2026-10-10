	thumb_func_start sub_08096BA8
sub_08096BA8: @ 0x08096BA8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r6, r0, #0
	mov r8, r2
	str r3, [sp, #0x10]
	adds r3, r1, #0
	muls r3, r1, r3
	asrs r3, r3, #0xc
	adds r4, r1, #0
	muls r4, r3, r4
	asrs r4, r4, #0xc
	lsls r0, r4, #0xd
	str r0, [sp, #0x14]
	lsls r2, r3, #1
	adds r2, r2, r3
	lsls r2, r2, #0xc
	subs r0, r0, r2
	asrs r0, r0, #0xc
	movs r5, #0x80
	lsls r5, r5, #5
	adds r7, r0, r5
	str r7, [sp, #0]
	ldr r0, [sp, #0x14]
	subs r2, r2, r0
	asrs r2, r2, #0xc
	mov ip, r2
	str r2, [sp, #4]
	lsls r0, r3, #0xd
	asrs r0, r0, #0xc
	subs r0, r4, r0
	adds r0, r0, r1
	mov sl, r0
	str r0, [sp, #8]
	subs r4, r4, r3
	str r4, [sp, #0x18]
	str r4, [sp, #0xc]
	mov r1, r8
	cmp r1, #0
	beq _08096C04
	cmp r1, #1
	beq _08096C90
	b _08096D24
_08096C04:
	ldr r0, _08096C84
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #4
	cmp r6, r0
	bhi _08096C94
	ldr r0, _08096C88
	ldr r0, [r0, #0]
	lsls r2, r6, #3
	adds r2, r2, r0
	ldr r3, [r2, #0]
	adds r1, r7, #0
	muls r1, r3, r1
	ldr r4, [r2, #0x10]
	mov r8, r4
	mov r0, ip
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r6, _08096C8C
	movs r5, #0
	ldrsh r4, [r6, r5]
	ldr r0, [r2, #8]
	subs r0, r0, r3
	muls r0, r4, r0
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, [r2, #0x18]
	mov r5, r8
	subs r0, r0, r5
	muls r0, r4, r0
	ldr r3, [sp, #0x18]
	muls r0, r3, r0
	adds r1, r1, r0
	asrs r1, r1, #0xc
	ldr r4, [sp, #0x10]
	str r1, [r4, #0]
	ldr r3, [r2, #4]
	adds r1, r7, #0
	muls r1, r3, r1
	ldr r5, [r2, #0x14]
	mov r0, ip
	muls r0, r5, r0
	adds r1, r1, r0
	movs r0, #0
	ldrsh r4, [r6, r0]
	ldr r0, [r2, #0xc]
	subs r0, r0, r3
	muls r0, r4, r0
	mov r3, sl
	muls r3, r0, r3
	adds r0, r3, #0
	adds r1, r1, r0
	ldr r0, [r2, #0x1c]
	subs r0, r0, r5
	muls r0, r4, r0
	ldr r4, [sp, #0x18]
	muls r0, r4, r0
	adds r1, r1, r0
	asrs r1, r1, #0xc
	ldr r5, [sp, #0x10]
	str r1, [r5, #4]
	b _08096D24
_08096C84: .4byte gUnk_030002B4
_08096C88: .4byte gUnk_030002B0
_08096C8C: .4byte gUnk_030002B6
_08096C90:
	cmp r6, #2
	bhi _08096C98
_08096C94:
	movs r0, #1
	b _08096D26
_08096C98:
	ldr r0, _08096D38
	ldr r1, [r0, #0]
	lsls r0, r6, #3
	adds r6, r0, r1
	ldr r2, [r6, #0]
	adds r1, r7, #0
	muls r1, r2, r1
	adds r0, r6, #0
	subs r0, #0x10
	str r0, [sp, #0x20]
	ldr r4, [r0, #0]
	mov r0, ip
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r5, _08096D3C
	movs r0, #0
	ldrsh r3, [r5, r0]
	movs r5, #8
	negs r5, r5
	adds r5, r5, r6
	mov r9, r5
	ldr r0, [r5, #0]
	subs r0, r0, r2
	muls r0, r3, r0
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	movs r5, #0x18
	negs r5, r5
	adds r5, r5, r6
	mov r8, r5
	ldr r0, [r5, #0]
	subs r0, r0, r4
	muls r0, r3, r0
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #0xc
	ldr r3, [sp, #0x10]
	str r1, [r3, #0]
	ldr r2, [r6, #4]
	adds r1, r7, #0
	muls r1, r2, r1
	ldr r5, [sp, #0x20]
	ldr r4, [r5, #4]
	mov r0, ip
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r0, _08096D3C
	movs r5, #0
	ldrsh r3, [r0, r5]
	mov r5, r9
	ldr r0, [r5, #4]
	subs r0, r0, r2
	muls r0, r3, r0
	mov r2, sl
	muls r2, r0, r2
	adds r0, r2, #0
	adds r1, r1, r0
	mov r5, r8
	ldr r0, [r5, #4]
	subs r0, r0, r4
	muls r0, r3, r0
	ldr r2, [sp, #0x18]
	muls r0, r2, r0
	adds r1, r1, r0
	asrs r1, r1, #0xc
	ldr r3, [sp, #0x10]
	str r1, [r3, #4]
_08096D24:
	movs r0, #0
_08096D26:
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08096D38: .4byte gUnk_030002B0
_08096D3C: .4byte gUnk_030002B6
	thumb_func_end sub_08096BA8
