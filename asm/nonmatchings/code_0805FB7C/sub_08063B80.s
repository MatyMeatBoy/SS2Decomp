	thumb_func_start sub_08063B80
sub_08063B80: @ 0x08063B80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x70
	str r0, [sp, #0x60]
	movs r0, #0xa6
	lsls r0, r0, #1
	ldr r2, [sp, #0x60]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _08063C48
	adds r1, r1, r0
	mov r8, r1
	ldr r0, _08063C4C
	add r7, sp, #0x10
	movs r1, #5
	movs r2, #1
	negs r2, r2
	ldr r6, _08063C50
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x18]
	mov r3, sp
	adds r3, #0x50
	str r3, [sp, #0x6c]
	mov r4, sp
	adds r4, #0x48
	str r4, [sp, #0x68]
	mov r5, sp
	adds r5, #0x4a
	cmp r0, #0
	beq _08063C0C
	movs r4, #0x5e
	ldr r0, _08063C54
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x10]
	cmp r0, #0
	beq _08063C0C
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08006EE0
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _08063C0C
	movs r1, #0
	add r2, sp, #0x2c
_08063BF4:
	adds r0, r2, r1
	strb r1, [r0, #0]
	adds r1, #1
	cmp r1, #0xf
	bls _08063BF4
	adds r0, r7, #0
	movs r1, #0x90
	lsls r1, r1, #1
	movs r2, #0xe0
	movs r3, #8
	bl sub_080653B8
_08063C0C:
	add r1, sp, #0x10
	movs r2, #0
	movs r0, #0xf
	strb r0, [r1, #0x1c]
	ldr r1, [sp, #0x60]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	movs r1, #0xb8
	subs r1, r1, r0
	str r1, [sp, #0x64]
	lsls r0, r1, #8
	str r0, [sp, #0x50]
	movs r3, #0x9c
	lsls r3, r3, #1
	lsls r0, r3, #8
	ldr r4, [sp, #0x6c]
	str r0, [r4, #4]
	ldr r0, _08063C58
	str r0, [sp, #0x58]
	ldr r0, _08063C5C
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x68]
	strh r2, [r0, #0]
	strh r2, [r5, #0]
	mov sl, r2
	bl sub_0800CF20
	b _08063E12
	.2byte 0x0000
_08063C48: .4byte gUnk_03003CE0
_08063C4C: .4byte 0x0005005E
_08063C50: .4byte gUnk_08518938
_08063C54: .4byte 0x0006005E
_08063C58: .4byte 0x00080010
_08063C5C: .4byte 0x001E0018
_08063C60:
	ldr r1, [sp, #0x64]
	lsls r0, r1, #0x10
	movs r2, #0x9c
	lsls r2, r2, #1
	lsls r1, r2, #0x10
	add r6, sp, #0x44
	mov r7, sp
	adds r7, #0x46
	movs r2, #0x30
	str r2, [sp, #0]
	movs r3, #1
	mov r9, r3
	str r3, [sp, #4]
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	adds r2, r6, #0
	adds r3, r7, #0
	bl sub_0800BC08
	ldr r3, [sp, #0x18]
	mov r4, r9
	str r4, [sp, #0]
	movs r0, #0
	add r1, sp, #0x48
	mov r2, sp
	adds r2, #0x4a
	bl sub_08008CC4
	ldr r3, [sp, #0x18]
	str r4, [sp, #0]
	movs r0, #1
	add r1, sp, #0x4c
	mov r2, sp
	adds r2, #0x4e
	bl sub_08008CC4
	bl sub_0800CC98
	cmp r0, #0
	bne _08063D34
	bl sub_0800CD8C
	cmp r0, #0
	bne _08063D34
	bl sub_0800CD34
	cmp r0, #0
	bne _08063D34
	ldr r1, _08063D9C
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08063D34
	ldr r0, [sp, #0x64]
	movs r1, #0x9c
	lsls r1, r1, #1
	movs r2, #1
	bl sub_0800BC44
	movs r3, #0
	ldrsh r2, [r6, r3]
	movs r4, #0
	ldrsh r1, [r7, r4]
	ldr r4, [sp, #0x68]
	ldrh r3, [r4, #0]
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	str r5, [sp, #0]
	add r4, sp, #0x2c
	str r4, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08007870
	ldr r1, [r0, #0xc]
	subs r1, #0x14
	str r1, [r0, #0xc]
	ldr r0, _08063DA0
	ldr r0, [r0, #0]
	mov r1, r9
	ands r0, r1
	cmp r0, #0
	beq _08063D2A
	movs r2, #0
	ldrsh r0, [r6, r2]
	movs r3, #0
	ldrsh r1, [r7, r3]
	add r2, sp, #0x4c
	ldrh r3, [r2, #0]
	str r5, [sp, #0]
	str r4, [sp, #4]
	ldr r2, [sp, #0x18]
	str r2, [sp, #8]
	ldr r2, [sp, #0x10]
	str r2, [sp, #0xc]
	movs r2, #1
	bl sub_08008E74
_08063D2A:
	ldr r1, [sp, #0x1c]
	movs r0, #0x1f
	movs r2, #1
	bl sub_08000AF0
_08063D34:
	bl sub_080020F4
	ldr r4, [sp, #0x60]
	cmp r4, r0
	bne _08063DE2
	ldr r1, _08063D9C
	ldrh r0, [r1, #0]
	cmp r0, #0
	bne _08063D58
	ldr r0, [sp, #0x6c]
	mov r1, r8
	adds r1, #0x8c
	add r2, sp, #0x58
	add r3, sp, #0x5c
	bl sub_08021FE0
	cmp r0, #0
	bne _08063D5E
_08063D58:
	mov r2, sl
	cmp r2, #0
	beq _08063DFE
_08063D5E:
	mov r3, sl
	cmp r3, #0
	bne _08063DA8
	bl sub_0800CDF8
	cmp r0, #0
	bne _08063DFE
	mov r4, r8
	ldrh r1, [r4, #0x14]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08063DFE
	ldr r0, [r4, #0x30]
	orrs r0, r2
	str r0, [r4, #0x30]
	movs r0, #2
	negs r0, r0
	str r0, [sp, #0]
	ldr r0, _08063DA4
	str r0, [sp, #4]
	movs r0, #1
	movs r1, #0xe
	movs r2, #0x19
	movs r3, #2
	bl sub_0805DF38
	mov sl, r0
	b _08063DFE
	.2byte 0x0000
_08063D9C: .4byte gUnk_03003200
_08063DA0: .4byte gUnk_03002344
_08063DA4: .4byte 0x001404E0
_08063DA8:
	mov r0, sl
	bl sub_0805EEFC
	cmp r0, #0
	beq _08063DFE
	mov r0, sl
	bl sub_0805EF14
	cmp r0, #0
	beq _08063DD0
	movs r0, #0xc
	mov r1, r8
	strh r0, [r1, #0x20]
	movs r0, #1
	strh r0, [r1, #0x22]
	bl sub_0800CEE8
	bl sub_0800CF34
	b _08063E1C
_08063DD0:
	mov r2, r8
	ldr r0, [r2, #0x30]
	movs r1, #2
	negs r1, r1
	ands r0, r1
	str r0, [r2, #0x30]
	movs r3, #0
	mov sl, r3
	b _08063DFE
_08063DE2:
	movs r0, #0xa4
	lsls r0, r0, #1
	add r0, r8
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #0xc
	bne _08063DFE
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x14
	lsrs r0, r0, #0x1a
	cmp r0, #1
	beq _08063E1C
_08063DFE:
	bl sub_080003F0
	bl sub_0800CB78
	cmp r0, #0
	bne _08063E1C
	bl sub_0800CD00
	cmp r0, #0
	bne _08063E1C
_08063E12:
	bl sub_0800CCCC
	cmp r0, #0
	beq _08063E1C
	b _08063C60
_08063E1C:
	bl sub_0800CF34
	add sp, #0x70
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08063B80
