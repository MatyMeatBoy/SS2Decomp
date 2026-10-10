	thumb_func_start sub_08015A48
sub_08015A48: @ 0x08015A48
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _08015B1C
	adds r4, r1, r0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r1, [r2, #0]
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r5, r0, #0x1d
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0xb0
	adds r0, #8
	strh r0, [r1, #0]
	adds r5, #1
	adds r1, #8
	strh r0, [r1, #0]
	cmp r5, #0
	beq _08015AD4
	ldr r0, [r2, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bne _08015AD4
	adds r7, r4, #0
	adds r7, #0xb6
	adds r6, r4, #0
	adds r6, #0xdc
	movs r1, #0
_08015A98:
	ldrh r0, [r7, #0]
	cmp r0, #0
	beq _08015AB6
	cmp r5, #0
	beq _08015AB6
	subs r5, #1
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
	strh r1, [r7, #0]
	adds r0, r4, #0
	adds r0, #0xb2
	strh r1, [r0, #0]
	adds r0, #2
	strh r1, [r0, #0]
_08015AB6:
	str r1, [sp, #0]
	bl sub_080003F0
	ldr r1, [sp, #0]
	cmp r5, #0
	beq _08015AD4
	movs r2, #0xa4
	lsls r2, r2, #1
	adds r0, r4, r2
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _08015A98
_08015AD4:
	bl sub_080020F4
	cmp r0, r8
	bne _08015AFE
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	subs r0, #0xa
	cmp r0, #1
	bls _08015AFE
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015AFE
	strh r1, [r4, #0x20]
_08015AFE:
	movs r1, #0
	strh r1, [r4, #0x24]
	ldrh r0, [r4, #0x26]
	strh r0, [r4, #0x28]
	strh r1, [r4, #0x26]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r4, r2
	strh r1, [r0, #0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08015B1C: .4byte gUnk_03003CE0
	thumb_func_end sub_08015A48
