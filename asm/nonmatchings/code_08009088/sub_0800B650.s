	thumb_func_start sub_0800B650
sub_0800B650: @ 0x0800B650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	ldr r0, [sp, #0x28]
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sl, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	mov r0, r8
	bl sub_08007290
	adds r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_08007290
	adds r5, r0, #0
	ldrh r0, [r4, #0]
	movs r1, #0xe0
	lsls r1, r1, #0xb
	orrs r0, r1
	bl sub_08007290
	mov r9, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800B69E
	adds r0, r4, #4
	b _0800B6A8
_0800B69E:
	str r0, [sp, #0]
	adds r0, r4, #4
	mov r1, sp
	bl sub_08000BC8
_0800B6A8:
	str r0, [sp, #0]
	ldr r0, _0800B6F4
	ldrb r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B750
	ldr r1, [r4, #0]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0800B71A
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0800B6F8
	movs r4, #0
	lsls r7, r7, #0xb
_0800B6D0:
	lsls r1, r4, #0xa
	adds r0, r5, r1
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r1, r2
	adds r1, r6, r1
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001348
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0800B6D0
	b _0800B73A
_0800B6F4: .4byte gUnk_0300129C
_0800B6F8:
	movs r4, #0
	lsls r7, r7, #0xb
_0800B6FC:
	lsls r1, r4, #0xa
	adds r0, r5, r1
	adds r1, r6, r1
	movs r2, #0x80
	lsls r2, r2, #3
	bl sub_08001348
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0800B6FC
	b _0800B73A
_0800B71A:
	movs r4, #0
	lsls r7, r7, #0xb
_0800B71E:
	lsls r1, r4, #0xb
	adds r0, r5, r1
	adds r1, r6, r1
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	bl sub_080003F0
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xf
	bls _0800B71E
_0800B73A:
	ldr r0, [sp, #0]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r7, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	bl sub_080003F0
	b _0800B7A4
_0800B750:
	ldr r1, [r4, #0]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0800B786
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0800B778
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r6, r0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	bl CpuFastSet
	b _0800B792
_0800B778:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r6, #0
	bl CpuFastSet
	b _0800B792
_0800B786:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	adds r1, r6, #0
	bl CpuFastSet
_0800B792:
	ldr r0, [sp, #0]
	lsls r1, r7, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
_0800B7A4:
	movs r0, #0x80
	lsls r0, r0, #0x17
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0800B7B6
	ldr r0, [sp, #0]
	bl sub_08001538
_0800B7B6:
	mov r0, sl
	mov r1, r9
	ldr r2, [sp, #4]
	bl sub_08000AF0
	ldr r1, _0800B7D8
	movs r0, #0
	strh r0, [r1, #0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_0800B7D8: .4byte gUnk_03001F40
	thumb_func_end sub_0800B650
