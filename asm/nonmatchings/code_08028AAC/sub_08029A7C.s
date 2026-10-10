	thumb_func_start sub_08029A7C
sub_08029A7C: @ 0x08029A7C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	mov sl, r0
	adds r7, r1, #0
	str r2, [sp, #0x10]
	bl sub_080020F4
	movs r1, #0xa6
	lsls r1, r1, #1
	muls r1, r0, r1
	ldr r0, _08029B64
	adds r5, r1, r0
	bl sub_0800CDF8
	cmp r0, #0
	bne _08029B86
	bl sub_08058DB0
	cmp r0, #0
	bne _08029B86
	ldrh r1, [r5, #0x20]
	cmp r1, #0xe
	beq _08029B86
	adds r0, r5, #0
	adds r0, #0x68
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08029B86
	cmp r1, #0xb
	beq _08029B86
	ldr r6, [r5, #0x30]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r6, r0
	cmp r6, #0
	bne _08029B86
	cmp r1, #0xa
	beq _08029B86
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x5a
	ldrh r1, [r1, #0]
	movs r2, #0xc8
	bl sub_08021C74
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	add r0, sp, #8
	mov r9, r0
	adds r4, r5, #0
	adds r4, #0x4c
	ldr r1, [sp, #0x10]
	lsls r2, r1, #0x10
	lsrs r2, r2, #0x10
	mov r3, sl
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	add r0, sp, #8
	adds r1, r4, #0
	mov r3, r8
	bl sub_08069388
	adds r0, r5, #0
	movs r1, #0
	bl sub_0801E164
	adds r1, r0, #0
	cmp r1, #0
	beq _08029B20
	ldrh r0, [r5, #0]
	mov r3, r9
	ldrb r2, [r3, #1]
	bl sub_0801DB94
_08029B20:
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	mov r0, r8
	adds r2, r4, #0
	bl sub_08021D00
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	movs r0, #0xa
	strh r0, [r5, #0x20]
	adds r1, r5, #0
	adds r1, #0x88
	ldrh r0, [r1, #0]
	adds r0, r0, r7
	strh r0, [r1, #0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r5, r1
	str r6, [r0, #0]
	adds r0, r5, #0
	adds r0, #0xc8
	strh r6, [r0, #0]
	adds r0, #2
	strh r6, [r0, #0]
	adds r0, #0x16
	str r6, [r0, #0]
	ldrh r0, [r5, #0xc]
	cmp r0, #8
	bne _08029B68
	movs r0, #0x4b
	bl sub_0805865C
	b _08029B70
	.2byte 0x0000
_08029B64: .4byte gUnk_03003CE0
_08029B68:
	ldrh r0, [r5, #0xc]
	adds r0, #0x45
	bl sub_0805865C
_08029B70:
	lsls r1, r7, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r5, #0]
	str r0, [sp, #0]
	mov r3, sl
	str r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [sp, #0x10]
	movs r3, #0
	bl sub_08069080
_08029B86:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	thumb_func_end sub_08029A7C
