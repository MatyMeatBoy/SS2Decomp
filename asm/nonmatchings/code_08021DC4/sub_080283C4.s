	thumb_func_start sub_080283C4
sub_080283C4: @ 0x080283C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	movs r3, #2
	ldr r5, _08028410
	movs r4, #0xc0
	lsls r4, r4, #0xb
	movs r2, #0x18
_080283E0:
	movs r1, #1
	lsls r1, r3
	ldr r0, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq _08028418
	ldr r1, _08028414
	adds r0, r2, r1
	ldr r0, [r0, #0]
	cmp r0, r8
	bne _08028418
	adds r0, r1, #4
	adds r0, r2, r0
	ldr r0, [r0, #0]
	cmp r0, ip
	bne _08028418
	adds r0, r1, #0
	adds r0, #8
	adds r0, r2, r0
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	lsrs r0, r4, #0x10
	b _08028480
_08028410: .4byte gUnk_03005CFC
_08028414: .4byte gUnk_03005D00
_08028418:
	ldr r0, _08028464
	adds r4, r4, r0
	subs r2, #0xc
	subs r3, #1
	cmp r3, #0
	bge _080283E0
	movs r3, #2
	ldr r0, _08028468
	mov sl, r0
	movs r7, #1
	ldr r0, _0802846C
	movs r6, #0xc0
	lsls r6, r6, #0xb
	adds r4, r0, #0
	adds r4, #0x18
	movs r5, #0x18
	adds r0, #4
	mov r9, r0
_0802843C:
	adds r1, r7, #0
	lsls r1, r3
	mov r0, sl
	ldr r2, [r0, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08028470
	mov r3, r8
	str r3, [r4, #0]
	mov r3, r9
	adds r0, r5, r3
	mov r3, ip
	str r3, [r0, #0]
	str r7, [r4, #8]
	orrs r2, r1
	ldr r0, _08028468
	str r2, [r0, #0]
	lsrs r0, r6, #0x10
	b _08028480
_08028464: .4byte 0xFFFF0000
_08028468: .4byte gUnk_03005CFC
_0802846C: .4byte gUnk_03005D00
_08028470:
	ldr r0, _08028490
	adds r6, r6, r0
	subs r4, #0xc
	subs r5, #0xc
	subs r3, #1
	cmp r3, #0
	bge _0802843C
	ldr r0, _08028494
_08028480:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
_08028490: .4byte 0xFFFF0000
_08028494: .4byte 0x0000FFFF
	thumb_func_end sub_080283C4
