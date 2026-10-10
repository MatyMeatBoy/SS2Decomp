	thumb_func_start sub_08029B98
sub_08029B98: @ 0x08029B98
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
	ldr r0, _08029CE0
	movs r1, #1
	lsls r1, r7
	ldr r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	bne _08029BCC
	b _08029CD0
_08029BCC:
	ldr r1, _08029CE4
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
	beq _08029CD0
	ldrh r0, [r4, #0xc]
	cmp r0, #0xb
	beq _08029CD0
	cmp r0, #0xa
	beq _08029CD0
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	movs r2, #0xe7
	lsls r2, r2, #1
	adds r1, r4, r2
	ldrh r1, [r1, #0]
	movs r2, #0xc8
	bl sub_08021C74
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r3, _08029CE8
	adds r0, r4, r3
	ldrb r0, [r0, #0]
	mov r1, r9
	lsls r5, r1, #0x10
	cmp r0, #3
	beq _08029C50
	add r2, sp, #8
	mov r8, r2
	subs r3, #0xe
	adds r1, r4, r3
	mov r0, sl
	lsls r2, r0, #0x10
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
	beq _08029C50
	ldrh r0, [r4, #0]
	adds r0, #4
	mov r3, r8
	ldrb r2, [r3, #1]
	bl sub_0801DB94
_08029C50:
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
	movs r0, #0xa
	strh r0, [r4, #0xc]
	add r5, sp, #8
	strh r6, [r5, #4]
	ldrh r1, [r4, #2]
	adds r0, r5, #0
	strb r1, [r0, #0]
	mov r3, sp
	ldrb r3, [r3, #0x10]
	strb r3, [r5, #2]
	mov r0, sp
	ldrb r0, [r0, #0x14]
	strb r0, [r5, #3]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0801F2CC
	bl sub_080020F4
	adds r1, r4, #0
	adds r1, #0x58
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #0x4a
	strh r6, [r0, #0]
	str r6, [r4, #0x4c]
	bl sub_080020F4
	adds r2, r4, #0
	adds r2, #0x5a
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2, #0]
	orrs r1, r0
	strh r1, [r2, #0]
	add r0, sp, #8
	bl sub_080660EC
	ldr r1, _08029CE8
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #3
	beq _08029CD0
	ldrh r1, [r5, #4]
	adds r0, r7, #4
	str r0, [sp, #0]
	mov r2, r9
	str r2, [sp, #4]
	mov r0, r8
	mov r2, sl
	adds r3, r7, #0
	bl sub_08069080
_08029CD0:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
_08029CE0: .4byte gUnk_030056FC
_08029CE4: .4byte gUnk_030056F4
_08029CE8: .4byte 0x00000226
	thumb_func_end sub_08029B98
