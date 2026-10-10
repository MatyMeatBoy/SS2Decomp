	thumb_func_start sub_08065158
sub_08065158: @ 0x08065158
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r0, [sp, #0x18]
	ldr r6, _080651B8
	cmp r0, #0
	beq _0806516E
	ldr r6, _080651BC
_0806516E:
	str r4, [r5, #0x10]
	str r2, [r5, #0x14]
	mov r0, r8
	str r0, [r5, #0x18]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #8]
	cmp r0, #0
	beq _080651B2
	ldr r7, _080651C0
	ands r4, r7
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [r5, #0]
	cmp r0, #0
	beq _080651B2
	ands r4, r7
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r0, r4
	adds r1, r6, #0
	bl sub_08006EE0
	adds r2, r0, #0
	str r2, [r5, #0xc]
	cmp r2, #0
	bne _080651C4
_080651B2:
	movs r0, #0
	b _080651FA
	.2byte 0x0000
_080651B8: .4byte gUnk_08518938
_080651BC: .4byte gUnk_08E3FB54
_080651C0: .4byte 0x0000FFFF
_080651C4:
	mov r0, r8
	cmp r0, #0
	blt _080651DA
	ldr r1, [r5, #0x14]
	adds r0, r1, #0
	adds r0, #0x10
	lsls r1, r1, #5
	adds r1, r2, r1
	ldr r2, [r5, #0x18]
	bl sub_08000AF0
_080651DA:
	movs r1, #0
	adds r2, r5, #0
	adds r2, #0x1c
_080651E0:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _080651E0
	movs r1, #0x90
	lsls r1, r1, #1
	adds r0, r5, #0
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
	adds r0, r5, #0
_080651FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_08065158
