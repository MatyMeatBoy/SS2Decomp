	thumb_func_start sub_0807854C
sub_0807854C: @ 0x0807854C
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	mov r9, r1
	adds r7, #4
	movs r6, #0
	ldr r1, _080785E8
	lsls r0, r7, #2
	adds r2, r0, r1
	movs r1, #1
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq _08078580
	movs r3, #1
_0807856E:
	adds r6, #1
	cmp r6, #0xf
	bhi _080785DA
	adds r1, r3, #0
	lsls r1, r6
	ldr r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne _0807856E
_08078580:
	cmp r6, #0xf
	bhi _080785DA
	ldr r5, _080785EC
	lsls r0, r7, #2
	mov r8, r0
	add r5, r8
	ldr r1, [r5, #0]
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #3
	adds r1, r4, r1
	movs r0, #0x34
	str r0, [r1, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	ldr r0, [r5, #0]
	adds r4, r4, r0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080785DA
	ldr r0, _080785F0
	str r0, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x24]
	subs r1, r7, #4
	mov r0, r9
	lsls r2, r0, #0x10
	orrs r2, r6
	adds r0, r4, #0
	bl sub_08000274
	ldr r2, _080785E8
	add r2, r8
	movs r1, #1
	lsls r1, r6
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
_080785DA:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080785E8: .4byte gUnk_030063E0
_080785EC: .4byte gUnk_030063B0
_080785F0: .4byte sub_08077DAC
	thumb_func_end sub_0807854C
