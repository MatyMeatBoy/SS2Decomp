	thumb_func_start sub_0801B74C
sub_0801B74C: @ 0x0801B74C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov sl, r1
	mov r9, r2
	mov r8, r3
	movs r5, #0
	movs r0, #0
	str r0, [sp, #0]
	movs r7, #0
_0801B768:
	lsls r2, r7, #1
	movs r1, #0x9b
	lsls r1, r1, #1
	adds r0, r6, r1
	adds r0, r0, r2
	ldrh r1, [r0, #0]
	ldr r0, _0801B794
	adds r4, r2, #0
	cmp r1, r0
	bne _0801B77E
	b _0801B87C
_0801B77E:
	ldr r2, [sp, #0]
	adds r2, #1
	str r2, [sp, #0]
	cmp r7, #5
	bls _0801B78A
	b _0801B87C
_0801B78A:
	lsls r0, r7, #2
	ldr r1, _0801B798
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
_0801B794: .4byte 0x0000FFFF
_0801B798: .4byte _0801B79C
_0801B79C:
	.4byte _0801B7B4
_0801B7A0: .4byte _0801B7F4
_0801B7A4: .4byte _0801B7D4
_0801B7A8: .4byte _0801B814
_0801B7AC: .4byte _0801B834
_0801B7B0: .4byte _0801B854
_0801B7B4:
	mov r0, sl
	cmp r0, #0
	beq _0801B87C
	movs r0, #0xb0
	lsls r0, r0, #0xc
	bl sub_08007290
	mov r1, sl
	subs r0, r1, r0
	ldr r1, _0801B7D0
	muls r1, r0, r1
	asrs r1, r1, #2
	b _0801B86C
	.2byte 0x0000
_0801B7D0: .4byte 0x1A1F58D1
_0801B7D4:
	mov r0, r9
	cmp r0, #0
	beq _0801B87C
	movs r0, #0xc0
	lsls r0, r0, #0xc
	bl sub_08007290
	mov r1, r9
	subs r0, r1, r0
	ldr r1, _0801B7F0
	muls r1, r0, r1
	asrs r1, r1, #3
	b _0801B86C
	.2byte 0x0000
_0801B7F0: .4byte 0xE9BD37A7
_0801B7F4:
	mov r0, r8
	cmp r0, #0
	beq _0801B87C
	movs r0, #0xd0
	lsls r0, r0, #0xc
	bl sub_08007290
	mov r1, r8
	subs r0, r1, r0
	ldr r1, _0801B810
	muls r1, r0, r1
	asrs r1, r1, #3
	b _0801B86C
	.2byte 0x0000
_0801B810: .4byte 0xE9BD37A7
_0801B814:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _0801B87C
	movs r0, #0xe0
	lsls r0, r0, #0xc
	bl sub_08007290
	ldr r1, [sp, #0x24]
	subs r0, r1, r0
	ldr r1, _0801B830
	muls r1, r0, r1
	asrs r1, r1, #3
	b _0801B86C
	.2byte 0x0000
_0801B830: .4byte 0xE9BD37A7
_0801B834:
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0801B87C
	movs r0, #0xf0
	lsls r0, r0, #0xc
	bl sub_08007290
	ldr r1, [sp, #0x28]
	subs r0, r1, r0
	ldr r1, _0801B850
	muls r1, r0, r1
	asrs r1, r1, #2
	b _0801B86C
	.2byte 0x0000
_0801B850: .4byte 0xA4FA4FA5
_0801B854:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _0801B87C
	movs r0, #0x88
	lsls r0, r0, #0xd
	bl sub_08007290
	ldr r1, [sp, #0x2c]
	subs r0, r1, r0
	ldr r1, _0801B890
	muls r1, r0, r1
	asrs r1, r1, #4
_0801B86C:
	movs r2, #0x9b
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r1, r0
	bne _0801B87C
	adds r5, #1
_0801B87C:
	adds r7, #1
	cmp r7, #5
	bhi _0801B884
	b _0801B768
_0801B884:
	ldr r0, [sp, #0]
	cmp r5, r0
	beq _0801B894
	movs r0, #0
	b _0801B896
	.2byte 0x0000
_0801B890: .4byte 0xBA2E8BA3
_0801B894:
	movs r0, #1
_0801B896:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	thumb_func_end sub_0801B74C
