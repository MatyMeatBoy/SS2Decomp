	thumb_func_start sub_08065748
sub_08065748: @ 0x08065748
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r9, r0
	adds r7, r1, #0
	mov r8, r2
	ldr r0, _08065760
	ldr r0, [r0, #0]
	adds r4, r0, #4
	movs r6, #0
	b _08065768
_08065760: .4byte gUnk_0300602C
_08065764:
	adds r6, #1
	adds r4, #0x28
_08065768:
	cmp r6, #0x1d
	bhi _080657B2
	adds r0, r4, #0
	bl sub_08000470
	cmp r0, #0
	bne _08065764
	ldr r5, [r4, #8]
	cmp r5, #0
	bne _08065764
	movs r0, #0x80
	lsls r0, r0, #3
	bl sub_08001494
	adds r1, r0, #0
	str r1, [r4, #0x20]
	cmp r1, #0
	beq _080657B2
	movs r0, #0x3c
	str r0, [r4, #8]
	ldr r0, _080657C0
	str r0, [r4, #0xc]
	movs r2, #0xff
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r4, #0x10]
	str r5, [r4, #0x24]
	lsls r1, r7, #0x10
	mov r0, r9
	orrs r1, r0
	mov r2, r8
	lsls r0, r2, #0x10
	orrs r6, r0
	adds r0, r4, #0
	adds r2, r6, #0
	bl sub_08000274
_080657B2:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_080657C0: .4byte sub_080634D8
	thumb_func_end sub_08065748
