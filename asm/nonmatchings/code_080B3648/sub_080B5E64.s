	thumb_func_start sub_080B5E64
sub_080B5E64: @ 0x080B5E64
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _080B5F40
	ldr r0, [r0, #0]
	movs r1, #0xb8
	lsls r1, r1, #2
	adds r5, r0, r1
	movs r2, #1
	mov sl, r2
	adds r1, #0x4a
	adds r4, r0, r1
_080B5E80:
	ldr r0, _080B5F44
	movs r1, #1
	mov r2, sl
	lsls r1, r2
	ldr r0, [r0, #0]
	ands r0, r1
	movs r1, #0x7c
	adds r1, r1, r5
	mov r9, r1
	cmp r0, #0
	beq _080B5F6E
	ldr r2, _080B5F48
	mov r8, r2
	ldr r1, [r2, #0]
	ldr r2, [r1, #0x14]
	ldr r0, [r5, #0x14]
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r1, [r1, #0x18]
	ldr r0, [r5, #0x18]
	subs r1, r1, r0
	lsls r1, r1, #8
	asrs r7, r2, #0x10
	adds r0, r7, #0
	muls r0, r7, r0
	asrs r6, r1, #0x10
	adds r1, r6, #0
	muls r1, r6, r1
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x13
	bhi _080B5F6E
	mov r1, r8
	ldr r0, [r1, #0]
	adds r0, #0x5c
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080B5F6E
	ldrh r0, [r4, #0x32]
	cmp r0, #0
	bne _080B5F6E
	bl sub_0800CDF8
	cmp r0, #0
	bne _080B5F6E
	bl sub_0800CD8C
	cmp r0, #0
	bne _080B5F6E
	bl sub_0800CCCC
	cmp r0, #0
	bne _080B5F6E
	mov r0, r8
	ldr r2, [r0, #0]
	ldrh r0, [r2, #0xc]
	cmp r0, #0xb
	beq _080B5F6E
	ldr r1, [r5, #0x54]
	ldr r0, [r2, #0x50]
	cmp r1, r0
	beq _080B5F6E
	movs r0, #0xa
	strh r0, [r5, #0xc]
	adds r0, r2, #0
	adds r1, r5, #0
	bl sub_0801EF14
	ldrh r1, [r4, #0]
	adds r1, r1, r0
	strh r1, [r4, #0]
	mov r2, r8
	ldr r1, [r2, #0]
	ldr r0, [r1, #0x50]
	str r0, [r5, #0x54]
	adds r0, #1
	str r0, [r1, #0x50]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	lsls r1, r0, #3
	lsrs r2, r0, #0x1d
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bls _080B5F4E
	cmp r2, #6
	bhi _080B5F4C
	adds r2, #1
	b _080B5F4E
_080B5F40: .4byte gUnk_030056F4
_080B5F44: .4byte gUnk_030056FC
_080B5F48: .4byte gUnk_030007DC
_080B5F4C:
	movs r2, #0
_080B5F4E:
	cmp r2, #0
	beq _080B5F5A
	cmp r2, #1
	beq _080B5F5E
	subs r0, r2, #2
	b _080B5F60
_080B5F5A:
	movs r0, #6
	b _080B5F60
_080B5F5E:
	movs r0, #7
_080B5F60:
	strh r0, [r4, #0x34]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x36]
	movs r0, #8
	mov r1, r9
	strh r0, [r1, #0]
_080B5F6E:
	movs r2, #0xb8
	lsls r2, r2, #2
	adds r4, r4, r2
	adds r5, r5, r2
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #4
	bhi _080B5F86
	b _080B5E80
_080B5F86:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_080B5E64
