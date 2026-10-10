	thumb_func_start sub_08007434
sub_08007434: @ 0x08007434
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp, #0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	ldr r1, [r2, #4]
	adds r1, r1, r2
	mov r9, r1
	ldr r1, [r2, #8]
	adds r2, r2, r1
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r1, #4]
	cmp r0, r3
	bhi _08007464
	b _080076B2
_08007464:
	ldr r0, [r1, #8]
	adds r0, r0, r1
	lsls r1, r3, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r9, r0
	mov r0, r9
	ldr r7, [r0, #8]
	add r7, r9
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	str r0, [sp, #4]
	movs r1, #0
	mov sl, r1
	mov r2, r9
	ldrh r2, [r2, #2]
	cmp sl, r2
	blo _08007492
	b _080076B2
_08007492:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r3, #0x80
	lsls r3, r3, #1
	mov r8, r3
_0800749C:
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x16
	lsrs r1, r0, #0x16
	ldr r2, [sp, #4]
	subs r1, r1, r2
	lsls r1, r1, #5
	ldr r3, [sp, #0x28]
	adds r5, r3, r1
	lsrs r0, r0, #0xc
	ldr r1, [sp, #0]
	adds r4, r1, r0
	ldrb r0, [r7, #1]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _08007542
	cmp r0, #1
	bgt _080074C4
	cmp r0, #0
	beq _080074CA
	b _080076A2
_080074C4:
	cmp r0, #2
	beq _080075AE
	b _080076A2
_080074CA:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	bne _080074D4
	b _0800761C
_080074D4:
	cmp r0, #1
	bgt _080074E0
	cmp r0, #0
	bne _080074DE
	b _080075F4
_080074DE:
	b _080076A2
_080074E0:
	cmp r0, #2
	beq _080074EA
	cmp r0, #3
	beq _08007508
	b _080076A2
_080074EA:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	b _0800755E
_08007508:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	b _08007578
_08007542:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _0800756C
	cmp r0, #1
	bgt _08007554
	cmp r0, #0
	beq _0800762A
	b _080076A2
_08007554:
	cmp r0, #2
	beq _0800755E
	cmp r0, #4
	beq _08007578
	b _080076A2
_0800755E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
_0800756C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	b _080076A2
_08007578:
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	mov r2, r8
	bl sub_08001348
	b _080076A2
_080075AE:
	ldrb r0, [r7, #3]
	lsrs r0, r0, #6
	cmp r0, #1
	beq _080075CA
	cmp r0, #1
	bgt _080075C0
	cmp r0, #0
	beq _080075E6
	b _080076A2
_080075C0:
	cmp r0, #2
	beq _08007600
	cmp r0, #4
	beq _08007636
	b _080076A2
_080075CA:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
_080075E6:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
_080075F4:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x20
	bl sub_08001348
	b _080076A2
_08007600:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
_0800761C:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
_0800762A:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x40
	bl sub_08001348
	b _080076A2
_08007636:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
	adds r4, r4, r6
	adds r5, r5, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x80
	bl sub_08001348
_080076A2:
	movs r2, #1
	add sl, r2
	adds r7, #8
	mov r3, r9
	ldrh r3, [r3, #2]
	cmp sl, r3
	bhs _080076B2
	b _0800749C
_080076B2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08007434
