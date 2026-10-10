	thumb_func_start sub_08015914
sub_08015914: @ 0x08015914
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r9, r0
	movs r0, #0xa6
	lsls r0, r0, #1
	mov r1, r9
	muls r1, r0, r1
	ldr r0, _08015A40
	adds r4, r1, r0
	movs r0, #0xa4
	lsls r0, r0, #1
	adds r2, r4, r0
	ldr r1, [r2, #0]
	ldr r0, [r1, #4]
	lsls r0, r0, #0xf
	lsrs r0, r0, #0x1d
	mov r8, r0
	ldrb r0, [r1, #3]
	lsrs r0, r0, #4
	adds r1, r4, #0
	adds r1, #0xb0
	adds r0, #8
	strh r0, [r1, #0]
	movs r5, #2
	adds r1, #8
	strh r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	bne _080159FC
	adds r7, r4, #0
	adds r7, #0xb2
	adds r6, r4, #0
	adds r6, #0x8c
	ldr r1, _08015A44
	mov sl, r1
_08015968:
	ldrh r0, [r7, #0]
	cmp r0, #1
	beq _08015972
	cmp r0, #3
	bne _08015986
_08015972:
	adds r0, r4, #0
	adds r0, #0xb4
	ldrh r0, [r0, #0]
	cmp r0, #1
	bne _08015986
	adds r1, r4, #0
	adds r1, #0xdc
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
_08015986:
	adds r1, r4, #0
	adds r1, #0xb6
	ldrh r0, [r1, #0]
	cmp r0, #0
	beq _080159A4
	cmp r5, #0
	beq _080159A4
	subs r5, #1
	cmp r5, #0
	bne _080159A4
	strh r5, [r1, #0]
	strh r5, [r7, #0]
	adds r0, r4, #0
	adds r0, #0xb4
	strh r5, [r0, #0]
_080159A4:
	adds r2, r4, #0
	adds r2, #0x94
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r2, #0]
	str r1, [r2, #4]
	bl sub_0800CCCC
	adds r3, r0, #0
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov r2, r8
	lsls r0, r2, #2
	add r0, sl
	ldr r0, [r0, #0]
	asrs r0, r0, #1
	adds r1, r4, #0
	adds r1, #0x40
	movs r2, #0
	ldrsh r1, [r1, r2]
	adds r0, r0, r1
	ldrh r2, [r4, #0x1c]
	movs r1, #0
	str r1, [sp, #0]
	adds r1, r6, #0
	bl sub_08013E90
	strh r0, [r4, #0x1c]
	adds r0, r4, #0
	bl sub_08013CEC
	bl sub_080003F0
	cmp r5, #0
	beq _080159FC
	movs r1, #0xa4
	lsls r1, r1, #1
	adds r0, r4, r1
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #5
	beq _08015968
_080159FC:
	bl sub_080020F4
	cmp r0, r9
	bne _08015A1E
	ldrh r0, [r4, #0x20]
	subs r0, #0xa
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08015A1E
	ldr r1, [r4, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r1, r0
	cmp r1, #0
	bne _08015A1E
	strh r1, [r4, #0x20]
_08015A1E:
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
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08015A40: .4byte gUnk_03003CE0
_08015A44: .4byte gUnk_0847AD1C
	thumb_func_end sub_08015914
