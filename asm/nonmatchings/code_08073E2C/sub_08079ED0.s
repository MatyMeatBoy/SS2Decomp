	thumb_func_start sub_08079ED0
sub_08079ED0: @ 0x08079ED0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov r8, r1
	mov r9, r2
	movs r5, #0
	ldr r2, _08079FC0
	ldr r0, [r6, #0]
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #1
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08079F0E
	movs r3, #1
_08079EF6:
	adds r5, #1
	cmp r5, #0xf
	bhi _08079FB2
	ldr r0, [r6, #0]
	lsls r0, r0, #2
	adds r0, r0, r2
	adds r1, r3, #0
	lsls r1, r5
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08079EF6
_08079F0E:
	cmp r5, #0xf
	bhi _08079FB2
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	ldr r1, _08079FC4
	mov ip, r1
	ldr r1, [r6, #0]
	lsls r3, r1, #2
	mov r2, ip
	adds r1, r3, r2
	ldr r2, [r1, #0]
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #3
	mov sl, r1
	add r2, sl
	str r0, [r2, #0x20]
	cmp r0, #0
	beq _08079FB2
	ldr r4, _08079FC8
	adds r0, r3, r4
	ldr r1, [r0, #0]
	lsls r3, r5, #1
	adds r3, r3, r5
	lsls r3, r3, #3
	adds r1, r3, r1
	adds r0, r6, #0
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldr r0, [r6, #0]
	lsls r0, r0, #2
	ldr r7, _08079FC8
	adds r0, r0, r7
	ldr r0, [r0, #0]
	adds r0, r3, r0
	str r5, [r0, #4]
	ldr r0, [r6, #0]
	lsls r0, r0, #2
	add r0, ip
	ldr r0, [r0, #0]
	add r0, sl
	movs r1, #0x34
	str r1, [r0, #8]
	ldr r2, [r6, #0]
	lsls r2, r2, #2
	mov r1, ip
	adds r0, r2, r1
	ldr r0, [r0, #0]
	add r0, sl
	ldr r1, _08079FCC
	str r1, [r0, #0xc]
	ldr r1, [r0, #0x20]
	movs r4, #0xff
	lsls r4, r4, #2
	adds r1, r1, r4
	str r1, [r0, #0x10]
	movs r1, #0
	str r1, [r0, #0x24]
	adds r2, r2, r7
	ldr r1, [r2, #0]
	adds r1, r1, r3
	mov r7, r8
	lsrs r2, r7, #8
	mov r4, r9
	lsrs r3, r4, #8
	lsls r3, r3, #0x10
	orrs r2, r3
	bl sub_08000274
	ldr r0, _08079FC0
	ldr r2, [r6, #0]
	lsls r2, r2, #2
	adds r2, r2, r0
	movs r1, #1
	lsls r1, r5
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_08079FB2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08079FC0: .4byte gUnk_030063E0
_08079FC4: .4byte gUnk_030063B0
_08079FC8: .4byte gUnk_03006380
_08079FCC: .4byte sub_08079D84
	thumb_func_end sub_08079ED0
