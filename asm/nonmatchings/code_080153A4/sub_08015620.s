	thumb_func_start sub_08015620
sub_08015620: @ 0x08015620
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x34
	adds r7, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r7, #0
	muls r1, r0, r1
	ldr r0, _080156F4
	adds r4, r1, r0
	bl sub_080020F4
	mov r8, r0
	movs r0, #0x91
	lsls r0, r0, #1
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1, #0]
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	lsls r0, r0, #0xf
	lsrs r6, r0, #0x1d
	adds r0, r6, #3
	lsls r5, r0, #3
	ldrh r0, [r4, #0x20]
	cmp r0, #0xd
	beq _08015678
	bl sub_0800CCCC
	cmp r0, #0
	bne _08015678
	bl sub_0800CD34
	cmp r0, #0
	bne _08015678
	movs r0, #0x80
	lsls r0, r0, #1
	adds r0, r6, r0
	bl sub_0805865C
_08015678:
	cmp r5, #0
	beq _080156B8
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	bne _080156B8
	adds r6, r4, #0
	adds r6, #0xdc
_08015686:
	adds r0, r4, #0
	adds r0, #0xb6
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq _080156AA
	lsls r0, r5, #0x10
	ldr r2, _080156F8
	adds r0, r0, r2
	lsrs r5, r0, #0x10
	cmp r7, r8
	bne _080156AA
	movs r0, #0xf
	ands r0, r5
	cmp r0, #0
	bne _080156AA
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
_080156AA:
	bl sub_080003F0
	cmp r5, #0
	beq _080156B8
	ldrh r0, [r4, #0x20]
	cmp r0, #5
	beq _08015686
_080156B8:
	cmp r7, r8
	bne _080156D6
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _080156D6
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _080156D6
	strh r1, [r4, #0x20]
_080156D6:
	movs r1, #0
	strh r1, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	strh r1, [r4, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0, #0]
	add sp, #0x34
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_080156F4: .4byte gUnk_03003CE0
_080156F8: .4byte 0xFFFF0000
	thumb_func_end sub_08015620
