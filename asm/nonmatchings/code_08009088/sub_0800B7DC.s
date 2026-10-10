	thumb_func_start sub_0800B7DC
sub_0800B7DC: @ 0x0800B7DC
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
	ldr r1, _0800B830
	ldr r0, [r4, #0]
	ldr r1, [r1, #0]
	adds r0, r0, r1
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
	beq _0800B834
	adds r0, r4, #4
	b _0800B83E
_0800B830: .4byte gUnk_03003470
_0800B834:
	str r0, [sp, #0]
	adds r0, r4, #4
	mov r1, sp
	bl sub_08000BC8
_0800B83E:
	str r0, [sp, #0]
	ldr r0, _0800B88C
	ldrb r1, [r0, #0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B8E8
	ldr r1, [r4, #0]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0800B8B2
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0800B890
	movs r4, #0
	lsls r7, r7, #0xb
_0800B866:
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
	bls _0800B866
	b _0800B8D2
	.2byte 0x0000
_0800B88C: .4byte gUnk_0300129C
_0800B890:
	movs r4, #0
	lsls r7, r7, #0xb
_0800B894:
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
	bls _0800B894
	b _0800B8D2
_0800B8B2:
	movs r4, #0
	lsls r7, r7, #0xb
_0800B8B6:
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
	bls _0800B8B6
_0800B8D2:
	ldr r0, [sp, #0]
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r7, r2
	movs r2, #0x80
	lsls r2, r2, #4
	bl sub_08001348
	bl sub_080003F0
	b _0800B93C
_0800B8E8:
	ldr r1, [r4, #0]
	movs r0, #0x80
	lsls r0, r0, #0x15
	ands r0, r1
	cmp r0, #0
	beq _0800B91E
	movs r0, #0x80
	lsls r0, r0, #0x16
	ands r1, r0
	cmp r1, #0
	beq _0800B910
	movs r0, #0x80
	lsls r0, r0, #7
	adds r1, r6, r0
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	bl sub_080B8574
	b _0800B92A
_0800B910:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080B8574
	b _0800B92A
_0800B91E:
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_080B8574
_0800B92A:
	ldr r0, [sp, #0]
	lsls r1, r7, #0xb
	movs r2, #0xc0
	lsls r2, r2, #0x13
	adds r1, r1, r2
	movs r2, #0x80
	lsls r2, r2, #2
	bl sub_080B8574
_0800B93C:
	movs r0, #0x80
	lsls r0, r0, #0x17
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0800B94E
	ldr r0, [sp, #0]
	bl sub_08001538
_0800B94E:
	mov r0, sl
	mov r1, r9
	ldr r2, [sp, #4]
	bl sub_08000AF0
	ldr r1, _0800B970
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
_0800B970: .4byte gUnk_03001F40
	thumb_func_end sub_0800B7DC
