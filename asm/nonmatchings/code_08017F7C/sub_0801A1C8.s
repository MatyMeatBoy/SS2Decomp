	thumb_func_start sub_0801A1C8
sub_0801A1C8: @ 0x0801A1C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov r8, r1
	ldr r7, _0801A250
	movs r3, #1
	negs r3, r3
	movs r4, #0
	ldr r0, _0801A254
	mov sl, r0
	movs r6, #0
	ldr r1, _0801A258
	mov r9, r1
_0801A1EA:
	movs r1, #1
	lsls r1, r4
	mov r2, r9
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _0801A232
	mov r1, sl
	ldr r0, [r1, #0]
	adds r1, r0, r6
	cmp r1, r5
	beq _0801A232
	ldr r2, [r1, #0x14]
	ldr r0, [r5, #0x14]
	subs r2, r2, r0
	asrs r2, r2, #8
	ldr r1, [r1, #0x18]
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	asrs r1, r1, #8
	adds r0, r2, #0
	muls r0, r2, r0
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	str r3, [sp, #0]
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0]
	cmp r7, r0
	ble _0801A232
	adds r7, r0, #0
	adds r3, r4, #0
_0801A232:
	movs r0, #0xb8
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r4, #1
	cmp r4, #4
	bls _0801A1EA
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	beq _0801A25C
	mov r1, r8
	str r7, [r1, #0]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	b _0801A25E
_0801A250: .4byte 0x0000FFFF
_0801A254: .4byte gUnk_030056F4
_0801A258: .4byte gUnk_030056FC
_0801A25C:
	movs r0, #0xff
_0801A25E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801A1C8
