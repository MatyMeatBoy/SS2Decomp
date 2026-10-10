	thumb_func_start sub_08029E0C
sub_08029E0C: @ 0x08029E0C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	adds r7, r0, #0
	mov r9, r1
	adds r6, r2, #0
	mov sl, r3
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x14]
	ldr r0, _08029F48
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq _08029F36
	ldr r1, _08029F4C
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #3
	subs r0, r0, r7
	lsls r0, r0, #5
	ldr r1, [r1, #0]
	adds r4, r1, r0
	movs r1, #0xee
	lsls r1, r1, #1
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq _08029F36
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	beq _08029F36
	cmp r0, #0xa
	beq _08029F36
	ldr r2, _08029F50
	adds r0, r4, r2
	ldrb r0, [r0, #0]
	mov r3, r9
	lsls r5, r3, #0x10
	cmp r0, #3
	beq _08029EAC
	add r0, sp, #8
	mov r8, r0
	subs r2, #0xe
	adds r1, r4, r2
	mov r3, sl
	lsls r2, r3, #0x10
	lsrs r2, r2, #0x10
	lsrs r3, r5, #0x10
	ldrh r0, [r4, #0]
	adds r0, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0]
	add r0, sp, #8
	bl sub_08069388
	adds r0, r4, #0
	movs r1, #0
	bl sub_0801E104
	adds r1, r0, #0
	cmp r1, #0
	beq _08029EAC
	ldrh r0, [r4, #0]
	adds r0, #4
	mov r3, r8
	ldrb r2, [r3, #1]
	bl sub_0801DB94
_08029EAC:
	lsrs r0, r5, #0x10
	lsls r1, r6, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x86
	lsls r2, r2, #2
	adds r2, r2, r4
	mov r8, r2
	bl sub_08021D00
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	movs r2, #0
	movs r0, #0xa
	strh r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r6, [r0, #0]
	str r6, [r4, #0x4c]
	add r5, sp, #8
	strh r6, [r5, #4]
	mov r3, sp
	ldrb r3, [r3, #0x10]
	strb r3, [r5, #2]
	ldrh r1, [r4, #2]
	adds r0, r5, #0
	strb r1, [r0, #0]
	mov r0, sp
	ldrb r0, [r0, #0x14]
	strb r0, [r5, #3]
	ldrb r1, [r5, #2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08029EF2
	strb r2, [r5, #2]
_08029EF2:
	movs r1, #0x84
	lsls r1, r1, #2
	adds r0, r4, r1
	ldr r0, [r0, #0]
	cmp r0, #0xff
	bne _08029F00
	strb r2, [r5, #2]
_08029F00:
	adds r0, r4, #0
	add r1, sp, #8
	bl sub_0801F2CC
	bl sub_080020F4
	adds r1, r4, #0
	adds r1, #0x58
	strh r0, [r1, #0]
	add r0, sp, #8
	bl sub_080660EC
	ldr r2, _08029F50
	adds r0, r4, r2
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _08029F36
	ldrh r1, [r5, #4]
	adds r0, r7, #4
	str r0, [sp, #0]
	mov r3, r9
	str r3, [sp, #4]
	mov r0, r8
	mov r2, sl
	adds r3, r7, #0
	bl sub_08069080
_08029F36:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
_08029F48: .4byte gUnk_030056FC
_08029F4C: .4byte gUnk_030056F4
_08029F50: .4byte 0x00000226
	thumb_func_end sub_08029E0C
