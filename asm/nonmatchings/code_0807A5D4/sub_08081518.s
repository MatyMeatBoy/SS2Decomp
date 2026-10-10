	thumb_func_start sub_08081518
sub_08081518: @ 0x08081518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x24]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r9, r3
	adds r2, #2
	movs r0, #0
	mov r8, r0
	b _080815A8
_0808153E:
	cmp r3, #0xf7
	bne _08081598
	mov r1, r9
	str r1, [sp, #0x20]
	ldr r6, _08081594
	mov r4, sp
	add r4, r8
	movs r7, #0
	movs r5, #0
	add r3, sp, #0x20
	adds r2, #1
_08081554:
	ldr r1, [r6, #0]
	adds r0, r3, #0
	str r2, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl sub_08000498
	adds r0, #0x41
	strb r0, [r4, #0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	cmp r7, #0
	bne _08081578
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x41
	bne _08081578
	cmp r5, #5
	bne _08081586
_08081578:
	adds r4, #1
	movs r7, #1
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
_08081586:
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r6, #4
	cmp r5, #5
	bls _08081554
	b _080815A8
_08081594: .4byte gUnk_084EBD5C
_08081598:
	mov r0, r8
	adds r1, r0, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	add r0, sp
	strb r3, [r0, #0]
	adds r2, #1
_080815A8:
	ldrb r3, [r2, #0]
	cmp r3, #0xfd
	bne _0808153E
	mov r0, sp
	add r0, r8
	movs r1, #0xfd
	strb r1, [r0, #0]
	movs r0, #1
	ldr r2, [sp, #0x50]
	ands r2, r0
	cmp r2, #0
	beq _080815D0
	mov r0, sp
	bl sub_0801A638
	lsrs r0, r0, #1
	negs r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080815D2
_080815D0:
	movs r0, #0
_080815D2:
	mov r4, sl
	adds r1, r4, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sp
	ldr r2, [sp, #0x24]
	bl sub_0801A3D0
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08081518
